package com.google.android.gms.internal.measurement;

import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.google.android.gms.internal.measurement.f5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/f5.class */
public abstract class AbstractC7364f5 extends C7569u4 {

    /* renamed from: a */
    private static final Logger f34428a = Logger.getLogger(AbstractC7364f5.class.getName());

    /* renamed from: b */
    private static final boolean f34429b = C7409i8.m7318f();

    /* renamed from: c */
    C7378g5 f34430c;

    private AbstractC7364f5() {
    }

    public /* synthetic */ AbstractC7364f5(C7336d5 c7336d5) {
    }

    /* renamed from: A */
    public static int m7533A(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* renamed from: B */
    public static int m7532B(long j) {
        int i;
        ?? r5;
        if (((-128) & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if (((-34359738368L) & j) != 0) {
            r5 = j >>> 28;
            i = 6;
        } else {
            i = 2;
            r5 = j;
        }
        int i2 = i;
        byte b = r5;
        if ((0 & r5) != 0) {
            i2 = i + 2;
            b = r5 >>> 14;
        }
        int i3 = i2;
        if ((b & (-16384)) != 0) {
            i3 = i2 + 1;
        }
        return i3;
    }

    /* renamed from: C */
    public static int m7531C(String str) {
        int i;
        try {
            i = C7465m8.m7106c(str);
        } catch (zzkj e) {
            i = str.getBytes(C7365f6.f34431a).length;
        }
        return m7533A(i) + i;
    }

    /* renamed from: D */
    public static int m7530D(C7393h6 c7393h6) {
        int m7371a = c7393h6.m7371a();
        return m7533A(m7371a) + m7371a;
    }

    /* renamed from: a */
    public static int m7529a(zzgr zzgrVar) {
        int zzc = zzgrVar.zzc();
        return m7533A(zzc) + zzc;
    }

    /* renamed from: b */
    public static int m7528b(AbstractC7623y6 abstractC7623y6, AbstractC7436k7 abstractC7436k7) {
        AbstractC7489o4 abstractC7489o4 = (AbstractC7489o4) abstractC7623y6;
        int mo6770j = abstractC7489o4.mo6770j();
        int i = mo6770j;
        if (mo6770j == -1) {
            i = abstractC7436k7.mo7209a(abstractC7489o4);
            abstractC7489o4.mo6769k(i);
        }
        return m7533A(i) + i;
    }

    @Deprecated
    /* renamed from: e */
    public static int m7525e(int i, AbstractC7623y6 abstractC7623y6, AbstractC7436k7 abstractC7436k7) {
        int m7533A = m7533A(i << 3);
        AbstractC7489o4 abstractC7489o4 = (AbstractC7489o4) abstractC7623y6;
        int mo6770j = abstractC7489o4.mo6770j();
        int i2 = mo6770j;
        if (mo6770j == -1) {
            i2 = abstractC7436k7.mo7209a(abstractC7489o4);
            abstractC7489o4.mo6769k(i2);
        }
        return m7533A + m7533A + i2;
    }

    /* renamed from: x */
    public static AbstractC7364f5 m7506x(byte[] bArr) {
        return new C7350e5(bArr, 0, bArr.length);
    }

    /* renamed from: y */
    public static int m7505y(int i) {
        return m7533A(i << 3);
    }

    /* renamed from: z */
    public static int m7504z(int i) {
        if (i >= 0) {
            return m7533A(i);
        }
        return 10;
    }

    /* renamed from: c */
    public final void m7527c() {
        if (mo7507w() == 0) {
            return;
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }

    /* renamed from: d */
    public final void m7526d(String str, zzkj zzkjVar) {
        f34428a.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzkjVar);
        byte[] bytes = str.getBytes(C7365f6.f34431a);
        try {
            int length = bytes.length;
            mo7512r(length);
            mo7508v(bytes, 0, length);
        } catch (zzgx e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zzgx(e2);
        }
    }

    /* renamed from: g */
    public abstract void mo7523g(int i, int i2);

    /* renamed from: h */
    public abstract void mo7522h(int i, int i2);

    /* renamed from: i */
    public abstract void mo7521i(int i, int i2);

    /* renamed from: j */
    public abstract void mo7520j(int i, int i2);

    /* renamed from: k */
    public abstract void mo7519k(int i, long j);

    /* renamed from: l */
    public abstract void mo7518l(int i, long j);

    /* renamed from: m */
    public abstract void mo7517m(int i, boolean z);

    /* renamed from: n */
    public abstract void mo7516n(int i, String str);

    /* renamed from: o */
    public abstract void mo7515o(int i, zzgr zzgrVar);

    /* renamed from: p */
    public abstract void mo7514p(byte b);

    /* renamed from: q */
    public abstract void mo7513q(int i);

    /* renamed from: r */
    public abstract void mo7512r(int i);

    /* renamed from: s */
    public abstract void mo7511s(int i);

    /* renamed from: t */
    public abstract void mo7510t(long j);

    /* renamed from: u */
    public abstract void mo7509u(long j);

    /* renamed from: v */
    public abstract void mo7508v(byte[] bArr, int i, int i2);

    /* renamed from: w */
    public abstract int mo7507w();
}
