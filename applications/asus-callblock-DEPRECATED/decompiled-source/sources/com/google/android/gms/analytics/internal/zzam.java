package com.google.android.gms.analytics.internal;

import com.google.android.gms.analytics.internal.zzq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzam.class */
public class zzam extends zzq<zzan> {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzam$a.class */
    private static final class a extends zzc implements zzq.zza<zzan> {

        /* renamed from: a  reason: collision with root package name */
        private final zzan f3839a = new zzan();

        public a(zzf zzfVar) {
            super(zzfVar);
        }

        @Override // com.google.android.gms.analytics.internal.zzq.zza
        public final void zzc(String str, int i) {
            if ("ga_sessionTimeout".equals(str)) {
                this.f3839a.zzZj = i;
            } else {
                zzd("int configuration name not recognized", str);
            }
        }

        @Override // com.google.android.gms.analytics.internal.zzq.zza
        public final void zzg(String str, boolean z) {
            int i = 1;
            int i2 = 1;
            int i3 = 1;
            if ("ga_autoActivityTracking".equals(str)) {
                zzan zzanVar = this.f3839a;
                if (!z) {
                    i3 = 0;
                }
                zzanVar.zzZk = i3;
            } else if ("ga_anonymizeIp".equals(str)) {
                zzan zzanVar2 = this.f3839a;
                if (!z) {
                    i = 0;
                }
                zzanVar2.zzZl = i;
            } else if ("ga_reportUncaughtExceptions".equals(str)) {
                zzan zzanVar3 = this.f3839a;
                if (!z) {
                    i2 = 0;
                }
                zzanVar3.zzZm = i2;
            } else {
                zzd("bool configuration name not recognized", str);
            }
        }

        @Override // com.google.android.gms.analytics.internal.zzq.zza
        public final /* synthetic */ zzan zzmV() {
            return this.f3839a;
        }

        @Override // com.google.android.gms.analytics.internal.zzq.zza
        public final void zzn(String str, String str2) {
            this.f3839a.zzZn.put(str, str2);
        }

        @Override // com.google.android.gms.analytics.internal.zzq.zza
        public final void zzo(String str, String str2) {
            if ("ga_trackingId".equals(str)) {
                this.f3839a.zzTJ = str2;
            } else if ("ga_sampleFrequency".equals(str)) {
                try {
                    this.f3839a.zzZi = Double.parseDouble(str2);
                } catch (NumberFormatException e) {
                    zzc("Error parsing ga_sampleFrequency value", str2, e);
                }
            } else {
                zzd("string configuration name not recognized", str);
            }
        }
    }

    public zzam(zzf zzfVar) {
        super(zzfVar, new a(zzfVar));
    }
}
