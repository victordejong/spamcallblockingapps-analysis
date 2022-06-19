package com.verizon.ads.nativeplacement;

import android.content.Context;
import com.verizon.ads.Component;
import com.verizon.ads.Logger;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/nativeplacement/NativeComponentBundle.class */
public class NativeComponentBundle implements Component {

    /* renamed from: b */
    private static final Logger f61621b = Logger.getInstance(NativeComponentBundle.class);

    /* renamed from: a */
    Component f61622a;

    /* renamed from: c */
    private final WeakReference<NativeComponentBundle> f61623c;

    /* renamed from: d */
    private final Map<String, Component> f61624d = new HashMap();

    /* renamed from: e */
    private WeakReference<NativeAd> f61625e;

    public NativeComponentBundle(NativeComponentBundle nativeComponentBundle, Component component) {
        this.f61623c = new WeakReference<>(nativeComponentBundle);
        this.f61622a = component;
        if (nativeComponentBundle != null) {
            m5367a(nativeComponentBundle.getAd());
        }
    }

    /* renamed from: a */
    private NativeAdAdapter m5368a() {
        NativeAd ad = getAd();
        if (ad == null || ad.getAdSession() == null) {
            return null;
        }
        return (NativeAdAdapter) ad.getAdSession().getAdAdapter();
    }

    /* renamed from: a */
    public final void m5367a(NativeAd nativeAd) {
        this.f61625e = new WeakReference<>(nativeAd);
    }

    public NativeAd getAd() {
        WeakReference<NativeAd> weakReference = this.f61625e;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public Component getBundleComponent() {
        return this.f61622a;
    }

    @Deprecated
    public Component getComponent(Context context, String str) {
        return getComponent(str);
    }

    public Component getComponent(String str) {
        Component component = this.f61624d.get(str);
        Component component2 = component;
        if (component == null) {
            NativeAdAdapter m5368a = m5368a();
            if (m5368a == null || !NativeAd.m5398b()) {
                return null;
            }
            Component component3 = m5368a.getComponent(this, str);
            component2 = component3;
            if (component3 != null) {
                if (this.f61624d.containsKey(str)) {
                    component2 = component3;
                } else {
                    this.f61624d.put(str, component3);
                    component2 = component3;
                }
            }
        }
        return component2;
    }

    public Set<String> getComponentIds() {
        NativeAdAdapter m5368a = m5368a();
        return (m5368a == null || !NativeAd.m5398b()) ? Collections.emptySet() : m5368a.getComponentIds(this);
    }

    public JSONObject getJSON() {
        if (m5368a() == null) {
            return null;
        }
        return m5368a().getJSON(this);
    }

    public JSONObject getJSON(String str) {
        if (m5368a() == null) {
            return null;
        }
        return m5368a().getJSON(this, str);
    }

    public NativeComponentBundle getParentBundle() {
        WeakReference<NativeComponentBundle> weakReference = this.f61623c;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // com.verizon.ads.Component
    public void release() {
        f61621b.m5567d("Releasing loaded components");
        for (Component component : this.f61624d.values()) {
            component.release();
        }
        this.f61624d.clear();
    }
}
