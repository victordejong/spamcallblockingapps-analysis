package com.google.firebase.perf.internal;

import com.google.android.gms.internal.firebase_perf.zzap;
import io.fabric.sdk.android.services.p069c.AbstractC1507b;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/internal/zzq.class */
public abstract class zzq {
    public static String zza(Map.Entry<String, String> entry) {
        String key = entry.getKey();
        String value = entry.getValue();
        if (key == null) {
            return "Attribute key must not be null";
        }
        if (value == null) {
            return "Attribute value must not be null";
        }
        if (key.length() > 40) {
            return String.format(Locale.US, "Attribute key length must not exceed %d characters", 40);
        }
        if (value.length() > 100) {
            return String.format(Locale.US, "Attribute value length must not exceed %d characters", 100);
        }
        if (key.matches("^(?!(firebase_|google_|ga_))[A-Za-z][A-Za-z_0-9]*")) {
            return null;
        }
        return "Attribute key must start with letter, must only contain alphanumeric characters and underscore and must not start with \"firebase_\", \"google_\" and \"ga_";
    }

    public static String zzf(String str) {
        if (str == null) {
            return "Metric name must not be null";
        }
        if (str.length() > 100) {
            return String.format(Locale.US, "Metric name must not exceed %d characters", 100);
        }
        if (!str.startsWith(AbstractC1507b.ROLL_OVER_FILE_NAME_SEPARATOR)) {
            return null;
        }
        for (Enum r0 : zzap.values()) {
            if (r0.toString().equals(str)) {
                return null;
            }
        }
        return "Metric name must not start with '_'";
    }

    public abstract boolean zzac();
}
