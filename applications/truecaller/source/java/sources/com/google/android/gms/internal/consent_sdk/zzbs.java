package com.google.android.gms.internal.consent_sdk;

import android.util.JsonWriter;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzbs.class */
public enum zzbs {
    DEBUG_PARAM_UNKNOWN,
    ALWAYS_SHOW,
    GEO_OVERRIDE_EEA,
    GEO_OVERRIDE_NON_EEA;

    public final void zza(JsonWriter jsonWriter) throws IOException {
        int i = zzbq.zzb[ordinal()];
        if (i == 1) {
            jsonWriter.value("DEBUG_PARAM_UNKNOWN");
        } else if (i == 2) {
            jsonWriter.value("ALWAYS_SHOW");
        } else if (i == 3) {
            jsonWriter.value("GEO_OVERRIDE_EEA");
        } else if (i != 4) {
        } else {
            jsonWriter.value("GEO_OVERRIDE_NON_EEA");
        }
    }
}
