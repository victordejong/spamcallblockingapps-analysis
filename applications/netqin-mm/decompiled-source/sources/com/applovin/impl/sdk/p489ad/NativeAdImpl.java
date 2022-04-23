package com.applovin.impl.sdk.p489ad;

import android.content.Context;
import android.net.Uri;
import com.applovin.nativeAds.AppLovinNativeAd;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinPostbackListener;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p150c.AbstractC2250f;
import p131c.p135b.p136a.p148e.p150c.C2246b;
import p131c.p135b.p136a.p148e.p151e.C2260a;
import p131c.p135b.p136a.p148e.p152q.C2363d;
import p131c.p135b.p136a.p148e.p152q.C2365e;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
/* renamed from: com.applovin.impl.sdk.ad.NativeAdImpl */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/ad/NativeAdImpl.class */
public class NativeAdImpl implements AbstractC2250f, AppLovinNativeAd {
    public static final String QUERY_PARAM_IS_FIRST_PLAY = "fp";
    public static final String QUERY_PARAM_VIDEO_PERCENT_VIEWED = "pv";

    /* renamed from: a */
    public final C2341l f21604a;

    /* renamed from: b */
    public final C2246b f21605b;

    /* renamed from: c */
    public final String f21606c;

    /* renamed from: d */
    public final String f21607d;

    /* renamed from: e */
    public final String f21608e;

    /* renamed from: f */
    public final String f21609f;

    /* renamed from: g */
    public final String f21610g;

    /* renamed from: h */
    public final String f21611h;

    /* renamed from: i */
    public final String f21612i;

    /* renamed from: j */
    public final String f21613j;

    /* renamed from: k */
    public final String f21614k;

    /* renamed from: l */
    public final String f21615l;

    /* renamed from: m */
    public final String f21616m;

    /* renamed from: n */
    public final String f21617n;

    /* renamed from: o */
    public final List<C2260a> f21618o;

    /* renamed from: p */
    public final List<C2260a> f21619p;

    /* renamed from: q */
    public final String f21620q;

    /* renamed from: r */
    public final long f21621r;

    /* renamed from: s */
    public final List<String> f21622s;

    /* renamed from: t */
    public String f21623t;

    /* renamed from: u */
    public String f21624u;

    /* renamed from: v */
    public float f21625v;

    /* renamed from: w */
    public String f21626w;

    /* renamed from: x */
    public AtomicBoolean f21627x;

    /* renamed from: com.applovin.impl.sdk.ad.NativeAdImpl$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/ad/NativeAdImpl$b.class */
    public static class C7028b {

        /* renamed from: a */
        public C2246b f21628a;

        /* renamed from: b */
        public String f21629b;

        /* renamed from: c */
        public String f21630c;

        /* renamed from: d */
        public String f21631d;

        /* renamed from: e */
        public String f21632e;

        /* renamed from: f */
        public String f21633f;

        /* renamed from: g */
        public String f21634g;

        /* renamed from: h */
        public String f21635h;

        /* renamed from: i */
        public String f21636i;

        /* renamed from: j */
        public String f21637j;

        /* renamed from: k */
        public float f21638k;

        /* renamed from: l */
        public String f21639l;

        /* renamed from: m */
        public String f21640m;

        /* renamed from: n */
        public String f21641n;

        /* renamed from: o */
        public String f21642o;

        /* renamed from: p */
        public String f21643p;

        /* renamed from: q */
        public List<C2260a> f21644q;

        /* renamed from: r */
        public List<C2260a> f21645r;

        /* renamed from: s */
        public String f21646s;

        /* renamed from: t */
        public String f21647t;

        /* renamed from: u */
        public long f21648u;

        /* renamed from: v */
        public List<String> f21649v;

        /* renamed from: w */
        public C2341l f21650w;

        /* renamed from: a */
        public C7028b m19015a(float f) {
            this.f21638k = f;
            return this;
        }

        /* renamed from: a */
        public C7028b m19014a(long j) {
            this.f21648u = j;
            return this;
        }

        /* renamed from: a */
        public C7028b m19013a(C2246b bVar) {
            this.f21628a = bVar;
            return this;
        }

        /* renamed from: a */
        public C7028b m19012a(C2341l lVar) {
            this.f21650w = lVar;
            return this;
        }

        /* renamed from: a */
        public C7028b m19011a(String str) {
            this.f21629b = str;
            return this;
        }

        /* renamed from: a */
        public C7028b m19010a(List<C2260a> list) {
            this.f21644q = list;
            return this;
        }

        /* renamed from: a */
        public NativeAdImpl m19016a() {
            return new NativeAdImpl(this.f21628a, this.f21629b, this.f21630c, this.f21631d, this.f21632e, this.f21633f, this.f21634g, this.f21635h, this.f21636i, this.f21637j, this.f21638k, this.f21639l, this.f21640m, this.f21641n, this.f21642o, this.f21643p, this.f21644q, this.f21645r, this.f21646s, this.f21647t, this.f21648u, this.f21649v, this.f21650w);
        }

        /* renamed from: b */
        public C7028b m19009b(String str) {
            this.f21630c = str;
            return this;
        }

        /* renamed from: b */
        public C7028b m19008b(List<C2260a> list) {
            this.f21645r = list;
            return this;
        }

        /* renamed from: c */
        public C7028b m19007c(String str) {
            this.f21631d = str;
            return this;
        }

        /* renamed from: c */
        public C7028b m19006c(List<String> list) {
            this.f21649v = list;
            return this;
        }

        /* renamed from: d */
        public C7028b m19005d(String str) {
            this.f21632e = str;
            return this;
        }

        /* renamed from: e */
        public C7028b m19004e(String str) {
            this.f21633f = str;
            return this;
        }

        /* renamed from: f */
        public C7028b m19003f(String str) {
            this.f21634g = str;
            return this;
        }

        /* renamed from: g */
        public C7028b m19002g(String str) {
            this.f21635h = str;
            return this;
        }

        /* renamed from: h */
        public C7028b m19001h(String str) {
            this.f21636i = str;
            return this;
        }

        /* renamed from: i */
        public C7028b m19000i(String str) {
            this.f21637j = str;
            return this;
        }

        /* renamed from: j */
        public C7028b m18999j(String str) {
            this.f21639l = str;
            return this;
        }

        /* renamed from: k */
        public C7028b m18998k(String str) {
            this.f21640m = str;
            return this;
        }

        /* renamed from: l */
        public C7028b m18997l(String str) {
            this.f21641n = str;
            return this;
        }

        /* renamed from: m */
        public C7028b m18996m(String str) {
            this.f21642o = str;
            return this;
        }

        /* renamed from: n */
        public C7028b m18995n(String str) {
            this.f21643p = str;
            return this;
        }

        /* renamed from: o */
        public C7028b m18994o(String str) {
            this.f21646s = str;
            return this;
        }

        /* renamed from: p */
        public C7028b m18993p(String str) {
            this.f21647t = str;
            return this;
        }
    }

    public NativeAdImpl(C2246b bVar, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, float f, String str10, String str11, String str12, String str13, String str14, List<C2260a> list, List<C2260a> list2, String str15, String str16, long j, List<String> list3, C2341l lVar) {
        this.f21627x = new AtomicBoolean();
        this.f21605b = bVar;
        this.f21606c = str;
        this.f21607d = str2;
        this.f21608e = str3;
        this.f21609f = str4;
        this.f21610g = str5;
        this.f21611h = str6;
        this.f21612i = str7;
        this.f21623t = str8;
        this.f21624u = str9;
        this.f21625v = f;
        this.f21626w = str10;
        this.f21614k = str11;
        this.f21615l = str12;
        this.f21616m = str13;
        this.f21617n = str14;
        this.f21618o = list;
        this.f21619p = list2;
        this.f21620q = str15;
        this.f21613j = str16;
        this.f21621r = j;
        this.f21622s = list3;
        this.f21604a = lVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || NativeAdImpl.class != obj.getClass()) {
            return false;
        }
        NativeAdImpl nativeAdImpl = (NativeAdImpl) obj;
        C2246b bVar = this.f21605b;
        if (bVar != null) {
            if (!bVar.equals(nativeAdImpl.f21605b)) {
                return false;
            }
        } else if (nativeAdImpl.f21605b != null) {
            return false;
        }
        String str = this.f21612i;
        if (str != null) {
            if (!str.equals(nativeAdImpl.f21612i)) {
                return false;
            }
        } else if (nativeAdImpl.f21612i != null) {
            return false;
        }
        String str2 = this.f21620q;
        if (str2 != null) {
            if (!str2.equals(nativeAdImpl.f21620q)) {
                return false;
            }
        } else if (nativeAdImpl.f21620q != null) {
            return false;
        }
        String str3 = this.f21614k;
        if (str3 != null) {
            if (!str3.equals(nativeAdImpl.f21614k)) {
                return false;
            }
        } else if (nativeAdImpl.f21614k != null) {
            return false;
        }
        String str4 = this.f21613j;
        if (str4 != null) {
            if (!str4.equals(nativeAdImpl.f21613j)) {
                return false;
            }
        } else if (nativeAdImpl.f21613j != null) {
            return false;
        }
        String str5 = this.f21611h;
        if (str5 != null) {
            if (!str5.equals(nativeAdImpl.f21611h)) {
                return false;
            }
        } else if (nativeAdImpl.f21611h != null) {
            return false;
        }
        String str6 = this.f21615l;
        if (str6 != null) {
            if (!str6.equals(nativeAdImpl.f21615l)) {
                return false;
            }
        } else if (nativeAdImpl.f21615l != null) {
            return false;
        }
        String str7 = this.f21606c;
        if (str7 != null) {
            if (!str7.equals(nativeAdImpl.f21606c)) {
                return false;
            }
        } else if (nativeAdImpl.f21606c != null) {
            return false;
        }
        String str8 = this.f21607d;
        if (str8 != null) {
            if (!str8.equals(nativeAdImpl.f21607d)) {
                return false;
            }
        } else if (nativeAdImpl.f21607d != null) {
            return false;
        }
        String str9 = this.f21608e;
        if (str9 != null) {
            if (!str9.equals(nativeAdImpl.f21608e)) {
                return false;
            }
        } else if (nativeAdImpl.f21608e != null) {
            return false;
        }
        String str10 = this.f21609f;
        if (str10 != null) {
            if (!str10.equals(nativeAdImpl.f21609f)) {
                return false;
            }
        } else if (nativeAdImpl.f21609f != null) {
            return false;
        }
        String str11 = this.f21610g;
        if (str11 != null) {
            if (!str11.equals(nativeAdImpl.f21610g)) {
                return false;
            }
        } else if (nativeAdImpl.f21610g != null) {
            return false;
        }
        String str12 = this.f21617n;
        if (str12 != null) {
            if (!str12.equals(nativeAdImpl.f21617n)) {
                return false;
            }
        } else if (nativeAdImpl.f21617n != null) {
            return false;
        }
        String str13 = this.f21616m;
        if (str13 != null) {
            if (!str13.equals(nativeAdImpl.f21616m)) {
                return false;
            }
        } else if (nativeAdImpl.f21616m != null) {
            return false;
        }
        List<C2260a> list = this.f21618o;
        if (list != null) {
            if (!list.equals(nativeAdImpl.f21618o)) {
                return false;
            }
        } else if (nativeAdImpl.f21618o != null) {
            return false;
        }
        List<C2260a> list2 = this.f21619p;
        if (list2 != null) {
            if (!list2.equals(nativeAdImpl.f21619p)) {
                return false;
            }
        } else if (nativeAdImpl.f21619p != null) {
            return false;
        }
        List<String> list3 = this.f21622s;
        List<String> list4 = nativeAdImpl.f21622s;
        return list3 != null ? list3.equals(list4) : list4 == null;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public long getAdId() {
        return this.f21621r;
    }

    public C2246b getAdZone() {
        return this.f21605b;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public String getCaptionText() {
        return this.f21612i;
    }

    public String getClCode() {
        return this.f21620q;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public String getCtaText() {
        return this.f21613j;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public String getDescriptionText() {
        return this.f21611h;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public String getIconUrl() {
        return this.f21623t;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public String getImageUrl() {
        return this.f21624u;
    }

    public List<String> getResourcePrefixes() {
        return this.f21622s;
    }

    public String getSourceIconUrl() {
        return this.f21606c;
    }

    public String getSourceImageUrl() {
        return this.f21607d;
    }

    public String getSourceStarRatingImageUrl() {
        return this.f21608e;
    }

    public String getSourceVideoUrl() {
        return this.f21609f;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public float getStarRating() {
        return this.f21625v;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public String getTitle() {
        return this.f21610g;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public String getVideoEndTrackingUrl(int i, boolean z) {
        Uri build;
        if (this.f21617n == null) {
            build = Uri.EMPTY;
        } else {
            if (i < 0 || i > 100) {
                C2374t.m30041c("AppLovinNativeAd", "Invalid percent viewed supplied.", new IllegalArgumentException("Percent viewed must be an integer between 0 and 100."));
            }
            build = Uri.parse(this.f21617n).buildUpon().appendQueryParameter(QUERY_PARAM_VIDEO_PERCENT_VIEWED, Integer.toString(i)).appendQueryParameter(QUERY_PARAM_IS_FIRST_PLAY, Boolean.toString(z)).build();
        }
        return build.toString();
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public String getVideoStartTrackingUrl() {
        return this.f21616m;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public String getVideoUrl() {
        return this.f21626w;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public String getZoneId() {
        return "";
    }

    public int hashCode() {
        String str = this.f21606c;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f21607d;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f21608e;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f21609f;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f21610g;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.f21611h;
        int hashCode6 = str6 != null ? str6.hashCode() : 0;
        String str7 = this.f21612i;
        int hashCode7 = str7 != null ? str7.hashCode() : 0;
        String str8 = this.f21613j;
        int hashCode8 = str8 != null ? str8.hashCode() : 0;
        String str9 = this.f21614k;
        int hashCode9 = str9 != null ? str9.hashCode() : 0;
        String str10 = this.f21615l;
        int hashCode10 = str10 != null ? str10.hashCode() : 0;
        String str11 = this.f21616m;
        int hashCode11 = str11 != null ? str11.hashCode() : 0;
        String str12 = this.f21617n;
        int hashCode12 = str12 != null ? str12.hashCode() : 0;
        List<C2260a> list = this.f21618o;
        int hashCode13 = list != null ? list.hashCode() : 0;
        List<C2260a> list2 = this.f21619p;
        int hashCode14 = list2 != null ? list2.hashCode() : 0;
        String str13 = this.f21620q;
        int hashCode15 = str13 != null ? str13.hashCode() : 0;
        C2246b bVar = this.f21605b;
        int hashCode16 = bVar != null ? bVar.hashCode() : 0;
        List<String> list3 = this.f21622s;
        if (list3 != null) {
            i = list3.hashCode();
        }
        return (((((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + hashCode14) * 31) + hashCode15) * 31) + hashCode16) * 31) + i;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public boolean isImagePrecached() {
        String str = this.f21623t;
        boolean z = true;
        boolean z2 = str != null && !str.equals(this.f21606c);
        String str2 = this.f21624u;
        boolean z3 = str2 != null && !str2.equals(this.f21607d);
        if (!z2 || !z3) {
            z = false;
        }
        return z;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public boolean isVideoPrecached() {
        String str = this.f21626w;
        return str != null && !str.equals(this.f21609f);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public void launchClickTarget(Context context) {
        for (C2260a aVar : this.f21619p) {
            C2363d l = this.f21604a.m30247l();
            C2365e.C2367b l2 = C2365e.m30125l();
            l2.m30122a(aVar.m30565a());
            l2.m30118b(aVar.m30564b());
            l2.m30120a(false);
            l.m30149a(l2.m30124a());
        }
        AbstractC2426r.m29823a(context, Uri.parse(this.f21614k), this.f21604a);
    }

    public void setIconUrl(String str) {
        this.f21623t = str;
    }

    public void setImageUrl(String str) {
        this.f21624u = str;
    }

    public void setStarRating(float f) {
        this.f21625v = f;
    }

    public void setVideoUrl(String str) {
        this.f21626w = str;
    }

    public String toString() {
        return "AppLovinNativeAd{clCode='" + this.f21620q + "', adZone='" + this.f21605b + "', sourceIconUrl='" + this.f21606c + "', sourceImageUrl='" + this.f21607d + "', sourceStarRatingImageUrl='" + this.f21608e + "', sourceVideoUrl='" + this.f21609f + "', title='" + this.f21610g + "', descriptionText='" + this.f21611h + "', captionText='" + this.f21612i + "', ctaText='" + this.f21613j + "', iconUrl='" + this.f21623t + "', imageUrl='" + this.f21624u + "', starRating='" + this.f21625v + "', videoUrl='" + this.f21626w + "', clickUrl='" + this.f21614k + "', impressionTrackingUrl='" + this.f21615l + "', videoStartTrackingUrl='" + this.f21616m + "', videoEndTrackingUrl='" + this.f21617n + "', impressionPostbacks=" + this.f21618o + "', clickTrackingPostbacks=" + this.f21619p + "', resourcePrefixes=" + this.f21622s + '}';
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public void trackImpression() {
        trackImpression(null);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public void trackImpression(AppLovinPostbackListener appLovinPostbackListener) {
        if (!this.f21627x.getAndSet(true)) {
            this.f21604a.m30262d0().m30044b("AppLovinNativeAd", "Tracking impression...");
            for (C2260a aVar : this.f21618o) {
                C2363d l = this.f21604a.m30247l();
                C2365e.C2367b l2 = C2365e.m30125l();
                l2.m30122a(aVar.m30565a());
                l2.m30118b(aVar.m30564b());
                l2.m30120a(false);
                l.m30146a(l2.m30124a(), true, appLovinPostbackListener);
            }
        } else if (appLovinPostbackListener != null) {
            appLovinPostbackListener.onPostbackFailure(this.f21615l, AppLovinErrorCodes.NATIVE_AD_IMPRESSION_ALREADY_TRACKED);
        }
    }
}
