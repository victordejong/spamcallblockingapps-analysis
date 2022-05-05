package com.google.android.gms.analytics.internal;

import android.util.Log;
import com.asus.updatesdk.BuildConfig;
import com.google.android.gms.common.internal.b;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzaf.class */
public class zzaf extends zzd {

    /* renamed from: a  reason: collision with root package name */
    private static String f3826a = "3";

    /* renamed from: b  reason: collision with root package name */
    private static String f3827b = "01VDIWEA?";
    private static zzaf c;

    public zzaf(zzf zzfVar) {
        super(zzfVar);
    }

    public static zzaf zznZ() {
        return c;
    }

    public void zza(int i, String str, Object obj, Object obj2, Object obj3) {
        String str2 = zzy.zzXF.get();
        if (Log.isLoggable(str2, i)) {
            Log.println(i, str2, zzc(str, obj, obj2, obj3));
        }
        if (i >= 5) {
            zzb(i, str, obj, obj2, obj3);
        }
    }

    public void zza(zzab zzabVar, String str) {
        String str2 = str;
        if (str == null) {
            str2 = "no reason provided";
        }
        String zzabVar2 = zzabVar != null ? zzabVar.toString() : "no hit data";
        String valueOf = String.valueOf(str2);
        zzd(valueOf.length() != 0 ? "Discarding hit. ".concat(valueOf) : new String("Discarding hit. "), zzabVar2);
    }

    public void zzb(int i, String str, Object obj, Object obj2, Object obj3) {
        i = 0;
        synchronized (this) {
            b.a(str);
            if (i < 0) {
            }
            if (i >= f3827b.length()) {
                i = f3827b.length() - 1;
            }
            char c2 = zzlS().zzmX() ? zzlS().zzmW() ? 'P' : 'C' : zzlS().zzmW() ? 'p' : 'c';
            String str2 = f3826a;
            char charAt = f3827b.charAt(i);
            String str3 = zze.VERSION;
            String valueOf = String.valueOf(zzc(str, zzm(obj), zzm(obj2), zzm(obj3)));
            String sb = new StringBuilder(String.valueOf(str2).length() + 3 + String.valueOf(str3).length() + String.valueOf(valueOf).length()).append(str2).append(charAt).append(c2).append(str3).append(":").append(valueOf).toString();
            String str4 = sb;
            if (sb.length() > 1024) {
                str4 = sb.substring(0, 1024);
            }
            zzai zzmf = zzlO().zzmf();
            if (zzmf != null) {
                zzmf.zzom().zzbU(str4);
            }
        }
    }

    public void zzh(Map<String, String> map, String str) {
        String str2;
        String str3 = str;
        if (str == null) {
            str3 = "no reason provided";
        }
        if (map != null) {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (sb.length() > 0) {
                    sb.append(',');
                }
                sb.append(entry.getKey());
                sb.append('=');
                sb.append(entry.getValue());
            }
            str2 = sb.toString();
        } else {
            str2 = "no hit data";
        }
        String valueOf = String.valueOf(str3);
        zzd(valueOf.length() != 0 ? "Discarding hit. ".concat(valueOf) : new String("Discarding hit. "), str2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.analytics.internal.zzd
    public void zzkO() {
        synchronized (zzaf.class) {
            try {
                c = this;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    protected String zzm(Object obj) {
        String valueOf;
        if (obj == null) {
            valueOf = null;
        } else {
            if (obj instanceof Integer) {
                obj = new Long(((Integer) obj).intValue());
            }
            if (!(obj instanceof Long)) {
                valueOf = obj instanceof Boolean ? String.valueOf(obj) : obj instanceof Throwable ? obj.getClass().getCanonicalName() : "-";
            } else if (Math.abs(((Long) obj).longValue()) < 100) {
                valueOf = String.valueOf(obj);
            } else {
                String str = String.valueOf(obj).charAt(0) == '-' ? "-" : BuildConfig.FLAVOR;
                String valueOf2 = String.valueOf(Math.abs(((Long) obj).longValue()));
                valueOf = str + Math.round(Math.pow(10.0d, valueOf2.length() - 1)) + "..." + str + Math.round(Math.pow(10.0d, valueOf2.length()) - 1.0d);
            }
        }
        return valueOf;
    }
}
