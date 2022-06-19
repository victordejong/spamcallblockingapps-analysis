package com.google.android.gms.internal.measurement;

import java.util.Objects;
/* renamed from: com.google.android.gms.internal.measurement.em */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/em.class */
final class C13473em<T> implements AbstractC13471ek<T> {

    /* renamed from: a */
    volatile AbstractC13471ek<T> f50691a;

    /* renamed from: b */
    volatile boolean f50692b;

    /* renamed from: c */
    T f50693c;

    public C13473em(AbstractC13471ek<T> abstractC13471ek) {
        Objects.requireNonNull(abstractC13471ek);
        this.f50691a = abstractC13471ek;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13471ek
    /* renamed from: a */
    public final T mo12298a() {
        if (!this.f50692b) {
            synchronized (this) {
                if (!this.f50692b) {
                    T mo12298a = this.f50691a.mo12298a();
                    this.f50693c = mo12298a;
                    this.f50692b = true;
                    this.f50691a = null;
                    return mo12298a;
                }
            }
        }
        return this.f50693c;
    }

    public final String toString() {
        AbstractC13471ek<T> abstractC13471ek = this.f50691a;
        String str = abstractC13471ek;
        if (abstractC13471ek == null) {
            String valueOf = String.valueOf(this.f50693c);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 25);
            sb.append("<supplier that returned ");
            sb.append(valueOf);
            sb.append(">");
            str = sb.toString();
        }
        String valueOf2 = String.valueOf(str);
        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(valueOf2);
        sb2.append(")");
        return sb2.toString();
    }
}
