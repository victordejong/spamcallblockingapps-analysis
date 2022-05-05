package com.bumptech.glide.gifdecoder;

import android.graphics.Bitmap;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p001v4.app.FragmentTransaction;
import android.util.Log;
import com.bumptech.glide.gifdecoder.GifDecoder;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/gifdecoder/StandardGifDecoder.class */
public class StandardGifDecoder implements GifDecoder {
    private static final int BYTES_PER_INTEGER = 4;
    @ColorInt
    private static final int COLOR_TRANSPARENT_BLACK = 0;
    private static final int INITIAL_FRAME_POINTER = -1;
    private static final int MASK_INT_LOWEST_BYTE = 255;
    private static final int MAX_STACK_SIZE = 4096;
    private static final int NULL_CODE = -1;
    private static final String TAG = "StandardGifDecoder";
    @ColorInt
    private int[] act;
    @NonNull
    private Bitmap.Config bitmapConfig;
    private final GifDecoder.BitmapProvider bitmapProvider;
    private byte[] block;
    private int downsampledHeight;
    private int downsampledWidth;
    private int framePointer;
    private GifHeader header;
    @Nullable
    private Boolean isFirstFrameTransparent;
    private byte[] mainPixels;
    @ColorInt
    private int[] mainScratch;
    private GifHeaderParser parser;
    @ColorInt
    private final int[] pct;
    private byte[] pixelStack;
    private short[] prefix;
    private Bitmap previousImage;
    private ByteBuffer rawData;
    private int sampleSize;
    private boolean savePrevious;
    private int status;
    private byte[] suffix;

    public StandardGifDecoder(@NonNull GifDecoder.BitmapProvider bitmapProvider) {
        this.pct = new int[256];
        this.bitmapConfig = Bitmap.Config.ARGB_8888;
        this.bitmapProvider = bitmapProvider;
        this.header = new GifHeader();
    }

    public StandardGifDecoder(@NonNull GifDecoder.BitmapProvider bitmapProvider, GifHeader gifHeader, ByteBuffer byteBuffer) {
        this(bitmapProvider, gifHeader, byteBuffer, 1);
    }

    public StandardGifDecoder(@NonNull GifDecoder.BitmapProvider bitmapProvider, GifHeader gifHeader, ByteBuffer byteBuffer, int i) {
        this(bitmapProvider);
        setData(gifHeader, byteBuffer, i);
    }

    @ColorInt
    private int averageColorsNear(int i, int i2, int i3) {
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        for (int i9 = i; i9 < this.sampleSize + i && i9 < this.mainPixels.length && i9 < i2; i9++) {
            int i10 = this.act[this.mainPixels[i9] & 255];
            i4 = i4;
            i5 = i5;
            i6 = i6;
            i7 = i7;
            i8 = i8;
            if (i10 != 0) {
                i4 += (i10 >> 24) & 255;
                i5 += (i10 >> 16) & 255;
                i6 += (i10 >> 8) & 255;
                i7 += i10 & 255;
                i8++;
            }
        }
        int i11 = i + i3;
        int i12 = i5;
        int i13 = i4;
        for (int i14 = i11; i14 < this.sampleSize + i11 && i14 < this.mainPixels.length && i14 < i2; i14++) {
            int i15 = this.act[this.mainPixels[i14] & 255];
            i13 = i13;
            i12 = i12;
            i6 = i6;
            i7 = i7;
            i8 = i8;
            if (i15 != 0) {
                i13 += (i15 >> 24) & 255;
                i12 += (i15 >> 16) & 255;
                i6 += (i15 >> 8) & 255;
                i7 += i15 & 255;
                i8++;
            }
        }
        if (i8 == 0) {
            return 0;
        }
        return ((i13 / i8) << 24) | ((i12 / i8) << 16) | ((i6 / i8) << 8) | (i7 / i8);
    }

    private void copyCopyIntoScratchRobust(GifFrame gifFrame) {
        int i;
        int[] iArr = this.mainScratch;
        int i2 = gifFrame.f94ih / this.sampleSize;
        int i3 = gifFrame.f97iy / this.sampleSize;
        int i4 = gifFrame.f95iw / this.sampleSize;
        int i5 = gifFrame.f96ix / this.sampleSize;
        boolean z = this.framePointer == 0;
        int i6 = this.sampleSize;
        int i7 = this.downsampledWidth;
        int i8 = this.downsampledHeight;
        byte[] bArr = this.mainPixels;
        int[] iArr2 = this.act;
        Boolean bool = this.isFirstFrameTransparent;
        int i9 = 0;
        int i10 = 1;
        int i11 = 8;
        for (int i12 = 0; i12 < i2; i12++) {
            if (gifFrame.interlace) {
                int i13 = i9;
                i10 = i10;
                int i14 = i11;
                if (i9 >= i2) {
                    i10++;
                    switch (i10) {
                        case 2:
                            i13 = 4;
                            i14 = i11;
                            break;
                        case 3:
                            i13 = 2;
                            i14 = 4;
                            break;
                        case 4:
                            i13 = 1;
                            i14 = 2;
                            break;
                        default:
                            i13 = i9;
                            i14 = i11;
                            break;
                    }
                }
                i9 = i13 + i14;
                i = i13;
                i11 = i14;
            } else {
                i9 = i9;
                i = i12;
                i11 = i11;
            }
            int i15 = i + i3;
            boolean z2 = i6 == 1;
            if (i15 < i8) {
                int i16 = i15 * i7;
                int i17 = i16 + i5;
                int i18 = i17 + i4;
                int i19 = i16 + i7;
                int i20 = i18;
                if (i19 < i18) {
                    i20 = i19;
                }
                int i21 = i12 * i6 * gifFrame.f95iw;
                if (z2) {
                    int i22 = i17;
                    while (true) {
                        bool = bool;
                        if (i22 < i20) {
                            int i23 = iArr2[bArr[i21] & 255];
                            if (i23 != 0) {
                                iArr[i22] = i23;
                                bool = bool;
                            } else {
                                bool = bool;
                                if (z) {
                                    bool = bool;
                                    if (bool == null) {
                                        bool = true;
                                    }
                                }
                            }
                            i21 += i6;
                            i22++;
                        }
                    }
                } else {
                    int i24 = i17;
                    Boolean bool2 = bool;
                    int i25 = i21;
                    while (true) {
                        bool = bool2;
                        if (i24 < i20) {
                            int averageColorsNear = averageColorsNear(i25, ((i20 - i17) * i6) + i21, gifFrame.f95iw);
                            if (averageColorsNear != 0) {
                                iArr[i24] = averageColorsNear;
                            } else if (z && bool2 == null) {
                                bool2 = true;
                            }
                            i25 += i6;
                            i24++;
                        }
                    }
                }
            }
        }
        if (this.isFirstFrameTransparent == null) {
            this.isFirstFrameTransparent = Boolean.valueOf(bool == null ? false : bool.booleanValue());
        }
    }

    private void copyIntoScratchFast(GifFrame gifFrame) {
        int[] iArr = this.mainScratch;
        int i = gifFrame.f94ih;
        int i2 = gifFrame.f97iy;
        int i3 = gifFrame.f95iw;
        int i4 = gifFrame.f96ix;
        boolean z = this.framePointer == 0;
        int i5 = this.downsampledWidth;
        byte[] bArr = this.mainPixels;
        int[] iArr2 = this.act;
        byte b = -1;
        for (int i6 = 0; i6 < i; i6++) {
            int i7 = (i6 + i2) * i5;
            int i8 = i7 + i4;
            int i9 = i8 + i3;
            int i10 = i7 + i5;
            int i11 = i9;
            if (i10 < i9) {
                i11 = i10;
            }
            int i12 = gifFrame.f95iw * i6;
            while (i8 < i11) {
                byte b2 = bArr[i12];
                int i13 = b2 & 255;
                b = b;
                if (i13 != b) {
                    int i14 = iArr2[i13];
                    if (i14 != 0) {
                        iArr[i8] = i14;
                        b = b;
                    } else {
                        b = b2;
                    }
                }
                i12++;
                i8++;
            }
        }
        this.isFirstFrameTransparent = Boolean.valueOf(this.isFirstFrameTransparent == null && z && b != -1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void decodeBitmapData(GifFrame gifFrame) {
        short s;
        if (gifFrame != null) {
            this.rawData.position(gifFrame.bufferFrameStart);
        }
        int i = gifFrame == null ? this.header.width * this.header.height : gifFrame.f94ih * gifFrame.f95iw;
        if (this.mainPixels == null || this.mainPixels.length < i) {
            this.mainPixels = this.bitmapProvider.obtainByteArray(i);
        }
        byte[] bArr = this.mainPixels;
        if (this.prefix == null) {
            this.prefix = new short[4096];
        }
        short[] sArr = this.prefix;
        if (this.suffix == null) {
            this.suffix = new byte[4096];
        }
        byte[] bArr2 = this.suffix;
        if (this.pixelStack == null) {
            this.pixelStack = new byte[FragmentTransaction.TRANSIT_FRAGMENT_OPEN];
        }
        byte[] bArr3 = this.pixelStack;
        int readByte = readByte();
        int i2 = 1 << readByte;
        int i3 = i2 + 2;
        int i4 = readByte + 1;
        int i5 = (1 << i4) - 1;
        int i6 = 0;
        for (int i7 = 0; i7 < i2; i7++) {
            sArr[i7] = (short) 0;
            bArr2[i7] = (byte) i7;
        }
        byte[] bArr4 = this.block;
        int i8 = i4;
        int i9 = i3;
        int i10 = i5;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = -1;
        int i17 = 0;
        int i18 = 0;
        StandardGifDecoder standardGifDecoder = this;
        while (true) {
            if (i6 >= i) {
                break;
            }
            int i19 = i11;
            if (i11 == 0) {
                i19 = readBlock();
                if (i19 <= 0) {
                    standardGifDecoder.status = 3;
                    break;
                }
                i15 = 0;
            }
            int i20 = i14 + ((bArr4[i15] & 255) << i13);
            int i21 = i15 + 1;
            int i22 = i19 - 1;
            int i23 = i13 + 8;
            int i24 = i12;
            int i25 = i6;
            while (true) {
                if (i23 < i8) {
                    i6 = i25;
                    i12 = i24;
                    i17 = i17;
                    i13 = i23;
                    standardGifDecoder = this;
                    i4 = i4;
                    i11 = i22;
                    i14 = i20;
                    i15 = i21;
                    i16 = i16;
                    i9 = i9;
                    i8 = i8;
                    break;
                }
                int i26 = i20 & i10;
                int i27 = i20 >> i8;
                int i28 = i23 - i8;
                if (i26 == i2) {
                    i8 = i4;
                    i9 = i3;
                    i10 = i5;
                    i16 = -1;
                    i24 = i24;
                    i25 = i25;
                } else if (i26 == i2 + 1) {
                    i6 = i25;
                    i17 = i17;
                    i4 = i4;
                    i11 = i22;
                    i12 = i24;
                    i13 = i28;
                    i14 = i27;
                    i15 = i21;
                    i16 = i16;
                    i9 = i9;
                    i8 = i8;
                    break;
                } else {
                    if (i16 == -1) {
                        bArr[i24] = bArr2[i26];
                        i24++;
                        i25++;
                        i17 = i26;
                    } else {
                        if (i26 >= i9) {
                            bArr3[i18] = (byte) i17;
                            i18++;
                            s = i16;
                        } else {
                            s = i26;
                        }
                        while (s >= i2) {
                            bArr3[i18] = bArr2[s];
                            i18++;
                            s = sArr[s];
                        }
                        int i29 = bArr2[s] & 255;
                        byte b = (byte) i29;
                        bArr[i24] = b;
                        int i30 = i24 + 1;
                        while (true) {
                            i25++;
                            if (i18 <= 0) {
                                break;
                            }
                            i18--;
                            bArr[i30] = bArr3[i18];
                            i30++;
                        }
                        i9 = i9;
                        i8 = i8;
                        i10 = i10;
                        if (i9 < 4096) {
                            sArr[i9] = (short) i16;
                            bArr2[i9] = b;
                            int i31 = i9 + 1;
                            i9 = i31;
                            i8 = i8;
                            i10 = i10;
                            if ((i31 & i10) == 0) {
                                i9 = i31;
                                i8 = i8;
                                i10 = i10;
                                if (i31 < 4096) {
                                    i8++;
                                    i10 += i31;
                                    i9 = i31;
                                }
                            }
                        }
                        i17 = i29;
                        i25 = i25;
                        i24 = i30;
                    }
                    i16 = i26;
                    standardGifDecoder = this;
                }
                i23 = i28;
                i20 = i27;
            }
        }
        Arrays.fill(bArr, i12, i, (byte) 0);
    }

    @NonNull
    private GifHeaderParser getHeaderParser() {
        if (this.parser == null) {
            this.parser = new GifHeaderParser();
        }
        return this.parser;
    }

    private Bitmap getNextBitmap() {
        Bitmap obtain = this.bitmapProvider.obtain(this.downsampledWidth, this.downsampledHeight, (this.isFirstFrameTransparent == null || this.isFirstFrameTransparent.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.bitmapConfig);
        obtain.setHasAlpha(true);
        return obtain;
    }

    private int readBlock() {
        int readByte = readByte();
        if (readByte <= 0) {
            return readByte;
        }
        this.rawData.get(this.block, 0, Math.min(readByte, this.rawData.remaining()));
        return readByte;
    }

    private int readByte() {
        return this.rawData.get() & 255;
    }

    private Bitmap setPixels(GifFrame gifFrame, GifFrame gifFrame2) {
        int i;
        int[] iArr = this.mainScratch;
        if (gifFrame2 == null) {
            if (this.previousImage != null) {
                this.bitmapProvider.release(this.previousImage);
            }
            this.previousImage = null;
            Arrays.fill(iArr, 0);
        }
        if (gifFrame2 != null && gifFrame2.dispose == 3 && this.previousImage == null) {
            Arrays.fill(iArr, 0);
        }
        if (gifFrame2 != null && gifFrame2.dispose > 0) {
            if (gifFrame2.dispose == 2) {
                if (!gifFrame.transparency) {
                    i = this.header.bgColor;
                    if (gifFrame.lct != null && this.header.bgIndex == gifFrame.transIndex) {
                        i = 0;
                    }
                } else {
                    i = 0;
                    if (this.framePointer == 0) {
                        this.isFirstFrameTransparent = true;
                        i = 0;
                    }
                }
                int i2 = gifFrame2.f94ih / this.sampleSize;
                int i3 = gifFrame2.f97iy / this.sampleSize;
                int i4 = gifFrame2.f95iw / this.sampleSize;
                int i5 = (i3 * this.downsampledWidth) + (gifFrame2.f96ix / this.sampleSize);
                int i6 = this.downsampledWidth;
                int i7 = i5;
                while (i7 < (i2 * i6) + i5) {
                    for (int i8 = i7; i8 < i7 + i4; i8++) {
                        iArr[i8] = i;
                    }
                    i7 += this.downsampledWidth;
                }
            } else if (gifFrame2.dispose == 3 && this.previousImage != null) {
                this.previousImage.getPixels(iArr, 0, this.downsampledWidth, 0, 0, this.downsampledWidth, this.downsampledHeight);
            }
        }
        decodeBitmapData(gifFrame);
        if (gifFrame.interlace || this.sampleSize != 1) {
            copyCopyIntoScratchRobust(gifFrame);
        } else {
            copyIntoScratchFast(gifFrame);
        }
        if (this.savePrevious && (gifFrame.dispose == 0 || gifFrame.dispose == 1)) {
            if (this.previousImage == null) {
                this.previousImage = getNextBitmap();
            }
            this.previousImage.setPixels(iArr, 0, this.downsampledWidth, 0, 0, this.downsampledWidth, this.downsampledHeight);
        }
        Bitmap nextBitmap = getNextBitmap();
        nextBitmap.setPixels(iArr, 0, this.downsampledWidth, 0, 0, this.downsampledWidth, this.downsampledHeight);
        return nextBitmap;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void advance() {
        this.framePointer = (this.framePointer + 1) % this.header.frameCount;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void clear() {
        this.header = null;
        if (this.mainPixels != null) {
            this.bitmapProvider.release(this.mainPixels);
        }
        if (this.mainScratch != null) {
            this.bitmapProvider.release(this.mainScratch);
        }
        if (this.previousImage != null) {
            this.bitmapProvider.release(this.previousImage);
        }
        this.previousImage = null;
        this.rawData = null;
        this.isFirstFrameTransparent = null;
        if (this.block != null) {
            this.bitmapProvider.release(this.block);
        }
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getByteSize() {
        return this.rawData.limit() + this.mainPixels.length + (this.mainScratch.length * 4);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getCurrentFrameIndex() {
        return this.framePointer;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    @NonNull
    public ByteBuffer getData() {
        return this.rawData;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getDelay(int i) {
        return (i < 0 || i >= this.header.frameCount) ? -1 : this.header.frames.get(i).delay;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getFrameCount() {
        return this.header.frameCount;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getHeight() {
        return this.header.height;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    @Deprecated
    public int getLoopCount() {
        if (this.header.loopCount == -1) {
            return 1;
        }
        return this.header.loopCount;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getNetscapeLoopCount() {
        return this.header.loopCount;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getNextDelay() {
        if (this.header.frameCount <= 0 || this.framePointer < 0) {
            return 0;
        }
        return getDelay(this.framePointer);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    @Nullable
    public Bitmap getNextFrame() {
        synchronized (this) {
            if (this.header.frameCount <= 0 || this.framePointer < 0) {
                if (Log.isLoggable(TAG, 3)) {
                    String str = TAG;
                    Log.d(str, "Unable to decode frame, frameCount=" + this.header.frameCount + ", framePointer=" + this.framePointer);
                }
                this.status = 1;
            }
            if (!(this.status == 1 || this.status == 2)) {
                this.status = 0;
                if (this.block == null) {
                    this.block = this.bitmapProvider.obtainByteArray(255);
                }
                GifFrame gifFrame = this.header.frames.get(this.framePointer);
                int i = this.framePointer - 1;
                GifFrame gifFrame2 = i >= 0 ? this.header.frames.get(i) : null;
                this.act = gifFrame.lct != null ? gifFrame.lct : this.header.gct;
                if (this.act == null) {
                    if (Log.isLoggable(TAG, 3)) {
                        String str2 = TAG;
                        Log.d(str2, "No valid color table found for frame #" + this.framePointer);
                    }
                    this.status = 1;
                    return null;
                }
                if (gifFrame.transparency) {
                    System.arraycopy(this.act, 0, this.pct, 0, this.act.length);
                    this.act = this.pct;
                    this.act[gifFrame.transIndex] = 0;
                }
                return setPixels(gifFrame, gifFrame2);
            }
            if (Log.isLoggable(TAG, 3)) {
                String str3 = TAG;
                Log.d(str3, "Unable to decode frame, status=" + this.status);
            }
            return null;
        }
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getStatus() {
        return this.status;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getTotalIterationCount() {
        if (this.header.loopCount == -1) {
            return 1;
        }
        if (this.header.loopCount == 0) {
            return 0;
        }
        return this.header.loopCount + 1;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getWidth() {
        return this.header.width;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int read(@Nullable InputStream inputStream, int i) {
        if (inputStream != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i > 0 ? i + 4096 : 16384);
                byte[] bArr = new byte[16384];
                while (true) {
                    int read = inputStream.read(bArr, 0, bArr.length);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                byteArrayOutputStream.flush();
                read(byteArrayOutputStream.toByteArray());
            } catch (IOException e) {
                Log.w(TAG, "Error reading data from stream", e);
            }
        } else {
            this.status = 2;
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e2) {
                Log.w(TAG, "Error closing stream", e2);
            }
        }
        return this.status;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int read(@Nullable byte[] bArr) {
        int i;
        synchronized (this) {
            this.header = getHeaderParser().setData(bArr).parseHeader();
            if (bArr != null) {
                setData(this.header, bArr);
            }
            i = this.status;
        }
        return i;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void resetFrameIndex() {
        this.framePointer = -1;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void setData(@NonNull GifHeader gifHeader, @NonNull ByteBuffer byteBuffer) {
        synchronized (this) {
            setData(gifHeader, byteBuffer, 1);
        }
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void setData(@NonNull GifHeader gifHeader, @NonNull ByteBuffer byteBuffer, int i) {
        synchronized (this) {
            if (i <= 0) {
                throw new IllegalArgumentException("Sample size must be >=0, not: " + i);
            }
            int highestOneBit = Integer.highestOneBit(i);
            this.status = 0;
            this.header = gifHeader;
            this.framePointer = -1;
            this.rawData = byteBuffer.asReadOnlyBuffer();
            this.rawData.position(0);
            this.rawData.order(ByteOrder.LITTLE_ENDIAN);
            this.savePrevious = false;
            Iterator<GifFrame> it = gifHeader.frames.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().dispose == 3) {
                        this.savePrevious = true;
                        break;
                    }
                } else {
                    break;
                }
            }
            this.sampleSize = highestOneBit;
            this.downsampledWidth = gifHeader.width / highestOneBit;
            this.downsampledHeight = gifHeader.height / highestOneBit;
            this.mainPixels = this.bitmapProvider.obtainByteArray(gifHeader.width * gifHeader.height);
            this.mainScratch = this.bitmapProvider.obtainIntArray(this.downsampledWidth * this.downsampledHeight);
        }
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void setData(@NonNull GifHeader gifHeader, @NonNull byte[] bArr) {
        synchronized (this) {
            setData(gifHeader, ByteBuffer.wrap(bArr));
        }
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void setDefaultBitmapConfig(@NonNull Bitmap.Config config) {
        if (config == Bitmap.Config.ARGB_8888 || config == Bitmap.Config.RGB_565) {
            this.bitmapConfig = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + Bitmap.Config.ARGB_8888 + " or " + Bitmap.Config.RGB_565);
    }
}
