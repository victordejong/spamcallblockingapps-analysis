package com.applovin.impl.p035a;

import android.net.Uri;
import android.support.p012v4.media.C0082b;
import com.applovin.impl.p035a.C0892m;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p052a.C1263g;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
import com.applovin.impl.sdk.p053ad.EnumC1282b;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p056d.C1322a;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
import p007a6.C0033h;
/* renamed from: com.applovin.impl.a.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/a/a.class */
public class C0875a extends AbstractC1286e {

    /* renamed from: a */
    private final String f3259a;

    /* renamed from: b */
    private final String f3260b;

    /* renamed from: c */
    private final C0888i f3261c;

    /* renamed from: d */
    private final long f3262d;

    /* renamed from: e */
    private final C0892m f3263e;

    /* renamed from: f */
    private final C0882d f3264f;

    /* renamed from: g */
    private final String f3265g;

    /* renamed from: h */
    private final C0881c f3266h;

    /* renamed from: i */
    private final C1263g f3267i;

    /* renamed from: j */
    private final Set<C0889j> f3268j;

    /* renamed from: k */
    private final Set<C0889j> f3269k;

    /* renamed from: com.applovin.impl.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/a/a$a.class */
    public static class C0877a {

        /* renamed from: a */
        private JSONObject f3270a;

        /* renamed from: b */
        private JSONObject f3271b;

        /* renamed from: c */
        private EnumC1282b f3272c;

        /* renamed from: d */
        private C1408l f3273d;

        /* renamed from: e */
        private long f3274e;

        /* renamed from: f */
        private String f3275f;

        /* renamed from: g */
        private String f3276g;

        /* renamed from: h */
        private C0888i f3277h;

        /* renamed from: i */
        private C0892m f3278i;

        /* renamed from: j */
        private C0882d f3279j;

        /* renamed from: k */
        private C0881c f3280k;

        /* renamed from: l */
        private Set<C0889j> f3281l;

        /* renamed from: m */
        private Set<C0889j> f3282m;

        /* renamed from: a */
        public C0877a m7187a(long j) {
            this.f3274e = j;
            return this;
        }

        /* renamed from: a */
        public C0877a m7185a(C0881c c0881c) {
            this.f3280k = c0881c;
            return this;
        }

        /* renamed from: a */
        public C0877a m7184a(C0882d c0882d) {
            this.f3279j = c0882d;
            return this;
        }

        /* renamed from: a */
        public C0877a m7183a(C0888i c0888i) {
            this.f3277h = c0888i;
            return this;
        }

        /* renamed from: a */
        public C0877a m7182a(C0892m c0892m) {
            this.f3278i = c0892m;
            return this;
        }

        /* renamed from: a */
        public C0877a m7181a(EnumC1282b enumC1282b) {
            this.f3272c = enumC1282b;
            return this;
        }

        /* renamed from: a */
        public C0877a m7180a(C1408l c1408l) {
            if (c1408l != null) {
                this.f3273d = c1408l;
                return this;
            }
            throw new IllegalArgumentException("No sdk specified.");
        }

        /* renamed from: a */
        public C0877a m7179a(String str) {
            this.f3275f = str;
            return this;
        }

        /* renamed from: a */
        public C0877a m7178a(Set<C0889j> set) {
            this.f3281l = set;
            return this;
        }

        /* renamed from: a */
        public C0877a m7177a(JSONObject jSONObject) {
            if (jSONObject != null) {
                this.f3270a = jSONObject;
                return this;
            }
            throw new IllegalArgumentException("No ad object specified.");
        }

        /* renamed from: a */
        public C0875a m7188a() {
            return new C0875a(this);
        }

        /* renamed from: b */
        public C0877a m7175b(String str) {
            this.f3276g = str;
            return this;
        }

        /* renamed from: b */
        public C0877a m7174b(Set<C0889j> set) {
            this.f3282m = set;
            return this;
        }

        /* renamed from: b */
        public C0877a m7173b(JSONObject jSONObject) {
            if (jSONObject != null) {
                this.f3271b = jSONObject;
                return this;
            }
            throw new IllegalArgumentException("No full ad response specified.");
        }
    }

    /* renamed from: com.applovin.impl.a.a$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/a/a$b.class */
    public enum EnumC0878b {
        COMPANION_AD,
        VIDEO
    }

    /* renamed from: com.applovin.impl.a.a$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/a/a$c.class */
    public enum EnumC0879c {
        IMPRESSION,
        VIDEO_CLICK,
        COMPANION_CLICK,
        VIDEO,
        COMPANION,
        ERROR
    }

    private C0875a(C0877a c0877a) {
        super(c0877a.f3270a, c0877a.f3271b, c0877a.f3272c, c0877a.f3273d);
        this.f3259a = c0877a.f3275f;
        this.f3261c = c0877a.f3277h;
        this.f3260b = c0877a.f3276g;
        this.f3263e = c0877a.f3278i;
        this.f3264f = c0877a.f3279j;
        this.f3266h = c0877a.f3280k;
        this.f3268j = c0877a.f3281l;
        this.f3269k = c0877a.f3282m;
        this.f3267i = new C1263g(this);
        Uri mo5908g = mo5908g();
        this.f3265g = mo5908g != null ? mo5908g.toString() : "";
        this.f3262d = c0877a.f3274e;
    }

    /* renamed from: a */
    private Set<C0889j> m7211a(EnumC0878b enumC0878b, String[] strArr) {
        Map<String, Set<C0889j>> map;
        C0892m c0892m;
        if (strArr == null || strArr.length <= 0) {
            return Collections.emptySet();
        }
        if (enumC0878b != EnumC0878b.VIDEO || (c0892m = this.f3263e) == null) {
            map = null;
            if (enumC0878b == EnumC0878b.COMPANION_AD) {
                C0882d c0882d = this.f3264f;
                map = null;
                if (c0882d != null) {
                    map = c0882d.m7150d();
                }
            }
        } else {
            map = c0892m.m7097e();
        }
        HashSet hashSet = new HashSet();
        if (map != null && !map.isEmpty()) {
            for (String str : strArr) {
                if (map.containsKey(str)) {
                    hashSet.addAll(map.get(str));
                }
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    /* renamed from: aR */
    private String m7199aR() {
        String str = null;
        String stringFromAdObject = getStringFromAdObject("vimp_url", null);
        if (stringFromAdObject != null) {
            str = stringFromAdObject.replace(Utils.MACRO_CLCODE, getClCode());
        }
        return str;
    }

    /* renamed from: aS */
    private C0892m.EnumC0894a m7198aS() {
        C0892m.EnumC0894a[] values = C0892m.EnumC0894a.values();
        int intValue = ((Integer) this.sdk.m5511a(C1314b.f4960em)).intValue();
        return (intValue < 0 || intValue >= values.length) ? C0892m.EnumC0894a.UNSPECIFIED : values[intValue];
    }

    /* renamed from: aT */
    private Set<C0889j> m7197aT() {
        C0892m c0892m = this.f3263e;
        return c0892m != null ? c0892m.m7098d() : Collections.emptySet();
    }

    /* renamed from: aU */
    private Set<C0889j> m7196aU() {
        C0882d c0882d = this.f3264f;
        return c0882d != null ? c0882d.m7151c() : Collections.emptySet();
    }

    @Override // com.applovin.impl.sdk.p053ad.AbstractC1286e
    /* renamed from: B */
    public boolean mo5991B() {
        return getBooleanFromAdObject("video_clickable", Boolean.FALSE) && mo5906i() != null;
    }

    /* renamed from: a */
    public Set<C0889j> m7210a(EnumC0879c enumC0879c, String str) {
        return m7209a(enumC0879c, new String[]{str});
    }

    /* renamed from: a */
    public Set<C0889j> m7209a(EnumC0879c enumC0879c, String[] strArr) {
        C1479t m5542A = this.sdk.m5542A();
        m5542A.m5116b("VastAd", "Retrieving trackers of type '" + enumC0879c + "' and events '" + strArr + "'...");
        if (enumC0879c == EnumC0879c.IMPRESSION) {
            return this.f3268j;
        }
        if (enumC0879c == EnumC0879c.VIDEO_CLICK) {
            return m7197aT();
        }
        if (enumC0879c == EnumC0879c.COMPANION_CLICK) {
            return m7196aU();
        }
        if (enumC0879c == EnumC0879c.VIDEO) {
            return m7211a(EnumC0878b.VIDEO, strArr);
        }
        if (enumC0879c == EnumC0879c.COMPANION) {
            return m7211a(EnumC0878b.COMPANION_AD, strArr);
        }
        if (enumC0879c == EnumC0879c.ERROR) {
            return this.f3269k;
        }
        C1479t m5542A2 = this.sdk.m5542A();
        m5542A2.m5111e("VastAd", "Failed to retrieve trackers of invalid type '" + enumC0879c + "' and events '" + strArr + "'");
        return Collections.emptySet();
    }

    @Override // com.applovin.impl.sdk.p053ad.AbstractC1286e
    /* renamed from: a */
    public void mo5966a() {
    }

    /* renamed from: a */
    public void m7208a(String str) {
        synchronized (this.adObjectLock) {
            JsonUtils.putString(this.adObject, "html_template", str);
        }
    }

    /* renamed from: aJ */
    public C0895n m7207aJ() {
        C0892m c0892m = this.f3263e;
        return c0892m != null ? c0892m.m7104a(m7198aS()) : null;
    }

    /* renamed from: aK */
    public C0882d m7206aK() {
        return this.f3264f;
    }

    /* renamed from: aL */
    public boolean m7205aL() {
        return getBooleanFromAdObject("vast_fire_click_trackers_on_html_clicks", Boolean.FALSE);
    }

    /* renamed from: aM */
    public String m7204aM() {
        return getStringFromAdObject("html_template", "");
    }

    /* renamed from: aN */
    public Uri m7203aN() {
        String stringFromAdObject = getStringFromAdObject("html_template_url", null);
        if (StringUtils.isValidString(stringFromAdObject)) {
            return Uri.parse(stringFromAdObject);
        }
        return null;
    }

    /* renamed from: aO */
    public boolean m7202aO() {
        return getBooleanFromAdObject("cache_companion_ad", Boolean.TRUE);
    }

    /* renamed from: aP */
    public boolean m7201aP() {
        return getBooleanFromAdObject("cache_video", Boolean.TRUE);
    }

    /* renamed from: aQ */
    public C0881c m7200aQ() {
        return this.f3266h;
    }

    @Override // com.applovin.impl.sdk.p053ad.AbstractC1286e
    /* renamed from: ap */
    public List<C1322a> mo5935ap() {
        List<C1322a> postbacks;
        synchronized (this.adObjectLock) {
            postbacks = Utils.getPostbacks("vimp_urls", this.adObject, getClCode(), CollectionUtils.map(Utils.SHOWN_OUT_OF_CONTEXT_MACRO, String.valueOf(m5943ah())), m7199aR(), m5934aq(), m5895w(), this.sdk);
        }
        return postbacks;
    }

    /* renamed from: b */
    public void m7195b() {
        synchronized (this.adObjectLock) {
            this.adObject.remove("vast_is_streaming");
        }
    }

    @Override // com.applovin.impl.sdk.p053ad.AbstractC1286e
    /* renamed from: c */
    public String mo5919c() {
        return this.f3265g;
    }

    /* renamed from: d */
    public C1263g getAdEventTracker() {
        return this.f3267i;
    }

    @Override // com.applovin.impl.sdk.p053ad.AbstractC1286e
    /* renamed from: e */
    public boolean mo5911e() {
        return getBooleanFromAdObject("vast_is_streaming", Boolean.FALSE);
    }

    @Override // com.applovin.impl.sdk.p053ad.AppLovinAdImpl
    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0875a) || !super.equals(obj)) {
            return false;
        }
        C0875a c0875a = (C0875a) obj;
        String str = this.f3259a;
        if (str != null) {
            if (!str.equals(c0875a.f3259a)) {
                return false;
            }
        } else if (c0875a.f3259a != null) {
            return false;
        }
        String str2 = this.f3260b;
        if (str2 != null) {
            if (!str2.equals(c0875a.f3260b)) {
                return false;
            }
        } else if (c0875a.f3260b != null) {
            return false;
        }
        C0888i c0888i = this.f3261c;
        if (c0888i != null) {
            if (!c0888i.equals(c0875a.f3261c)) {
                return false;
            }
        } else if (c0875a.f3261c != null) {
            return false;
        }
        C0892m c0892m = this.f3263e;
        if (c0892m != null) {
            if (!c0892m.equals(c0875a.f3263e)) {
                return false;
            }
        } else if (c0875a.f3263e != null) {
            return false;
        }
        C0882d c0882d = this.f3264f;
        if (c0882d != null) {
            if (!c0882d.equals(c0875a.f3264f)) {
                return false;
            }
        } else if (c0875a.f3264f != null) {
            return false;
        }
        C0881c c0881c = this.f3266h;
        if (c0881c != null) {
            if (!c0881c.equals(c0875a.f3266h)) {
                return false;
            }
        } else if (c0875a.f3266h != null) {
            return false;
        }
        Set<C0889j> set = this.f3268j;
        if (set != null) {
            if (!set.equals(c0875a.f3268j)) {
                return false;
            }
        } else if (c0875a.f3268j != null) {
            return false;
        }
        Set<C0889j> set2 = this.f3269k;
        Set<C0889j> set3 = c0875a.f3269k;
        if (set2 != null) {
            z = set2.equals(set3);
        } else if (set3 != null) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public long m7193f() {
        return getLongFromAdObject("real_close_delay", 0L);
    }

    @Override // com.applovin.impl.sdk.p053ad.AbstractC1286e
    /* renamed from: g */
    public Uri mo5908g() {
        C0895n m7207aJ = m7207aJ();
        if (m7207aJ != null) {
            return m7207aJ.m7091b();
        }
        return null;
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase
    public long getCreatedAtMillis() {
        return this.f3262d;
    }

    @Override // com.applovin.impl.sdk.p053ad.AppLovinAdImpl
    public JSONObject getOriginalFullResponse() {
        return this.fullResponse;
    }

    /* renamed from: h */
    public EnumC0878b m7192h() {
        return "companion_ad".equalsIgnoreCase(getStringFromAdObject("vast_first_caching_operation", "companion_ad")) ? EnumC0878b.COMPANION_AD : EnumC0878b.VIDEO;
    }

    @Override // com.applovin.impl.sdk.p053ad.AppLovinAdImpl
    public boolean hasVideoUrl() {
        C0892m c0892m = this.f3263e;
        boolean z = false;
        if (c0892m != null) {
            List<C0895n> m7105a = c0892m.m7105a();
            z = false;
            if (m7105a != null) {
                z = false;
                if (m7105a.size() > 0) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // com.applovin.impl.sdk.p053ad.AppLovinAdImpl
    public int hashCode() {
        int hashCode = super.hashCode();
        String str = this.f3259a;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f3260b;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        C0888i c0888i = this.f3261c;
        int hashCode4 = c0888i != null ? c0888i.hashCode() : 0;
        C0892m c0892m = this.f3263e;
        int hashCode5 = c0892m != null ? c0892m.hashCode() : 0;
        C0882d c0882d = this.f3264f;
        int hashCode6 = c0882d != null ? c0882d.hashCode() : 0;
        C0881c c0881c = this.f3266h;
        int hashCode7 = c0881c != null ? c0881c.hashCode() : 0;
        Set<C0889j> set = this.f3268j;
        int hashCode8 = set != null ? set.hashCode() : 0;
        Set<C0889j> set2 = this.f3269k;
        if (set2 != null) {
            i = set2.hashCode();
        }
        return (((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + i;
    }

    @Override // com.applovin.impl.sdk.p053ad.AbstractC1286e
    /* renamed from: i */
    public Uri mo5906i() {
        C0892m c0892m = this.f3263e;
        return c0892m != null ? c0892m.m7099c() : null;
    }

    @Override // com.applovin.impl.sdk.p053ad.AbstractC1286e, com.applovin.impl.sdk.p052a.AbstractC1249a
    public boolean isOpenMeasurementEnabled() {
        return getBooleanFromAdObject("omsdk_enabled", Boolean.TRUE) && this.f3266h != null;
    }

    @Override // com.applovin.impl.sdk.p053ad.AbstractC1286e
    /* renamed from: j */
    public Uri mo5905j() {
        return mo5906i();
    }

    /* renamed from: k */
    public boolean m7191k() {
        return getBooleanFromAdObject("vast_immediate_ad_load", Boolean.TRUE);
    }

    /* renamed from: l */
    public C0888i m7190l() {
        return this.f3261c;
    }

    /* renamed from: m */
    public C0892m m7189m() {
        return this.f3263e;
    }

    @Override // com.applovin.impl.sdk.p053ad.AppLovinAdImpl
    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("VastAd{title='");
        C0033h.m8882o(m8752j, this.f3259a, '\'', ", adDescription='");
        C0033h.m8882o(m8752j, this.f3260b, '\'', ", systemInfo=");
        m8752j.append(this.f3261c);
        m8752j.append(", videoCreative=");
        m8752j.append(this.f3263e);
        m8752j.append(", companionAd=");
        m8752j.append(this.f3264f);
        m8752j.append(", adVerifications=");
        m8752j.append(this.f3266h);
        m8752j.append(", impressionTrackers=");
        m8752j.append(this.f3268j);
        m8752j.append(", errorTrackers=");
        m8752j.append(this.f3269k);
        m8752j.append('}');
        return m8752j.toString();
    }
}
