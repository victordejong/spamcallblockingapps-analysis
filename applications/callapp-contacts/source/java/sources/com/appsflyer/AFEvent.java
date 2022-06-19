package com.appsflyer;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFEvent.class */
public abstract class AFEvent {

    /* renamed from: ı */
    Map<String, Object> f12683;

    /* renamed from: Ɩ */
    String f12684;

    /* renamed from: ǃ */
    Intent f12685;

    /* renamed from: ȷ */
    private final boolean f12686;

    /* renamed from: ɨ */
    private Map<String, Object> f12687;

    /* renamed from: ɩ */
    WeakReference<Context> f12688;

    /* renamed from: ɪ */
    private AppsFlyerRequestListener f12689;

    /* renamed from: ɹ */
    String f12690;

    /* renamed from: ɾ */
    boolean f12691;

    /* renamed from: ʟ */
    private String f12692;

    /* renamed from: Ι */
    AppsFlyerTrackingRequestListener f12693;

    /* renamed from: ι */
    Context f12694;

    /* renamed from: І */
    String f12695;

    /* renamed from: г */
    private byte[] f12696;

    /* renamed from: і */
    String f12697;

    /* renamed from: Ӏ */
    String f12698;

    /* renamed from: ӏ */
    public int f12699;

    public AFEvent() {
        this(null, null, null);
    }

    public AFEvent(String str, Boolean bool, Context context) {
        this.f12697 = str;
        this.f12686 = bool != null ? bool.booleanValue() : true;
        this.f12694 = context;
    }

    public String addChannel(String str) {
        String configuredChannel = AppsFlyerLibCore.getInstance().getConfiguredChannel(context());
        String str2 = str;
        if (configuredChannel != null) {
            str2 = Uri.parse(str).buildUpon().appendQueryParameter(AppsFlyerProperties.CHANNEL, configuredChannel).build().toString();
        }
        return str2;
    }

    public Context context() {
        Context context = this.f12694;
        if (context != null) {
            return context;
        }
        WeakReference<Context> weakReference = this.f12688;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public AFEvent context(Context context) {
        this.f12694 = context;
        return this;
    }

    public AppsFlyerRequestListener getRequestListener() {
        return this.f12689;
    }

    public Intent intent() {
        return this.f12685;
    }

    public boolean isEncrypt() {
        return this.f12686;
    }

    public AFEvent key(String str) {
        this.f12692 = str;
        return this;
    }

    public String key() {
        return this.f12692;
    }

    public AFEvent params(Map<String, ?> map) {
        this.f12687 = map;
        return this;
    }

    public Map<String, Object> params() {
        return this.f12687;
    }

    public AFEvent post(byte[] bArr) {
        this.f12696 = bArr;
        return this;
    }

    public AFEvent requestListener(AppsFlyerRequestListener appsFlyerRequestListener) {
        this.f12689 = appsFlyerRequestListener;
        return this;
    }

    public AFEvent urlString(String str) {
        this.f12684 = str;
        return this;
    }

    public String urlString() {
        return this.f12684;
    }

    public AFEvent weakContext() {
        this.f12688 = new WeakReference<>(this.f12694);
        this.f12694 = null;
        return this;
    }

    /* renamed from: ǃ */
    public final byte[] m38162() {
        return this.f12696;
    }

    /* renamed from: ɩ */
    public final AFEvent m38161() {
        if (context() != null) {
            this.f12694 = context().getApplicationContext();
        }
        return this;
    }

    /* renamed from: Ι */
    public final boolean m38160() {
        return this.f12691;
    }
}
