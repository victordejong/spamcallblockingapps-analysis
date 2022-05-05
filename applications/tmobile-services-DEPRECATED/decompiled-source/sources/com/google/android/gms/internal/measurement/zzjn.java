package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjn.class */
final class zzjn<T> implements zzjz<T> {

    /* renamed from: a */
    private final zzjh f8576a;

    /* renamed from: b */
    private final zzkr<?, ?> f8577b;

    /* renamed from: c */
    private final boolean f8578c;

    /* renamed from: d */
    private final zzho<?> f8579d;

    private zzjn(zzkr<?, ?> zzkrVar, zzho<?> zzhoVar, zzjh zzjhVar) {
        this.f8577b = zzkrVar;
        this.f8578c = zzhoVar.mo12465h(zzjhVar);
        this.f8579d = zzhoVar;
        this.f8576a = zzjhVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static <T> zzjn<T> m12276j(zzkr<?, ?> zzkrVar, zzho<?> zzhoVar, zzjh zzjhVar) {
        return new zzjn<>(zzkrVar, zzhoVar, zzjhVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    /* renamed from: a */
    public final int mo12262a(T t) {
        int hashCode = this.f8577b.mo12123k(t).hashCode();
        int i = hashCode;
        if (this.f8578c) {
            i = (hashCode * 53) + this.f8579d.mo12471b(t).hashCode();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    /* renamed from: b */
    public final void mo12261b(T t, T t2) {
        zzkb.m12170o(this.f8577b, t, t2);
        if (this.f8578c) {
            zzkb.m12172m(this.f8579d, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    /* renamed from: c */
    public final boolean mo12260c(T t) {
        return this.f8579d.mo12471b(t).m12445r();
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    /* renamed from: d */
    public final void mo12259d(T t) {
        this.f8577b.mo12117q(t);
        this.f8579d.mo12463j(t);
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    /* renamed from: e */
    public final int mo12258e(T t) {
        zzkr<?, ?> zzkrVar = this.f8577b;
        int r = zzkrVar.mo12116r(zzkrVar.mo12123k(t)) + 0;
        int i = r;
        if (this.f8578c) {
            i = r + this.f8579d.mo12471b(t).m12444s();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    /* renamed from: f */
    public final boolean mo12257f(T t, T t2) {
        if (!this.f8577b.mo12123k(t).equals(this.f8577b.mo12123k(t2))) {
            return false;
        }
        if (this.f8578c) {
            return this.f8579d.mo12471b(t).equals(this.f8579d.mo12471b(t2));
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0147 A[EDGE_INSN: B:65:0x0147->B:38:0x0147 ?: BREAK  , SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.zzjz
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo12256g(T r8, byte[] r9, int r10, int r11, com.google.android.gms.internal.measurement.zzgm r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzjn.mo12256g(java.lang.Object, byte[], int, int, com.google.android.gms.internal.measurement.zzgm):void");
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    /* renamed from: h */
    public final void mo12255h(T t, zzlo zzloVar) throws IOException {
        Iterator<Map.Entry<?, Object>> p = this.f8579d.mo12471b(t).m12447p();
        while (p.hasNext()) {
            Map.Entry<?, Object> next = p.next();
            zzhr zzhrVar = (zzhr) next.getKey();
            if (zzhrVar.zzc() != zzll.MESSAGE || zzhrVar.zzd() || zzhrVar.zze()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            } else if (next instanceof zzio) {
                zzloVar.mo11990j(zzhrVar.zza(), ((zzio) next).m12376a().m12371d());
            } else {
                zzloVar.mo11990j(zzhrVar.zza(), next.getValue());
            }
        }
        zzkr<?, ?> zzkrVar = this.f8577b;
        zzkrVar.mo12121m(zzkrVar.mo12123k(t), zzloVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    /* renamed from: i */
    public final void mo12254i(T t, zzka zzkaVar, zzhm zzhmVar) throws IOException {
        boolean z;
        zzkr<?, ?> zzkrVar = this.f8577b;
        zzho<?> zzhoVar = this.f8579d;
        Object o = zzkrVar.mo12119o(t);
        zzhp<?> i = zzhoVar.mo12464i(t);
        do {
            try {
                if (zzkaVar.zza() != Integer.MAX_VALUE) {
                    int zzb = zzkaVar.zzb();
                    if (zzb == 11) {
                        int i2 = 0;
                        Object obj = null;
                        zzgr zzgrVar = null;
                        while (zzkaVar.zza() != Integer.MAX_VALUE) {
                            int zzb2 = zzkaVar.zzb();
                            if (zzb2 == 16) {
                                i2 = zzkaVar.mo12223p();
                                obj = zzhoVar.mo12470c(zzhmVar, this.f8576a, i2);
                            } else if (zzb2 == 26) {
                                if (obj == null) {
                                    zzgrVar = zzkaVar.mo12225m();
                                } else {
                                    zzhoVar.mo12467f(zzkaVar, obj, zzhmVar, i);
                                    throw null;
                                }
                            } else if (!zzkaVar.zzc()) {
                                break;
                            }
                        }
                        if (zzkaVar.zzb() == 12) {
                            if (zzgrVar != null) {
                                if (obj == null) {
                                    zzkrVar.mo12128e(o, i2, zzgrVar);
                                } else {
                                    zzhoVar.mo12468e(zzgrVar, obj, zzhmVar, i);
                                    throw null;
                                }
                            }
                            z = true;
                        } else {
                            throw zzih.m12381e();
                        }
                    } else if ((zzb & 7) == 2) {
                        Object c = zzhoVar.mo12470c(zzhmVar, this.f8576a, zzb >>> 3);
                        if (c == null) {
                            z = zzkrVar.m12133j(o, zzkaVar);
                        } else {
                            zzhoVar.mo12467f(zzkaVar, c, zzhmVar, i);
                            throw null;
                        }
                    } else {
                        z = zzkaVar.zzc();
                    }
                } else {
                    return;
                }
            } finally {
                zzkrVar.mo12120n(t, o);
            }
        } while (z);
    }

    @Override // com.google.android.gms.internal.measurement.zzjz
    public final T zza() {
        return (T) this.f8576a.mo12333b().mo12323h();
    }
}
