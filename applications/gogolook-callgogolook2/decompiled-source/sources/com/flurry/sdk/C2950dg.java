package com.flurry.sdk;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.flurry.sdk.dg */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/dg.class */
public class C2950dg implements AbstractC3417kl<C2927cx> {

    /* renamed from: a */
    public static final String f4576a = "dg";

    /* renamed from: b */
    public static C2927cx m33421b(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        String str = new String(C3445la.m32464a(inputStream));
        String str2 = f4576a;
        C3356jq.m32615a(5, str2, "SDK Log response string: " + str);
        C2927cx cxVar = new C2927cx();
        try {
            JSONObject jSONObject = new JSONObject(str);
            cxVar.f4544a = jSONObject.optString("result");
            cxVar.f4545b = C2947de.m33425a(jSONObject, "errors");
            return cxVar;
        } catch (JSONException e) {
            throw new IOException("Exception while deserialize:", e);
        }
    }

    @Override // com.flurry.sdk.AbstractC3417kl
    /* renamed from: a */
    public final /* synthetic */ C2927cx mo32526a(InputStream inputStream) throws IOException {
        return m33421b(inputStream);
    }

    @Override // com.flurry.sdk.AbstractC3417kl
    /* renamed from: a */
    public final /* synthetic */ void mo32525a(OutputStream outputStream, C2927cx cxVar) throws IOException {
        throw new IOException(f4576a + " Serialize not supported for response");
    }
}
