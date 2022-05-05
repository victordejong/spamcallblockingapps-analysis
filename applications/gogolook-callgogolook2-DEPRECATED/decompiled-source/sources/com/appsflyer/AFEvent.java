package com.appsflyer;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFEvent.class */
public abstract class AFEvent {

    /* renamed from: ı */
    public WeakReference<Context> f1612;

    /* renamed from: Ɩ */
    public String f1613;
    @Nullable

    /* renamed from: ǃ */
    public Intent f1614;

    /* renamed from: ȷ */
    public boolean f1615;

    /* renamed from: ɨ */
    public int f1616;

    /* renamed from: ɩ */
    public AppsFlyerTrackingRequestListener f1617;

    /* renamed from: ɪ */
    public Map<String, Object> f1618;

    /* renamed from: ɹ */
    public String f1619;

    /* renamed from: ɾ */
    public final boolean f1620;

    /* renamed from: ɿ */
    public byte[] f1621;
    @Nullable

    /* renamed from: Ι */
    public Map<String, Object> f1622;

    /* renamed from: ι */
    public Context f1623;
    @Nullable

    /* renamed from: І */
    public String f1624;

    /* renamed from: і */
    public String f1625;

    /* renamed from: Ӏ */
    public String f1626;

    /* renamed from: ӏ */
    public String f1627;

    public AFEvent() {
        this(null, null, null);
    }

    public AFEvent(@Nullable String str, @Nullable Boolean bool, @Nullable Context context) {
        this.f1626 = str;
        this.f1620 = bool != null ? bool.booleanValue() : true;
        this.f1623 = context;
    }

    @NonNull
    public String addChannel(String str) {
        String configuredChannel = AppsFlyerLibCore.getInstance().getConfiguredChannel(context());
        String str2 = str;
        if (configuredChannel != null) {
            str2 = Uri.parse(str).buildUpon().appendQueryParameter(AppsFlyerProperties.CHANNEL, configuredChannel).build().toString();
        }
        return str2;
    }

    public Context context() {
        Context context = this.f1623;
        if (context != null) {
            return context;
        }
        WeakReference<Context> weakReference = this.f1612;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public AFEvent context(Context context) {
        this.f1623 = context;
        return this;
    }

    @Nullable
    public Intent intent() {
        return this.f1614;
    }

    public boolean isEncrypt() {
        return this.f1620;
    }

    public AFEvent key(String str) {
        this.f1627 = str;
        return this;
    }

    public String key() {
        return this.f1627;
    }

    public AFEvent params(Map<String, ?> map) {
        this.f1618 = map;
        return this;
    }

    public Map<String, Object> params() {
        return this.f1618;
    }

    public AFEvent post(byte[] bArr) {
        this.f1621 = bArr;
        return this;
    }

    public AFEvent urlString(String str) {
        this.f1625 = str;
        return this;
    }

    public String urlString() {
        return this.f1625;
    }

    public AFEvent weakContext() {
        this.f1612 = new WeakReference<>(this.f1623);
        this.f1623 = null;
        return this;
    }

    /* renamed from: ǃ */
    public final AFEvent m36302() {
        if (context() != null) {
            this.f1623 = context().getApplicationContext();
        }
        return this;
    }

    /* renamed from: Ι */
    public final boolean m36301() {
        return this.f1615;
    }

    /* renamed from: ι */
    public final byte[] m36300() {
        return this.f1621;
    }
}
