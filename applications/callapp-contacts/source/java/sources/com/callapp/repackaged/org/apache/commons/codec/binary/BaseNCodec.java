package com.callapp.repackaged.org.apache.commons.codec.binary;

import io.objectbox.model.PropertyFlags;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec.class */
public abstract class BaseNCodec {

    /* renamed from: a */
    private final int f29712a;
    @Deprecated

    /* renamed from: b */
    protected final byte f29713b;

    /* renamed from: c */
    protected final byte f29714c;

    /* renamed from: d */
    protected final int f29715d;

    /* renamed from: e */
    private final int f29716e;

    /* renamed from: f */
    private final int f29717f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context.class */
    public static class Context {

        /* renamed from: a */
        int f29718a;

        /* renamed from: b */
        long f29719b;

        /* renamed from: c */
        byte[] f29720c;

        /* renamed from: d */
        int f29721d;

        /* renamed from: e */
        int f29722e;

        /* renamed from: f */
        boolean f29723f;

        /* renamed from: g */
        int f29724g;

        /* renamed from: h */
        int f29725h;

        public String toString() {
            return String.format("%s[buffer=%s, currentLinePos=%s, eof=%s, ibitWorkArea=%s, lbitWorkArea=%s, modulus=%s, pos=%s, readPos=%s]", getClass().getSimpleName(), Arrays.toString(this.f29720c), Integer.valueOf(this.f29724g), Boolean.valueOf(this.f29723f), Integer.valueOf(this.f29718a), Long.valueOf(this.f29719b), Integer.valueOf(this.f29725h), Integer.valueOf(this.f29721d), Integer.valueOf(this.f29722e));
        }
    }

    public BaseNCodec(int i, int i2, int i3, int i4) {
        this(i, i2, i3, i4, (byte) 61);
    }

    protected BaseNCodec(int i, int i2, int i3, int i4, byte b) {
        this.f29713b = (byte) 61;
        this.f29712a = i;
        this.f29716e = i2;
        this.f29715d = i3 > 0 && i4 > 0 ? (i3 / i2) * i2 : 0;
        this.f29717f = i4;
        this.f29714c = b;
    }

    /* renamed from: a */
    public static int m26001a(byte[] bArr, int i, Context context) {
        if (context.f29720c == null) {
            return context.f29723f ? -1 : 0;
        }
        int min = Math.min(context.f29720c != null ? context.f29721d - context.f29722e : 0, i);
        System.arraycopy(context.f29720c, context.f29722e, bArr, 0, min);
        context.f29722e += min;
        if (context.f29722e >= context.f29721d) {
            context.f29720c = null;
        }
        return min;
    }

    /* renamed from: a */
    public abstract void mo26002a(byte[] bArr, int i, int i2, Context context);

    /* renamed from: a */
    protected abstract boolean mo26004a(byte b);

    /* renamed from: a */
    public final byte[] m26003a(int i, Context context) {
        if (context.f29720c == null || context.f29720c.length < context.f29721d + i) {
            if (context.f29720c == null) {
                context.f29720c = new byte[getDefaultBufferSize()];
                context.f29721d = 0;
                context.f29722e = 0;
            } else {
                byte[] bArr = new byte[context.f29720c.length * 2];
                System.arraycopy(context.f29720c, 0, bArr, 0, context.f29720c.length);
                context.f29720c = bArr;
            }
            return context.f29720c;
        }
        return context.f29720c;
    }

    /* renamed from: b */
    public abstract void mo25999b(byte[] bArr, int i, int i2, Context context);

    /* renamed from: b */
    public final boolean m26000b(byte[] bArr) {
        if (bArr == null) {
            return false;
        }
        for (byte b : bArr) {
            if (this.f29714c == b || mo26004a(b)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: c */
    public final long m25998c(byte[] bArr) {
        int length = bArr.length;
        int i = this.f29712a;
        ?? r0 = (((length + i) - 1) / i) * this.f29716e;
        int i2 = this.f29715d;
        char c = r0;
        if (i2 > 0) {
            c = r0 + ((((i2 + r0) - 1) / i2) * this.f29717f);
        }
        return c;
    }

    protected int getDefaultBufferSize() {
        return PropertyFlags.UNSIGNED;
    }
}
