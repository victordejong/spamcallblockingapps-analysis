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

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f35571b = Logger.getInstance(NativeComponentBundle.class);

    /* renamed from: a  reason: collision with root package name */
    Component f35572a;

    /* renamed from: c  reason: collision with root package name */
    private final WeakReference<NativeComponentBundle> f35573c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, Component> f35574d = new HashMap();
    private WeakReference<NativeAd> e;

    public NativeComponentBundle(NativeComponentBundle nativeComponentBundle, Component component) {
        this.f35573c = new WeakReference<>(nativeComponentBundle);
        this.f35572a = component;
        if (nativeComponentBundle != null) {
            a(nativeComponentBundle.getAd());
        }
    }

    private NativeAdAdapter a() {
        NativeAd ad = getAd();
        if (ad == null || ad.getAdSession() == null) {
            return null;
        }
        return (NativeAdAdapter) ad.getAdSession().getAdAdapter();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(NativeAd nativeAd) {
        this.e = new WeakReference<>(nativeAd);
    }

    public NativeAd getAd() {
        WeakReference<NativeAd> weakReference = this.e;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public Component getBundleComponent() {
        return this.f35572a;
    }

    @Deprecated
    public Component getComponent(Context context, String str) {
        return getComponent(str);
    }

    public Component getComponent(String str) {
        Component component = this.f35574d.get(str);
        Component component2 = component;
        if (component == null) {
            NativeAdAdapter a2 = a();
            if (a2 == null || !NativeAd.b()) {
                return null;
            }
            Component component3 = a2.getComponent(this, str);
            component2 = component3;
            if (component3 != null) {
                if (this.f35574d.containsKey(str)) {
                    component2 = component3;
                } else {
                    this.f35574d.put(str, component3);
                    component2 = component3;
                }
            }
        }
        return component2;
    }

    public Set<String> getComponentIds() {
        NativeAdAdapter a2 = a();
        return (a2 == null || !NativeAd.b()) ? Collections.emptySet() : a2.getComponentIds(this);
    }

    public JSONObject getJSON() {
        if (a() == null) {
            return null;
        }
        return a().getJSON(this);
    }

    public JSONObject getJSON(String str) {
        if (a() == null) {
            return null;
        }
        return a().getJSON(this, str);
    }

    public NativeComponentBundle getParentBundle() {
        WeakReference<NativeComponentBundle> weakReference = this.f35573c;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // com.verizon.ads.Component
    public void release() {
        f35571b.d("Releasing loaded components");
        for (Component component : this.f35574d.values()) {
            component.release();
        }
        this.f35574d.clear();
    }
}
