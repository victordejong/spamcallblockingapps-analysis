package com.google.android.gms.internal.ads;

import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qd3.class */
public abstract class qd3 extends zc3 {

    /* renamed from: a */
    private static final Logger f28437a = Logger.getLogger(qd3.class.getName());

    /* renamed from: b */
    private static final boolean f28438b = bh3.m16354i();

    /* renamed from: c */
    rd3 f28439c;

    private qd3() {
    }

    public /* synthetic */ qd3(pd3 pd3Var) {
    }

    /* renamed from: A */
    public static int m11947A(int i) {
        if (i >= 0) {
            return m11946B(i);
        }
        return 10;
    }

    /* renamed from: B */
    public static int m11946B(int i) {
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
    /* renamed from: C */
    public static int m11945C(long j) {
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

    /* renamed from: D */
    public static int m11944D(String str) {
        int i;
        try {
            i = fh3.m15192g(str);
        } catch (zzgjc e) {
            i = str.getBytes(se3.f29462a).length;
        }
        return m11946B(i) + i;
    }

    /* renamed from: a */
    public static int m11943a(ue3 ue3Var) {
        int m10341a = ue3Var.m10341a();
        return m11946B(m10341a) + m10341a;
    }

    /* renamed from: b */
    public static int m11942b(zzgex zzgexVar) {
        int zzc = zzgexVar.zzc();
        return m11946B(zzc) + zzc;
    }

    /* renamed from: c */
    public static int m11941c(mf3 mf3Var, cg3 cg3Var) {
        tc3 tc3Var = (tc3) mf3Var;
        int mo10721e = tc3Var.mo10721e();
        int i = mo10721e;
        if (mo10721e == -1) {
            i = cg3Var.mo11908a(tc3Var);
            tc3Var.mo10720f(i);
        }
        return m11946B(i) + i;
    }

    @Deprecated
    /* renamed from: f */
    public static int m11938f(int i, mf3 mf3Var, cg3 cg3Var) {
        int m11946B = m11946B(i << 3);
        tc3 tc3Var = (tc3) mf3Var;
        int mo10721e = tc3Var.mo10721e();
        int i2 = mo10721e;
        if (mo10721e == -1) {
            i2 = cg3Var.mo11908a(tc3Var);
            tc3Var.mo10720f(i2);
        }
        return m11946B + m11946B + i2;
    }

    /* renamed from: y */
    public static qd3 m11919y(byte[] bArr) {
        return new od3(bArr, 0, bArr.length);
    }

    /* renamed from: z */
    public static int m11918z(int i) {
        return m11946B(i << 3);
    }

    /* renamed from: d */
    public final void m11940d() {
        if (mo11921w() == 0) {
            return;
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }

    /* renamed from: e */
    public final void m11939e(String str, zzgjc zzgjcVar) {
        f28437a.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzgjcVar);
        byte[] bytes = str.getBytes(se3.f29462a);
        try {
            int length = bytes.length;
            mo11926r(length);
            mo11922v(bytes, 0, length);
        } catch (zzgfg e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zzgfg(e2);
        }
    }

    /* renamed from: g */
    public abstract void mo11937g(int i, int i2);

    /* renamed from: h */
    public abstract void mo11936h(int i, int i2);

    /* renamed from: i */
    public abstract void mo11935i(int i, int i2);

    /* renamed from: j */
    public abstract void mo11934j(int i, int i2);

    /* renamed from: k */
    public abstract void mo11933k(int i, long j);

    /* renamed from: l */
    public abstract void mo11932l(int i, long j);

    /* renamed from: m */
    public abstract void mo11931m(int i, boolean z);

    /* renamed from: n */
    public abstract void mo11930n(int i, String str);

    /* renamed from: o */
    public abstract void mo11929o(int i, zzgex zzgexVar);

    /* renamed from: p */
    public abstract void mo11928p(byte b);

    /* renamed from: q */
    public abstract void mo11927q(int i);

    /* renamed from: r */
    public abstract void mo11926r(int i);

    /* renamed from: s */
    public abstract void mo11925s(int i);

    /* renamed from: t */
    public abstract void mo11924t(long j);

    /* renamed from: u */
    public abstract void mo11923u(long j);

    /* renamed from: v */
    public abstract void mo11922v(byte[] bArr, int i, int i2);

    /* renamed from: w */
    public abstract int mo11921w();
}
