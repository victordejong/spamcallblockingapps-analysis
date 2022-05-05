package com.mopub.common;

import android.os.Build;
import androidx.annotation.NonNull;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.mopub.common.privacy.AdvertisingId;
import com.mopub.network.AdResponse;
import com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor;
import gogolook.callgogolook2.gson.UserProfile;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/AdReport.class */
public class AdReport implements Serializable {

    /* renamed from: a */
    public final AdResponse f7969a;

    /* renamed from: b */
    public final String f7970b;

    /* renamed from: c */
    public final String f7971c;

    /* renamed from: d */
    public final String f7972d;

    /* renamed from: e */
    public final Locale f7973e;

    /* renamed from: f */
    public final AdvertisingId f7974f;

    public AdReport(@NonNull String str, @NonNull ClientMetadata clientMetadata, @NonNull AdResponse adResponse) {
        this.f7970b = str;
        this.f7971c = clientMetadata.getSdkVersion();
        this.f7972d = clientMetadata.getDeviceModel();
        this.f7973e = clientMetadata.getDeviceLocale();
        this.f7974f = clientMetadata.getMoPubIdentifier().getAdvertisingInfo();
        this.f7969a = adResponse;
    }

    /* renamed from: a */
    public final String m30905a(long j) {
        if (j != -1) {
            return new SimpleDateFormat("M/d/yy hh:mm:ss a z", Locale.US).format(new Date(j));
        }
        return null;
    }

    /* renamed from: a */
    public final void m30904a(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(" : ");
        sb.append(str2);
        sb.append("\n");
    }

    public String getDspCreativeId() {
        return this.f7969a.getDspCreativeId();
    }

    public String getResponseString() {
        return this.f7969a.getStringBody();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        m30904a(sb, "sdk_version", this.f7971c);
        m30904a(sb, "creative_id", this.f7969a.getDspCreativeId());
        m30904a(sb, "platform_version", Integer.toString(Build.VERSION.SDK_INT));
        m30904a(sb, "device_model", this.f7972d);
        m30904a(sb, "ad_unit_id", this.f7970b);
        Locale locale = this.f7973e;
        m30904a(sb, "device_locale", locale == null ? null : locale.toString());
        m30904a(sb, "device_id", this.f7974f.getIdentifier(MoPub.canCollectPersonalInformation()));
        m30904a(sb, "network_type", this.f7969a.getNetworkType());
        m30904a(sb, "platform", IJSExecutor.JS_FUNCTION_GROUP);
        m30904a(sb, "timestamp", m30905a(this.f7969a.getTimestamp()));
        m30904a(sb, "ad_type", this.f7969a.getAdType());
        Integer width = this.f7969a.getWidth();
        Integer height = this.f7969a.getHeight();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(CssParser.BLOCK_START);
        Object obj = width;
        if (width == null) {
            obj = "0";
        }
        sb2.append(obj);
        sb2.append(UserProfile.CARD_CATE_SEPARATOR);
        Object obj2 = height;
        if (height == null) {
            obj2 = "0";
        }
        sb2.append(obj2);
        sb2.append(CssParser.BLOCK_END);
        m30904a(sb, "ad_size", sb2.toString());
        return sb.toString();
    }
}
