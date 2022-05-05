package com.google.android.datatransport.cct.p006a;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.p006a.zzt;
/* renamed from: com.google.android.datatransport.cct.a.zzn */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zzn.class */
final class zzn extends zzt {

    /* renamed from: a */
    private final zzt.zzc f6578a;

    /* renamed from: b */
    private final zzt.zzb f6579b;

    /* renamed from: com.google.android.datatransport.cct.a.zzn$zza */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zzn$zza.class */
    static final class zza extends zzt.zza {

        /* renamed from: a */
        private zzt.zzc f6580a;

        /* renamed from: b */
        private zzt.zzb f6581b;

        @Override // com.google.android.datatransport.cct.p006a.zzt.zza
        /* renamed from: a */
        public zzt.zza mo15484a(@Nullable zzt.zzb zzbVar) {
            this.f6581b = zzbVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.p006a.zzt.zza
        /* renamed from: b */
        public zzt.zza mo15483b(@Nullable zzt.zzc zzcVar) {
            this.f6580a = zzcVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.p006a.zzt.zza
        /* renamed from: c */
        public zzt mo15482c() {
            return new zzn(this.f6580a, this.f6581b, null);
        }
    }

    /* synthetic */ zzn(zzt.zzc zzcVar, zzt.zzb zzbVar, zzm zzmVar) {
        this.f6578a = zzcVar;
        this.f6579b = zzbVar;
    }

    @Override // com.google.android.datatransport.cct.p006a.zzt
    @Nullable
    /* renamed from: b */
    public zzt.zzb mo15486b() {
        return this.f6579b;
    }

    @Override // com.google.android.datatransport.cct.p006a.zzt
    @Nullable
    /* renamed from: c */
    public zzt.zzc mo15485c() {
        return this.f6578a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzt)) {
            return false;
        }
        zzt.zzc zzcVar = this.f6578a;
        if (zzcVar != null ? zzcVar.equals(((zzn) obj).f6578a) : ((zzn) obj).f6578a == null) {
            zzt.zzb zzbVar = this.f6579b;
            if (zzbVar != null) {
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        zzt.zzc zzcVar = this.f6578a;
        int i = 0;
        int hashCode = zzcVar == null ? 0 : zzcVar.hashCode();
        zzt.zzb zzbVar = this.f6579b;
        if (zzbVar != null) {
            i = zzbVar.hashCode();
        }
        return ((hashCode ^ 1000003) * 1000003) ^ i;
    }

    public String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f6578a + ", mobileSubtype=" + this.f6579b + "}";
    }
}
