package com.mopub.common;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.common.util.Reflection;
import com.mopub.mobileads.MoPubErrorCode;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/AdapterConfigurationManager.class */
public class AdapterConfigurationManager implements wf1 {

    /* renamed from: a */
    public volatile Map<String, AdapterConfiguration> f4140a;

    /* renamed from: b */
    public SdkInitializationListener f4141b;

    /* renamed from: com.mopub.common.AdapterConfigurationManager$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/AdapterConfigurationManager$a.class */
    public static class AsyncTaskC0998a extends AsyncTask<Void, Void, Map<String, AdapterConfiguration>> {

        /* renamed from: a */
        public final WeakReference<Context> f4142a;

        /* renamed from: b */
        public final Set<String> f4143b;

        /* renamed from: c */
        public final Map<String, Map<String, String>> f4144c;

        /* renamed from: d */
        public final Map<String, Map<String, String>> f4145d;

        /* renamed from: e */
        public final wf1 f4146e;

        public AsyncTaskC0998a(Context context, Set<String> set, Map<String, Map<String, String>> map, Map<String, Map<String, String>> map2, wf1 wf1Var) {
            Preconditions.checkNotNull(context);
            Preconditions.checkNotNull(set);
            Preconditions.checkNotNull(map);
            Preconditions.checkNotNull(map2);
            Preconditions.checkNotNull(wf1Var);
            this.f4142a = new WeakReference<>(context);
            this.f4143b = set;
            this.f4144c = map;
            this.f4145d = map2;
            this.f4146e = wf1Var;
        }

        /* renamed from: a */
        public Map<String, AdapterConfiguration> doInBackground(Void... voidArr) {
            HashMap hashMap = new HashMap();
            for (String str : this.f4143b) {
                try {
                    AdapterConfiguration adapterConfiguration = (AdapterConfiguration) Reflection.instantiateClassWithEmptyConstructor(str, AdapterConfiguration.class);
                    Context context = this.f4142a.get();
                    if (context == null) {
                        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                        MoPubLog.log(sdkLogEvent, "Context null. Unable to initialize adapter configuration " + str);
                    } else {
                        Map<String, String> map = this.f4144c.get(str);
                        HashMap hashMap2 = new HashMap(adapterConfiguration.getCachedInitializationParameters(context));
                        if (map != null) {
                            hashMap2.putAll(map);
                            adapterConfiguration.setCachedInitializationParameters(context, hashMap2);
                        }
                        Map<String, String> map2 = this.f4145d.get(str);
                        if (map2 != null) {
                            adapterConfiguration.setMoPubRequestOptions(map2);
                        }
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Initializing %s version %s with network sdk version %s and with params %s", str, adapterConfiguration.getAdapterVersion(), adapterConfiguration.getNetworkSdkVersion(), hashMap2));
                        adapterConfiguration.initializeNetwork(context, hashMap2, this.f4146e);
                        hashMap.put(str, adapterConfiguration);
                    }
                } catch (Exception e) {
                    MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE;
                    MoPubLog.log(sdkLogEvent2, "Unable to find class " + str, e);
                }
            }
            return hashMap;
        }

        /* renamed from: b */
        public void onPostExecute(Map<String, AdapterConfiguration> map) {
            this.f4146e.onAdapterConfigurationsInitialized(map);
        }
    }

    public AdapterConfigurationManager(SdkInitializationListener sdkInitializationListener) {
        this.f4141b = sdkInitializationListener;
    }

    /* renamed from: a */
    public final JSONObject m4033a(Context context) {
        Preconditions.checkNotNull(context);
        Map<String, AdapterConfiguration> map = this.f4140a;
        JSONObject jSONObject = null;
        JSONObject jSONObject2 = null;
        if (map != null) {
            if (!map.isEmpty()) {
                Iterator<AdapterConfiguration> it = map.values().iterator();
                while (true) {
                    jSONObject2 = jSONObject;
                    if (!it.hasNext()) {
                        break;
                    }
                    AdapterConfiguration next = it.next();
                    JSONObject jSONObject3 = jSONObject;
                    try {
                        String biddingToken = next.getBiddingToken(context);
                        JSONObject jSONObject4 = jSONObject;
                        if (!TextUtils.isEmpty(biddingToken)) {
                            JSONObject jSONObject5 = jSONObject;
                            JSONObject jSONObject6 = new JSONObject();
                            JSONObject jSONObject7 = jSONObject;
                            jSONObject6.put("token", biddingToken);
                            JSONObject jSONObject8 = jSONObject;
                            if (jSONObject == null) {
                                JSONObject jSONObject9 = jSONObject;
                                jSONObject8 = new JSONObject();
                            }
                            JSONObject jSONObject10 = jSONObject8;
                            jSONObject8.put(next.getMoPubNetworkName(), jSONObject6);
                            jSONObject = jSONObject8;
                        }
                    } catch (JSONException e) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.ERROR, "JSON parsing failed for MoPub network name: " + next.getMoPubNetworkName());
                        jSONObject = jSONObject3;
                    }
                }
            } else {
                jSONObject2 = null;
            }
        }
        return jSONObject2;
    }

    /* renamed from: b */
    public String m4032b(Context context) {
        Preconditions.checkNotNull(context);
        JSONObject m4033a = m4033a(context);
        if (m4033a == null) {
            return null;
        }
        return m4033a.toString();
    }

    public List<String> getAdapterConfigurationInfo() {
        Map<String, AdapterConfiguration> map = this.f4140a;
        if (map == null || map.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, AdapterConfiguration> entry : map.entrySet()) {
            StringBuilder sb = new StringBuilder();
            String key = entry.getKey();
            sb.append(key.substring(key.lastIndexOf(".") + 1));
            sb.append(": Adapter version ");
            sb.append(entry.getValue().getAdapterVersion());
            sb.append(", SDK version ");
            sb.append(entry.getValue().getNetworkSdkVersion());
            arrayList.add(sb.toString());
        }
        return arrayList;
    }

    public List<String> getAdvancedBidderNames() {
        Map<String, AdapterConfiguration> map = this.f4140a;
        if (map == null || map.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (AdapterConfiguration adapterConfiguration : map.values()) {
            arrayList.add(adapterConfiguration.getMoPubNetworkName());
        }
        return arrayList;
    }

    public void initialize(Context context, Set<String> set, Map<String, Map<String, String>> map, Map<String, Map<String, String>> map2) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(set);
        Preconditions.checkNotNull(map);
        Preconditions.checkNotNull(map2);
        AsyncTasks.safeExecuteOnExecutor(new AsyncTaskC0998a(context.getApplicationContext(), set, map, map2, this), new Void[0]);
    }

    @Override // p000.wf1
    public void onAdapterConfigurationsInitialized(Map<String, AdapterConfiguration> map) {
        Preconditions.checkNotNull(map);
        this.f4140a = map;
        SdkInitializationListener sdkInitializationListener = this.f4141b;
        if (sdkInitializationListener != null) {
            sdkInitializationListener.onInitializationFinished();
            this.f4141b = null;
        }
    }

    @Override // p000.wf1, com.mopub.common.OnNetworkInitializationFinishedListener
    public void onNetworkInitializationFinished(Class<? extends AdapterConfiguration> cls, MoPubErrorCode moPubErrorCode) {
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(moPubErrorCode);
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, cls + " initialized with error code " + moPubErrorCode);
    }
}
