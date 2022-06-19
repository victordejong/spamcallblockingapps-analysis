package com.google.android.gms.internal.firebase_messaging;

import java.lang.annotation.Annotation;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/zzn.class */
public final class zzn implements zzs {
    private final int zza;
    private final zzr zzb;

    public zzn(int i, zzr zzrVar) {
        this.zza = i;
        this.zzb = zzrVar;
    }

    @Override // java.lang.annotation.Annotation
    public final Class<? extends Annotation> annotationType() {
        return zzs.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzs)) {
            return false;
        }
        zzs zzsVar = (zzs) obj;
        return this.zza == zzsVar.zza() && this.zzb.equals(zzsVar.zzb());
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return (this.zza ^ 14552422) + (this.zzb.hashCode() ^ 2041407134);
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        StringBuilder m8704I = C22128a.m8704I("@com.google.firebase.encoders.proto.Protobuf", "(tag=");
        m8704I.append(this.zza);
        m8704I.append("intEncoding=");
        m8704I.append(this.zzb);
        m8704I.append(')');
        return m8704I.toString();
    }

    @Override // com.google.android.gms.internal.firebase_messaging.zzs
    public final int zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.firebase_messaging.zzs
    public final zzr zzb() {
        return this.zzb;
    }
}
