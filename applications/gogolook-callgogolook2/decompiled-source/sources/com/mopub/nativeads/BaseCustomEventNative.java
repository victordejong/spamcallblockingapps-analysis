package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.nativeads.CustomEventNative;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import p081h.p160h.p161a.C6199g;
import p081h.p160h.p161a.p164j.AbstractC6218c;
import p081h.p160h.p161a.p165k.C6219a;
import p081h.p160h.p161a.p168n.C6260a;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/BaseCustomEventNative.class */
public abstract class BaseCustomEventNative extends CustomEventNative {
    public static final String KEY_IS_NEED_USING_TEST_SOURCE = "isNeedUsingTestSource";

    /* renamed from: d */
    public static final String f9008d = "BaseCustomEventNative";
    @Nullable

    /* renamed from: a */
    public C6260a f9009a = null;
    @NonNull

    /* renamed from: b */
    public String f9010b = "Unknown";
    @NonNull

    /* renamed from: c */
    public String f9011c = "Unknown";

    @NonNull
    /* renamed from: a */
    public final String m30216a() {
        String adNSourceName = Utils.getAdNSourceName(this);
        String str = adNSourceName;
        if (TextUtils.isEmpty(adNSourceName)) {
            str = getClass().getSimpleName();
        }
        return str;
    }

    @NonNull
    /* renamed from: a */
    public final String m30215a(@NonNull Map<String, Object> map) {
        try {
            String str = (String) map.get("com.gogolook.adsdk.fetcher.AdUnitName");
            return !TextUtils.isEmpty(str) ? str : "Unknown";
        } catch (ClassCastException e) {
            Log.e(f9008d, "[getAdUnitName] Unknown ad unit name", e);
            return "Unknown";
        }
    }

    /* renamed from: b */
    public final void m30214b(Map<String, Object> map) {
        if (map.containsKey("com.gogolook.adsdk.fetcher.AdFetchLog")) {
            Object obj = map.get("com.gogolook.adsdk.fetcher.AdFetchLog");
            if (obj instanceof C6260a) {
                this.f9009a = (C6260a) obj;
            }
        }
    }

    @Nullable
    public List<String> getUnclickableAreas(Map<String, String> map) {
        try {
            if (!map.containsKey("UnclickableAreas")) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = new JSONArray(map.get("UnclickableAreas"));
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                arrayList.add(jSONArray.getString(i));
            }
            return arrayList;
        } catch (JSONException e) {
            Log.e(f9008d, "[getUnclickableAreas] Failed to parse UnclickableAreas", e);
            return null;
        }
    }

    public boolean isValidUsingTestAdSource(Map<String, String> map) {
        if (!map.containsKey("isNeedUsingTestSource")) {
            return false;
        }
        String str = map.get("isNeedUsingTestSource");
        boolean z = false;
        if (!TextUtils.isEmpty(str)) {
            z = false;
            if (Boolean.parseBoolean(str)) {
                z = true;
            }
        }
        return z;
    }

    @Override // com.mopub.nativeads.CustomEventNative
    @CallSuper
    public void loadNativeAd(@NonNull Context context, @NonNull CustomEventNative.CustomEventNativeListener customEventNativeListener, @NonNull Map<String, Object> map, @NonNull Map<String, String> map2) {
        this.f9011c = m30216a();
        this.f9010b = m30215a(map);
        m30214b(map);
        AbstractC6218c a = C6199g.m23591a();
        if (a != null) {
            a.mo23553a(map, map2);
        }
        C6260a aVar = this.f9009a;
        if (aVar != null) {
            String str = f9008d;
            String d = aVar.m23464d();
            String str2 = this.f9011c;
            C6219a.m23549a(str, d, str2, "[loadNativeAd] serverExtras = " + map2);
        }
    }
}
