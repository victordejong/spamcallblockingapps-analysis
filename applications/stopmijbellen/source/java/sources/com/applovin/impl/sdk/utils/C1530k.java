package com.applovin.impl.sdk.utils;

import android.os.Bundle;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.mediation.p038a.AbstractC1044a;
import com.applovin.impl.p035a.C0875a;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
import com.applovin.impl.sdk.p053ad.C1281a;
/* renamed from: com.applovin.impl.sdk.utils.k */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/utils/k.class */
public class C1530k {

    /* renamed from: a */
    private final StringBuilder f5687a = new StringBuilder();

    /* renamed from: a */
    public C1530k m4990a() {
        this.f5687a.append("\n========================================");
        return this;
    }

    /* renamed from: a */
    public C1530k m4989a(Bundle bundle) {
        if (bundle == null) {
            return this;
        }
        for (String str : bundle.keySet()) {
            m4983a(str, bundle.get(str));
        }
        return this;
    }

    /* renamed from: a */
    public C1530k m4988a(AppLovinAdView appLovinAdView) {
        return m4983a("Size", appLovinAdView.getSize().getWidth() + "x" + appLovinAdView.getSize().getHeight()).m4983a("Alpha", Float.valueOf(appLovinAdView.getAlpha())).m4983a("Visibility", C1536p.m4945b(appLovinAdView.getVisibility()));
    }

    /* renamed from: a */
    public C1530k m4987a(AbstractC1044a abstractC1044a) {
        return m4983a("Network", abstractC1044a.m6652P()).m4983a("Format", abstractC1044a.getFormat().getLabel()).m4983a("Ad Unit ID", abstractC1044a.getAdUnitId()).m4983a("Placement", abstractC1044a.getPlacement()).m4983a("Network Placement", abstractC1044a.m6705l()).m4983a("Serve ID", abstractC1044a.m6711f()).m4983a("Creative ID", StringUtils.isValidString(abstractC1044a.getCreativeId()) ? abstractC1044a.getCreativeId() : "None").m4983a("Server Parameters", abstractC1044a.m6645W());
    }

    /* renamed from: a */
    public C1530k m4986a(AbstractC1286e abstractC1286e) {
        boolean z = abstractC1286e instanceof C0875a;
        m4983a("Format", abstractC1286e.getAdZone().m6004b() != null ? abstractC1286e.getAdZone().m6004b().getLabel() : null).m4983a("Ad ID", Long.valueOf(abstractC1286e.getAdIdNumber())).m4983a("Zone ID", abstractC1286e.getAdZone().m6009a()).m4983a("Source", abstractC1286e.getSource()).m4983a("Ad Class", z ? "VastAd" : "AdServerAd");
        String dspName = abstractC1286e.getDspName();
        if (StringUtils.isValidString(dspName)) {
            m4983a("DSP Name", dspName);
        }
        if (z) {
            m4983a("VAST DSP", ((C0875a) abstractC1286e).m7190l());
        }
        return this;
    }

    /* renamed from: a */
    public C1530k m4985a(C1408l c1408l) {
        return m4983a("Muted", Boolean.valueOf(c1408l.m5454p().isMuted())).m4983a("ExoPlayer", Boolean.valueOf(Utils.checkExoPlayerEligibility(c1408l)));
    }

    /* renamed from: a */
    public C1530k m4984a(String str) {
        StringBuilder sb = this.f5687a;
        sb.append("\n");
        sb.append(str);
        return this;
    }

    /* renamed from: a */
    public C1530k m4983a(String str, Object obj) {
        return m4982a(str, obj, "");
    }

    /* renamed from: a */
    public C1530k m4982a(String str, Object obj, String str2) {
        StringBuilder sb = this.f5687a;
        sb.append("\n");
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append(str2);
        return this;
    }

    /* renamed from: b */
    public C1530k m4981b(AbstractC1286e abstractC1286e) {
        m4983a("Target", abstractC1286e.m5904n()).m4983a("close_style", abstractC1286e.m5899s()).m4982a("close_delay_graphic", Long.valueOf(abstractC1286e.m5901q()), "s");
        if (abstractC1286e instanceof C1281a) {
            C1281a c1281a = (C1281a) abstractC1286e;
            m4983a("HTML", c1281a.m6023b().substring(0, Math.min(c1281a.m6023b().length(), 64)));
        }
        if (abstractC1286e.hasVideoUrl()) {
            m4982a("close_delay", Long.valueOf(abstractC1286e.m5903o()), "s").m4983a("skip_style", abstractC1286e.m5897u()).m4983a("Streaming", Boolean.valueOf(abstractC1286e.mo5911e())).m4983a("Video Location", abstractC1286e.mo5919c()).m4983a("video_button_properties", abstractC1286e.m5992A());
        }
        return this;
    }

    /* renamed from: b */
    public C1530k m4980b(String str) {
        this.f5687a.append(str);
        return this;
    }

    public String toString() {
        return this.f5687a.toString();
    }
}
