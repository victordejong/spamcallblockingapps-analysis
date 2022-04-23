package com.google.android.gms.internal.icing;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzfk.class */
final class zzfk<T> implements zzfu<T> {

    /* renamed from: a */
    private final zzgm<?, ?> f8038a;

    /* renamed from: b */
    private final boolean f8039b;

    /* renamed from: c */
    private final zzdn<?> f8040c;

    private zzfk(zzgm<?, ?> zzgmVar, zzdn<?> zzdnVar, zzfh zzfhVar) {
        this.f8038a = zzgmVar;
        this.f8039b = zzdnVar.mo13858e(zzfhVar);
        this.f8040c = zzdnVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T> zzfk<T> m13744a(zzgm<?, ?> zzgmVar, zzdn<?> zzdnVar, zzfh zzfhVar) {
        return new zzfk<>(zzgmVar, zzdnVar, zzfhVar);
    }

    @Override // com.google.android.gms.internal.icing.zzfu
    /* renamed from: b */
    public final void mo13706b(T t) {
        this.f8038a.mo13611e(t);
        this.f8040c.mo13857f(t);
    }

    @Override // com.google.android.gms.internal.icing.zzfu
    /* renamed from: c */
    public final int mo13705c(T t) {
        zzgm<?, ?> zzgmVar = this.f8038a;
        int h = zzgmVar.mo13608h(zzgmVar.mo13609g(t)) + 0;
        int i = h;
        if (this.f8039b) {
            i = h + this.f8040c.mo13860c(t).m13841p();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.icing.zzfu
    /* renamed from: d */
    public final void mo13704d(T t, T t2) {
        zzfw.m13663g(this.f8038a, t, t2);
        if (this.f8039b) {
            zzfw.m13665e(this.f8040c, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfu
    /* renamed from: e */
    public final boolean mo13703e(T t) {
        return this.f8040c.mo13860c(t).m13854c();
    }

    @Override // com.google.android.gms.internal.icing.zzfu
    /* renamed from: f */
    public final boolean mo13702f(T t, T t2) {
        if (!this.f8038a.mo13609g(t).equals(this.f8038a.mo13609g(t2))) {
            return false;
        }
        if (this.f8039b) {
            return this.f8040c.mo13860c(t).equals(this.f8040c.mo13860c(t2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.icing.zzfu
    /* renamed from: g */
    public final void mo13701g(T t, zzhg zzhgVar) throws IOException {
        Iterator<Map.Entry<?, Object>> d = this.f8040c.mo13860c(t).m13853d();
        while (d.hasNext()) {
            Map.Entry<?, Object> next = d.next();
            zzdu zzduVar = (zzdu) next.getKey();
            if (zzduVar.mo13816j() != zzhh.MESSAGE || zzduVar.mo13813s() || zzduVar.mo13818c()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            } else if (next instanceof zzek) {
                zzhgVar.mo13501j(zzduVar.mo13817d(), ((zzek) next).m13791a().m13790a());
            } else {
                zzhgVar.mo13501j(zzduVar.mo13817d(), next.getValue());
            }
        }
        zzgm<?, ?> zzgmVar = this.f8038a;
        zzgmVar.mo13614b(zzgmVar.mo13609g(t), zzhgVar);
    }

    @Override // com.google.android.gms.internal.icing.zzfu
    /* renamed from: h */
    public final int mo13700h(T t) {
        int hashCode = this.f8038a.mo13609g(t).hashCode();
        int i = hashCode;
        if (this.f8039b) {
            i = (hashCode * 53) + this.f8040c.mo13860c(t).hashCode();
        }
        return i;
    }
}
