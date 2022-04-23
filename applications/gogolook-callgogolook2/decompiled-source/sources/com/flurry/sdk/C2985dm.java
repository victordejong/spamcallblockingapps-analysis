package com.flurry.sdk;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.flurry.sdk.dm */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/dm.class */
public class C2985dm implements AbstractC3417kl<C2907cd> {

    /* renamed from: a */
    public static final String f4662a = "dm";

    /* renamed from: b */
    public static C2907cd m33358b(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        String str = new String(C3445la.m32464a(inputStream));
        String str2 = f4662a;
        C3356jq.m32615a(4, str2, "Ad response string: " + str);
        C2907cd cdVar = new C2907cd();
        try {
            JSONObject jSONObject = new JSONObject(str);
            cdVar.f4421a = C2986dn.m33356a(jSONObject);
            cdVar.f4422b = C2986dn.m33353b(jSONObject);
            C2914ck ckVar = new C2914ck();
            if (!jSONObject.isNull("configuration")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("configuration");
                if (!jSONObject2.isNull("com.flurry.adServer.networking.protocol.v17.Configuration")) {
                    JSONObject jSONObject3 = jSONObject2.getJSONObject("com.flurry.adServer.networking.protocol.v17.Configuration");
                    C2913cj cjVar = new C2913cj();
                    cjVar.f4476a = jSONObject3.getString("sdkAssetUrl");
                    cjVar.f4477b = jSONObject3.getInt("cacheSizeMb");
                    cjVar.f4478c = jSONObject3.getInt("maxAssetSizeKb");
                    cjVar.f4479d = jSONObject3.getInt("maxBitRateKbps");
                    ckVar.f4480a = cjVar;
                }
            }
            cdVar.f4426f = ckVar;
            cdVar.f4423c = C3446lb.m32442b(jSONObject.getJSONArray("errors"));
            cdVar.f4425e = jSONObject.optString("diagnostics");
            cdVar.f4424d = jSONObject.optString("internalError");
            return cdVar;
        } catch (JSONException e) {
            throw new IOException("Exception while deserialize:", e);
        }
    }

    @Override // com.flurry.sdk.AbstractC3417kl
    /* renamed from: a */
    public final /* synthetic */ C2907cd mo32526a(InputStream inputStream) throws IOException {
        return m33358b(inputStream);
    }

    @Override // com.flurry.sdk.AbstractC3417kl
    /* renamed from: a */
    public final /* synthetic */ void mo32525a(OutputStream outputStream, C2907cd cdVar) throws IOException {
        throw new IOException("Serialize not supported for response");
    }
}
