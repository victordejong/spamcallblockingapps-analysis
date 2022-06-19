package p030c5;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import org.json.JSONException;
import org.json.JSONObject;
import p070d5.AbstractC2475a;
import p070d5.AbstractC2476b;
/* renamed from: c5.d */
/* loaded from: classes-dex2jar.jar:c5/d.class */
public class C0845d implements AbstractC0843b, AbstractC2476b {

    /* renamed from: a */
    public AbstractC2475a f3123a;

    /* renamed from: a */
    public static String m7282a(String str, Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        for (String str2 : bundle.keySet()) {
            jSONObject2.put(str2, bundle.get(str2));
        }
        jSONObject.put(AppMeasurementSdk.ConditionalUserProperty.NAME, str);
        jSONObject.put("parameters", jSONObject2);
        return jSONObject.toString();
    }

    @Override // p030c5.AbstractC0843b
    /* renamed from: b */
    public void mo7281b(String str, Bundle bundle) {
        AbstractC2475a abstractC2475a = this.f3123a;
        if (abstractC2475a != null) {
            try {
                abstractC2475a.mo3424a("$A$:" + m7282a(str, bundle));
            } catch (JSONException e) {
                Log.w("FirebaseCrashlytics", "Unable to serialize Firebase Analytics event to breadcrumb.", null);
            }
        }
    }

    @Override // p070d5.AbstractC2476b
    /* renamed from: d */
    public void mo156d(AbstractC2475a abstractC2475a) {
        this.f3123a = abstractC2475a;
        Log.isLoggable("FirebaseCrashlytics", 3);
    }
}
