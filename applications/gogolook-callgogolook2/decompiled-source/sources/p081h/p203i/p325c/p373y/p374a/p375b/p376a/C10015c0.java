package p081h.p203i.p325c.p373y.p374a.p375b.p376a;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import java.io.IOException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.concurrent.ExecutionException;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p203i.p204a.p224e.p235d.p240n.C6999k;
import p081h.p203i.p204a.p224e.p235d.p249s.C7080l;
import p081h.p203i.p204a.p224e.p259j.p271l.C8075e2;
import p081h.p203i.p204a.p224e.p259j.p271l.C8386u6;
import p081h.p203i.p204a.p224e.p259j.p271l.EnumC8223l4;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9148k;
import p081h.p203i.p325c.C9435c;
import p081h.p203i.p325c.p367v.AbstractC9947m;
import p081h.p203i.p325c.p367v.C9938g;
import p081h.p203i.p325c.p373y.p374a.C10009a;
import p081h.p203i.p325c.p373y.p374a.p377c.C10051e;
@VisibleForTesting
@WorkerThread
/* renamed from: h.i.c.y.a.b.a.c0 */
/* loaded from: classes2-dex2jar.jar:h/i/c/y/a/b/a/c0.class */
public final class C10015c0 {

    /* renamed from: a */
    public static final C6999k f22649a = new C6999k("ModelInfoRetriever", "");

    /* renamed from: b */
    public static AbstractC10019e0 f22650b = C10013b0.f22648a;

    @Nullable
    /* renamed from: a */
    public static C10018e m13624a(@NonNull C8386u6 u6Var, @NonNull C9435c cVar, @NonNull C10051e eVar, @NonNull C10023g0 g0Var) throws C10009a {
        JSONObject jSONObject;
        HttpsURLConnection a = C10024h.m13573a(m13623a(cVar, eVar.m13523c(), g0Var), g0Var);
        if (a == null) {
            return null;
        }
        String headerField = a.getHeaderField("Content-Location");
        String headerField2 = a.getHeaderField("ETag");
        C6999k kVar = f22649a;
        String valueOf = String.valueOf(headerField);
        kVar.m21339a("ModelInfoRetriever", valueOf.length() != 0 ? "Received download URL: ".concat(valueOf) : new String("Received download URL: "));
        if (headerField == null) {
            return null;
        }
        if (headerField2 != null) {
            eVar.m13524b(headerField2);
            try {
                String str = new String(C7080l.m21137a(a.getInputStream()));
                String str2 = str;
                if (TextUtils.isEmpty(str)) {
                    str2 = "{}";
                }
                JSONObject jSONObject2 = new JSONObject(str2);
                EnumC10040w wVar = jSONObject2.has("inferenceInfo") ? EnumC10040w.AUTOML : EnumC10040w.CUSTOM;
                if (wVar.equals(EnumC10040w.AUTOML) && (jSONObject = jSONObject2.getJSONObject("inferenceInfo")) != null) {
                    JSONArray jSONArray = jSONObject.getJSONArray("labels");
                    if (jSONArray == null || jSONArray.length() == 0) {
                        throw new C10009a("Cannot parse AutoML model's labels from model downloading backend.", 13);
                    }
                    ArrayList arrayList = new ArrayList();
                    for (int i = 0; i < jSONArray.length(); i++) {
                        arrayList.add(jSONArray.getString(i));
                    }
                    C10012b.m13628a(u6Var, eVar.m13522d(), arrayList);
                }
                return new C10018e(eVar.m13522d(), Uri.parse(headerField), headerField2, wVar);
            } catch (IOException | JSONException e) {
                throw new C10009a("Failed to parse the model backend response message", 13, e);
            }
        } else {
            g0Var.m13576a(EnumC8223l4.MODEL_INFO_DOWNLOAD_NO_HASH, false, EnumC10040w.UNKNOWN, C8075e2.EnumC8077b.MODEL_INFO_RETRIEVAL_FAILED);
            throw new C10009a("No hash value for the custom model", 13);
        }
    }

    @Nullable
    @VisibleForTesting
    /* renamed from: a */
    public static String m13623a(C9435c cVar, String str, @NonNull C10023g0 g0Var) throws C10009a {
        String str2;
        if (cVar.m15169d().m15148c() != null) {
            C9938g a = f22650b.mo13610a(cVar);
            if (a == null) {
                f22649a.m21333e("ModelInfoRetriever", "Cannot get a valid instance of FirebaseInstanceId. Cannot retrieve model info.");
                return null;
            }
            try {
                try {
                    return String.format("https://mlkit.googleapis.com/v1beta1/projects/%s/models/%s/versions/active?key=%s&app_instance_id=%s&app_instance_token=%s", cVar.m15169d().m15147d(), str, cVar.m15169d().m15151a(), (String) C9148k.m16003a((AbstractC9143h<Object>) a.getId()), ((AbstractC9947m) C9148k.m16003a((AbstractC9143h<Object>) a.mo13898a(false))).mo13896a());
                } catch (InterruptedException e) {
                    throw new C10009a("Interrupted while retrieving model info", 13);
                } catch (ExecutionException e2) {
                    EnumC8223l4 l4Var = EnumC8223l4.MODEL_INFO_DOWNLOAD_CONNECTION_FAILED;
                    if (e2.getCause() instanceof UnknownHostException) {
                        l4Var = EnumC8223l4.NO_NETWORK_CONNECTION;
                        str2 = "Failed to retrieve model info due to no internet connection.";
                    } else {
                        str2 = "Failed to get model URL";
                    }
                    g0Var.m13576a(l4Var, false, EnumC10040w.UNKNOWN, C8075e2.EnumC8077b.MODEL_INFO_RETRIEVAL_FAILED);
                    throw new C10009a(str2, 13, e2.getCause());
                }
            } catch (InterruptedException e3) {
                throw new C10009a("Interrupted while retrieving model info", 13);
            } catch (ExecutionException e4) {
                f22649a.m21336b("ModelInfoRetriever", "Failed to retrieve Firebase instance id. Cannot retrieve model info.", e4.getCause());
                throw new C10009a("Error while retrieving model info", 13, e4.getCause());
            }
        } else {
            throw new C10009a("GCM sender id cannot be null in FirebaseOptions. Please configure FirebaseApp properly.", 9);
        }
    }
}
