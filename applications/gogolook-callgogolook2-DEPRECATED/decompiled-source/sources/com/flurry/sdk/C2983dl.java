package com.flurry.sdk;

import com.aotter.net.trek.model.Device;
import com.aotter.net.trek.model.Location;
import com.aotter.net.trek.model.User;
import com.mopub.mobileads.FlurryAgentWrapper;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.flurry.sdk.dl */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/dl.class */
public class C2983dl implements AbstractC3417kl<C2906cc> {

    /* renamed from: a */
    public static final String f4661a = "dl";

    /* renamed from: a */
    public static JSONArray m33362a(List<C2905cb> list) throws JSONException, IOException {
        JSONArray jSONArray = new JSONArray();
        for (C2905cb cbVar : list) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("type", cbVar.f4376a);
            C3446lb.m32443a(jSONObject, "id", cbVar.f4377b);
            jSONArray.put(jSONObject);
        }
        return jSONArray;
    }

    /* renamed from: b */
    public static JSONArray m33361b(List<C2915cl> list) throws JSONException, IOException {
        JSONArray jSONArray = new JSONArray();
        for (C2915cl clVar : list) {
            JSONObject jSONObject = new JSONObject();
            C3446lb.m32444a(jSONObject, "capType", clVar.f4481a);
            C3446lb.m32443a(jSONObject, "id", clVar.f4482b);
            jSONObject.put("serveTime", clVar.f4483c);
            jSONObject.put("expirationTime", clVar.f4484d);
            jSONObject.put("lastViewedTime", clVar.f4485e);
            jSONObject.put("streamCapDurationMillis", clVar.f4486f);
            jSONObject.put("views", clVar.f4487g);
            jSONObject.put("capRemaining", clVar.f4488h);
            jSONObject.put("totalCap", clVar.f4489i);
            jSONObject.put("capDurationType", clVar.f4490j);
            jSONArray.put(jSONObject);
        }
        return jSONArray;
    }

    /* renamed from: c */
    public static JSONArray m33360c(List<C2928cy> list) throws JSONException, IOException {
        JSONArray jSONArray = new JSONArray();
        for (C2928cy cyVar : list) {
            JSONObject jSONObject = new JSONObject();
            C3446lb.m32443a(jSONObject, "adId", cyVar.f4546a);
            C3446lb.m32443a(jSONObject, "lastEvent", cyVar.f4547b);
            jSONObject.put("renderedTime", cyVar.f4548c);
            jSONArray.put(jSONObject);
        }
        return jSONArray;
    }

    /* renamed from: d */
    public static JSONArray m33359d(List<C3057f> list) throws JSONException, IOException {
        JSONArray jSONArray = new JSONArray();
        for (C3057f fVar : list) {
            JSONObject jSONObject = new JSONObject();
            C3446lb.m32444a(jSONObject, "adUnitNames", new JSONArray((Collection) fVar.f4833c));
            C3446lb.m32444a(jSONObject, "allowed", new JSONArray((Collection) fVar.f4831a));
            C3446lb.m32444a(jSONObject, LogsGroupRealmObject.BLOCKED, new JSONArray((Collection) fVar.f4832b));
            jSONArray.put(jSONObject);
        }
        return jSONArray;
    }

    @Override // com.flurry.sdk.AbstractC3417kl
    /* renamed from: a */
    public final /* synthetic */ C2906cc mo32526a(InputStream inputStream) throws IOException {
        throw new IOException("Deserialize not supported for request");
    }

    @Override // com.flurry.sdk.AbstractC3417kl
    /* renamed from: a */
    public final /* synthetic */ void mo32525a(OutputStream outputStream, C2906cc ccVar) throws IOException {
        JSONObject jSONObject;
        C2906cc ccVar2 = ccVar;
        if (outputStream != null && ccVar2 != null) {
            DataOutputStream dataOutputStream = new DataOutputStream(this, outputStream) { // from class: com.flurry.sdk.dl.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            JSONObject jSONObject2 = new JSONObject();
            try {
                try {
                    jSONObject2.put("requestTime", ccVar2.f4395a);
                    C3446lb.m32443a(jSONObject2, FlurryAgentWrapper.PARAM_API_KEY, ccVar2.f4396b);
                    C3446lb.m32443a(jSONObject2, "agentVersion", ccVar2.f4397c);
                    C3446lb.m32443a(jSONObject2, "ymadVersion", ccVar2.f4398d);
                    C3446lb.m32443a(jSONObject2, "adViewType", ccVar2.f4399e.toString());
                    C3446lb.m32443a(jSONObject2, FlurryAgentWrapper.PARAM_AD_SPACE_NAME, ccVar2.f4400f);
                    C3446lb.m32444a(jSONObject2, "adUnitSections", new JSONArray((Collection) ccVar2.f4401g));
                    jSONObject2.put("isInternal", ccVar2.f4402h);
                    jSONObject2.put("sessionId", ccVar2.f4403i);
                    C3446lb.m32444a(jSONObject2, "bucketIds", new JSONArray((Collection) ccVar2.f4404j));
                    C3446lb.m32444a(jSONObject2, "adReportedIds", m33362a(ccVar2.f4405k));
                    C2918co coVar = ccVar2.f4406l;
                    JSONObject jSONObject3 = new JSONObject();
                    if (coVar != null) {
                        C3446lb.m32445a(jSONObject3, Location.LOCATION_LAT_KEY, coVar.f4503a);
                        C3446lb.m32445a(jSONObject3, "lon", coVar.f4504b);
                    } else {
                        C3446lb.m32445a(jSONObject3, Location.LOCATION_LAT_KEY, 0.0f);
                        C3446lb.m32445a(jSONObject3, "lon", 0.0f);
                    }
                    C3446lb.m32444a(jSONObject2, "location", jSONObject3);
                    jSONObject2.put("testDevice", ccVar2.f4407m);
                    C3446lb.m32444a(jSONObject2, "bindings", new JSONArray((Collection) ccVar2.f4408n));
                    C2910cg cgVar = ccVar2.f4409o;
                    JSONObject jSONObject4 = new JSONObject();
                    if (cgVar != null) {
                        jSONObject4.put("viewWidth", cgVar.f4461a);
                        jSONObject4.put("viewHeight", cgVar.f4462b);
                        jSONObject4.put("screenHeight", cgVar.f4464d);
                        jSONObject4.put("screenWidth", cgVar.f4463c);
                        C3446lb.m32445a(jSONObject4, "density", cgVar.f4465e);
                        C3446lb.m32445a(jSONObject4, "screenSize", cgVar.f4466f);
                        C3446lb.m32444a(jSONObject4, "screenOrientation", cgVar.f4467g);
                    } else {
                        jSONObject4 = (JSONObject) JSONObject.NULL;
                    }
                    C3446lb.m32444a(jSONObject2, "adViewContainer", jSONObject4);
                    C3446lb.m32443a(jSONObject2, "locale", ccVar2.f4410p);
                    C3446lb.m32443a(jSONObject2, "timezone", ccVar2.f4411q);
                    C3446lb.m32443a(jSONObject2, Device.DEVICE_OS_VERSION_KEY, ccVar2.f4412r);
                    C3446lb.m32443a(jSONObject2, "devicePlatform", ccVar2.f4413s);
                    C3446lb.m32443a(jSONObject2, Device.DEVICE_APP_VERSION_KEY, ccVar2.f4414t);
                    C3446lb.m32443a(jSONObject2, "deviceBuild", ccVar2.f4415u);
                    C3446lb.m32443a(jSONObject2, "deviceManufacturer", ccVar2.f4416v);
                    C3446lb.m32443a(jSONObject2, Device.DEVICE_DEVICE_MODEL_KEY, ccVar2.f4417w);
                    C3446lb.m32443a(jSONObject2, "partnerCode", ccVar2.f4418x);
                    C3446lb.m32443a(jSONObject2, "partnerCampaignId", ccVar2.f4419y);
                    C3446lb.m32444a(jSONObject2, "keywords", new JSONObject(ccVar2.f4420z));
                    jSONObject2.put("canDoSKAppStore", ccVar2.f4378A);
                    jSONObject2.put("networkStatus", ccVar2.f4379B);
                    C3446lb.m32444a(jSONObject2, "frequencyCapRequestInfoList", m33361b(ccVar2.f4380C));
                    C3446lb.m32444a(jSONObject2, "streamInfoList", m33360c(ccVar2.f4381D));
                    C3446lb.m32444a(jSONObject2, "capabilities", m33359d(ccVar2.f4382E));
                    jSONObject2.put("adTrackingEnabled", ccVar2.f4383F);
                    C3446lb.m32444a(jSONObject2, "preferredLanguage", (Object) ccVar2.f4384G);
                    C3446lb.m32444a(jSONObject2, "bcat", new JSONArray((Collection) ccVar2.f4385H));
                    C3446lb.m32444a(jSONObject2, "userAgent", (Object) ccVar2.f4386I);
                    C2929cz czVar = ccVar2.f4387J;
                    JSONObject jSONObject5 = new JSONObject();
                    if (czVar != null) {
                        jSONObject5.put("ageRange", czVar.f4549a);
                        jSONObject5.put(User.USER_GENDER_KEY, czVar.f4550b);
                        C3446lb.m32444a(jSONObject5, "personas", new JSONArray((Collection) czVar.f4551c));
                    } else {
                        jSONObject5.put("ageRange", -2);
                        jSONObject5.put(User.USER_GENDER_KEY, -2);
                        C3446lb.m32444a(jSONObject5, "personas", Collections.emptyList());
                    }
                    C3446lb.m32444a(jSONObject2, "targetingOverride", jSONObject5);
                    jSONObject2.put("sendConfiguration", ccVar2.f4388K);
                    C3446lb.m32444a(jSONObject2, "origins", new JSONArray((Collection) ccVar2.f4389L));
                    jSONObject2.put("renderTime", ccVar2.f4390M);
                    C3446lb.m32444a(jSONObject2, "clientSideRtbPayload", new JSONObject(ccVar2.f4391N));
                    C2919cp cpVar = ccVar2.f4392O;
                    if (cpVar == null) {
                        jSONObject = (JSONObject) JSONObject.NULL;
                    } else {
                        jSONObject = new JSONObject();
                        if (cpVar.f4506a != null) {
                            C3446lb.m32444a(jSONObject, "requestedStyles", new JSONArray((Collection) cpVar.f4506a));
                        } else {
                            C3446lb.m32444a(jSONObject, "requestedStyles", new JSONArray((Collection) Collections.emptyList()));
                        }
                        if (cpVar.f4507b != null) {
                            C3446lb.m32444a(jSONObject, "requestedAssets", new JSONArray((Collection) cpVar.f4507b));
                        } else {
                            C3446lb.m32444a(jSONObject, "requestedAssets", JSONObject.NULL);
                        }
                    }
                    C3446lb.m32444a(jSONObject2, "nativeAdConfiguration", jSONObject);
                    C3446lb.m32444a(jSONObject2, "bCookie", (Object) ccVar2.f4393P);
                    C3446lb.m32444a(jSONObject2, "appBundleId", (Object) ccVar2.f4394Q);
                    String str = f4661a;
                    C3356jq.m32615a(4, str, "Ad Request String: " + jSONObject2.toString());
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
