package com.google.android.datatransport.cct.p006a;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.p006a.zzp;
/* renamed from: com.google.android.datatransport.cct.a.zzg */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zzg.class */
final class zzg extends zzp {

    /* renamed from: a */
    private final zzp.zzb f6545a;

    /* renamed from: b */
    private final com.google.android.datatransport.cct.p006a.zza f6546b;

    /* renamed from: com.google.android.datatransport.cct.a.zzg$zza */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zzg$zza.class */
    static final class zza extends zzp.zza {

        /* renamed from: a */
        private zzp.zzb f6547a;

        /* renamed from: b */
        private com.google.android.datatransport.cct.p006a.zza f6548b;

        @Override // com.google.android.datatransport.cct.p006a.zzp.zza
        /* renamed from: a */
        public zzp.zza mo15525a(@Nullable com.google.android.datatransport.cct.p006a.zza zzaVar) {
            this.f6548b = zzaVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.p006a.zzp.zza
        /* renamed from: b */
        public zzp.zza mo15524b(@Nullable zzp.zzb zzbVar) {
            this.f6547a = zzbVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.p006a.zzp.zza
        /* renamed from: c */
        public zzp mo15523c() {
            return new zzg(this.f6547a, this.f6548b, null);
        }
    }

    /* synthetic */ zzg(zzp.zzb zzbVar, com.google.android.datatransport.cct.p006a.zza zzaVar, zzf zzfVar) {
        this.f6545a = zzbVar;
        this.f6546b = zzaVar;
    }

    @Override // com.google.android.datatransport.cct.p006a.zzp
    @Nullable
    /* renamed from: b */
    public com.google.android.datatransport.cct.p006a.zza mo15527b() {
        return this.f6546b;
    }

    @Override // com.google.android.datatransport.cct.p006a.zzp
    @Nullable
    /* renamed from: c */
    public zzp.zzb mo15526c() {
        return this.f6545a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzp)) {
            return false;
        }
        zzp.zzb zzbVar = this.f6545a;
        if (zzbVar != null ? zzbVar.equals(((zzg) obj).f6545a) : ((zzg) obj).f6545a == null) {
            com.google.android.datatransport.cct.p006a.zza zzaVar = this.f6546b;
            if (zzaVar != null) {
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        zzp.zzb zzbVar = this.f6545a;
        int i = 0;
        int hashCode = zzbVar == null ? 0 : zzbVar.hashCode();
        com.google.android.datatransport.cct.p006a.zza zzaVar = this.f6546b;
        if (zzaVar != null) {
            i = zzaVar.hashCode();
        }
        return ((hashCode ^ 1000003) * 1000003) ^ i;
    }

    public String toString() {
        return "ClientInfo{clientType=" + this.f6545a + ", androidClientInfo=" + this.f6546b + "}";
    }
}
