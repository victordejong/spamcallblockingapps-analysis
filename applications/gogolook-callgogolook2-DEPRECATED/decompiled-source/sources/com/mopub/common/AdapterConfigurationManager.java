package com.mopub.common;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.session.MediaSessionImplBase;
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
import p081h.p430l.p431a.AbstractC10680a;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/AdapterConfigurationManager.class */
public class AdapterConfigurationManager implements AbstractC10680a {
    @Nullable

    /* renamed from: a */
    public volatile Map<String, AdapterConfiguration> f7984a;
    @Nullable

    /* renamed from: b */
    public SdkInitializationListener f7985b;

    /* renamed from: com.mopub.common.AdapterConfigurationManager$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/AdapterConfigurationManager$a.class */
    public static class AsyncTaskC3748a extends AsyncTask<Void, Void, Map<String, AdapterConfiguration>> {
        @NonNull

        /* renamed from: a */
        public final WeakReference<Context> f7986a;
        @NonNull

        /* renamed from: b */
        public final Set<String> f7987b;
        @NonNull

        /* renamed from: c */
        public final Map<String, Map<String, String>> f7988c;
        @NonNull

        /* renamed from: d */
        public final Map<String, Map<String, String>> f7989d;
        @NonNull

        /* renamed from: e */
        public final AbstractC10680a f7990e;

        public AsyncTaskC3748a(@NonNull Context context, @NonNull Set<String> set, @NonNull Map<String, Map<String, String>> map, @NonNull Map<String, Map<String, String>> map2, @NonNull AbstractC10680a aVar) {
            Preconditions.checkNotNull(context);
            Preconditions.checkNotNull(set);
            Preconditions.checkNotNull(map);
            Preconditions.checkNotNull(map2);
            Preconditions.checkNotNull(aVar);
            this.f7986a = new WeakReference<>(context);
            this.f7987b = set;
            this.f7988c = map;
            this.f7989d = map2;
            this.f7990e = aVar;
        }

        /* renamed from: a */
        public Map<String, AdapterConfiguration> doInBackground(Void... voidArr) {
            HashMap hashMap = new HashMap();
            for (String str : this.f7987b) {
                try {
                    AdapterConfiguration adapterConfiguration = (AdapterConfiguration) Reflection.instantiateClassWithEmptyConstructor(str, AdapterConfiguration.class);
                    Context context = this.f7986a.get();
                    if (context == null) {
                        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                        MoPubLog.log(sdkLogEvent, "Context null. Unable to initialize adapter configuration " + str);
                    } else {
                        Map<String, String> map = this.f7988c.get(str);
                        HashMap hashMap2 = new HashMap(adapterConfiguration.getCachedInitializationParameters(context));
                        if (map != null) {
                            hashMap2.putAll(map);
                            adapterConfiguration.setCachedInitializationParameters(context, hashMap2);
                        }
                        Map<String, String> map2 = this.f7989d.get(str);
                        if (map2 != null) {
                            adapterConfiguration.setMoPubRequestOptions(map2);
                        }
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Initializing %s version %s with network sdk version %s and with params %s", str, adapterConfiguration.getAdapterVersion(), adapterConfiguration.getNetworkSdkVersion(), hashMap2));
                        adapterConfiguration.initializeNetwork(context, hashMap2, this.f7990e);
                        hashMap.put(str, adapterConfiguration);
                    }
                } catch (Exception e) {
                    MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE;
                    MoPubLog.log(sdkLogEvent2, "Unable to find class " + str, e);
                }
            }
            return hashMap;
        }

        /* renamed from: a */
        public void onPostExecute(@NonNull Map<String, AdapterConfiguration> map) {
            this.f7990e.onAdapterConfigurationsInitialized(map);
        }
    }

    public AdapterConfigurationManager(@Nullable SdkInitializationListener sdkInitializationListener) {
        this.f7985b = sdkInitializationListener;
    }

    @Nullable
    /* renamed from: a */
    public final JSONObject m30876a(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        Map<String, AdapterConfiguration> map = this.f7984a;
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
                    try {
                        String biddingToken = next.getBiddingToken(context);
                        if (!TextUtils.isEmpty(biddingToken)) {
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put("token", biddingToken);
                            JSONObject jSONObject4 = jSONObject;
                            if (jSONObject == null) {
                                jSONObject4 = new JSONObject();
                            }
                            jSONObject4.put(next.getMoPubNetworkName(), jSONObject3);
                            jSONObject = jSONObject4;
                        }
                    } catch (JSONException e) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.ERROR, "JSON parsing failed for MoPub network name: " + next.getMoPubNetworkName());
                        jSONObject = jSONObject;
                    }
                }
            } else {
                jSONObject2 = null;
            }
        }
        return jSONObject2;
    }

    @Nullable
    /* renamed from: b */
    public String m30875b(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        JSONObject a = m30876a(context);
        if (a == null) {
            return null;
        }
        return a.toString();
    }

    @Nullable
    public List<String> getAdapterConfigurationInfo() {
        Map<String, AdapterConfiguration> map = this.f7984a;
        if (map == null || map.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, AdapterConfiguration> entry : map.entrySet()) {
            StringBuilder sb = new StringBuilder();
            String key = entry.getKey();
            sb.append(key.substring(key.lastIndexOf(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM) + 1));
            sb.append(": Adapter version ");
            sb.append(entry.getValue().getAdapterVersion());
            sb.append(", SDK version ");
            sb.append(entry.getValue().getNetworkSdkVersion());
            arrayList.add(sb.toString());
        }
        return arrayList;
    }

    @Nullable
    public List<String> getAdvancedBidderNames() {
        Map<String, AdapterConfiguration> map = this.f7984a;
        if (map == null || map.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (AdapterConfiguration adapterConfiguration : map.values()) {
            arrayList.add(adapterConfiguration.getMoPubNetworkName());
        }
        return arrayList;
    }

    public void initialize(@NonNull Context context, @NonNull Set<String> set, @NonNull Map<String, Map<String, String>> map, @NonNull Map<String, Map<String, String>> map2) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(set);
        Preconditions.checkNotNull(map);
        Preconditions.checkNotNull(map2);
        AsyncTasks.safeExecuteOnExecutor(new AsyncTaskC3748a(context.getApplicationContext(), set, map, map2, this), new Void[0]);
    }

    @Override // p081h.p430l.p431a.AbstractC10680a
    public void onAdapterConfigurationsInitialized(@NonNull Map<String, AdapterConfiguration> map) {
        Preconditions.checkNotNull(map);
        this.f7984a = map;
        SdkInitializationListener sdkInitializationListener = this.f7985b;
        if (sdkInitializationListener != null) {
            sdkInitializationListener.onInitializationFinished();
            this.f7985b = null;
        }
    }

    @Override // com.mopub.common.OnNetworkInitializationFinishedListener
    public void onNetworkInitializationFinished(@NonNull Class<? extends AdapterConfiguration> cls, @NonNull MoPubErrorCode moPubErrorCode) {
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(moPubErrorCode);
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, cls + " initialized with error code " + moPubErrorCode);
    }
}
