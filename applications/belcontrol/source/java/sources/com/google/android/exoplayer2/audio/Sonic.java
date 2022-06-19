package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.util.Assertions;
import java.nio.ShortBuffer;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/Sonic.class */
public final class Sonic {
    private static final int AMDF_FREQUENCY = 4000;
    private static final int MAXIMUM_PITCH = 400;
    private static final int MINIMUM_PITCH = 65;
    private final int channelCount;
    private final short[] downSampleBuffer;
    private short[] inputBuffer;
    private int inputFrameCount;
    private final int inputSampleRateHz;
    private int maxDiff;
    private final int maxPeriod;
    private final int maxRequiredFrameCount;
    private int minDiff;
    private final int minPeriod;
    private int newRatePosition;
    private int oldRatePosition;
    private short[] outputBuffer;
    private int outputFrameCount;
    private final float pitch;
    private short[] pitchBuffer;
    private int pitchFrameCount;
    private int prevMinDiff;
    private int prevPeriod;
    private final float rate;
    private int remainingInputToCopyFrameCount;
    private final float speed;

    public Sonic(int i, int i2, float f, float f2, int i3) {
        this.inputSampleRateHz = i;
        this.channelCount = i2;
        this.speed = f;
        this.pitch = f2;
        this.rate = i / i3;
        this.minPeriod = i / MAXIMUM_PITCH;
        int i4 = i / 65;
        this.maxPeriod = i4;
        int i5 = i4 * 2;
        this.maxRequiredFrameCount = i5;
        this.downSampleBuffer = new short[i5];
        this.inputBuffer = new short[i5 * i2];
        this.outputBuffer = new short[i5 * i2];
        this.pitchBuffer = new short[i5 * i2];
    }

    private void adjustRate(float f, int i) {
        int i2;
        int i3;
        if (this.outputFrameCount == i) {
            return;
        }
        int i4 = this.inputSampleRateHz;
        int i5 = (int) (i4 / f);
        while (true) {
            if (i5 <= 16384 && i4 <= 16384) {
                break;
            }
            i5 /= 2;
            i4 /= 2;
        }
        moveNewSamplesToPitchBuffer(i);
        int i6 = 0;
        while (true) {
            int i7 = this.pitchFrameCount;
            boolean z = true;
            if (i6 >= i7 - 1) {
                removePitchFrames(i7 - 1);
                return;
            }
            while (true) {
                i2 = this.oldRatePosition;
                i3 = this.newRatePosition;
                if ((i2 + 1) * i5 <= i3 * i4) {
                    break;
                }
                this.outputBuffer = ensureSpaceForAdditionalFrames(this.outputBuffer, this.outputFrameCount, 1);
                int i8 = 0;
                while (true) {
                    int i9 = this.channelCount;
                    if (i8 < i9) {
                        this.outputBuffer[(this.outputFrameCount * i9) + i8] = interpolate(this.pitchBuffer, (i9 * i6) + i8, i4, i5);
                        i8++;
                    }
                }
                this.newRatePosition++;
                this.outputFrameCount++;
            }
            int i10 = i2 + 1;
            this.oldRatePosition = i10;
            if (i10 == i4) {
                this.oldRatePosition = 0;
                if (i3 != i5) {
                    z = false;
                }
                Assertions.checkState(z);
                this.newRatePosition = 0;
            }
            i6++;
        }
    }

    private void changeSpeed(float f) {
        int skipPitchPeriod;
        int i;
        int i2 = this.inputFrameCount;
        if (i2 < this.maxRequiredFrameCount) {
            return;
        }
        int i3 = 0;
        do {
            if (this.remainingInputToCopyFrameCount > 0) {
                skipPitchPeriod = copyInputToOutput(i3);
            } else {
                int findPitchPeriod = findPitchPeriod(this.inputBuffer, i3);
                short[] sArr = this.inputBuffer;
                skipPitchPeriod = ((double) f) > 1.0d ? findPitchPeriod + skipPitchPeriod(sArr, i3, f, findPitchPeriod) : insertPitchPeriod(sArr, i3, f, findPitchPeriod);
            }
            i = i3 + skipPitchPeriod;
            i3 = i;
        } while (this.maxRequiredFrameCount + i <= i2);
        removeProcessedInputFrames(i);
    }

    private int copyInputToOutput(int i) {
        int min = Math.min(this.maxRequiredFrameCount, this.remainingInputToCopyFrameCount);
        copyToOutput(this.inputBuffer, i, min);
        this.remainingInputToCopyFrameCount -= min;
        return min;
    }

    private void copyToOutput(short[] sArr, int i, int i2) {
        short[] ensureSpaceForAdditionalFrames = ensureSpaceForAdditionalFrames(this.outputBuffer, this.outputFrameCount, i2);
        this.outputBuffer = ensureSpaceForAdditionalFrames;
        int i3 = this.channelCount;
        System.arraycopy(sArr, i * i3, ensureSpaceForAdditionalFrames, this.outputFrameCount * i3, i3 * i2);
        this.outputFrameCount += i2;
    }

    private void downSampleInput(short[] sArr, int i, int i2) {
        int i3 = this.maxRequiredFrameCount / i2;
        int i4 = this.channelCount;
        int i5 = i2 * i4;
        for (int i6 = 0; i6 < i3; i6++) {
            short s = 0;
            for (int i7 = 0; i7 < i5; i7++) {
                s += sArr[(i6 * i5) + (i * i4) + i7];
            }
            this.downSampleBuffer[i6] = (short) (s / i5);
        }
    }

    private short[] ensureSpaceForAdditionalFrames(short[] sArr, int i, int i2) {
        int length = sArr.length;
        int i3 = this.channelCount;
        int i4 = length / i3;
        return i + i2 <= i4 ? sArr : Arrays.copyOf(sArr, (((i4 * 3) / 2) + i2) * i3);
    }

    private int findPitchPeriod(short[] sArr, int i) {
        int i2;
        int i3 = this.inputSampleRateHz;
        int i4 = i3 > AMDF_FREQUENCY ? i3 / AMDF_FREQUENCY : 1;
        if (this.channelCount == 1 && i4 == 1) {
            i2 = findPitchPeriodInRange(sArr, i, this.minPeriod, this.maxPeriod);
        } else {
            downSampleInput(sArr, i, i4);
            int findPitchPeriodInRange = findPitchPeriodInRange(this.downSampleBuffer, 0, this.minPeriod / i4, this.maxPeriod / i4);
            if (i4 != 1) {
                int i5 = findPitchPeriodInRange * i4;
                int i6 = i4 * 4;
                int i7 = i5 - i6;
                int i8 = i5 + i6;
                int i9 = this.minPeriod;
                int i10 = i7;
                if (i7 < i9) {
                    i10 = i9;
                }
                int i11 = this.maxPeriod;
                int i12 = i8;
                if (i8 > i11) {
                    i12 = i11;
                }
                if (this.channelCount == 1) {
                    i2 = findPitchPeriodInRange(sArr, i, i10, i12);
                } else {
                    downSampleInput(sArr, i, 1);
                    i2 = findPitchPeriodInRange(this.downSampleBuffer, 0, i10, i12);
                }
            } else {
                i2 = findPitchPeriodInRange;
            }
        }
        int i13 = previousPeriodBetter(this.minDiff, this.maxDiff) ? this.prevPeriod : i2;
        this.prevMinDiff = this.minDiff;
        this.prevPeriod = i2;
        return i13;
    }

    private int findPitchPeriodInRange(short[] sArr, int i, int i2, int i3) {
        int i4 = i * this.channelCount;
        int i5 = 1;
        int i6 = 255;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int i9 = i8;
            if (i2 > i3) {
                this.minDiff = i5 / i7;
                this.maxDiff = i9 / i6;
                return i7;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < i2; i11++) {
                i10 += Math.abs(sArr[i4 + i11] - sArr[(i4 + i2) + i11]);
            }
            int i12 = i5;
            int i13 = i7;
            if (i10 * i7 < i5 * i2) {
                i13 = i2;
                i12 = i10;
            }
            int i14 = i6;
            int i15 = i9;
            if (i10 * i6 > i9 * i2) {
                i14 = i2;
                i15 = i10;
            }
            i2++;
            i5 = i12;
            i6 = i14;
            i7 = i13;
            i8 = i15;
        }
    }

    private int insertPitchPeriod(short[] sArr, int i, float f, int i2) {
        int i3;
        if (f < 0.5f) {
            i3 = (int) ((i2 * f) / (1.0f - f));
        } else {
            this.remainingInputToCopyFrameCount = (int) ((i2 * ((2.0f * f) - 1.0f)) / (1.0f - f));
            i3 = i2;
        }
        int i4 = i2 + i3;
        short[] ensureSpaceForAdditionalFrames = ensureSpaceForAdditionalFrames(this.outputBuffer, this.outputFrameCount, i4);
        this.outputBuffer = ensureSpaceForAdditionalFrames;
        int i5 = this.channelCount;
        System.arraycopy(sArr, i * i5, ensureSpaceForAdditionalFrames, this.outputFrameCount * i5, i5 * i2);
        overlapAdd(i3, this.channelCount, this.outputBuffer, this.outputFrameCount + i2, sArr, i + i2, sArr, i);
        this.outputFrameCount += i4;
        return i3;
    }

    private short interpolate(short[] sArr, int i, int i2, int i3) {
        short s = sArr[i];
        short s2 = sArr[i + this.channelCount];
        int i4 = this.newRatePosition;
        int i5 = this.oldRatePosition;
        int i6 = (i5 + 1) * i3;
        int i7 = i6 - (i4 * i2);
        int i8 = i6 - (i5 * i3);
        return (short) (((s * i7) + ((i8 - i7) * s2)) / i8);
    }

    private void moveNewSamplesToPitchBuffer(int i) {
        int i2 = this.outputFrameCount - i;
        short[] ensureSpaceForAdditionalFrames = ensureSpaceForAdditionalFrames(this.pitchBuffer, this.pitchFrameCount, i2);
        this.pitchBuffer = ensureSpaceForAdditionalFrames;
        short[] sArr = this.outputBuffer;
        int i3 = this.channelCount;
        System.arraycopy(sArr, i * i3, ensureSpaceForAdditionalFrames, this.pitchFrameCount * i3, i3 * i2);
        this.outputFrameCount = i;
        this.pitchFrameCount += i2;
    }

    private static void overlapAdd(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i3 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i4 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                sArr[i7] = (short) (((sArr2[i9] * (i - i10)) + (sArr3[i8] * i10)) / i);
                i7 += i2;
                i9 += i2;
                i8 += i2;
            }
        }
    }

    private boolean previousPeriodBetter(int i, int i2) {
        return i != 0 && this.prevPeriod != 0 && i2 <= i * 3 && i * 2 > this.prevMinDiff * 3;
    }

    private void processStreamInput() {
        int i = this.outputFrameCount;
        float f = this.speed;
        float f2 = this.pitch;
        float f3 = f / f2;
        float f4 = this.rate * f2;
        double d = f3;
        if (d > 1.00001d || d < 0.99999d) {
            changeSpeed(f3);
        } else {
            copyToOutput(this.inputBuffer, 0, this.inputFrameCount);
            this.inputFrameCount = 0;
        }
        if (f4 != 1.0f) {
            adjustRate(f4, i);
        }
    }

    private void removePitchFrames(int i) {
        if (i == 0) {
            return;
        }
        short[] sArr = this.pitchBuffer;
        int i2 = this.channelCount;
        System.arraycopy(sArr, i * i2, sArr, 0, (this.pitchFrameCount - i) * i2);
        this.pitchFrameCount -= i;
    }

    private void removeProcessedInputFrames(int i) {
        int i2 = this.inputFrameCount - i;
        short[] sArr = this.inputBuffer;
        int i3 = this.channelCount;
        System.arraycopy(sArr, i * i3, sArr, 0, i3 * i2);
        this.inputFrameCount = i2;
    }

    private int skipPitchPeriod(short[] sArr, int i, float f, int i2) {
        int i3;
        if (f >= 2.0f) {
            i3 = (int) (i2 / (f - 1.0f));
        } else {
            this.remainingInputToCopyFrameCount = (int) ((i2 * (2.0f - f)) / (f - 1.0f));
            i3 = i2;
        }
        short[] ensureSpaceForAdditionalFrames = ensureSpaceForAdditionalFrames(this.outputBuffer, this.outputFrameCount, i3);
        this.outputBuffer = ensureSpaceForAdditionalFrames;
        overlapAdd(i3, this.channelCount, ensureSpaceForAdditionalFrames, this.outputFrameCount, sArr, i, sArr, i + i2);
        this.outputFrameCount += i3;
        return i3;
    }

    public void flush() {
        this.inputFrameCount = 0;
        this.outputFrameCount = 0;
        this.pitchFrameCount = 0;
        this.oldRatePosition = 0;
        this.newRatePosition = 0;
        this.remainingInputToCopyFrameCount = 0;
        this.prevPeriod = 0;
        this.prevMinDiff = 0;
        this.minDiff = 0;
        this.maxDiff = 0;
    }

    public int getFramesAvailable() {
        return this.outputFrameCount;
    }

    public void getOutput(ShortBuffer shortBuffer) {
        int min = Math.min(shortBuffer.remaining() / this.channelCount, this.outputFrameCount);
        shortBuffer.put(this.outputBuffer, 0, this.channelCount * min);
        int i = this.outputFrameCount - min;
        this.outputFrameCount = i;
        short[] sArr = this.outputBuffer;
        int i2 = this.channelCount;
        System.arraycopy(sArr, min * i2, sArr, 0, i * i2);
    }

    public void queueEndOfStream() {
        int i;
        int i2 = this.inputFrameCount;
        float f = this.speed;
        float f2 = this.pitch;
        int i3 = this.outputFrameCount + ((int) ((((i2 / (f / f2)) + this.pitchFrameCount) / (this.rate * f2)) + 0.5f));
        this.inputBuffer = ensureSpaceForAdditionalFrames(this.inputBuffer, i2, (this.maxRequiredFrameCount * 2) + i2);
        int i4 = 0;
        while (true) {
            i = this.maxRequiredFrameCount;
            int i5 = this.channelCount;
            if (i4 >= i * 2 * i5) {
                break;
            }
            this.inputBuffer[(i5 * i2) + i4] = (short) 0;
            i4++;
        }
        this.inputFrameCount += i * 2;
        processStreamInput();
        if (this.outputFrameCount > i3) {
            this.outputFrameCount = i3;
        }
        this.inputFrameCount = 0;
        this.remainingInputToCopyFrameCount = 0;
        this.pitchFrameCount = 0;
    }

    public void queueInput(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining();
        int i = this.channelCount;
        int i2 = remaining / i;
        short[] ensureSpaceForAdditionalFrames = ensureSpaceForAdditionalFrames(this.inputBuffer, this.inputFrameCount, i2);
        this.inputBuffer = ensureSpaceForAdditionalFrames;
        shortBuffer.get(ensureSpaceForAdditionalFrames, this.inputFrameCount * this.channelCount, ((i * i2) * 2) / 2);
        this.inputFrameCount += i2;
        processStreamInput();
    }
}
