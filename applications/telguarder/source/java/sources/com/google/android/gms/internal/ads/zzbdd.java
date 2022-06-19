package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.api.Releasable;
import java.lang.ref.WeakReference;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdd.class */
public abstract class zzbdd implements Releasable {
    protected Context mContext;
    protected String zzegw;
    protected WeakReference<zzbbo> zzepn;

    public zzbdd(zzbbo zzbboVar) {
        this.mContext = zzbboVar.getContext();
        this.zzegw = zzr.zzkr().zzq(this.mContext, zzbboVar.zzabj().zzbrp);
        this.zzepn = new WeakReference<>(zzbboVar);
    }

    public final void zza(String str, Map<String, String> map) {
        zzbbo zzbboVar = this.zzepn.get();
        if (zzbboVar != null) {
            zzbboVar.zza(str, map);
        }
    }

    public static String zzfi(String str) {
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -1947652542:
                if (str.equals("interrupted")) {
                    z = false;
                    break;
                }
                break;
            case -1396664534:
                if (str.equals("badUrl")) {
                    z = true;
                    break;
                }
                break;
            case -1347010958:
                if (str.equals("inProgress")) {
                    z = true;
                    break;
                }
                break;
            case -918817863:
                if (str.equals("downloadTimeout")) {
                    z = true;
                    break;
                }
                break;
            case -659376217:
                if (str.equals("contentLengthMissing")) {
                    z = true;
                    break;
                }
                break;
            case -642208130:
                if (str.equals("playerFailed")) {
                    z = true;
                    break;
                }
                break;
            case -354048396:
                if (str.equals("sizeExceeded")) {
                    z = true;
                    break;
                }
                break;
            case -32082395:
                if (str.equals("externalAbort")) {
                    z = true;
                    break;
                }
                break;
            case 3387234:
                if (str.equals("noop")) {
                    z = true;
                    break;
                }
                break;
            case 96784904:
                if (str.equals("error")) {
                    z = true;
                    break;
                }
                break;
            case 580119100:
                if (str.equals("expireFailed")) {
                    z = true;
                    break;
                }
                break;
            case 725497484:
                if (str.equals("noCacheDir")) {
                    z = true;
                    break;
                }
                break;
        }
        String str2 = "internal";
        switch (z) {
            case false:
            case true:
            case true:
            case true:
            case true:
            case true:
                break;
            case true:
            case true:
                str2 = "network";
                break;
            case true:
            case true:
                str2 = "policy";
                break;
            case true:
            case true:
                str2 = "io";
                break;
            default:
                str2 = "internal";
                break;
        }
        return str2;
    }

    public abstract void abort();

    @Override // com.google.android.gms.common.api.Releasable
    public void release() {
    }

    public final void zza(String str, String str2, int i) {
        zzaza.zzaac.post(new zzbdh(this, str, str2, i));
    }

    public final void zza(String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        zzaza.zzaac.post(new zzbdi(this, str, str2, i, i2, j, j2, z, i3, i4));
    }

    public final void zza(String str, String str2, long j, long j2, boolean z, long j3, long j4, long j5, int i, int i2) {
        zzaza.zzaac.post(new zzbdf(this, str, str2, j, j2, j3, j4, j5, z, i, i2));
    }

    public final void zza(String str, String str2, String str3, String str4) {
        zzaza.zzaac.post(new zzbdj(this, str, str2, str3, str4));
    }

    public final void zzc(String str, String str2, long j) {
        zzaza.zzaac.post(new zzbdk(this, str, str2, j));
    }

    public void zzdk(int i) {
    }

    public void zzdl(int i) {
    }

    public void zzdm(int i) {
    }

    public void zzdn(int i) {
    }

    public boolean zze(String str, String[] strArr) {
        return zzfg(str);
    }

    public abstract boolean zzfg(String str);

    public String zzfh(String str) {
        return zzaza.zzeq(str);
    }
}
