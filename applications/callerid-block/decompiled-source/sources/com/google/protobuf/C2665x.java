package com.google.protobuf;

import com.google.protobuf.AbstractC2639m0;
import com.lidroid.xutils.util.CharsetUtils;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: com.google.protobuf.x */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/x.class */
public final class C2665x {

    /* renamed from: a */
    static final Charset f11225a = Charset.forName("UTF-8");

    /* renamed from: b */
    public static final byte[] f11226b;

    /* renamed from: com.google.protobuf.x$a */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/x$a.class */
    public interface AbstractC2666a extends AbstractC2674i<Boolean> {
    }

    /* renamed from: com.google.protobuf.x$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/x$b.class */
    public interface AbstractC2667b extends AbstractC2674i<Double> {
    }

    /* renamed from: com.google.protobuf.x$c */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/x$c.class */
    public interface AbstractC2668c {
        int getNumber();
    }

    /* renamed from: com.google.protobuf.x$d */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/x$d.class */
    public interface AbstractC2669d<T extends AbstractC2668c> {
        /* renamed from: a */
        T mo2241a(int i);
    }

    /* renamed from: com.google.protobuf.x$e */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/x$e.class */
    public interface AbstractC2670e {
        /* renamed from: a */
        boolean mo2240a(int i);
    }

    /* renamed from: com.google.protobuf.x$f */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/x$f.class */
    public interface AbstractC2671f extends AbstractC2674i<Float> {
    }

    /* renamed from: com.google.protobuf.x$g */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/x$g.class */
    public interface AbstractC2672g extends AbstractC2674i<Integer> {
        @Override // com.google.protobuf.C2665x.AbstractC2674i
        /* renamed from: d */
        AbstractC2674i<Integer> mo2235d(int i);

        /* renamed from: n */
        void mo2239n(int i);

        /* renamed from: q */
        int mo2238q(int i);
    }

    /* renamed from: com.google.protobuf.x$h */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/x$h.class */
    public interface AbstractC2673h extends AbstractC2674i<Long> {
    }

    /* renamed from: com.google.protobuf.x$i */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/x$i.class */
    public interface AbstractC2674i<E> extends List<E>, RandomAccess {
        /* renamed from: D */
        boolean mo2237D();

        /* renamed from: d */
        AbstractC2674i<E> mo2235d(int i);

        /* renamed from: h */
        void mo2236h();
    }

    static {
        Charset.forName(CharsetUtils.DEFAULT_ENCODING_CHARSET);
        byte[] bArr = new byte[0];
        f11226b = bArr;
        ByteBuffer.wrap(bArr);
        AbstractC2613i.m2698i(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T> T m2251a(T t) {
        t.getClass();
        return t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static <T> T m2250b(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: c */
    public static int m2249c(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: d */
    public static int m2248d(byte[] bArr) {
        return m2247e(bArr, 0, bArr.length);
    }

    /* renamed from: e */
    static int m2247e(byte[] bArr, int i, int i2) {
        int i3 = m2243i(i2, bArr, i, i2);
        int i4 = i3;
        if (i3 == 0) {
            i4 = 1;
        }
        return i4;
    }

    /* renamed from: f */
    public static int m2246f(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: g */
    public static boolean m2245g(byte[] bArr) {
        return Utf8.m2967s(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static Object m2244h(Object obj, Object obj2) {
        AbstractC2639m0.AbstractC2640a e = ((AbstractC2639m0) obj).mo2425e();
        e.mo2419p((AbstractC2639m0) obj2);
        return e.mo2418x();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static int m2243i(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    /* renamed from: j */
    public static String m2242j(byte[] bArr) {
        return new String(bArr, f11225a);
    }
}
