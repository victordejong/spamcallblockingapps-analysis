package com.google.firebase.perf.metrics;

import android.util.Log;
import com.google.android.gms.internal.firebase-perf.zzam;
import com.google.android.gms.internal.firebase-perf.zzaz;
import com.google.firebase.perf.internal.zzf;
import com.google.firebase.perf.internal.zzq;
import java.net.URL;
import java.util.AbstractMap;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/metrics/HttpMetric.class */
public class HttpMetric {
    private zzam zzfu;
    private zzaz zzfv;
    private boolean zzfx = false;
    private final Map<String, String> zzfw = new ConcurrentHashMap();

    public HttpMetric(String str, String str2, zzf zzfVar, zzaz zzazVar) {
        this.zzfu = com.google.android.gms.internal.firebase_perf.zzam.zzb(zzfVar);
        this.zzfu.zza(str);
        this.zzfu.zzb(str2);
        this.zzfv = zzazVar;
        this.zzfu.zzv();
    }

    public HttpMetric(URL url, String str, zzf zzfVar, zzaz zzazVar) {
        this.zzfu = com.google.android.gms.internal.firebase_perf.zzam.zzb(zzfVar);
        this.zzfu.zza(url.toString());
        this.zzfu.zzb(str);
        this.zzfv = zzazVar;
        this.zzfu.zzv();
    }

    public String getAttribute(String str) {
        return this.zzfw.get(str);
    }

    public Map<String, String> getAttributes() {
        return new HashMap(this.zzfw);
    }

    public void putAttribute(String str, String str2) {
        String str3;
        String str4;
        boolean z = false;
        try {
            str4 = str.trim();
            str3 = str2.trim();
        } catch (Exception e) {
            Log.e("FirebasePerformance", String.format("Can not set attribute %s with value %s (%s)", str, str2, e.getMessage()));
            str3 = str2;
            str4 = str;
        }
        if (!this.zzfx) {
            if (str4 == null || str3 == null) {
                throw new IllegalArgumentException("Attribute must not have null key or value.");
            }
            if (!this.zzfw.containsKey(str4) && this.zzfw.size() >= 5) {
                throw new IllegalArgumentException(String.format(Locale.US, "Exceeds max limit of number of attributes - %d", 5));
            }
            String zza = zzq.zza(new AbstractMap.SimpleEntry(str4, str3));
            if (zza != null) {
                throw new IllegalArgumentException(zza);
            }
            z = true;
            if (!z) {
                return;
            }
            this.zzfw.put(str4, str3);
            return;
        }
        throw new IllegalArgumentException("HttpMetric has been logged already so unable to modify attributes");
    }

    public void removeAttribute(String str) {
        if (this.zzfx) {
            Log.e("FirebasePerformance", "Can't remove a attribute from a HttpMetric that's stopped.");
        } else {
            this.zzfw.remove(str);
        }
    }

    public void setHttpResponseCode(int i) {
        this.zzfu.zzc(i);
    }

    public void setRequestPayloadSize(long j) {
        this.zzfu.zzd(j);
    }

    public void setResponseContentType(String str) {
        this.zzfu.zzc(str);
    }

    public void setResponsePayloadSize(long j) {
        this.zzfu.zzi(j);
    }

    public void start() {
        this.zzfv.reset();
        this.zzfu.zze(this.zzfv.zzbx());
    }

    public void stop() {
        this.zzfu.zzh(this.zzfv.zzby());
        this.zzfu.zza(this.zzfw);
        this.zzfu.zzz();
        this.zzfx = true;
    }
}
