package com.google.android.gms.internal.measurement;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/em.class */
final class em<T> implements ek<T> {

    /* renamed from: a  reason: collision with root package name */
    volatile ek<T> f28992a;

    /* renamed from: b  reason: collision with root package name */
    volatile boolean f28993b;

    /* renamed from: c  reason: collision with root package name */
    T f28994c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public em(ek<T> ekVar) {
        Objects.requireNonNull(ekVar);
        this.f28992a = ekVar;
    }

    @Override // com.google.android.gms.internal.measurement.ek
    public final T a() {
        if (!this.f28993b) {
            synchronized (this) {
                if (!this.f28993b) {
                    T a2 = this.f28992a.a();
                    this.f28994c = a2;
                    this.f28993b = true;
                    this.f28992a = null;
                    return a2;
                }
            }
        }
        return this.f28994c;
    }

    public final String toString() {
        ek<T> ekVar = this.f28992a;
        String str = ekVar;
        if (ekVar == null) {
            String valueOf = String.valueOf(this.f28994c);
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
