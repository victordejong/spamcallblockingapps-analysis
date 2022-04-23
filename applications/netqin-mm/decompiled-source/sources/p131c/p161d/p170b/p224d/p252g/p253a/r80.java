package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeip;
import com.google.android.gms.internal.ads.zzejm;
import com.google.android.gms.internal.ads.zzeju;
import com.google.android.gms.internal.ads.zzekj;
import com.google.android.gms.internal.ads.zzelj;
import com.google.android.gms.internal.ads.zzenr;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.r80 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/r80.class */
public final class r80<T> implements f90<T> {

    /* renamed from: a */
    public final zzelj f14881a;

    /* renamed from: b */
    public final x90<?, ?> f14882b;

    /* renamed from: c */
    public final boolean f14883c;

    /* renamed from: d */
    public final n70<?> f14884d;

    public r80(x90<?, ?> x90Var, n70<?> n70Var, zzelj zzeljVar) {
        this.f14882b = x90Var;
        this.f14883c = n70Var.mo26590a(zzeljVar);
        this.f14884d = n70Var;
        this.f14881a = zzeljVar;
    }

    /* renamed from: a */
    public static <T> r80<T> m26424a(x90<?, ?> x90Var, n70<?> n70Var, zzelj zzeljVar) {
        return new r80<>(x90Var, n70Var, zzeljVar);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.f90
    /* renamed from: a */
    public final T mo26425a() {
        return (T) this.f14881a.mo12347g().mo12343F();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.f90
    /* renamed from: a */
    public final void mo26423a(T t, ka0 ka0Var) throws IOException {
        Iterator<Map.Entry<?, Object>> d = this.f14884d.mo26589a(t).m26429d();
        while (d.hasNext()) {
            Map.Entry<?, Object> next = d.next();
            zzeju zzejuVar = (zzeju) next.getKey();
            if (zzejuVar.mo12393E() != zzenr.MESSAGE || zzejuVar.mo12392I() || zzejuVar.mo12389j()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            } else if (next instanceof z70) {
                ka0Var.mo26681a(zzejuVar.zzv(), (Object) ((z70) next).m26098a().m12356a());
            } else {
                ka0Var.mo26681a(zzejuVar.zzv(), next.getValue());
            }
        }
        x90<?, ?> x90Var = this.f14882b;
        x90Var.mo26123b((x90<?, ?>) x90Var.mo26119d(t), ka0Var);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.f90
    /* renamed from: a */
    public final void mo26422a(T t, z80 z80Var, zzejm zzejmVar) throws IOException {
        boolean z;
        x90<?, ?> x90Var = this.f14882b;
        n70<?> n70Var = this.f14884d;
        Object e = x90Var.mo26118e(t);
        r70<?> b = n70Var.mo26587b(t);
        do {
            try {
                if (z80Var.mo26063p() == Integer.MAX_VALUE) {
                    x90Var.mo26122b((Object) t, (T) e);
                    return;
                }
                int a = z80Var.mo26097a();
                if (a == 11) {
                    int i = 0;
                    Object obj = null;
                    zzeip zzeipVar = null;
                    while (z80Var.mo26063p() != Integer.MAX_VALUE) {
                        int a2 = z80Var.mo26097a();
                        if (a2 == 16) {
                            i = z80Var.mo26077i();
                            obj = n70Var.mo26591a(zzejmVar, this.f14881a, i);
                        } else if (a2 == 26) {
                            if (obj == null) {
                                zzeipVar = z80Var.mo26083f();
                            } else {
                                n70Var.mo26594a(z80Var, obj, zzejmVar, b);
                                throw null;
                            }
                        } else if (!z80Var.mo26067n()) {
                            break;
                        }
                    }
                    if (z80Var.mo26097a() == 12) {
                        if (zzeipVar != null) {
                            if (obj == null) {
                                x90Var.mo26130a((x90<?, ?>) e, i, zzeipVar);
                            } else {
                                n70Var.mo26592a(zzeipVar, obj, zzejmVar, b);
                                throw null;
                            }
                        }
                        z = true;
                    } else {
                        throw zzekj.zzbhb();
                    }
                } else if ((a & 7) == 2) {
                    Object a3 = n70Var.mo26591a(zzejmVar, this.f14881a, a >>> 3);
                    if (a3 == null) {
                        z = x90Var.m26166a((x90<?, ?>) e, z80Var);
                    } else {
                        n70Var.mo26594a(z80Var, a3, zzejmVar, b);
                        throw null;
                    }
                } else {
                    z = z80Var.mo26067n();
                }
            } catch (Throwable th) {
                x90Var.mo26122b((Object) t, (T) e);
                throw th;
            }
        } while (z);
        x90Var.mo26122b((Object) t, (T) e);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0147 A[EDGE_INSN: B:66:0x0147->B:38:0x0147 ?: BREAK  , SYNTHETIC] */
    @Override // p131c.p161d.p170b.p224d.p252g.p253a.f90
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo26420a(T r8, byte[] r9, int r10, int r11, p131c.p161d.p170b.p224d.p252g.p253a.u60 r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.r80.mo26420a(java.lang.Object, byte[], int, int, c.d.b.d.g.a.u60):void");
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.f90
    /* renamed from: a */
    public final boolean mo26421a(T t, T t2) {
        if (!this.f14882b.mo26119d(t).equals(this.f14882b.mo26119d(t2))) {
            return false;
        }
        if (this.f14883c) {
            return this.f14884d.mo26589a(t).equals(this.f14884d.mo26589a(t2));
        }
        return true;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.f90
    /* renamed from: b */
    public final int mo26419b(T t) {
        int hashCode = this.f14882b.mo26119d(t).hashCode();
        int i = hashCode;
        if (this.f14883c) {
            i = (hashCode * 53) + this.f14884d.mo26589a(t).hashCode();
        }
        return i;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.f90
    /* renamed from: b */
    public final void mo26418b(T t, T t2) {
        h90.m26906a(this.f14882b, t, t2);
        if (this.f14883c) {
            h90.m26907a(this.f14884d, t, t2);
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.f90
    /* renamed from: c */
    public final void mo26417c(T t) {
        this.f14882b.mo26133a(t);
        this.f14884d.mo26586c(t);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.f90
    /* renamed from: d */
    public final int mo26416d(T t) {
        x90<?, ?> x90Var = this.f14882b;
        int f = x90Var.mo26117f(x90Var.mo26119d(t)) + 0;
        int i = f;
        if (this.f14883c) {
            i = f + this.f14884d.mo26589a(t).m26427f();
        }
        return i;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.f90
    /* renamed from: e */
    public final boolean mo26415e(T t) {
        return this.f14884d.mo26589a(t).m26431c();
    }
}
