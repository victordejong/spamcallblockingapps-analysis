package com.appnext.core;

import android.accounts.AccountManager;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Pair;
import com.amazon.device.ads.DtbConstants;
import com.appnext.base.C0472a;
import com.appnext.core.AbstractC0533d;
import com.appnext.core.adswatched.C0524a;
import com.appnext.nativeads.NativeAdObject;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.appnext.core.d */
/* loaded from: classes-dex2jar.jar:com/appnext/core/d.class */
public abstract class AbstractC0533d {

    /* renamed from: aM */
    private Context f1761aM;

    /* renamed from: cH */
    public final int f1762cH = 0;

    /* renamed from: cI */
    public final int f1763cI = 1;

    /* renamed from: cJ */
    public final int f1764cJ = 2;

    /* renamed from: cK */
    public final int f1765cK = 3;

    /* renamed from: cL */
    private final HashMap<C0528b, C0519a> f1766cL = new HashMap<>();

    /* renamed from: com.appnext.core.d$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/core/d$a.class */
    public interface AbstractC0538a {
        /* renamed from: a */
        <T> void mo42109a(T t);

        void error(String str);
    }

    /* renamed from: a */
    public long m42442a(AbstractC0501Ad abstractC0501Ad, String str) {
        try {
            return Long.valueOf(mo42113c(abstractC0501Ad).m42476y(str)).longValue();
        } catch (Throwable th) {
            return 0L;
        }
    }

    /* renamed from: a */
    private static AppnextAd m42432a(ArrayList<AppnextAd> arrayList, AppnextAd appnextAd) {
        AppnextAd next;
        try {
            Iterator<AppnextAd> it = arrayList.iterator();
            do {
                if (!it.hasNext()) {
                    return null;
                }
                next = it.next();
            } while (!next.getAdPackage().equals(appnextAd.getAdPackage()));
            return next;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static /* synthetic */ String m42439a(AbstractC0533d abstractC0533d, Context context, AbstractC0501Ad abstractC0501Ad, String str, ArrayList arrayList) {
        String str2;
        StringBuilder sb = new StringBuilder("https://global.appnext.com/offerWallApi.aspx?ext=t&pimp=1&igroup=sdk&m=1&osid=100&s2s=1&type=json&id=");
        sb.append(str);
        sb.append("&cnt=50");
        sb.append("&tid=");
        sb.append(abstractC0501Ad != null ? abstractC0501Ad.getTID() : NativeAdObject.TID);
        sb.append("&vid=");
        sb.append(abstractC0501Ad != null ? abstractC0501Ad.getVID() : NativeAdObject.VID);
        sb.append("&cat=");
        sb.append(abstractC0501Ad != null ? abstractC0501Ad.getCategories() : "");
        sb.append("&lockcat=");
        sb.append(abstractC0501Ad != null ? abstractC0501Ad.getSpecificCategories() : "");
        sb.append("&did=");
        sb.append(C0551g.m42380b(context, false));
        sb.append("&devn=");
        sb.append(C0551g.m42383au());
        sb.append("&dosv=");
        sb.append(Build.VERSION.SDK_INT);
        sb.append("&dct=");
        sb.append(C0551g.m42366v(C0551g.m42373g(context)));
        sb.append("&lang=");
        sb.append(Locale.getDefault().getLanguage());
        sb.append("&dcc=");
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(AnalyticsConstants.PHONE);
        if (telephonyManager.getSimState() == 5) {
            String simOperator = telephonyManager.getSimOperator();
            str2 = simOperator.substring(0, 3) + AnalyticsConstants.DELIMITER_MAIN + simOperator.substring(3);
        } else {
            str2 = "";
        }
        sb.append(str2);
        sb.append("&dds=0");
        sb.append("&packageId=");
        sb.append(context.getPackageName());
        sb.append("&g=");
        sb.append(m42427e(context));
        sb.append("&opt=");
        sb.append(AdsIDHelper.isOptOut(context) ? 1 : 0);
        sb.append("&rnd=");
        sb.append(new Random().nextInt());
        String str3 = "";
        if (!TextUtils.isEmpty(abstractC0501Ad.getPackageName())) {
            str3 = "&sp=" + abstractC0501Ad.getPackageName();
        }
        sb.append(str3);
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x01a3, code lost:
        if (r0.getRevenueType().equals("cpc") != false) goto L38;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<com.appnext.core.AppnextAd> m42447a(android.content.Context r5, com.appnext.core.AbstractC0501Ad r6, java.lang.String r7, int r8) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 708
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appnext.core.AbstractC0533d.m42447a(android.content.Context, com.appnext.core.Ad, java.lang.String, int):java.util.ArrayList");
    }

    /* renamed from: a */
    public static ArrayList<AppnextAd> m42444a(Context context, ArrayList<AppnextAd> arrayList, String str, String str2) {
        try {
            if (arrayList == null) {
                return new ArrayList<>();
            }
            List<String> m42458B = C0524a.m42455o(context).m42458B(str2);
            if (m42458B != null && !m42458B.isEmpty()) {
                arrayList.size();
                ArrayList<AppnextAd> arrayList2 = new ArrayList<>();
                ListIterator<AppnextAd> listIterator = arrayList.listIterator();
                while (listIterator.hasNext()) {
                    AppnextAd next = listIterator.next();
                    if (!m42458B.contains(next.getBannerID())) {
                        arrayList2.add(next);
                        listIterator.remove();
                    }
                }
                if (arrayList2.isEmpty()) {
                    C0524a.m42455o(context).m42456l(str, str2);
                }
                arrayList2.addAll(arrayList);
                new StringBuilder("Result filtered by watched ads -  ").append(arrayList.toString());
                return arrayList2;
            }
            return arrayList;
        } catch (Throwable th) {
            return new ArrayList<>();
        }
    }

    /* renamed from: b */
    private void m42430b(final Context context, final AbstractC0501Ad abstractC0501Ad, final String str, final AbstractC0538a abstractC0538a, final boolean z) {
        try {
            C0564o.m42343az().m42344a(new Runnable() { // from class: com.appnext.core.d.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        abstractC0501Ad.setSessionId(C0551g.m42370i(context));
                    } catch (Throwable th) {
                    }
                    try {
                        synchronized (AbstractC0533d.this.f1766cL) {
                            if (AbstractC0533d.this.m42424j(abstractC0501Ad) != null && AbstractC0533d.this.m42424j(abstractC0501Ad).m42469an() == 1) {
                                if (abstractC0538a != null) {
                                    AbstractC0533d.this.m42424j(abstractC0501Ad).m42472a(abstractC0538a);
                                }
                                return;
                            }
                            C0519a c0519a = new C0519a();
                            c0519a.m42472a(abstractC0538a);
                            c0519a.setPlacementID(str);
                            c0519a.m42468b(1);
                            AbstractC0533d.this.f1766cL.remove(new C0528b(abstractC0501Ad));
                            AbstractC0533d.this.m42443a(abstractC0501Ad, c0519a);
                            ArrayList<Pair<String, String>> arrayList = new ArrayList<>();
                            String str2 = AbstractC0533d.m42439a(AbstractC0533d.this, context, abstractC0501Ad, str, arrayList) + AbstractC0533d.this.mo42120a(context, abstractC0501Ad, str, arrayList);
                            new StringBuilder("AdsManager request url: ").append(str2);
                            C0539e.m42420ap();
                            String m42421a = C0539e.m42421a(context, str, abstractC0501Ad.getAUID(), AbstractC0533d.this.m42442a(abstractC0501Ad, "ads_caching_time_minutes"), str2, abstractC0501Ad.getSpecificCategories(), abstractC0501Ad.getCategories());
                            if (TextUtils.isEmpty(m42421a) || m42421a.equals("{\"apps\":[]}") || m42421a.equals("{}") || AbstractC0533d.m42422q(m42421a)) {
                                AbstractC0533d.this.m42435a(AppnextError.NO_ADS, m42421a, abstractC0501Ad);
                                return;
                            }
                            String str3 = m42421a;
                            if (!TextUtils.isEmpty(abstractC0501Ad.getPostback())) {
                                str3 = m42421a.replaceAll("&q=", "&q=" + abstractC0501Ad.getPostback());
                            }
                            ArrayList m42447a = AbstractC0533d.this.m42447a(context, abstractC0501Ad, str3, 50);
                            AbstractC0533d abstractC0533d = AbstractC0533d.this;
                            ArrayList<?> m42444a = AbstractC0533d.m42444a(context, m42447a, str, abstractC0501Ad.getAUID());
                            if (m42444a != null && !m42444a.isEmpty()) {
                                AbstractC0533d.this.m42424j(abstractC0501Ad).m42467c(m42444a);
                                if (z) {
                                    try {
                                        AbstractC0533d abstractC0533d2 = AbstractC0533d.this;
                                        Context context2 = context;
                                        AbstractC0501Ad abstractC0501Ad2 = abstractC0501Ad;
                                        abstractC0533d2.mo42121a(context2, abstractC0501Ad2, abstractC0533d2.m42424j(abstractC0501Ad2));
                                    } catch (Throwable th2) {
                                    }
                                }
                                AbstractC0533d.this.m42424j(abstractC0501Ad).m42468b(2);
                                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appnext.core.d.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        try {
                                            RunnableC05341 runnableC05341 = RunnableC05341.this;
                                            final C0519a m42424j = AbstractC0533d.this.m42424j(abstractC0501Ad);
                                            RunnableC05341 runnableC053412 = RunnableC05341.this;
                                            final ArrayList<?> ads = AbstractC0533d.this.m42424j(abstractC0501Ad).getAds();
                                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appnext.core.a.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    try {
                                                        synchronized (C0519a.this.f1733cz) {
                                                            ListIterator listIterator = C0519a.this.f1733cz.listIterator();
                                                            while (listIterator.hasNext()) {
                                                                ((AbstractC0533d.AbstractC0538a) listIterator.next()).mo42109a(ads);
                                                                listIterator.remove();
                                                            }
                                                        }
                                                    } catch (Throwable th3) {
                                                        C0472a.m42577a("AdContainer$notifyListenersSuccess", th3);
                                                    }
                                                }
                                            });
                                            RunnableC05341 runnableC053413 = RunnableC05341.this;
                                            AbstractC0533d abstractC0533d3 = AbstractC0533d.this;
                                            String str4 = str;
                                            AbstractC0501Ad abstractC0501Ad3 = abstractC0501Ad;
                                            abstractC0533d3.mo42115a(str4, abstractC0501Ad3, (AbstractC0501Ad) abstractC0533d3.m42424j(abstractC0501Ad3).getAds());
                                        } catch (Throwable th3) {
                                            RunnableC05341 runnableC053414 = RunnableC05341.this;
                                            AbstractC0533d.this.m42429b(AppnextError.INTERNAL_ERROR, abstractC0501Ad);
                                        }
                                    }
                                });
                                return;
                            }
                            AbstractC0533d.this.m42435a(AppnextError.NO_ADS, str3, abstractC0501Ad);
                        }
                    } catch (Throwable th3) {
                        C0472a.m42577a("AdsManager$updateAdList", th3);
                        AbstractC0533d.this.m42429b(th3.getMessage(), abstractC0501Ad);
                    }
                }
            });
        } catch (Throwable th) {
            m42429b(AppnextError.INTERNAL_ERROR, abstractC0501Ad);
        }
    }

    /* renamed from: c */
    public static String m42428c(AppnextAd appnextAd) {
        return appnextAd.getAdJSON();
    }

    /* renamed from: e */
    public static int m42427e(Context context) {
        try {
            if (!C0551g.m42376c(context, "android.permission.READ_CONTACTS") || !C0551g.m42376c(context, "android.permission.GET_ACCOUNTS")) {
                return 2;
            }
            return AccountManager.get(context).getAccountsByType("com.google").length > 0 ? 0 : 1;
        } catch (Throwable th) {
            return 2;
        }
    }

    public static C0554h parseAd(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            AppnextAd appnextAd = (AppnextAd) C0560k.m42355a(AppnextAd.class, jSONObject);
            if (appnextAd != null) {
                appnextAd.setAdJSON(jSONObject.toString());
                if (jSONObject.has("sid")) {
                    appnextAd.setSession(jSONObject.getString("sid"));
                }
                if (TextUtils.isEmpty(appnextAd.getStoreRating())) {
                    appnextAd.setStoreRating(DtbConstants.NETWORK_TYPE_UNKNOWN);
                }
            }
            return appnextAd;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: q */
    public static boolean m42422q(String str) {
        try {
            return new JSONObject(str).has("rnd");
        } catch (Throwable th) {
            return true;
        }
    }

    /* renamed from: a */
    public abstract int mo42119a(Context context, C0554h c0554h);

    /* renamed from: a */
    public abstract String mo42120a(Context context, AbstractC0501Ad abstractC0501Ad, String str, ArrayList<Pair<String, String>> arrayList);

    /* renamed from: a */
    public String m42433a(ArrayList<AppnextAd> arrayList) {
        try {
            JSONArray jSONArray = new JSONArray();
            Iterator<AppnextAd> it = arrayList.iterator();
            while (it.hasNext()) {
                jSONArray.put(new JSONObject(it.next().getAdJSON()));
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("apps", jSONArray);
            return jSONObject.toString().replace("\u2028", "\\u2028").replace("\u2029", "\\u2029");
        } catch (Throwable th) {
            return "";
        }
    }

    /* renamed from: a */
    public abstract void mo42121a(Context context, AbstractC0501Ad abstractC0501Ad, C0519a c0519a) throws Exception;

    /* renamed from: a */
    public final void m42446a(Context context, AbstractC0501Ad abstractC0501Ad, String str, AbstractC0538a abstractC0538a) {
        m42445a(context, abstractC0501Ad, str, abstractC0538a, true);
    }

    /* renamed from: a */
    public final void m42445a(Context context, AbstractC0501Ad abstractC0501Ad, String str, AbstractC0538a abstractC0538a, boolean z) {
        try {
            this.f1761aM = context.getApplicationContext();
            if (C0551g.m42368k(context)) {
                m42430b(context, abstractC0501Ad, str, abstractC0538a, z);
            } else if (abstractC0538a == null) {
            } else {
                abstractC0538a.error(AppnextError.CONNECTION_ERROR);
            }
        } catch (Throwable th) {
            C0472a.m42577a("AdsManager$getAdList", th);
            if (abstractC0538a == null) {
                return;
            }
            abstractC0538a.error(AppnextError.NO_ADS);
        }
    }

    /* renamed from: a */
    public final void m42443a(AbstractC0501Ad abstractC0501Ad, C0519a c0519a) {
        this.f1766cL.put(new C0528b(abstractC0501Ad), c0519a);
    }

    /* renamed from: a */
    public abstract void mo42116a(AbstractC0501Ad abstractC0501Ad, String str, String str2);

    /* renamed from: a */
    public void m42436a(final String str, final AbstractC0501Ad abstractC0501Ad) {
        C0564o.m42343az().m42344a(new Runnable() { // from class: com.appnext.core.d.3
            @Override // java.lang.Runnable
            public final void run() {
                C0524a.m42455o(abstractC0501Ad.getContext()).m42457k(str, abstractC0501Ad.getAUID());
            }
        });
    }

    /* renamed from: a */
    public abstract <T> void mo42115a(String str, AbstractC0501Ad abstractC0501Ad, T t);

    /* renamed from: a */
    public final void m42435a(String str, String str2, AbstractC0501Ad abstractC0501Ad) {
        m42434a(str, str2, abstractC0501Ad, 2);
    }

    /* renamed from: a */
    public final void m42434a(final String str, final String str2, final AbstractC0501Ad abstractC0501Ad, final int i) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appnext.core.d.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    C0519a m42424j = AbstractC0533d.this.m42424j(abstractC0501Ad);
                    if (m42424j == null) {
                        return;
                    }
                    if (m42424j.getAds() == null) {
                        m42424j.m42467c(new ArrayList<>());
                    } else {
                        m42424j.m42467c(m42424j.getAds());
                    }
                    m42424j.m42468b(i);
                    m42424j.m42465p(str);
                    AbstractC0533d abstractC0533d = AbstractC0533d.this;
                    AbstractC0501Ad abstractC0501Ad2 = abstractC0501Ad;
                    abstractC0533d.mo42116a(abstractC0501Ad2, str + StringConstant.SPACE + str2, m42424j.getPlacementID());
                } catch (Throwable th) {
                    C0472a.m42577a("AdKey$notifyError", th);
                }
            }
        });
    }

    /* renamed from: a */
    public boolean mo42117a(AbstractC0501Ad abstractC0501Ad) {
        try {
            if (!m42426h(abstractC0501Ad)) {
                return false;
            }
            return m42425i(abstractC0501Ad);
        } catch (Throwable th) {
            C0472a.m42577a("AdsManager$isLoadedAndUpdated", th);
            return false;
        }
    }

    /* renamed from: ao */
    public final HashMap<C0528b, C0519a> m42431ao() {
        return this.f1766cL;
    }

    /* renamed from: b */
    public final void m42429b(String str, AbstractC0501Ad abstractC0501Ad) {
        m42435a(str, "", abstractC0501Ad);
    }

    /* renamed from: c */
    public abstract SettingsManager mo42113c(AbstractC0501Ad abstractC0501Ad);

    public final Context getContext() {
        return this.f1761aM;
    }

    /* renamed from: h */
    public final boolean m42426h(AbstractC0501Ad abstractC0501Ad) {
        try {
            if (this.f1766cL == null || m42424j(abstractC0501Ad) == null || m42424j(abstractC0501Ad).m42469an() != 2) {
                return false;
            }
            return m42424j(abstractC0501Ad).getAds() != null;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: i */
    public final boolean m42425i(AbstractC0501Ad abstractC0501Ad) {
        try {
            if (this.f1766cL == null || m42424j(abstractC0501Ad) == null || m42424j(abstractC0501Ad).getAds().size() != 0) {
                return false;
            }
            return m42424j(abstractC0501Ad).m42470am().longValue() + DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL > System.currentTimeMillis();
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: j */
    public final C0519a m42424j(AbstractC0501Ad abstractC0501Ad) {
        return this.f1766cL.get(new C0528b(abstractC0501Ad));
    }

    /* renamed from: k */
    public final String m42423k(AbstractC0501Ad abstractC0501Ad) {
        return m42424j(abstractC0501Ad).m42464u();
    }
}
