package com.google.android.libraries.places.internal;

import android.location.Location;
import android.text.TextUtils;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.libraries.places.api.model.LocationBias;
import com.google.android.libraries.places.api.model.LocationRestriction;
import com.google.android.libraries.places.api.model.RectangularBounds;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzcn.class */
public final class zzcn {
    private static final zzgn<zzp, String> zza = new zzgm().zza(zzp.NONE, "NONE").zza(zzp.PSK, "WPA_PSK").zza(zzp.EAP, "WPA_EAP").zza(zzp.OTHER, "SECURED_NONE").zza();

    public static Integer zza(Location location) {
        if (location == null) {
            return null;
        }
        float accuracy = location.getAccuracy();
        if (location.hasAccuracy() && accuracy > 0.0f) {
            return Integer.valueOf(Math.round(accuracy * 100.0f));
        }
        return null;
    }

    private static String zza(double d, double d2) {
        return String.format(Locale.US, "%.15f,%.15f", Double.valueOf(d), Double.valueOf(d2));
    }

    public static String zza(LatLng latLng) {
        if (latLng == null) {
            return null;
        }
        return zza(latLng.a, latLng.b);
    }

    public static String zza(LocationBias locationBias) {
        if (locationBias == null) {
            return null;
        }
        if (!(locationBias instanceof RectangularBounds)) {
            throw new AssertionError("Unknown LocationBias type.");
        }
        return zza((RectangularBounds) locationBias);
    }

    public static String zza(LocationRestriction locationRestriction) {
        if (locationRestriction == null) {
            return null;
        }
        if (!(locationRestriction instanceof RectangularBounds)) {
            throw new AssertionError("Unknown LocationRestriction type.");
        }
        return zza((RectangularBounds) locationRestriction);
    }

    private static String zza(RectangularBounds rectangularBounds) {
        LatLng southwest = rectangularBounds.getSouthwest();
        double d = southwest.a;
        double d2 = southwest.b;
        LatLng northeast = rectangularBounds.getNortheast();
        return String.format(Locale.US, "rectangle:%.15f,%.15f|%.15f,%.15f", Double.valueOf(d), Double.valueOf(d2), Double.valueOf(northeast.a), Double.valueOf(northeast.b));
    }

    public static String zza(zzgi<zzq> zzgiVar, int i) {
        zzft.zza(true, (Object) "maxLength must not be negative");
        StringBuilder sb = new StringBuilder();
        int size = zzgiVar.size();
        int i2 = 0;
        while (i2 < size) {
            i2++;
            zzq zzqVar = (zzq) zzgiVar.get(i2);
            String str = sb.length() > 0 ? "|" : "";
            String valueOf = String.valueOf(zzfj.zza(",").zzb(ContainerUtils.KEY_VALUE_DELIMITER).zza(new StringBuilder(), new zzgm().zza("mac", zzqVar.zza()).zza("strength_dbm", Integer.valueOf(zzqVar.zzb())).zza("wifi_auth_type", zza.get(zzqVar.zzc())).zza("is_connected", Boolean.valueOf(zzqVar.zzd())).zza("frequency_mhz", Integer.valueOf(zzqVar.zze())).zza().entrySet().iterator()).toString());
            String concat = valueOf.length() != 0 ? str.concat(valueOf) : new String(str);
            if (4000 < concat.length() + sb.length()) {
                break;
            }
            sb.append(concat);
        }
        return sb.toString();
    }

    public static String zza(List<String> list) {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = list.iterator();
        while (true) {
            String str = null;
            if (!it.hasNext()) {
                break;
            }
            String next = it.next();
            if (!TextUtils.isEmpty(next)) {
                String valueOf = String.valueOf(next.toLowerCase(Locale.US));
                str = valueOf.length() != 0 ? "country:".concat(valueOf) : new String("country:");
            }
            if (str != null) {
                if (sb.length() != 0) {
                    sb.append('|');
                }
                sb.append(str);
            }
        }
        if (sb.length() == 0) {
            return null;
        }
        return sb.toString();
    }

    public static String zzb(Location location) {
        if (location == null) {
            return null;
        }
        return zza(location.getLatitude(), location.getLongitude());
    }
}
