package com.callapp.repackaged.org.apache.commons.codec.binary;

import io.objectbox.model.PropertyFlags;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec.class */
public abstract class BaseNCodec {

    /* renamed from: a  reason: collision with root package name */
    private final int f17119a;
    @Deprecated

    /* renamed from: b  reason: collision with root package name */
    protected final byte f17120b;

    /* renamed from: c  reason: collision with root package name */
    protected final byte f17121c;

    /* renamed from: d  reason: collision with root package name */
    protected final int f17122d;
    private final int e;
    private final int f;

    /* loaded from: classes2-dex2jar.jar:com/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context.class */
    static class Context {

        /* renamed from: a  reason: collision with root package name */
        int f17123a;

        /* renamed from: b  reason: collision with root package name */
        long f17124b;

        /* renamed from: c  reason: collision with root package name */
        byte[] f17125c;

        /* renamed from: d  reason: collision with root package name */
        int f17126d;
        int e;
        boolean f;
        int g;
        int h;

        public String toString() {
            return String.format("%s[buffer=%s, currentLinePos=%s, eof=%s, ibitWorkArea=%s, lbitWorkArea=%s, modulus=%s, pos=%s, readPos=%s]", getClass().getSimpleName(), Arrays.toString(this.f17125c), Integer.valueOf(this.g), Boolean.valueOf(this.f), Integer.valueOf(this.f17123a), Long.valueOf(this.f17124b), Integer.valueOf(this.h), Integer.valueOf(this.f17126d), Integer.valueOf(this.e));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseNCodec(int i, int i2, int i3, int i4) {
        this(i, i2, i3, i4, (byte) 61);
    }

    protected BaseNCodec(int i, int i2, int i3, int i4, byte b2) {
        this.f17120b = (byte) 61;
        this.f17119a = i;
        this.e = i2;
        this.f17122d = i3 > 0 && i4 > 0 ? (i3 / i2) * i2 : 0;
        this.f = i4;
        this.f17121c = b2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i, Context context) {
        if (context.f17125c == null) {
            return context.f ? -1 : 0;
        }
        int min = Math.min(context.f17125c != null ? context.f17126d - context.e : 0, i);
        System.arraycopy(context.f17125c, context.e, bArr, 0, min);
        context.e += min;
        if (context.e >= context.f17126d) {
            context.f17125c = null;
        }
        return min;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(byte[] bArr, int i, int i2, Context context);

    protected abstract boolean a(byte b2);

    /* JADX INFO: Access modifiers changed from: protected */
    public final byte[] a(int i, Context context) {
        if (context.f17125c != null && context.f17125c.length >= context.f17126d + i) {
            return context.f17125c;
        }
        if (context.f17125c == null) {
            context.f17125c = new byte[getDefaultBufferSize()];
            context.f17126d = 0;
            context.e = 0;
        } else {
            byte[] bArr = new byte[context.f17125c.length * 2];
            System.arraycopy(context.f17125c, 0, bArr, 0, context.f17125c.length);
            context.f17125c = bArr;
        }
        return context.f17125c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void b(byte[] bArr, int i, int i2, Context context);

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean b(byte[] bArr) {
        if (bArr == null) {
            return false;
        }
        for (byte b2 : bArr) {
            if (this.f17121c == b2 || a(b2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long c(byte[] r8) {
        /*
            r7 = this;
            r0 = r8
            int r0 = r0.length
            r9 = r0
            r0 = r7
            int r0 = r0.f17119a
            r10 = r0
            r0 = r9
            r1 = r10
            int r0 = r0 + r1
            r1 = 1
            int r0 = r0 - r1
            r1 = r10
            int r0 = r0 / r1
            long r0 = (long) r0
            r1 = r7
            int r1 = r1.e
            long r1 = (long) r1
            long r0 = r0 * r1
            r11 = r0
            r0 = r7
            int r0 = r0.f17122d
            r9 = r0
            r0 = r11
            r13 = r0
            r0 = r9
            if (r0 <= 0) goto L_0x003a
            r0 = r11
            r1 = r9
            long r1 = (long) r1
            r2 = r11
            long r1 = r1 + r2
            r2 = 1
            long r1 = r1 - r2
            r2 = r9
            long r2 = (long) r2
            long r1 = r1 / r2
            r2 = r7
            int r2 = r2.f
            long r2 = (long) r2
            long r1 = r1 * r2
            long r0 = r0 + r1
            r13 = r0
        L_0x003a:
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.repackaged.org.apache.commons.codec.binary.BaseNCodec.c(byte[]):long");
    }

    protected int getDefaultBufferSize() {
        return PropertyFlags.UNSIGNED;
    }
}
