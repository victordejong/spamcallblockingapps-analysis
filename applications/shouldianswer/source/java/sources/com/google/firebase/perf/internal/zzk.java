package com.google.firebase.perf.internal;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.internal.firebase-perf.zzca;
import com.google.android.gms.internal.firebase_perf.zzbb;
import com.google.android.gms.internal.firebase_perf.zzca;
import java.net.URI;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/internal/zzk.class */
public final class zzk extends zzq {
    private final Context zzcl;
    private final zzca zzcy;

    public zzk(zzca zzcaVar, Context context) {
        this.zzcl = context;
        this.zzcy = zzcaVar;
    }

    private static URI zzd(String str) {
        if (str == null) {
            return null;
        }
        try {
            return URI.create(str);
        } catch (IllegalArgumentException | IllegalStateException e) {
            Log.w("FirebasePerformance", "getResultUrl throws exception", e);
            return null;
        }
    }

    private static boolean zze(String str) {
        if (str == null) {
            return true;
        }
        return str.trim().isEmpty();
    }

    private static boolean zzj(long j) {
        return j >= 0;
    }

    private static boolean zzk(long j) {
        return j >= 0;
    }

    @Override // com.google.firebase.perf.internal.zzq
    public final boolean zzac() {
        if (zze(this.zzcy.getUrl())) {
            String valueOf = String.valueOf(this.zzcy.getUrl());
            Log.i("FirebasePerformance", valueOf.length() != 0 ? "URL is missing:".concat(valueOf) : new String("URL is missing:"));
            return false;
        }
        URI zzd = zzd(this.zzcy.getUrl());
        if (zzd == null) {
            Log.i("FirebasePerformance", "URL cannot be parsed");
            return false;
        }
        if (!(zzd == null ? false : zzbb.zza(zzd, this.zzcl))) {
            String valueOf2 = String.valueOf(zzd);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf2).length() + 26);
            sb.append("URL fails whitelist rule: ");
            sb.append(valueOf2);
            Log.i("FirebasePerformance", sb.toString());
            return false;
        }
        String host = zzd.getHost();
        if (!(host != null && !zze(host) && host.length() <= 255)) {
            Log.i("FirebasePerformance", "URL host is null or invalid");
            return false;
        }
        String scheme = zzd.getScheme();
        if (!(scheme != null && ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)))) {
            Log.i("FirebasePerformance", "URL scheme is null or invalid");
            return false;
        }
        if (!(zzd.getUserInfo() == null)) {
            Log.i("FirebasePerformance", "URL user info is null");
            return false;
        }
        int port = zzd.getPort();
        if (!(port == -1 || port > 0)) {
            Log.i("FirebasePerformance", "URL port is less than or equal to 0");
            return false;
        }
        zzca.zzc zzdk = this.zzcy.zzdj() ? this.zzcy.zzdk() : null;
        if (!((zzdk == null || zzdk == zzca.zzc.zzkg) ? false : true)) {
            String valueOf3 = String.valueOf(this.zzcy.zzdk());
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf3).length() + 32);
            sb2.append("HTTP Method is null or invalid: ");
            sb2.append(valueOf3);
            Log.i("FirebasePerformance", sb2.toString());
            return false;
        }
        if (this.zzcy.zzw()) {
            if (!(this.zzcy.zzdp() > 0)) {
                int zzdp = this.zzcy.zzdp();
                StringBuilder sb3 = new StringBuilder(49);
                sb3.append("HTTP ResponseCode is a negative value:");
                sb3.append(zzdp);
                Log.i("FirebasePerformance", sb3.toString());
                return false;
            }
        }
        if (this.zzcy.zzdl() && !zzk(this.zzcy.zzdm())) {
            long zzdm = this.zzcy.zzdm();
            StringBuilder sb4 = new StringBuilder(56);
            sb4.append("Request Payload is a negative value:");
            sb4.append(zzdm);
            Log.i("FirebasePerformance", sb4.toString());
            return false;
        } else if (this.zzcy.zzdn() && !zzk(this.zzcy.zzdo())) {
            long zzdo = this.zzcy.zzdo();
            StringBuilder sb5 = new StringBuilder(57);
            sb5.append("Response Payload is a negative value:");
            sb5.append(zzdo);
            Log.i("FirebasePerformance", sb5.toString());
            return false;
        } else if (!this.zzcy.zzdr() || this.zzcy.zzds() <= 0) {
            long zzds = this.zzcy.zzds();
            StringBuilder sb6 = new StringBuilder(84);
            sb6.append("Start time of the request is null, or zero, or a negative value:");
            sb6.append(zzds);
            Log.i("FirebasePerformance", sb6.toString());
            return false;
        } else if (this.zzcy.zzdt() && !zzj(this.zzcy.zzdu())) {
            long zzdu = this.zzcy.zzdu();
            StringBuilder sb7 = new StringBuilder(69);
            sb7.append("Time to complete the request is a negative value:");
            sb7.append(zzdu);
            Log.i("FirebasePerformance", sb7.toString());
            return false;
        } else if (this.zzcy.zzdv() && !zzj(this.zzcy.zzdw())) {
            long zzdw = this.zzcy.zzdw();
            StringBuilder sb8 = new StringBuilder(112);
            sb8.append("Time from the start of the request to the start of the response is null or a negative value:");
            sb8.append(zzdw);
            Log.i("FirebasePerformance", sb8.toString());
            return false;
        } else if (this.zzcy.zzdx() && this.zzcy.zzdy() > 0) {
            if (this.zzcy.zzw()) {
                return true;
            }
            Log.i("FirebasePerformance", "Did not receive a HTTP Response Code");
            return false;
        } else {
            long zzdy = this.zzcy.zzdy();
            StringBuilder sb9 = new StringBuilder(108);
            sb9.append("Time from the start of the request to the end of the response is null, negative or zero:");
            sb9.append(zzdy);
            Log.i("FirebasePerformance", sb9.toString());
            return false;
        }
    }
}
