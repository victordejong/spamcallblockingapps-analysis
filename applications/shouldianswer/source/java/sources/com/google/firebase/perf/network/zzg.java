package com.google.firebase.perf.network;

import android.util.Log;
import com.google.android.gms.internal.firebase-perf.zzam;
import org.apache.http.Header;
import org.apache.http.HttpMessage;
import org.apache.http.HttpResponse;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/network/zzg.class */
public final class zzg {
    public static Long zza(HttpMessage httpMessage) {
        try {
            Header firstHeader = httpMessage.getFirstHeader("content-length");
            if (firstHeader == null) {
                return null;
            }
            return Long.valueOf(Long.parseLong(firstHeader.getValue()));
        } catch (NumberFormatException e) {
            Log.d("FirebasePerformance", "The content-length value is not a valid number");
            return null;
        }
    }

    public static String zza(HttpResponse httpResponse) {
        String value;
        Header firstHeader = httpResponse.getFirstHeader("content-type");
        if (firstHeader == null || (value = firstHeader.getValue()) == null) {
            return null;
        }
        return value;
    }

    public static void zza(zzam zzamVar) {
        if (!zzamVar.zzw()) {
            zzamVar.zzy();
        }
        zzamVar.zzz();
    }
}
