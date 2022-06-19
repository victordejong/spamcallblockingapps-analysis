package com.google.firebase.abt;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/firebase/abt/zza.class */
public final class zza {
    private static final String[] zza = {"experimentId", "experimentStartTime", "timeToLiveMillis", "triggerTimeoutMillis", "variantId"};
    private static final DateFormat zzb = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);
    private final String triggerEventName;
    private final String zzc;
    private final String zzd;
    private final Date zze;
    private final long zzf;
    private final long zzg;

    private zza(String str, String str2, String str3, Date date, long j, long j2) {
        this.zzc = str;
        this.zzd = str2;
        this.triggerEventName = str3;
        this.zze = date;
        this.zzf = j;
        this.zzg = j2;
    }

    public static zza zza(Map<String, String> map) {
        String[] strArr;
        ArrayList arrayList = new ArrayList();
        for (String str : zza) {
            if (!map.containsKey(str)) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            try {
                return new zza(map.get("experimentId"), map.get("variantId"), map.containsKey("triggerEvent") ? map.get("triggerEvent") : "", zzb.parse(map.get("experimentStartTime")), Long.parseLong(map.get("triggerTimeoutMillis")), Long.parseLong(map.get("timeToLiveMillis")));
            } catch (NumberFormatException e) {
                throw new AbtException("Could not process experiment: one of the durations could not be converted into a long.", e);
            } catch (ParseException e2) {
                throw new AbtException("Could not process experiment: parsing experiment start time failed.", e2);
            }
        }
        throw new AbtException(String.format("The following keys are missing from the experiment info map: %s", arrayList));
    }

    public final String zza() {
        return this.zzc;
    }

    public final String zzb() {
        return this.zzd;
    }

    public final String zzc() {
        return this.triggerEventName;
    }

    public final long zzd() {
        return this.zze.getTime();
    }

    public final long zze() {
        return this.zzf;
    }

    public final long zzf() {
        return this.zzg;
    }
}
