package com.applovin.impl.sdk.p055c;

import android.support.p012v4.media.C0082b;
import java.util.HashSet;
import p007a6.C0033h;
/* renamed from: com.applovin.impl.sdk.c.d */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/c/d.class */
public class C1316d<T> {

    /* renamed from: D */
    private final String f5011D;

    /* renamed from: E */
    private final Class<T> f5012E;

    /* renamed from: a */
    public static final C1316d<String> f4985a = new C1316d<>("com.applovin.sdk.impl.isFirstRun", String.class);

    /* renamed from: b */
    public static final C1316d<Boolean> f4986b = new C1316d<>("com.applovin.sdk.launched_before", Boolean.class);

    /* renamed from: c */
    public static final C1316d<String> f4987c = new C1316d<>("com.applovin.sdk.latest_installed_version", String.class);

    /* renamed from: d */
    public static final C1316d<Long> f4988d = new C1316d<>("com.applovin.sdk.install_date", Long.class);

    /* renamed from: e */
    public static final C1316d<String> f4989e = new C1316d<>("com.applovin.sdk.user_id", String.class);

    /* renamed from: f */
    public static final C1316d<String> f4990f = new C1316d<>("com.applovin.sdk.compass_id", String.class);

    /* renamed from: g */
    public static final C1316d<String> f4991g = new C1316d<>("com.applovin.sdk.compass_random_token", String.class);

    /* renamed from: h */
    public static final C1316d<String> f4992h = new C1316d<>("com.applovin.sdk.applovin_random_token", String.class);

    /* renamed from: i */
    public static final C1316d<String> f4993i = new C1316d<>("com.applovin.sdk.device_test_group", String.class);

    /* renamed from: j */
    public static final C1316d<String> f4994j = new C1316d<>("com.applovin.sdk.variables", String.class);

    /* renamed from: k */
    public static final C1316d<Boolean> f4995k = new C1316d<>("com.applovin.sdk.compliance.has_user_consent", Boolean.class);

    /* renamed from: l */
    public static final C1316d<Boolean> f4996l = new C1316d<>("com.applovin.sdk.compliance.is_age_restricted_user", Boolean.class);

    /* renamed from: m */
    public static final C1316d<Boolean> f4997m = new C1316d<>("com.applovin.sdk.compliance.is_do_not_sell", Boolean.class);

    /* renamed from: n */
    public static final C1316d<String> f4998n = new C1316d<>("IABTCF_TCString", String.class);

    /* renamed from: o */
    public static final C1316d<?> f4999o = new C1316d<>("IABTCF_gdprApplies", Object.class);

    /* renamed from: p */
    public static final C1316d<HashSet> f5000p = new C1316d<>("com.applovin.sdk.impl.postbackQueue.key", HashSet.class);

    /* renamed from: q */
    public static final C1316d<String> f5001q = new C1316d<>("com.applovin.sdk.stats", String.class);

    /* renamed from: r */
    public static final C1316d<HashSet> f5002r = new C1316d<>("com.applovin.sdk.task.stats", HashSet.class);

    /* renamed from: s */
    public static final C1316d<String> f5003s = new C1316d<>("com.applovin.sdk.network_response_code_mapping", String.class);

    /* renamed from: t */
    public static final C1316d<String> f5004t = new C1316d<>("com.applovin.sdk.event_tracking.super_properties", String.class);

    /* renamed from: u */
    public static final C1316d<HashSet> f5005u = new C1316d<>("com.applovin.sdk.ad.stats", HashSet.class);

    /* renamed from: v */
    public static final C1316d<Integer> f5006v = new C1316d<>("com.applovin.sdk.last_video_position", Integer.class);

    /* renamed from: w */
    public static final C1316d<Boolean> f5007w = new C1316d<>("com.applovin.sdk.should_resume_video", Boolean.class);

    /* renamed from: x */
    public static final C1316d<String> f5008x = new C1316d<>("com.applovin.sdk.mediation.signal_providers", String.class);

    /* renamed from: y */
    public static final C1316d<String> f5009y = new C1316d<>("com.applovin.sdk.mediation.auto_init_adapters", String.class);

    /* renamed from: z */
    public static final C1316d<String> f5010z = new C1316d<>("com.applovin.sdk.persisted_data", String.class);

    /* renamed from: A */
    public static final C1316d<String> f4982A = new C1316d<>("com.applovin.sdk.mediation_provider", String.class);

    /* renamed from: B */
    public static final C1316d<String> f4983B = new C1316d<>("com.applovin.sdk.mediation.test_mode_network", String.class);

    /* renamed from: C */
    public static final C1316d<Boolean> f4984C = new C1316d<>("com.applovin.sdk.mediation.test_mode_enabled", Boolean.class);

    public C1316d(String str, Class<T> cls) {
        this.f5011D = str;
        this.f5012E = cls;
    }

    /* renamed from: a */
    public String m5815a() {
        return this.f5011D;
    }

    /* renamed from: b */
    public Class<T> m5814b() {
        return this.f5012E;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("Key{name='");
        C0033h.m8882o(m8752j, this.f5011D, '\'', ", type=");
        m8752j.append(this.f5012E);
        m8752j.append('}');
        return m8752j.toString();
    }
}
