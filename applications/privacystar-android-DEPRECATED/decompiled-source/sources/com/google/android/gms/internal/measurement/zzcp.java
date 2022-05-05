package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.privacystar.core.util.CampaignUtil;
import java.util.Map;
import org.apache.commons.cli.HelpFormatter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcp.class */
public class zzcp extends zzau {
    private static zzcp zzabh;

    public zzcp(zzaw zzawVar) {
        super(zzawVar);
    }

    @VisibleForTesting
    private static String zzd(Object obj) {
        if (obj == null) {
            return null;
        }
        Object obj2 = obj;
        if (obj instanceof Integer) {
            obj2 = Long.valueOf(((Integer) obj).intValue());
        }
        if (!(obj2 instanceof Long)) {
            return obj2 instanceof Boolean ? String.valueOf(obj2) : obj2 instanceof Throwable ? obj2.getClass().getCanonicalName() : HelpFormatter.DEFAULT_OPT_PREFIX;
        }
        Long l = (Long) obj2;
        if (Math.abs(l.longValue()) < 100) {
            return String.valueOf(obj2);
        }
        String str = String.valueOf(obj2).charAt(0) == '-' ? HelpFormatter.DEFAULT_OPT_PREFIX : "";
        String valueOf = String.valueOf(Math.abs(l.longValue()));
        return str + Math.round(Math.pow(10.0d, valueOf.length() - 1)) + "..." + str + Math.round(Math.pow(10.0d, valueOf.length()) - 1.0d);
    }

    public static zzcp zzex() {
        return zzabh;
    }

    public final void zza(zzck zzckVar, String str) {
        String zzckVar2 = zzckVar != null ? zzckVar.toString() : "no hit data";
        String valueOf = String.valueOf(str);
        zzd(valueOf.length() != 0 ? "Discarding hit. ".concat(valueOf) : new String("Discarding hit. "), zzckVar2);
    }

    public final void zza(Map<String, String> map, String str) {
        String str2;
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
        String valueOf = String.valueOf(str);
        zzd(valueOf.length() != 0 ? "Discarding hit. ".concat(valueOf) : new String("Discarding hit. "), str2);
    }

    @Override // com.google.android.gms.internal.measurement.zzau
    protected final void zzag() {
        synchronized (zzcp.class) {
            try {
                zzabh = this;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzb(int i, String str, Object obj, Object obj2, Object obj3) {
        synchronized (this) {
            Preconditions.checkNotNull(str);
            int i2 = i;
            if (i < 0) {
                i2 = 0;
            }
            int i3 = i2;
            if (i2 >= 9) {
                i3 = 8;
            }
            char c = zzbz().zzdw() ? 'C' : 'c';
            char charAt = "01VDIWEA?".charAt(i3);
            String str2 = zzav.VERSION;
            String zzc = zzc(str, zzd(obj), zzd(obj2), zzd(obj3));
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 4 + String.valueOf(zzc).length());
            sb.append(CampaignUtil.CAMPAIGN_ACTION_DASHBOARD);
            sb.append(charAt);
            sb.append(c);
            sb.append(str2);
            sb.append(":");
            sb.append(zzc);
            String sb2 = sb.toString();
            String str3 = sb2;
            if (sb2.length() > 1024) {
                str3 = sb2.substring(0, 1024);
            }
            zzct zzcp = zzbw().zzcp();
            if (zzcp != null) {
                zzcp.zzfk().zzad(str3);
            }
        }
    }
}
