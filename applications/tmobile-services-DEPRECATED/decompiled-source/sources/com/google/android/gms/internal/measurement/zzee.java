package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzee.class */
final class zzee<T> implements zzec<T>, Serializable {

    /* renamed from: f */
    private final zzec<T> f8371f;

    /* renamed from: g */
    private volatile transient boolean f8372g;
    @NullableDecl

    /* renamed from: h */
    private transient T f8373h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzee(zzec<T> zzecVar) {
        zzeb.m12741b(zzecVar);
        this.f8371f = zzecVar;
    }

    public final String toString() {
        Object obj;
        if (this.f8372g) {
            String valueOf = String.valueOf(this.f8373h);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 25);
            sb.append("<supplier that returned ");
            sb.append(valueOf);
            sb.append(">");
            obj = sb.toString();
        } else {
            obj = this.f8371f;
        }
        String valueOf2 = String.valueOf(obj);
        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(valueOf2);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzec
    public final T zza() {
        if (!this.f8372g) {
            synchronized (this) {
                if (!this.f8372g) {
                    T zza = this.f8371f.zza();
                    this.f8373h = zza;
                    this.f8372g = true;
                    return zza;
                }
            }
        }
        return this.f8373h;
    }
}
