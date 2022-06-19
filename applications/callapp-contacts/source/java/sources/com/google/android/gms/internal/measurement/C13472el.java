package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Objects;
/* renamed from: com.google.android.gms.internal.measurement.el */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/el.class */
final class C13472el<T> implements AbstractC13471ek, Serializable {

    /* renamed from: a */
    final AbstractC13471ek<T> f50688a;

    /* renamed from: b */
    volatile transient boolean f50689b;

    /* renamed from: c */
    transient T f50690c;

    public C13472el(AbstractC13471ek<T> abstractC13471ek) {
        Objects.requireNonNull(abstractC13471ek);
        this.f50688a = abstractC13471ek;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13471ek
    /* renamed from: a */
    public final T mo12298a() {
        if (!this.f50689b) {
            synchronized (this) {
                if (!this.f50689b) {
                    T mo12298a = this.f50688a.mo12298a();
                    this.f50690c = mo12298a;
                    this.f50689b = true;
                    return mo12298a;
                }
            }
        }
        return this.f50690c;
    }

    public final String toString() {
        String str;
        if (this.f50689b) {
            String valueOf = String.valueOf(this.f50690c);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 25);
            sb.append("<supplier that returned ");
            sb.append(valueOf);
            sb.append(">");
            str = sb.toString();
        } else {
            str = this.f50688a;
        }
        String valueOf2 = String.valueOf(str);
        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(valueOf2);
        sb2.append(")");
        return sb2.toString();
    }
}
