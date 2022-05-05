package androidx.media2.player.exoplayer;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.BaseRenderer;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.FormatHolder;
import androidx.media2.exoplayer.external.text.SubtitleInputBuffer;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.SortedMap;
import java.util.TreeMap;
@SuppressLint({"RestrictedApi"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes-dex2jar.jar:androidx/media2/player/exoplayer/TextRenderer.class */
public class TextRenderer extends BaseRenderer {
    public static final int CHANNEL_UNSET = -1;
    public static final int PACKET_LENGTH = 3;
    public static final int READ_AHEAD_THRESHOLD_US = 110000;
    public static final int TRACK_TYPE_CEA608 = 0;
    public static final int TRACK_TYPE_CEA708 = 1;
    public static final int TRACK_TYPE_UNSET = -1;
    public static final int TRACK_TYPE_WEBVTT = 2;
    public boolean mHasPendingInputBuffer;
    public boolean mInputStreamEnded;
    public boolean[] mIsTypeAndChannelAdvertised;
    public final Output mOutput;
    public final Handler mHandler = new Handler(Looper.myLooper());
    public final ParsableByteArray mCcData = new ParsableByteArray();
    public final SortedMap<Long, byte[]> mCcMap = new TreeMap();
    public final FormatHolder mFormatHolder = new FormatHolder();
    public final SubtitleInputBuffer mInputBuffer = new SubtitleInputBuffer();
    public final DataBuilder mLine21DataBuilder = new DataBuilder();
    public final DataBuilder mDtvDataBuilder = new DataBuilder();
    public final int[] mLine21Channels = new int[2];
    public final ParsableByteArray mScratch = new ParsableByteArray();
    public int mSelectedType = -1;
    public int mSelectedChannel = -1;

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/exoplayer/TextRenderer$DataBuilder.class */
    public static final class DataBuilder {
        public byte[] mData = new byte[3];
        public int mLength;

        public void append(byte b, byte b2) {
            int i = this.mLength;
            byte[] bArr = this.mData;
            if (i + 2 > bArr.length) {
                this.mData = Arrays.copyOf(bArr, bArr.length * 2);
            }
            byte[] bArr2 = this.mData;
            int i2 = this.mLength;
            this.mLength = i2 + 1;
            bArr2[i2] = b;
            int i3 = this.mLength;
            this.mLength = i3 + 1;
            bArr2[i3] = b2;
        }

        public void append(byte b, byte b2, byte b3) {
            int i = this.mLength;
            byte[] bArr = this.mData;
            if (i + 3 > bArr.length) {
                this.mData = Arrays.copyOf(bArr, bArr.length * 2);
            }
            byte[] bArr2 = this.mData;
            int i2 = this.mLength;
            this.mLength = i2 + 1;
            bArr2[i2] = b;
            int i3 = this.mLength;
            this.mLength = i3 + 1;
            bArr2[i3] = b2;
            int i4 = this.mLength;
            this.mLength = i4 + 1;
            bArr2[i4] = b3;
        }

        public void clear() {
            this.mLength = 0;
        }

        public boolean hasData() {
            return this.mLength > 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/exoplayer/TextRenderer$Output.class */
    public interface Output {
        void onCcData(byte[] bArr, long j);

        void onChannelAvailable(int i, int i2);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/exoplayer/TextRenderer$TextTrackType.class */
    public @interface TextTrackType {
    }

    public TextRenderer(Output output) {
        super(3);
        this.mOutput = output;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void display(long r7) {
        /*
            r6 = this;
            r0 = r6
            int r0 = r0.mSelectedType
            r1 = -1
            if (r0 == r1) goto L_0x00a1
            r0 = r6
            int r0 = r0.mSelectedChannel
            r1 = -1
            if (r0 != r1) goto L_0x0013
            goto L_0x00a1
        L_0x0013:
            r0 = 0
            byte[] r0 = new byte[r0]
            r9 = r0
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r10 = r0
        L_0x001c:
            r0 = r6
            java.util.SortedMap<java.lang.Long, byte[]> r0 = r0.mCcMap
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0090
            r0 = r6
            java.util.SortedMap<java.lang.Long, byte[]> r0 = r0.mCcMap
            java.lang.Object r0 = r0.firstKey()
            java.lang.Long r0 = (java.lang.Long) r0
            long r0 = r0.longValue()
            r12 = r0
            r0 = r7
            r1 = r12
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0043
            goto L_0x0090
        L_0x0043:
            r0 = r6
            java.util.SortedMap<java.lang.Long, byte[]> r0 = r0.mCcMap
            r1 = r12
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            java.lang.Object r0 = r0.get(r1)
            java.lang.Object r0 = androidx.core.util.Preconditions.checkNotNull(r0)
            byte[] r0 = (byte[]) r0
            r14 = r0
            r0 = r9
            int r0 = r0.length
            r15 = r0
            r0 = r9
            r1 = r14
            int r1 = r1.length
            r2 = r15
            int r1 = r1 + r2
            byte[] r0 = java.util.Arrays.copyOf(r0, r1)
            r9 = r0
            r0 = r14
            r1 = 0
            r2 = r9
            r3 = r15
            r4 = r14
            int r4 = r4.length
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r6
            java.util.SortedMap<java.lang.Long, byte[]> r0 = r0.mCcMap
            r14 = r0
            r0 = r14
            r1 = r14
            java.lang.Object r1 = r1.firstKey()
            java.lang.Object r0 = r0.remove(r1)
            r0 = r12
            r10 = r0
            goto L_0x001c
        L_0x0090:
            r0 = r9
            int r0 = r0.length
            if (r0 <= 0) goto L_0x00a1
            r0 = r6
            androidx.media2.player.exoplayer.TextRenderer$Output r0 = r0.mOutput
            r1 = r9
            r2 = r10
            r0.onCcData(r1, r2)
        L_0x00a1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.player.exoplayer.TextRenderer.display(long):void");
    }

    private void flush() {
        this.mCcMap.clear();
        this.mLine21DataBuilder.clear();
        this.mDtvDataBuilder.clear();
        this.mInputStreamEnded = false;
        this.mHasPendingInputBuffer = false;
    }

    private void handleDtvPacket(DataBuilder dataBuilder, long j) {
        this.mScratch.reset(dataBuilder.mData, dataBuilder.mLength);
        dataBuilder.clear();
        int readUnsignedByte = this.mScratch.readUnsignedByte() & 31;
        int i = readUnsignedByte;
        if (readUnsignedByte == 0) {
            i = 64;
        }
        if (this.mScratch.limit() == i * 2) {
            while (this.mScratch.bytesLeft() >= 2) {
                int readUnsignedByte2 = this.mScratch.readUnsignedByte();
                int i2 = (readUnsignedByte2 & 224) >> 5;
                int i3 = readUnsignedByte2 & 31;
                int i4 = i2;
                if (i2 == 7) {
                    int readUnsignedByte3 = this.mScratch.readUnsignedByte() & 63;
                    i4 = readUnsignedByte3;
                    if (readUnsignedByte3 < 7) {
                        return;
                    }
                }
                if (this.mScratch.bytesLeft() >= i3) {
                    if (i3 > 0) {
                        maybeAdvertiseChannel(1, i4);
                        if (this.mSelectedType == 1 && this.mSelectedChannel == i4) {
                            byte[] bArr = new byte[i3];
                            this.mScratch.readBytes(bArr, 0, i3);
                            this.mCcMap.put(Long.valueOf(j), bArr);
                        } else {
                            this.mScratch.skipBytes(i3);
                        }
                    }
                } else {
                    return;
                }
            }
        }
    }

    private void handleLine21Packet(DataBuilder dataBuilder, long j) {
        this.mCcMap.put(Long.valueOf(j), Arrays.copyOf(dataBuilder.mData, dataBuilder.mLength));
        dataBuilder.clear();
    }

    private void maybeAdvertiseChannel(final int i, final int i2) {
        int i3 = (i << 6) + i2;
        boolean[] zArr = this.mIsTypeAndChannelAdvertised;
        if (!zArr[i3]) {
            zArr[i3] = true;
            this.mHandler.post(new Runnable() { // from class: androidx.media2.player.exoplayer.TextRenderer.1
                @Override // java.lang.Runnable
                public void run() {
                    TextRenderer.this.mOutput.onChannelAvailable(i, i2);
                }
            });
        }
    }

    public void clearSelection() {
        synchronized (this) {
            select(-1, -1);
        }
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public boolean isEnded() {
        return this.mInputStreamEnded && this.mCcMap.isEmpty();
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public boolean isReady() {
        return true;
    }

    @Override // androidx.media2.exoplayer.external.BaseRenderer
    public void onPositionReset(long j, boolean z) {
        synchronized (this) {
            flush();
        }
    }

    @Override // androidx.media2.exoplayer.external.BaseRenderer
    public void onStreamChanged(Format[] formatArr, long j) throws ExoPlaybackException {
        super.onStreamChanged(formatArr, j);
        this.mIsTypeAndChannelAdvertised = new boolean[128];
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public void render(long j, long j2) {
        synchronized (this) {
            if (getState() == 2) {
                display(j);
                if (!this.mHasPendingInputBuffer) {
                    this.mInputBuffer.clear();
                    int readSource = readSource(this.mFormatHolder, this.mInputBuffer, false);
                    if (readSource != -3 && readSource != -5) {
                        if (this.mInputBuffer.isEndOfStream()) {
                            this.mInputStreamEnded = true;
                            return;
                        } else {
                            this.mHasPendingInputBuffer = true;
                            this.mInputBuffer.flip();
                        }
                    } else {
                        return;
                    }
                }
                if (this.mInputBuffer.timeUs - j <= 110000) {
                    this.mHasPendingInputBuffer = false;
                    this.mCcData.reset(this.mInputBuffer.data.array(), this.mInputBuffer.data.limit());
                    this.mLine21DataBuilder.clear();
                    while (this.mCcData.bytesLeft() >= 3) {
                        byte readUnsignedByte = (byte) this.mCcData.readUnsignedByte();
                        byte readUnsignedByte2 = (byte) this.mCcData.readUnsignedByte();
                        byte readUnsignedByte3 = (byte) this.mCcData.readUnsignedByte();
                        boolean z = (readUnsignedByte & 4) != 0;
                        int i = readUnsignedByte & 3;
                        if (z) {
                            if (i == 3) {
                                if (this.mDtvDataBuilder.hasData()) {
                                    handleDtvPacket(this.mDtvDataBuilder, this.mInputBuffer.timeUs);
                                }
                                this.mDtvDataBuilder.append(readUnsignedByte2, readUnsignedByte3);
                            } else if (this.mDtvDataBuilder.mLength > 0 && i == 2) {
                                this.mDtvDataBuilder.append(readUnsignedByte2, readUnsignedByte3);
                            } else if (i == 0 || i == 1) {
                                byte b = (byte) (readUnsignedByte2 & Byte.MAX_VALUE);
                                byte b2 = (byte) (readUnsignedByte3 & Byte.MAX_VALUE);
                                if (b >= 16 || b2 >= 16) {
                                    if (b >= 16 && b <= 31) {
                                        int i2 = (b >= 24 ? 1 : 0) + (readUnsignedByte != 0 ? 2 : 0);
                                        this.mLine21Channels[i] = i2;
                                        maybeAdvertiseChannel(0, i2);
                                    }
                                    if (this.mSelectedType == 0 && this.mSelectedChannel == this.mLine21Channels[i]) {
                                        this.mLine21DataBuilder.append((byte) i, b, b2);
                                    }
                                }
                            }
                        } else if (i == 3 || i == 2) {
                            if (this.mDtvDataBuilder.hasData()) {
                                handleDtvPacket(this.mDtvDataBuilder, this.mInputBuffer.timeUs);
                            }
                        }
                    }
                    if (this.mSelectedType == 0 && this.mLine21DataBuilder.hasData()) {
                        handleLine21Packet(this.mLine21DataBuilder, this.mInputBuffer.timeUs);
                    }
                }
            }
        }
    }

    public void select(int i, int i2) {
        synchronized (this) {
            this.mSelectedType = i;
            this.mSelectedChannel = i2;
            flush();
        }
    }

    @Override // androidx.media2.exoplayer.external.RendererCapabilities
    public int supportsFormat(Format format) {
        String str = format.sampleMimeType;
        return (MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str) || "text/vtt".equals(str)) ? 4 : 0;
    }
}
