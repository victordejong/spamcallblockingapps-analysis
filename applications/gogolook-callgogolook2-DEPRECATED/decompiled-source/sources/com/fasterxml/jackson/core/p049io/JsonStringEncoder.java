package com.fasterxml.jackson.core.p049io;

import androidx.media2.exoplayer.external.extractor.p007ts.PsExtractor;
import com.fasterxml.jackson.core.base.GeneratorBase;
import com.fasterxml.jackson.core.util.BufferRecycler;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.core.util.TextBuffer;
import java.lang.ref.SoftReference;
/* renamed from: com.fasterxml.jackson.core.io.JsonStringEncoder */
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/io/JsonStringEncoder.class */
public final class JsonStringEncoder {
    public ByteArrayBuilder _bytes;
    public final char[] _qbuf = new char[6];
    public TextBuffer _text;

    /* renamed from: HC */
    public static final char[] f3803HC = CharTypes.copyHexChars();

    /* renamed from: HB */
    public static final byte[] f3802HB = CharTypes.copyHexBytes();
    public static final ThreadLocal<SoftReference<JsonStringEncoder>> _threadEncoder = new ThreadLocal<>();

    public JsonStringEncoder() {
        char[] cArr = this._qbuf;
        cArr[0] = (char) 92;
        cArr[2] = (char) 48;
        cArr[3] = (char) 48;
    }

    public static int _convert(int i, int i2) {
        if (i2 >= 56320 && i2 <= 57343) {
            return ((i - GeneratorBase.SURR1_FIRST) << 10) + 65536 + (i2 - GeneratorBase.SURR2_FIRST);
        }
        throw new IllegalArgumentException("Broken surrogate pair: first char 0x" + Integer.toHexString(i) + ", second 0x" + Integer.toHexString(i2) + "; illegal combination");
    }

    public static void _illegal(int i) {
        throw new IllegalArgumentException(UTF8Writer.illegalSurrogateDesc(i));
    }

    public static JsonStringEncoder getInstance() {
        SoftReference<JsonStringEncoder> softReference = _threadEncoder.get();
        JsonStringEncoder jsonStringEncoder = softReference == null ? null : softReference.get();
        JsonStringEncoder jsonStringEncoder2 = jsonStringEncoder;
        if (jsonStringEncoder == null) {
            jsonStringEncoder2 = new JsonStringEncoder();
            _threadEncoder.set(new SoftReference<>(jsonStringEncoder2));
        }
        return jsonStringEncoder2;
    }

    public final int _appendByte(int i, int i2, ByteArrayBuilder byteArrayBuilder, int i3) {
        byteArrayBuilder.setCurrentSegmentLength(i3);
        byteArrayBuilder.append(92);
        if (i2 < 0) {
            byteArrayBuilder.append(117);
            if (i > 255) {
                int i4 = i >> 8;
                byteArrayBuilder.append(f3802HB[i4 >> 4]);
                byteArrayBuilder.append(f3802HB[i4 & 15]);
                i &= 255;
            } else {
                byteArrayBuilder.append(48);
                byteArrayBuilder.append(48);
            }
            byteArrayBuilder.append(f3802HB[i >> 4]);
            byteArrayBuilder.append(f3802HB[i & 15]);
        } else {
            byteArrayBuilder.append((byte) i2);
        }
        return byteArrayBuilder.getCurrentSegmentLength();
    }

    public final int _appendNamed(int i, char[] cArr) {
        cArr[1] = (char) i;
        return 2;
    }

    public final int _appendNumeric(int i, char[] cArr) {
        cArr[1] = (char) 117;
        char[] cArr2 = f3803HC;
        cArr[4] = cArr2[i >> 4];
        cArr[5] = cArr2[i & 15];
        return 6;
    }

    public byte[] encodeAsUTF8(String str) {
        int i;
        int i2;
        ByteArrayBuilder byteArrayBuilder = this._bytes;
        ByteArrayBuilder byteArrayBuilder2 = byteArrayBuilder;
        if (byteArrayBuilder == null) {
            byteArrayBuilder2 = new ByteArrayBuilder((BufferRecycler) null);
            this._bytes = byteArrayBuilder2;
        }
        int length = str.length();
        byte[] resetAndGetFirstSegment = byteArrayBuilder2.resetAndGetFirstSegment();
        int length2 = resetAndGetFirstSegment.length;
        int i3 = 0;
        int i4 = 0;
        loop0: while (true) {
            i = i4;
            if (i3 >= length) {
                break;
            }
            i3++;
            char charAt = str.charAt(i3);
            while (charAt <= 127) {
                length2 = length2;
                int i5 = i4;
                if (i4 >= length2) {
                    resetAndGetFirstSegment = byteArrayBuilder2.finishCurrentSegment();
                    length2 = resetAndGetFirstSegment.length;
                    i5 = 0;
                }
                i4 = i5 + 1;
                resetAndGetFirstSegment[i5] = (byte) charAt;
                if (i3 >= length) {
                    i = i4;
                    break loop0;
                }
                charAt = str.charAt(i3);
                i3++;
            }
            int i6 = length2;
            int i7 = i4;
            if (i4 >= length2) {
                resetAndGetFirstSegment = byteArrayBuilder2.finishCurrentSegment();
                i6 = resetAndGetFirstSegment.length;
                i7 = 0;
            }
            if (charAt < 2048) {
                resetAndGetFirstSegment[i7] = (byte) ((charAt >> 6) | PsExtractor.AUDIO_STREAM);
                i2 = i7 + 1;
            } else if (charAt < 55296 || charAt > 57343) {
                int i8 = i7 + 1;
                resetAndGetFirstSegment[i7] = (byte) ((charAt >> '\f') | 224);
                i6 = i6;
                int i9 = i8;
                if (i8 >= i6) {
                    resetAndGetFirstSegment = byteArrayBuilder2.finishCurrentSegment();
                    i6 = resetAndGetFirstSegment.length;
                    i9 = 0;
                }
                i2 = i9 + 1;
                resetAndGetFirstSegment[i9] = (byte) (((charAt >> 6) & 63) | 128);
            } else if (charAt > 56319) {
                _illegal(charAt);
                throw null;
            } else if (i3 < length) {
                int _convert = _convert(charAt, str.charAt(i3));
                if (_convert <= 1114111) {
                    int i10 = i7 + 1;
                    resetAndGetFirstSegment[i7] = (byte) ((_convert >> 18) | 240);
                    int i11 = i6;
                    int i12 = i10;
                    if (i10 >= i6) {
                        resetAndGetFirstSegment = byteArrayBuilder2.finishCurrentSegment();
                        i11 = resetAndGetFirstSegment.length;
                        i12 = 0;
                    }
                    int i13 = i12 + 1;
                    resetAndGetFirstSegment[i12] = (byte) (((_convert >> 12) & 63) | 128);
                    i6 = i11;
                    int i14 = i13;
                    if (i13 >= i11) {
                        resetAndGetFirstSegment = byteArrayBuilder2.finishCurrentSegment();
                        i6 = resetAndGetFirstSegment.length;
                        i14 = 0;
                    }
                    resetAndGetFirstSegment[i14] = (byte) (((_convert >> 6) & 63) | 128);
                    i2 = i14 + 1;
                    i3++;
                    charAt = _convert;
                } else {
                    _illegal(_convert);
                    throw null;
                }
            } else {
                _illegal(charAt);
                throw null;
            }
            length2 = i6;
            int i15 = i2;
            if (i2 >= i6) {
                resetAndGetFirstSegment = byteArrayBuilder2.finishCurrentSegment();
                length2 = resetAndGetFirstSegment.length;
                i15 = 0;
            }
            resetAndGetFirstSegment[i15] = (byte) ((charAt & '?') | 128);
            i4 = i15 + 1;
        }
        return this._bytes.completeAndCoalesce(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0056, code lost:
        r0 = r7.charAt(r13);
        r0 = r0[r0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0067, code lost:
        if (r0 >= 0) goto L_0x0079;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x006a, code lost:
        r15 = _appendNumeric(r0, r6._qbuf);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0079, code lost:
        r15 = _appendNamed(r0, r6._qbuf);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0085, code lost:
        r0 = r14 + r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0090, code lost:
        if (r0 <= r8.length) goto L_0x00c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0093, code lost:
        r0 = r8.length - r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x009c, code lost:
        if (r0 <= 0) goto L_0x00ac;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x009f, code lost:
        java.lang.System.arraycopy(r6._qbuf, 0, r8, r14, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00ac, code lost:
        r8 = r9.finishCurrentSegment();
        r14 = r15 - r0;
        java.lang.System.arraycopy(r6._qbuf, r0, r8, 0, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00c8, code lost:
        java.lang.System.arraycopy(r6._qbuf, 0, r8, r14, r15);
        r14 = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public char[] quoteAsString(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.p049io.JsonStringEncoder.quoteAsString(java.lang.String):char[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x025c, code lost:
        return r6._bytes.completeAndCoalesce(r14);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] quoteAsUTF8(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 605
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.p049io.JsonStringEncoder.quoteAsUTF8(java.lang.String):byte[]");
    }
}
