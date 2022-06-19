package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.xo */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xo.class */
public final class C7152xo extends ie3<C7152xo, C7115wo> implements nf3 {
    private static final oe3<Integer, zzazx> zzj = new C7078vo();
    private static final C7152xo zzr;
    private int zzb;
    private long zze;
    private int zzf;
    private long zzg;
    private long zzh;
    private ne3 zzi = ie3.m14428l();
    private C6967so zzk;
    private int zzl;
    private int zzm;
    private int zzn;
    private int zzo;
    private int zzp;
    private int zzq;

    static {
        C7152xo c7152xo = new C7152xo();
        zzr = c7152xo;
        ie3.m14414z(C7152xo.class, c7152xo);
    }

    private C7152xo() {
    }

    /* renamed from: C */
    public static /* synthetic */ void m9132C(C7152xo c7152xo, int i) {
        c7152xo.zzn = i - 1;
        c7152xo.zzb |= 128;
    }

    /* renamed from: D */
    public static /* synthetic */ void m9131D(C7152xo c7152xo, int i) {
        c7152xo.zzp = i - 1;
        c7152xo.zzb |= 512;
    }

    /* renamed from: M */
    public static C7152xo m9123M(byte[] bArr) {
        return (C7152xo) ie3.m14420t(zzr, bArr);
    }

    /* renamed from: O */
    public static C7115wo m9122O() {
        return zzr.m14418v();
    }

    /* renamed from: R */
    public static /* synthetic */ void m9120R(C7152xo c7152xo, long j) {
        c7152xo.zzb |= 1;
        c7152xo.zze = j;
    }

    /* renamed from: S */
    public static /* synthetic */ void m9119S(C7152xo c7152xo, long j) {
        c7152xo.zzb |= 4;
        c7152xo.zzg = j;
    }

    /* renamed from: T */
    public static /* synthetic */ void m9118T(C7152xo c7152xo, long j) {
        c7152xo.zzb |= 8;
        c7152xo.zzh = j;
    }

    /* renamed from: U */
    public static /* synthetic */ void m9117U(C7152xo c7152xo, Iterable iterable) {
        ne3 ne3Var = c7152xo.zzi;
        if (!ne3Var.zza()) {
            c7152xo.zzi = ie3.m14427m(ne3Var);
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            c7152xo.zzi.mo12940d0(((zzazx) it.next()).zza());
        }
    }

    /* renamed from: V */
    public static /* synthetic */ void m9116V(C7152xo c7152xo, C6967so c6967so) {
        c6967so.getClass();
        c7152xo.zzk = c6967so;
        c7152xo.zzb |= 16;
    }

    /* renamed from: W */
    public static /* synthetic */ void m9115W(C7152xo c7152xo, int i) {
        c7152xo.zzb |= 256;
        c7152xo.zzo = i;
    }

    /* renamed from: X */
    public static /* synthetic */ void m9114X(C7152xo c7152xo, zzbbm zzbbmVar) {
        c7152xo.zzq = zzbbmVar.zza();
        c7152xo.zzb |= 1024;
    }

    /* renamed from: d0 */
    public static /* synthetic */ void m9108d0(C7152xo c7152xo, int i) {
        c7152xo.zzf = i - 1;
        c7152xo.zzb |= 2;
    }

    /* renamed from: e0 */
    public static /* synthetic */ void m9107e0(C7152xo c7152xo, int i) {
        c7152xo.zzl = i - 1;
        c7152xo.zzb |= 32;
    }

    /* renamed from: f0 */
    public static /* synthetic */ void m9106f0(C7152xo c7152xo, int i) {
        c7152xo.zzm = i - 1;
        c7152xo.zzb |= 64;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                me3 me3Var = C6299ao.f20061a;
                return ie3.m14431A(zzr, "\u0001\f��\u0001\u0001\f\f��\u0001��\u0001ဂ��\u0002ဌ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005\u001e\u0006ဉ\u0004\u0007ဌ\u0005\bဌ\u0006\tဌ\u0007\nင\b\u000bဌ\t\fဌ\n", new Object[]{"zzb", "zze", "zzf", me3Var, "zzg", "zzh", "zzi", zzazx.zzc(), "zzk", "zzl", me3Var, "zzm", me3Var, "zzn", me3Var, "zzo", "zzp", me3Var, "zzq", zzbbm.zzc()});
            } else if (i2 == 3) {
                return new C7152xo();
            } else {
                if (i2 == 4) {
                    return new C7115wo(null);
                }
                if (i2 == 5) {
                    return zzr;
                }
                return null;
            }
        }
        return (byte) 1;
    }

    /* renamed from: E */
    public final long m9130E() {
        return this.zze;
    }

    /* renamed from: F */
    public final long m9129F() {
        return this.zzg;
    }

    /* renamed from: G */
    public final long m9128G() {
        return this.zzh;
    }

    /* renamed from: H */
    public final List<zzazx> m9127H() {
        return new pe3(this.zzi, zzj);
    }

    /* renamed from: I */
    public final C6967so m9126I() {
        C6967so c6967so = this.zzk;
        C6967so c6967so2 = c6967so;
        if (c6967so == null) {
            c6967so2 = C6967so.m10981F();
        }
        return c6967so2;
    }

    /* renamed from: J */
    public final int m9125J() {
        return this.zzo;
    }

    /* renamed from: L */
    public final zzbbm m9124L() {
        zzbbm zzb = zzbbm.zzb(this.zzq);
        zzbbm zzbbmVar = zzb;
        if (zzb == null) {
            zzbbmVar = zzbbm.UNSPECIFIED;
        }
        return zzbbmVar;
    }

    /* renamed from: Y */
    public final int m9113Y() {
        int m16314a = C6336bo.m16314a(this.zzf);
        int i = m16314a;
        if (m16314a == 0) {
            i = 1;
        }
        return i;
    }

    /* renamed from: Z */
    public final int m9112Z() {
        int m16314a = C6336bo.m16314a(this.zzl);
        int i = m16314a;
        if (m16314a == 0) {
            i = 1;
        }
        return i;
    }

    /* renamed from: a0 */
    public final int m9111a0() {
        int m16314a = C6336bo.m16314a(this.zzm);
        int i = m16314a;
        if (m16314a == 0) {
            i = 1;
        }
        return i;
    }

    /* renamed from: b0 */
    public final int m9110b0() {
        int m16314a = C6336bo.m16314a(this.zzn);
        int i = m16314a;
        if (m16314a == 0) {
            i = 1;
        }
        return i;
    }

    /* renamed from: c0 */
    public final int m9109c0() {
        int m16314a = C6336bo.m16314a(this.zzp);
        int i = m16314a;
        if (m16314a == 0) {
            i = 1;
        }
        return i;
    }
}
