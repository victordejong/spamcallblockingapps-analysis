package com.flurry.sdk;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.flurry.sdk.hx */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/hx.class */
public class C3255hx implements AbstractC3417kl<C3189gx> {

    /* renamed from: a */
    public static final String f5454a = "hx";

    /* renamed from: a */
    public static void m32797a(JSONObject jSONObject, String str, String str2) throws IOException, JSONException {
        if (str2 != null) {
            jSONObject.put(str, str2);
        } else {
            jSONObject.put(str, JSONObject.NULL);
        }
    }

    @Override // com.flurry.sdk.AbstractC3417kl
    /* renamed from: a */
    public final /* synthetic */ C3189gx mo32526a(InputStream inputStream) throws IOException {
        throw new IOException("Deserialize not supported for request");
    }

    @Override // com.flurry.sdk.AbstractC3417kl
    /* renamed from: a */
    public final /* synthetic */ void mo32525a(OutputStream outputStream, C3189gx gxVar) throws IOException {
        JSONObject jSONObject;
        C3189gx gxVar2 = gxVar;
        if (outputStream != null && gxVar2 != null) {
            DataOutputStream dataOutputStream = new DataOutputStream(this, outputStream) { // from class: com.flurry.sdk.hx.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            JSONObject jSONObject2 = new JSONObject();
            try {
                try {
                    m32797a(jSONObject2, "project_key", gxVar2.f5282a);
                    m32797a(jSONObject2, "bundle_id", gxVar2.f5283b);
                    m32797a(jSONObject2, "app_version", gxVar2.f5284c);
                    jSONObject2.put("sdk_version", gxVar2.f5285d);
                    jSONObject2.put("platform", gxVar2.f5286e);
                    m32797a(jSONObject2, "platform_version", gxVar2.f5287f);
                    jSONObject2.put("limit_ad_tracking", gxVar2.f5288g);
                    if (gxVar2.f5289h == null || gxVar2.f5289h.f5305a == null) {
                        jSONObject = null;
                    } else {
                        jSONObject = new JSONObject();
                        JSONObject jSONObject3 = new JSONObject();
                        m32797a(jSONObject3, "model", gxVar2.f5289h.f5305a.f5261a);
                        m32797a(jSONObject3, "brand", gxVar2.f5289h.f5305a.f5262b);
                        m32797a(jSONObject3, "id", gxVar2.f5289h.f5305a.f5263c);
                        m32797a(jSONObject3, "device", gxVar2.f5289h.f5305a.f5264d);
                        m32797a(jSONObject3, "product", gxVar2.f5289h.f5305a.f5265e);
                        m32797a(jSONObject3, "version_release", gxVar2.f5289h.f5305a.f5266f);
                        jSONObject.put("com.flurry.proton.generated.avro.v2.AndroidTags", jSONObject3);
                    }
                    if (jSONObject != null) {
                        jSONObject2.put("device_tags", jSONObject);
                    } else {
                        jSONObject2.put("device_tags", JSONObject.NULL);
                    }
                    JSONArray jSONArray = new JSONArray();
                    for (C3191gz gzVar : gxVar2.f5290i) {
                        JSONObject jSONObject4 = new JSONObject();
                        jSONObject4.put("type", gzVar.f5298a);
                        m32797a(jSONObject4, "id", gzVar.f5299b);
                        jSONArray.put(jSONObject4);
                    }
                    jSONObject2.put("device_ids", jSONArray);
                    JSONObject jSONObject5 = null;
                    if (gxVar2.f5291j != null) {
                        jSONObject5 = null;
                        if (gxVar2.f5291j.f5313a != null) {
                            jSONObject5 = new JSONObject();
                            JSONObject jSONObject6 = new JSONObject();
                            jSONObject6.putOpt("latitude", Double.valueOf(gxVar2.f5291j.f5313a.f5310a));
                            jSONObject6.putOpt("longitude", Double.valueOf(gxVar2.f5291j.f5313a.f5311b));
                            jSONObject6.putOpt("accuracy", Float.valueOf(gxVar2.f5291j.f5313a.f5312c));
                            jSONObject5.put("com.flurry.proton.generated.avro.v2.Geolocation", jSONObject6);
                        }
                    }
                    if (jSONObject5 != null) {
                        jSONObject2.put("geo", jSONObject5);
                    } else {
                        jSONObject2.put("geo", JSONObject.NULL);
                    }
                    JSONObject jSONObject7 = new JSONObject();
                    if (gxVar2.f5292k != null) {
                        m32797a(jSONObject7, "string", gxVar2.f5292k.f5324a);
                        jSONObject2.put("publisher_user_id", jSONObject7);
                    } else {
                        jSONObject2.put("publisher_user_id", JSONObject.NULL);
                    }
                    C3356jq.m32615a(5, f5454a, "Proton Request String: " + jSONObject2.toString());
                    dataOutputStream.write(jSONObject2.toString().getBytes());
                    dataOutputStream.flush();
                    dataOutputStream.close();
                } catch (JSONException e) {
                    throw new IOException("Invalid Json", e);
                }
            } catch (Throwable th) {
                dataOutputStream.close();
                throw th;
            }
        }
    }
}
