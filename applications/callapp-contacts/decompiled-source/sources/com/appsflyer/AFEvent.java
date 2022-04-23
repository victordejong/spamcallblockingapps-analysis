package com.appsflyer;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFEvent.class */
public abstract class AFEvent {

    /* renamed from: ı  reason: contains not printable characters */
    Map<String, Object> f7;

    /* renamed from: Ɩ  reason: contains not printable characters */
    String f8;

    /* renamed from: ǃ  reason: contains not printable characters */
    Intent f9;

    /* renamed from: ȷ  reason: contains not printable characters */
    private final boolean f10;

    /* renamed from: ɨ  reason: contains not printable characters */
    private Map<String, Object> f11;

    /* renamed from: ɩ  reason: contains not printable characters */
    WeakReference<Context> f12;

    /* renamed from: ɪ  reason: contains not printable characters */
    private AppsFlyerRequestListener f13;

    /* renamed from: ɹ  reason: contains not printable characters */
    String f14;

    /* renamed from: ɾ  reason: contains not printable characters */
    boolean f15;

    /* renamed from: ʟ  reason: contains not printable characters */
    private String f16;

    /* renamed from: Ι  reason: contains not printable characters */
    AppsFlyerTrackingRequestListener f17;

    /* renamed from: ι  reason: contains not printable characters */
    Context f18;

    /* renamed from: І  reason: contains not printable characters */
    String f19;

    /* renamed from: г  reason: contains not printable characters */
    private byte[] f20;

    /* renamed from: і  reason: contains not printable characters */
    String f21;

    /* renamed from: Ӏ  reason: contains not printable characters */
    String f22;

    /* renamed from: ӏ  reason: contains not printable characters */
    public int f23;

    public AFEvent() {
        this(null, null, null);
    }

    public AFEvent(String str, Boolean bool, Context context) {
        this.f21 = str;
        this.f10 = bool != null ? bool.booleanValue() : true;
        this.f18 = context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String addChannel(String str) {
        String configuredChannel = AppsFlyerLibCore.getInstance().getConfiguredChannel(context());
        String str2 = str;
        if (configuredChannel != null) {
            str2 = Uri.parse(str).buildUpon().appendQueryParameter(AppsFlyerProperties.CHANNEL, configuredChannel).build().toString();
        }
        return str2;
    }

    public Context context() {
        Context context = this.f18;
        if (context != null) {
            return context;
        }
        WeakReference<Context> weakReference = this.f12;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AFEvent context(Context context) {
        this.f18 = context;
        return this;
    }

    public AppsFlyerRequestListener getRequestListener() {
        return this.f13;
    }

    public Intent intent() {
        return this.f9;
    }

    public boolean isEncrypt() {
        return this.f10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AFEvent key(String str) {
        this.f16 = str;
        return this;
    }

    public String key() {
        return this.f16;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AFEvent params(Map<String, ?> map) {
        this.f11 = map;
        return this;
    }

    public Map<String, Object> params() {
        return this.f11;
    }

    public AFEvent post(byte[] bArr) {
        this.f20 = bArr;
        return this;
    }

    public AFEvent requestListener(AppsFlyerRequestListener appsFlyerRequestListener) {
        this.f13 = appsFlyerRequestListener;
        return this;
    }

    public AFEvent urlString(String str) {
        this.f8 = str;
        return this;
    }

    public String urlString() {
        return this.f8;
    }

    public AFEvent weakContext() {
        this.f12 = new WeakReference<>(this.f18);
        this.f18 = null;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: ǃ  reason: contains not printable characters */
    public final byte[] m779() {
        return this.f20;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: ɩ  reason: contains not printable characters */
    public final AFEvent m780() {
        if (context() != null) {
            this.f18 = context().getApplicationContext();
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Ι  reason: contains not printable characters */
    public final boolean m781() {
        return this.f15;
    }
}
