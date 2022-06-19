package com.mopub.common;

import android.content.Context;
import android.os.AsyncTask;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Reflection;
import e.n.a.a;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/AdapterConfigurationManager$a.class */
public class AdapterConfigurationManager$a extends AsyncTask<Void, Void, Map<String, AdapterConfiguration>> {

    /* renamed from: a */
    public final WeakReference<Context> f8406a;

    /* renamed from: b */
    public final Set<String> f8407b;

    /* renamed from: c */
    public final Map<String, Map<String, String>> f8408c;

    /* renamed from: d */
    public final Map<String, Map<String, String>> f8409d;

    /* renamed from: e */
    public final a f8410e;

    public AdapterConfigurationManager$a(Context context, Set<String> set, Map<String, Map<String, String>> map, Map<String, Map<String, String>> map2, a aVar) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(set);
        Preconditions.checkNotNull(map);
        Preconditions.checkNotNull(map2);
        Preconditions.checkNotNull(aVar);
        this.f8406a = new WeakReference<>(context);
        this.f8407b = set;
        this.f8408c = map;
        this.f8409d = map2;
        this.f8410e = aVar;
    }

    @Override // android.os.AsyncTask
    public Map<String, AdapterConfiguration> doInBackground(Void[] voidArr) {
        HashMap hashMap = new HashMap();
        for (String str : this.f8407b) {
            try {
                AdapterConfiguration adapterConfiguration = (AdapterConfiguration) Reflection.instantiateClassWithEmptyConstructor(str, AdapterConfiguration.class);
                Context context = this.f8406a.get();
                if (context == null) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, C22128a.m8543z2("Context null. Unable to initialize adapter configuration ", str));
                } else {
                    Map<String, String> map = this.f8408c.get(str);
                    HashMap hashMap2 = new HashMap(adapterConfiguration.getCachedInitializationParameters(context));
                    if (map != null) {
                        hashMap2.putAll(map);
                        adapterConfiguration.setCachedInitializationParameters(context, hashMap2);
                    }
                    Map<String, String> map2 = this.f8409d.get(str);
                    if (map2 != null) {
                        adapterConfiguration.setMoPubRequestOptions(map2);
                    }
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Initializing %s version %s with network sdk version %s and with params %s", str, adapterConfiguration.getAdapterVersion(), adapterConfiguration.getNetworkSdkVersion(), hashMap2));
                    adapterConfiguration.initializeNetwork(context, hashMap2, this.f8410e);
                    hashMap.put(str, adapterConfiguration);
                }
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, C22128a.m8543z2("Unable to find class ", str), e);
            }
        }
        return hashMap;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(Map<String, AdapterConfiguration> map) {
        this.f8410e.onAdapterConfigurationsInitialized(map);
    }
}
