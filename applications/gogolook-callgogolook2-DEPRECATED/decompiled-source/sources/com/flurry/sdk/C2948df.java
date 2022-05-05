package com.flurry.sdk;

import com.mopub.mobileads.FlurryAgentWrapper;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.flurry.sdk.df */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/df.class */
public class C2948df implements AbstractC3417kl<C2926cw> {

    /* renamed from: a */
    public static final String f4575a = "df";

    /* renamed from: a */
    public static JSONArray m33424a(List<C2905cb> list) throws JSONException, IOException {
        JSONArray jSONArray = new JSONArray();
        for (C2905cb cbVar : list) {
            JSONObject jSONObject = new JSONObject();
            C3446lb.m32443a(jSONObject, "id", cbVar.f4377b);
            jSONObject.put("type", cbVar.f4376a);
            jSONArray.put(jSONObject);
        }
        return jSONArray;
    }

    /* renamed from: b */
    public static JSONArray m33423b(List<C2925cv> list) throws JSONException, IOException {
        JSONArray jSONArray = new JSONArray();
        for (C2925cv cvVar : list) {
            JSONObject jSONObject = new JSONObject();
            C3446lb.m32443a(jSONObject, "adLogGUID", cvVar.f4536b);
            jSONObject.put("sessionId", cvVar.f4535a);
            C3446lb.m32444a(jSONObject, "sdkAdEvents", m33422c(cvVar.f4537c));
            jSONArray.put(jSONObject);
        }
        return jSONArray;
    }

    /* renamed from: c */
    public static JSONArray m33422c(List<C2924cu> list) throws JSONException, IOException {
        JSONArray jSONArray = new JSONArray();
        for (C2924cu cuVar : list) {
            JSONObject jSONObject = new JSONObject();
            C3446lb.m32443a(jSONObject, "type", cuVar.f4532a);
            jSONObject.put("timeOffset", cuVar.f4534c);
            C3446lb.m32444a(jSONObject, "params", new JSONObject(cuVar.f4533b));
            jSONArray.put(jSONObject);
        }
        return jSONArray;
    }

    @Override // com.flurry.sdk.AbstractC3417kl
    /* renamed from: a */
    public final /* synthetic */ C2926cw mo32526a(InputStream inputStream) throws IOException {
        throw new IOException(f4575a + " Deserialize not supported for log request");
    }

    @Override // com.flurry.sdk.AbstractC3417kl
    /* renamed from: a */
    public final /* synthetic */ void mo32525a(OutputStream outputStream, C2926cw cwVar) throws IOException {
        C2926cw cwVar2 = cwVar;
        if (outputStream != null && cwVar2 != null) {
            DataOutputStream dataOutputStream = new DataOutputStream(this, outputStream) { // from class: com.flurry.sdk.df.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            JSONObject jSONObject = new JSONObject();
            try {
                try {
                    C3446lb.m32443a(jSONObject, FlurryAgentWrapper.PARAM_API_KEY, cwVar2.f4538a);
                    jSONObject.put("testDevice", cwVar2.f4543f);
                    C3446lb.m32443a(jSONObject, "agentVersion", cwVar2.f4542e);
                    jSONObject.put("agentTimestamp", cwVar2.f4541d);
                    C3446lb.m32444a(jSONObject, "adReportedIds", m33424a(cwVar2.f4539b));
                    C3446lb.m32444a(jSONObject, "sdkAdLogs", m33423b(cwVar2.f4540c));
                    dataOutputStream.write(jSONObject.toString().getBytes());
                    dataOutputStream.flush();
                    dataOutputStream.close();
                } catch (JSONException e) {
                    throw new IOException(f4575a + " Invalid SdkLogRequest: " + cwVar2, e);
                }
            } catch (Throwable th) {
                dataOutputStream.close();
                throw th;
            }
        }
    }
}
