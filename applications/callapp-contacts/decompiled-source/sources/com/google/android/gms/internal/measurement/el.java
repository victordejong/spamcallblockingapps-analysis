package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/el.class */
final class el<T> implements ek, Serializable {

    /* renamed from: a  reason: collision with root package name */
    final ek<T> f28989a;

    /* renamed from: b  reason: collision with root package name */
    volatile transient boolean f28990b;

    /* renamed from: c  reason: collision with root package name */
    transient T f28991c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public el(ek<T> ekVar) {
        Objects.requireNonNull(ekVar);
        this.f28989a = ekVar;
    }

    @Override // com.google.android.gms.internal.measurement.ek
    public final T a() {
        if (!this.f28990b) {
            synchronized (this) {
                if (!this.f28990b) {
                    T a2 = this.f28989a.a();
                    this.f28991c = a2;
                    this.f28990b = true;
                    return a2;
                }
            }
        }
        return this.f28991c;
    }

    public final String toString() {
        Object obj;
        if (this.f28990b) {
            String valueOf = String.valueOf(this.f28991c);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 25);
            sb.append("<supplier that returned ");
            sb.append(valueOf);
            sb.append(">");
            obj = sb.toString();
        } else {
            obj = this.f28989a;
        }
        String valueOf2 = String.valueOf(obj);
        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(valueOf2);
        sb2.append(")");
        return sb2.toString();
    }
}
