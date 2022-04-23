package com.google.android.gms.tagmanager;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import com.google.android.gms.internal.measurement.zzru;
import com.google.android.gms.internal.measurement.zzrw;
import com.google.android.gms.internal.measurement.zzrx;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzda.class */
final class zzda {
    public static zzrw zzdr(String str) throws JSONException {
        zzp zzj = zzgj.zzj(zzh(new JSONObject(str)));
        zzrx zzsr = zzrw.zzsr();
        for (int i = 0; i < zzj.zzqk.length; i++) {
            zzsr.zzc(zzru.zzsp().zzb(zzb.INSTANCE_NAME.toString(), zzj.zzqk[i]).zzb(zzb.FUNCTION.toString(), zzgj.zzeb(zzt.zznd())).zzb(zzt.zzne(), zzj.zzql[i]).zzsq());
        }
        return zzsr.zzst();
    }

    @VisibleForTesting
    private static Object zzh(Object obj) throws JSONException {
        if (obj instanceof JSONArray) {
            throw new RuntimeException("JSONArrays are not supported");
        } else if (JSONObject.NULL.equals(obj)) {
            throw new RuntimeException("JSON nulls are not supported");
        } else if (!(obj instanceof JSONObject)) {
            return obj;
        } else {
            JSONObject jSONObject = (JSONObject) obj;
            HashMap hashMap = new HashMap();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, zzh(jSONObject.get(next)));
            }
            return hashMap;
        }
    }
}
