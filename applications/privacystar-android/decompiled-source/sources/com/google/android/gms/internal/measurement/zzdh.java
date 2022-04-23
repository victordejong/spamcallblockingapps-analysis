package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.privacystar.core.service.googleplay.IABConstants;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdh.class */
public final class zzdh extends zzau {
    private String zzaaq;
    private String zzaar;
    protected int zzaat;
    private int zzacq;
    protected boolean zzacr;
    private boolean zzacs;
    private boolean zzact;

    public zzdh(zzaw zzawVar) {
        super(zzawVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzau
    protected final void zzag() {
        ApplicationInfo applicationInfo;
        int i;
        zzcj zzq;
        Context context = getContext();
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException e) {
            zzd("PackageManager doesn't know about the app package", e);
            applicationInfo = null;
        }
        if (applicationInfo == null) {
            zzt("Couldn't get ApplicationInfo to load global config");
            return;
        }
        Bundle bundle = applicationInfo.metaData;
        if (bundle != null && (i = bundle.getInt("com.google.android.gms.analytics.globalConfigResource")) > 0 && (zzq = new zzch(zzbw()).zzq(i)) != null) {
            zzq("Loading global XML config values");
            boolean z = false;
            if (zzq.zzaaq != null) {
                String str = zzq.zzaaq;
                this.zzaaq = str;
                zzb("XML config - app name", str);
            }
            if (zzq.zzaar != null) {
                String str2 = zzq.zzaar;
                this.zzaar = str2;
                zzb("XML config - app version", str2);
            }
            if (zzq.zzaas != null) {
                String lowerCase = zzq.zzaas.toLowerCase(Locale.US);
                int i2 = "verbose".equals(lowerCase) ? 0 : "info".equals(lowerCase) ? 1 : "warning".equals(lowerCase) ? 2 : IABConstants.EXTRA_ERROR.equals(lowerCase) ? 3 : -1;
                if (i2 >= 0) {
                    this.zzacq = i2;
                    zza("XML config - log level", Integer.valueOf(i2));
                }
            }
            if (zzq.zzaat >= 0) {
                int i3 = zzq.zzaat;
                this.zzaat = i3;
                this.zzacr = true;
                zzb("XML config - dispatch period (sec)", Integer.valueOf(i3));
            }
            if (zzq.zzaau != -1) {
                if (zzq.zzaau == 1) {
                    z = true;
                }
                this.zzact = z;
                this.zzacs = true;
                zzb("XML config - dry run", Boolean.valueOf(z));
            }
        }
    }

    public final String zzaj() {
        zzcl();
        return this.zzaaq;
    }

    public final String zzak() {
        zzcl();
        return this.zzaar;
    }

    public final boolean zzfr() {
        zzcl();
        return false;
    }

    public final boolean zzfs() {
        zzcl();
        return this.zzacs;
    }

    public final boolean zzft() {
        zzcl();
        return this.zzact;
    }
}
