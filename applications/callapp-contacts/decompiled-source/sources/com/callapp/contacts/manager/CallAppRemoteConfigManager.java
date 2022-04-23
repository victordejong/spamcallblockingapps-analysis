package com.callapp.contacts.manager;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.marketplace.MarketPlaceActivity;
import com.callapp.contacts.activity.marketplace.catalog.StoreUtils;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.google.android.gms.tasks.b;
import com.google.android.gms.tasks.d;
import com.google.android.gms.tasks.h;
import com.google.android.gms.tasks.k;
import com.google.firebase.remoteconfig.a;
import com.google.firebase.remoteconfig.internal.f;
import com.google.firebase.remoteconfig.internal.l;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/CallAppRemoteConfigManager.class */
public class CallAppRemoteConfigManager implements ManagedLifecycle {

    /* renamed from: a  reason: collision with root package name */
    public static final String f14814a;

    /* renamed from: b  reason: collision with root package name */
    public static final String f14815b;

    /* renamed from: c  reason: collision with root package name */
    public static final String f14816c;

    /* renamed from: d  reason: collision with root package name */
    public static final String f14817d;
    public static final String e;
    public static final String f;
    public static final String g;
    public static final String h;
    public static final String i;
    public static final String j;
    public static final String k;
    public static final String l;
    public static final String m;
    public static final String n;
    public static final String o;
    public static final String p;
    public static final String q;
    public static final String r;
    public static final String s;
    public static final String t;
    public static final String u;
    public static final String v;
    public static final String w;
    public static final String x;
    private a y;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.manager.CallAppRemoteConfigManager$2  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/CallAppRemoteConfigManager$2.class */
    public class AnonymousClass2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h f14820a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f14821b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Task.DoneListener f14822c;

        AnonymousClass2(h hVar, boolean z, Task.DoneListener doneListener) {
            this.f14820a = hVar;
            this.f14821b = z;
            this.f14822c = doneListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f14820a.a(new d<Void>() { // from class: com.callapp.contacts.manager.CallAppRemoteConfigManager.2.1
                @Override // com.google.android.gms.tasks.d
                public void onComplete(h<Void> hVar) {
                    if (hVar.b()) {
                        if (AnonymousClass2.this.f14821b) {
                            FeedbackManager.get().a("Remote config fetched successfully", 80);
                        }
                        final a aVar = CallAppRemoteConfigManager.this.y;
                        final h<f> b2 = aVar.f32579c.b();
                        final h<f> b3 = aVar.f32580d.b();
                        k.b(Arrays.asList(b2, b3)).b(aVar.f32578b, new b(aVar, b2, b3) { // from class: com.google.firebase.remoteconfig.c

                            /* renamed from: a  reason: collision with root package name */
                            private final a f32582a;

                            /* renamed from: b  reason: collision with root package name */
                            private final h f32583b;

                            /* renamed from: c  reason: collision with root package name */
                            private final h f32584c;

                            {
                                this.f32582a = aVar;
                                this.f32583b = b2;
                                this.f32584c = b3;
                            }

                            @Override // com.google.android.gms.tasks.b
                            public final Object then(h hVar2) {
                                return a.a(this.f32582a, this.f32583b, this.f32584c);
                            }
                        }).a((d<TContinuationResult>) new d<Boolean>() { // from class: com.callapp.contacts.manager.CallAppRemoteConfigManager.2.1.1
                            @Override // com.google.android.gms.tasks.d
                            public void onComplete(h<Boolean> hVar2) {
                                if (AnonymousClass2.this.f14822c != null) {
                                    AnonymousClass2.this.f14822c.onDone();
                                }
                                if (hVar2.b()) {
                                    CallAppRemoteConfigManager.b();
                                }
                            }
                        });
                    } else if (AnonymousClass2.this.f14822c != null) {
                        AnonymousClass2.this.f14822c.onDone();
                    }
                }
            });
        }
    }

    static {
        f14814a = Prefs.gj.get().booleanValue() ? "ContactDetailsBigAdMultiSizeUnitIdTest" : "ContactDetailsBigAdMultiSizeUnitId";
        f14815b = Prefs.gj.get().booleanValue() ? "ContactDetailsSmallAdMultiSizeUnitIdTest" : "ContactDetailsSmallAdMultiSizeUnitId";
        f14816c = Prefs.gj.get().booleanValue() ? "ContactAnalyticsDetailsSmallAdMultiSizeUnitIdTest" : "ContactAnalyticsDetailsSmallAdMultiSizeUnitId";
        String str = "MissedCallAdMultiSizeUnitId";
        f14817d = Prefs.gj.get().booleanValue() ? "MissedCallAdMultiSizeUnitIdTest" : "MissedCallAdMultiSizeUnitId";
        e = Prefs.gj.get().booleanValue() ? "NotAnsweredAdMultiSizeUnitIdTest" : "NotAnsweredAdMultiSizeUnitId";
        if (Prefs.gj.get().booleanValue()) {
            str = "CallAppPlusSummaryAdMultiSizeUnitIdTest";
        }
        f = str;
        g = Prefs.gj.get().booleanValue() ? "SmsSmallAd1189MultiSizeUnitIdTest" : "SmsSmallAd1189MultiSizeUnitId";
        h = Prefs.gj.get().booleanValue() ? "CallRecorderContactAdMultiSizeUnitIdTest" : "CallRecorderContactAdMultiSizeUnitId";
        String str2 = "";
        i = Prefs.gj.get().booleanValue() ? "" : "ContactDetailsBigAdMultiSizeBidding";
        j = Prefs.gj.get().booleanValue() ? "" : "ContactDetailsSmallAdMultiSizeBidding";
        k = Prefs.gj.get().booleanValue() ? "" : "ContactAnalyticsDetailsSmallAdMultiSizeBidding";
        l = Prefs.gj.get().booleanValue() ? "" : "InsightsSmallAdMultiSizeBidding";
        m = Prefs.gj.get().booleanValue() ? "" : "InsightsBigAdMultiSizeBidding";
        n = Prefs.gj.get().booleanValue() ? "" : "MissedCallAdMultiSizeBidding";
        o = Prefs.gj.get().booleanValue() ? "" : "NotAnsweredAdMultiSizeBidding";
        p = Prefs.gj.get().booleanValue() ? "" : "CallAppPlusSummaryAdMultiSizeBidding";
        q = Prefs.gj.get().booleanValue() ? "" : "SmsSmallAd1189MultiSizeBidding";
        if (!Prefs.gj.get().booleanValue()) {
            str2 = "CallRecorderContactAdMultiSizeBidding";
        }
        r = str2;
        s = Prefs.gj.get().booleanValue() ? "ContactListMultiSizeUnitIdTest" : "ContactListMultiSizeUnitId";
        t = Prefs.gj.get().booleanValue() ? "CallLogMultiSizeUnitIdTest" : "CallLogMultiSizeUnitId";
        u = Prefs.gj.get().booleanValue() ? "ImMultiSizeUnitIdTest" : "ImMultiSizeUnitId";
        v = Prefs.gj.get().booleanValue() ? "CallRecorderAllMultiSizeUnitIdTest" : "CallRecorderAllMultiSizeUnitId";
        w = Prefs.gj.get().booleanValue() ? "SpamMultiSizeUnitIdTest" : "SpamMultiSizeUnitId";
        x = Prefs.gj.get().booleanValue() ? "CDInterstitialAdUnitIdTest" : "CDInterstitialAdUnitId";
    }

    static /* synthetic */ void b() {
        StoreUtils.a();
        MarketPlaceActivity.b();
    }

    public static CallAppRemoteConfigManager get() {
        return Singletons.get().getCallAppRemoteConfigManager();
    }

    public final h<Void> a() {
        return a(Prefs.ba.get().booleanValue(), (Task.DoneListener) null);
    }

    public final h<Void> a(boolean z, Task.DoneListener doneListener) {
        Prefs.ba.set(Boolean.FALSE);
        a aVar = this.y;
        if (aVar == null) {
            return null;
        }
        h<Void> b2 = z ? aVar.b() : aVar.a();
        CallAppApplication.get().a(new AnonymousClass2(b2, z, doneListener));
        return b2;
    }

    public final String a(String str) {
        try {
            return this.y.a(str);
        } catch (Exception e2) {
            return (String) getDefaults().get(str);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0029, code lost:
        if (com.callapp.framework.util.StringUtils.a((java.lang.CharSequence) r0) != false) goto L_0x002c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String a(java.lang.String r7, boolean r8) {
        /*
            r6 = this;
            r0 = r6
            r1 = r7
            java.lang.String r0 = r0.a(r1)
            r9 = r0
            r0 = r9
            boolean r0 = com.callapp.framework.util.StringUtils.b(r0)
            if (r0 == 0) goto L_0x0051
            com.callapp.contacts.manager.cache.CacheManager r0 = com.callapp.contacts.manager.cache.CacheManager.get()
            java.lang.Class<java.lang.String> r1 = java.lang.String.class
            r2 = r9
            r3 = 0
            java.lang.Object r0 = r0.b(r1, r2, r3)
            java.lang.String r0 = (java.lang.String) r0
            r10 = r0
            r0 = r8
            if (r0 != 0) goto L_0x002c
            r0 = r10
            r7 = r0
            r0 = r10
            boolean r0 = com.callapp.framework.util.StringUtils.a(r0)
            if (r0 == 0) goto L_0x004f
        L_0x002c:
            r0 = r9
            java.lang.String r0 = com.callapp.contacts.util.http.HttpUtils.b(r0)
            r10 = r0
            r0 = r10
            r7 = r0
            r0 = r10
            boolean r0 = com.callapp.framework.util.StringUtils.b(r0)
            if (r0 == 0) goto L_0x004f
            com.callapp.contacts.manager.cache.CacheManager r0 = com.callapp.contacts.manager.cache.CacheManager.get()
            java.lang.Class<java.lang.String> r1 = java.lang.String.class
            r2 = r9
            r3 = r10
            r4 = 2131427372(0x7f0b002c, float:1.8476358E38)
            r0.a(r1, r2, r3, r4)
            r0 = r10
            r7 = r0
        L_0x004f:
            r0 = r7
            return r0
        L_0x0051:
            java.lang.String r0 = ""
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.CallAppRemoteConfigManager.a(java.lang.String, boolean):java.lang.String");
    }

    public final long b(String str) {
        long j2 = 0;
        try {
            l lVar = this.y.f;
            Long a2 = l.a(lVar.e, str);
            if (a2 != null) {
                lVar.a(str, l.a(lVar.e));
                return a2.longValue();
            }
            Long a3 = l.a(lVar.f, str);
            if (a3 != null) {
                return a3.longValue();
            }
            l.a(str, "Long");
            return 0L;
        } catch (Exception e2) {
            try {
                j2 = Long.valueOf((String) getDefaults().get(str)).longValue();
            } catch (NumberFormatException e3) {
            }
            return j2;
        }
    }

    public final boolean c(String str) {
        try {
            return Boolean.valueOf(this.y.a(str)).booleanValue();
        } catch (Exception e2) {
            return Boolean.valueOf((String) getDefaults().get(str)).booleanValue();
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    protected Map<String, Object> getDefaults() {
        HashMap hashMap = new HashMap();
        hashMap.put("AdRefreshDelta", 5);
        hashMap.put("ReferAndEarnPointValue", 2);
        hashMap.put("ReferAndEarnFeature", "false");
        hashMap.put("AdRefreshContinueIfNotVisible", "true");
        hashMap.put("StopOnFirstPostBidderResult", "false");
        hashMap.put("PriceBasedPostBidderResult", "false");
        hashMap.put("RefreshAdsOnChangingTabs", "true");
        hashMap.put("SmallAdCardShowInterval", "1");
        hashMap.put("SMSShowInterval", "1");
        hashMap.put("FreeGiftEnabled", "false");
        hashMap.put("UpgradeGiftEnabled", "false");
        hashMap.put("ButtonSetGifUrlPrefix", "https://dm22bu6mtmcsb.cloudfront.net/Call-screen-themes/Button-sets/Animated_gifs/");
        hashMap.put("webViewUserAgent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36");
        hashMap.put("ContactListAdExperiments", "{\"positioning\":{\"fixed\":[2,8],\"interval\":\"8\"},\"experiments\":[{\"group\":\"0\",\"layout\":\"15\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"1\",\"layout\":\"15\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"2\",\"layout\":\"15\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"3\",\"layout\":\"15\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"4\",\"layout\":\"15\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"5\",\"layout\":\"15\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"6\",\"layout\":\"15\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"7\",\"layout\":\"15\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"8\",\"layout\":\"15\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"9\",\"layout\":\"15\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"10\",\"layout\":\"15\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"11\",\"layout\":\"15\",\"animation\":\"3\",\"closeButton\":\"true\"}]}");
        hashMap.put("CallLogAdExperiments", "{\"positioning\":{\"fixed\":[1,6],\"interval\":\"6\"},\"experiments\":[{\"group\":\"0\",\"layout\":\"13\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"1\",\"layout\":\"13\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"2\",\"layout\":\"13\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"3\",\"layout\":\"13\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"4\",\"layout\":\"13\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"5\",\"layout\":\"13\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"6\",\"layout\":\"13\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"7\",\"layout\":\"13\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"8\",\"layout\":\"13\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"9\",\"layout\":\"13\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"10\",\"layout\":\"13\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"11\",\"layout\":\"13\",\"animation\":\"3\",\"closeButton\":\"true\"}]}");
        hashMap.put("IMLogAdExperiments", "{\"positioning\":{},\"experiments\":[{\"group\":\"0\",\"layout\":\"10\"},{\"group\":\"1\",\"layout\":\"10\"},{\"group\":\"2\",\"layout\":\"10\"},{\"group\":\"3\",\"layout\":\"10\"},{\"group\":\"4\",\"layout\":\"10\"},{\"group\":\"5\",\"layout\":\"10\"},{\"group\":\"6\",\"layout\":\"10\"},{\"group\":\"7\",\"layout\":\"10\"},{\"group\":\"8\",\"layout\":\"10\"},{\"group\":\"9\",\"layout\":\"10\"},{\"group\":\"10\",\"layout\":\"10\"},{\"group\":\"11\",\"layout\":\"10\"}]}");
        hashMap.put("SMSExperiments", "{\"positioning\":{},\"experiments\":[{\"group\":\"0\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"1\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"2\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"3\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"4\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"5\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"6\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"7\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"8\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"9\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"10\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"11\",\"animation\":\"3\",\"layout\":\"17\"}]}");
        hashMap.put("SpamListExperiments", "{\"positioning\":{\"fixed\":[1,8],\"interval\":\"9\"},\"experiments\":[{\"group\":\"0\",\"layout\":\"11\"},{\"group\":\"1\",\"layout\":\"11\"},{\"group\":\"2\",\"layout\":\"11\"},{\"group\":\"3\",\"layout\":\"11\"},{\"group\":\"4\",\"layout\":\"11\"},{\"group\":\"5\",\"layout\":\"11\"},{\"group\":\"6\",\"layout\":\"11\"},{\"group\":\"7\",\"layout\":\"11\"},{\"group\":\"8\",\"layout\":\"11\"},{\"group\":\"9\",\"layout\":\"11\"},{\"group\":\"10\",\"layout\":\"11\"},{\"group\":\"11\",\"layout\":\"11\"}]}");
        hashMap.put("AllRecordingsListExperiments", "{\"positioning\":{\"fixed\":[1,6],\"interval\":\"6\"},\"experiments\":[{\"group\":\"0\",\"layout\":\"10\"},{\"group\":\"1\",\"layout\":\"10\"},{\"group\":\"2\",\"layout\":\"10\"},{\"group\":\"3\",\"layout\":\"10\"},{\"group\":\"4\",\"layout\":\"10\"},{\"group\":\"5\",\"layout\":\"10\"},{\"group\":\"6\",\"layout\":\"10\"},{\"group\":\"7\",\"layout\":\"10\"},{\"group\":\"8\",\"layout\":\"10\"},{\"group\":\"9\",\"layout\":\"10\"},{\"group\":\"10\",\"layout\":\"10\"},{\"group\":\"11\",\"layout\":\"10\"}]}");
        hashMap.put("CallRecorderContactExperiments", "{\"positioning\":{},\"experiments\":[{\"group\":\"0\",\"animation\":\"2\"},{\"group\":\"1\",\"animation\":\"2\"},{\"group\":\"2\",\"animation\":\"2\"},{\"group\":\"2\",\"animation\":\"2\"},{\"group\":\"4\",\"animation\":\"2\"},{\"group\":\"5\",\"animation\":\"2\"},{\"group\":\"6\",\"animation\":\"2\"},{\"group\":\"7\",\"animation\":\"2\"},{\"group\":\"8\",\"animation\":\"2\"},{\"group\":\"9\",\"animation\":\"2\"},{\"group\":\"10\",\"animation\":\"2\"},{\"group\":\"11\",\"animation\":\"2\"}]}");
        hashMap.put("CDLargeExperiments", "{\"positioning\":{},\"experiments\":[{\"group\":\"0\",\"animation\":\"3\",\"layout\":\"18\"},{\"group\":\"1\",\"animation\":\"3\",\"layout\":\"18\"},{\"group\":\"2\",\"animation\":\"3\",\"layout\":\"18\"},{\"group\":\"3\",\"animation\":\"3\",\"layout\":\"18\"},{\"group\":\"4\",\"animation\":\"3\",\"layout\":\"18\"},{\"group\":\"5\",\"animation\":\"3\",\"layout\":\"18\"},{\"group\":\"6\",\"animation\":\"3\",\"layout\":\"18\"},{\"group\":\"7\",\"animation\":\"3\",\"layout\":\"18\"},{\"group\":\"8\",\"animation\":\"3\",\"layout\":\"18\"},{\"group\":\"9\",\"animation\":\"3\",\"layout\":\"18\"},{\"group\":\"10\",\"animation\":\"3\",\"layout\":\"18\"},{\"group\":\"11\",\"animation\":\"3\",\"layout\":\"18\"}]}");
        hashMap.put("CDSmallExperiments", "{\"positioning\":{},\"experiments\":[{\"group\":\"0\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"1\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"2\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"3\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"4\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"5\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"6\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"7\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"8\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"9\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"10\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"11\",\"animation\":\"3\",\"layout\":\"17\"}]}");
        hashMap.put("MissedCallExperiments", "{\"positioning\":{},\"experiments\":[{\"group\":\"0\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"1\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"2\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"3\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"4\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"5\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"6\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"7\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"8\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"9\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"10\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"11\",\"animation\":\"3\",\"layout\":\"17\"}]}");
        hashMap.put("NotAnsweredExperiments", "{\"positioning\":{},\"experiments\":[{\"group\":\"0\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"1\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"2\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"3\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"4\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"5\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"6\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"7\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"8\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"9\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"10\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"11\",\"animation\":\"3\",\"layout\":\"17\"}]}");
        hashMap.put("MissedCallSummaryExperiments", "{\"positioning\":{},\"experiments\":[{\"group\":\"0\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"1\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"2\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"3\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"4\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"5\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"6\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"7\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"8\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"9\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"10\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"11\",\"animation\":\"3\",\"layout\":\"17\"}]}");
        hashMap.put("NotAnsweredSummaryExperiments", "{\"positioning\":{},\"experiments\":[{\"group\":\"0\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"1\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"2\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"3\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"4\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"5\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"6\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"7\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"8\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"9\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"10\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"11\",\"animation\":\"3\",\"layout\":\"17\"}]}");
        hashMap.put("SmsSmallAd1189MultiSizeUnitId", "[{\"adUnitId\":\"fd5b15fa594c4c35a326f9b6a47cd854\",\"adType\":\"0\"},{\"adUnitId\":\"71a568e4b049404e97525adc6ebbe4ff\",\"adType\":\"1\"},{\"adUnitId\":\"ad2be0637a4944e69dcbb7758874cf38\",\"adType\":\"0\"},{\"adUnitId\":\"9ae10d3c0a814a58a04d3d7829cf44a8\",\"adType\":\"1\"},{\"adUnitId\":\"7947c87b40c849a197ec029c6ff1037d\",\"adType\":\"0\"},{\"adUnitId\":\"4ce4d957372c4209a93d3b4014beb349\",\"adType\":\"1\"}]");
        hashMap.put("CallRecorderContactAdMultiSizeUnitId", "[{\"adUnitId\":\"cb9d62d7a3684434b215d501f100f8b2\",\"adType\":\"0\"},{\"adUnitId\":\"deb31ef985d34668b97a0acabef159a0\",\"adType\":\"1\"},{\"adUnitId\":\"5c3124f93dae4f31a116248d8c6ea905\",\"adType\":\"0\"},{\"adUnitId\":\"6c8b2161b59b4c7eaddb80bd11bbb1f7\",\"adType\":\"1\"},{\"adUnitId\":\"77c74b5ea1c84224936b4043525f458a\",\"adType\":\"0\"},{\"adUnitId\":\"fc3cd4fc93dd4c7cbfaaffb27de5be51\",\"adType\":\"1\"}]");
        hashMap.put("ContactDetailsSmallAdMultiSizeUnitId", "[{\"adUnitId\":\"0195ea31df514ac8a86d0dc6cc34704e\",\"adType\":\"0\"},{\"adUnitId\":\"753f5e4073fc4e11ac56131e6a79a5a5\",\"adType\":\"1\"},{\"adUnitId\":\"5b5ea3499bad4f8493d8d01a9495732b\",\"adType\":\"0\"},{\"adUnitId\":\"8ab705b9be434111b9647157e26addac\",\"adType\":\"1\"},{\"adUnitId\":\"4773fe61cbf74b1d8b748076c428adde\",\"adType\":\"0\"},{\"adUnitId\":\"20e44667276347bea1007932137c3871\",\"adType\":\"1\"}]");
        hashMap.put("ContactDetailsBigAdMultiSizeUnitId", "[{\"adUnitId\":\"3308f93ec1c44070b6d3b91c58f47863\",\"adType\":\"0\"},{\"adUnitId\":\"abef4c8f3de04ae78275640b0b911093\",\"adType\":\"1\"},{\"adUnitId\":\"da783e83ee3e4962a03eedd25fb7db95\",\"adType\":\"0\"},{\"adUnitId\":\"f52104d2c6a74ba0b74224ef07fe77be\",\"adType\":\"1\"},{\"adUnitId\":\"13426b803fe74e348003e8dea768afb4\",\"adType\":\"0\"},{\"adUnitId\":\"4258201c7b844296a0405a19a69ef430\",\"adType\":\"1\"}]");
        hashMap.put("MissedCallAdMultiSizeUnitId", "[{\"adUnitId\":\"436fcd01b61c4f9583fe142f81b721f8\",\"adType\":\"0\"},{\"adUnitId\":\"26fa6797f1a542f0b30ed97af8e78dc7\",\"adType\":\"0\"},{\"adUnitId\":\"7970015a475948e1a8891de3143937e2\",\"adType\":\"0\"}]");
        hashMap.put("MissedCallSummaryAdMultiSizeUnitId", "[{\"adUnitId\":\"436fcd01b61c4f9583fe142f81b721f8\",\"adType\":\"0\"},{\"adUnitId\":\"26fa6797f1a542f0b30ed97af8e78dc7\",\"adType\":\"0\"},{\"adUnitId\":\"7970015a475948e1a8891de3143937e2\",\"adType\":\"0\"}]");
        hashMap.put("ContactListMultiSizeUnitId", "[{\"adUnitId\":\"b5bbff7d5d6842fd99fad62808035415\",\"adType\":\"0\"}]");
        hashMap.put("CallLogMultiSizeUnitId", "[{\"adUnitId\":\"5af3e5a582da420f84aef05f32058479\",\"adType\":\"0\"}]");
        hashMap.put("CallRecorderAllMultiSizeUnitId", "[{\"adUnitId\":\"7b167ffe287c4e3fb69ddf351f630285\",\"adType\":\"0\"}]");
        hashMap.put("SpamMultiSizeUnitId", "[{\"adUnitId\":\"21393b5c1efe4e869e45df6598ffad91\",\"adType\":\"0\"}]");
        hashMap.put("CDInterstitialAdUnitId", "661fa2c0cd43493a9f8c6179879b1d8b");
        hashMap.put("CDInterstitialWakeScreenWhenNeedToShow", "true");
        hashMap.put("SmsSmallAd1189MultiSizeUnitIdTest", "[{\"adUnitId\":\"751976f593ed405ead135759a937fe2d\",\"adType\":\"0\"},{\"adUnitId\":\"85239175c5214c7883758fbeffc7a78b\",\"adType\":\"1\"}]");
        hashMap.put("CallRecorderContactAdMultiSizeUnitIdTest", "[{\"adUnitId\":\"da5348c8955a45488fdd3f49bcf935ee\",\"adType\":\"0\"},{\"adUnitId\":\"9b413cc4b8bf42048378eea9eb4c211e\",\"adType\":\"1\"}]");
        hashMap.put("ContactDetailsSmallAdMultiSizeUnitIdTest", "[{\"adUnitId\":\"03e8e02479f34905846ee4b7015fa6bf\",\"adType\":\"0\"},{\"adUnitId\":\"c26bd478b48849198a92f7afdf32a22a\",\"adType\":\"1\"}]");
        hashMap.put("ContactDetailsBigAdMultiSizeUnitIdTest", "[{\"adUnitId\":\"ede6624ca9294df49c75d8d65a2c47c0\",\"adType\":\"0\"},{\"adUnitId\":\"b61e0562160d4b48bf59f77917f22c8b\",\"adType\":\"1\"}]");
        hashMap.put("ContactListMultiSizeUnitIdTest", "[{\"adUnitId\":\"a83133eb854a4af4b264663b06bcd3d9\",\"adType\":\"0\"}]");
        hashMap.put("CallLogMultiSizeUnitIdTest", "[{\"adUnitId\":\"22f6c1a7edca4a4b828c524a7b3cb664\",\"adType\":\"0\"}]");
        hashMap.put("CallRecorderAllMultiSizeUnitIdTest", "[{\"adUnitId\":\"9b4f0e8950714ff5883c46badf77d502\",\"adType\":\"0\"}]");
        hashMap.put("SpamMultiSizeUnitIdTest", "[{\"adUnitId\":\"aa30cefe891245a19e6c2aa709dd4b5e\",\"adType\":\"0\"}]");
        hashMap.put("MissedCallAdMultiSizeUnitIdTest", "[{\"adUnitId\":\"03e8e02479f34905846ee4b7015fa6bf\",\"adType\":\"0\"},{\"adUnitId\":\"c26bd478b48849198a92f7afdf32a22a\",\"adType\":\"1\"}]");
        hashMap.put("MissedCallSummaryAdMultiSizeUnitIdTest", "[{\"adUnitId\":\"03e8e02479f34905846ee4b7015fa6bf\",\"adType\":\"0\"},{\"adUnitId\":\"c26bd478b48849198a92f7afdf32a22a\",\"adType\":\"1\"}]");
        hashMap.put("CDInterstitialAdUnitIdTest", "e3db509d4cb146ac9bbab06ff05b3cbe");
        hashMap.put("InCallAutoScroll", "2");
        hashMap.put("cdTimesToAutoScroll", "3");
        hashMap.put("cdSecondsToWaitBeforeNextAutoScroll", "45");
        hashMap.put("postCallEnabled", "true");
        hashMap.put("showMarketplaceWidget", "false");
        hashMap.put("tutorialPagesNumber", "5");
        hashMap.put("showTutorialWidget", "true");
        hashMap.put("CallappIMDefaultImagesValues", "{\"com.whatsapp\": [214,230,220,240,220,240],\"com.whatsapp.dark\": [100,110,110,120,120,123],\"com.viber.voip\": [160,240,160,240,160,240],\"org.thoughtcrime.securesms\": [90,130,90,130,110,140]}");
        hashMap.put("twilioTrustedCommCPSEnabled", "true");
        hashMap.put("whitePagesEnabled", "true");
        hashMap.put("UpdatedFromPlayDifference", "20");
        hashMap.put("UpdatedFromPlayEnabled", "true");
        hashMap.put("UpdatedFromPlayIntervals", "20");
        hashMap.put("restrictedCountries", "IL,KR,KO");
        hashMap.put("uploadConfiguration", "{\"disabled_store_names\":[\"Google Play\"]}");
        hashMap.put("storesShowBillingWithoutPlay", "dev");
        hashMap.put("amazonPricePoints", "{\"m320x50p1\":\"0.1\",\"m320x50p2\":\"0.2\",\"m320x50p3\":\"0.3\",\"m320x50p4\":\"0.4\",\"m320x50p5\":\"0.5\",\"m320x50p6\":\"0.6\",\"m320x50p7\":\"0.7\",\"m320x50p8\":\"0.8\",\"m320x50p9\":\"0.9\",\"m320x50p10\":\"1\",\"m320x50p11\":\"1.1\",\"m320x50p12\":\"1.2\",\"m320x50p13\":\"1.3\",\"m320x50p14\":\"1.4\",\"m320x50p15\":\"1.5\",\"m320x50p16\":\"1.6\",\"m320x50p17\":\"1.7\",\"m320x50p18\":\"1.8\",\"m320x50p19\":\"1.9\",\"m320x50p20\":\"2\",\"m320x50p21\":\"2.1\",\"m320x50p22\":\"2.2\",\"m320x50p23\":\"2.3\",\"m320x50p24\":\"2.4\",\"m320x50p25\":\"2.5\",\"m320x50p26\":\"2.6\",\"m320x50p27\":\"2.7\",\"m320x50p28\":\"2.8\",\"m320x50p29\":\"2.9\",\"m320x50p30\":\"3\",\"m320x50p31\":\"3.1\",\"m320x50p32\":\"3.2\",\"m320x50p33\":\"3.3\",\"m320x50p34\":\"3.4\",\"m320x50p35\":\"3.5\",\"m320x50p36\":\"3.6\",\"m320x50p37\":\"3.7\",\"m320x50p38\":\"3.8\",\"m320x50p39\":\"3.9\",\"m320x50p40\":\"4\",\"m320x50p41\":\"4.1\",\"m320x50p42\":\"4.2\",\"m320x50p43\":\"4.3\",\"m320x50p44\":\"4.4\",\"m320x50p45\":\"4.5\",\"m320x50p46\":\"4.6\",\"m320x50p47\":\"4.7\",\"m320x50p48\":\"4.8\",\"m320x50p49\":\"4.9\",\"m320x50p50\":\"5\",\"m320x50p51\":\"5.1\",\"m320x50p52\":\"5.2\",\"m320x50p53\":\"5.3\",\"m320x50p54\":\"5.4\",\"m320x50p55\":\"5.5\",\"m320x50p56\":\"5.6\",\"m320x50p57\":\"5.7\",\"m320x50p58\":\"5.8\",\"m320x50p59\":\"5.9\",\"m320x50p60\":\"6\",\"m320x50p61\":\"6.1\",\"m320x50p62\":\"6.2\",\"m320x50p63\":\"6.3\",\"m320x50p64\":\"6.4\",\"m320x50p65\":\"6.5\",\"m320x50p66\":\"6.6\",\"m320x50p67\":\"6.7\",\"m320x50p68\":\"6.8\",\"m320x50p69\":\"6.9\",\"m320x50p70\":\"7\",\"m320x50p71\":\"7.2\",\"m320x50p72\":\"7.4\",\"m320x50p73\":\"7.6\",\"m320x50p74\":\"7.8\",\"m320x50p75\":\"8\",\"m320x50p76\":\"8.2\",\"m320x50p77\":\"8.4\",\"m320x50p78\":\"8.6\",\"m320x50p80\":\"9\",\"m320x50p81\":\"9.2\",\"m320x50p82\":\"9.4\",\"m320x50p83\":\"9.6\",\"m320x50p84\":\"9.8\",\"m320x50p85\":\"10\",\"m300x250p1\":\"0.1\",\"m300x250p2\":\"0.2\",\"m300x250p3\":\"0.3\",\"m300x250p4\":\"0.4\",\"m300x250p5\":\"0.5\",\"m300x250p6\":\"0.6\",\"m300x250p7\":\"0.7\",\"m300x250p8\":\"0.8\",\"m300x250p9\":\"0.9\",\"m300x250p10\":\"1\",\"m300x250p11\":\"1.1\",\"m300x250p12\":\"1.2\",\"m300x250p13\":\"1.3\",\"m300x250p14\":\"1.4\",\"m300x250p15\":\"1.5\",\"m300x250p16\":\"1.6\",\"m300x250p17\":\"1.7\",\"m300x250p18\":\"1.8\",\"m300x250p19\":\"1.9\",\"m300x250p20\":\"2\",\"m300x250p21\":\"2.1\",\"m300x250p22\":\"2.2\",\"m300x250p23\":\"2.3\",\"m300x250p24\":\"2.4\",\"m300x250p25\":\"2.5\",\"m300x250p26\":\"2.6\",\"m300x250p27\":\"2.7\",\"m300x250p28\":\"2.8\",\"m300x250p29\":\"2.9\",\"m300x250p30\":\"3\",\"m300x250p31\":\"3.1\",\"m300x250p32\":\"3.2\",\"m300x250p33\":\"3.3\",\"m300x250p34\":\"3.4\",\"m300x250p35\":\"3.5\",\"m300x250p36\":\"3.6\",\"m300x250p37\":\"3.7\",\"m300x250p38\":\"3.8\",\"m300x250p39\":\"3.9\",\"m300x250p40\":\"4\",\"m300x250p41\":\"4.1\",\"m300x250p42\":\"4.2\",\"m300x250p43\":\"4.3\",\"m300x250p44\":\"4.4\",\"m300x250p45\":\"4.5\",\"m300x250p46\":\"4.6\",\"m300x250p47\":\"4.7\",\"m300x250p48\":\"4.8\",\"m300x250p49\":\"4.9\",\"m300x250p50\":\"5\",\"m300x250p51\":\"5.1\",\"m300x250p52\":\"5.2\",\"m300x250p53\":\"5.3\",\"m300x250p54\":\"5.4\",\"m300x250p55\":\"5.5\",\"m300x250p56\":\"5.6\",\"m300x250p57\":\"5.7\",\"m300x250p58\":\"5.8\",\"m300x250p59\":\"5.9\",\"m300x250p60\":\"6\",\"m300x250p61\":\"6.1\",\"m300x250p62\":\"6.2\",\"m300x250p63\":\"6.3\",\"m300x250p64\":\"6.4\",\"m300x250p65\":\"6.5\",\"m300x250p66\":\"6.6\",\"m300x250p67\":\"6.7\",\"m300x250p68\":\"6.8\",\"m300x250p69\":\"6.9\",\"m300x250p70\":\"7\",\"m300x250p71\":\"7.2\",\"m300x250p72\":\"7.4\",\"m300x250p73\":\"7.6\",\"m300x250p74\":\"7.8\",\"m300x250p75\":\"8\",\"m300x250p76\":\"8.2\",\"m300x250p77\":\"8.4\",\"m300x250p78\":\"8.6\",\"m300x250p79\":\"8.8\",\"m300x250p80\":\"9\",\"m300x250p81\":\"9.2\",\"m300x250p82\":\"9.4\",\"m300x250p83\":\"9.6\",\"m300x250p84\":\"9.8\",\"m300x250p85\":\"10\",\"mFSp1\":\"0.2\",\"mFSp2\":\"0.4\",\"mFSp3\":\"0.6\",\"mFSp4\":\"0.8\",\"mFSp5\":\"1\",\"mFSp6\":\"1.2\",\"mFSp7\":\"1.4\",\"mFSp8\":\"1.6\",\"mFSp9\":\"1.8\",\"mFSp10\":\"2\",\"mFSp11\":\"2.2\",\"mFSp12\":\"2.4\",\"mFSp13\":\"2.6\",\"mFSp14\":\"2.8\",\"mFSp15\":\"3\",\"mFSp16\":\"3.2\",\"mFSp17\":\"3.4\",\"mFSp18\":\"3.6\",\"mFSp19\":\"3.8\",\"mFSp20\":\"4\",\"mFSp21\":\"4.2\",\"mFSp22\":\"4.4\",\"mFSp23\":\"4.6\",\"mFSp24\":\"4.8\",\"mFSp25\":\"5\",\"mFSp26\":\"5.2\",\"mFSp27\":\"5.4\",\"mFSp28\":\"5.6\",\"mFSp29\":\"5.8\",\"mFSp30\":\"6\",\"mFSp31\":\"6.2\",\"mFSp32\":\"6.4\",\"mFSp33\":\"6.6\",\"mFSp34\":\"6.8\",\"mFSp35\":\"7\",\"mFSp36\":\"7.2\",\"mFSp37\":\"7.4\",\"mFSp38\":\"7.6\",\"mFSp39\":\"7.8\",\"mFSp40\":\"8\",\"mFSp41\":\"8.2\",\"mFSp42\":\"8.4\",\"mFSp43\":\"8.6\",\"mFSp44\":\"8.8\",\"mFSp45\":\"9\",\"mFSp46\":\"9.2\",\"mFSp47\":\"9.4\",\"mFSp48\":\"9.6\",\"mFSp49\":\"9.8\",\"mFSp50\":\"10\",\"mFSp51\":\"10.2\",\"mFSp52\":\"10.4\",\"mFSp53\":\"10.6\",\"mFSp54\":\"10.8\",\"mFSp55\":\"11\",\"mFSp56\":\"11.2\",\"mFSp57\":\"11.4\",\"mFSp58\":\"11.6\",\"mFSp59\":\"11.8\",\"mFSp60\":\"12\",\"mFSp61\":\"12.2\",\"mFSp62\":\"12.4\",\"mFSp63\":\"12.6\",\"mFSp64\":\"12.8\",\"mFSp65\":\"13\",\"mFSp66\":\"13.2\",\"mFSp67\":\"13.4\",\"mFSp68\":\"13.6\",\"mFSp69\":\"13.8\",\"mFSp70\":\"14\",\"mFSp71\":\"14.2\",\"mFSp72\":\"14.4\",\"mFSp73\":\"14.6\",\"mFSp74\":\"14.8\",\"mFSp75\":\"15\",\"mFSp76\":\"16\",\"mFSp77\":\"17\",\"mFSp78\":\"18\",\"mFSp79\":\"19\",\"mFSp80\":\"20\",\"mFSp81\":\"21\",\"mFSp82\":\"22\",\"mFSp83\":\"23\",\"mFSp84\":\"24\",\"mFSp85\":\"25\"}");
        hashMap.put("promotionShowDialogInterval", "2");
        hashMap.put("amazonFromDfpEnabled", "false");
        hashMap.put("timerSendSms", "20000");
        hashMap.put("timerCallMe", "30000");
        hashMap.put("sinchBlockedCountries", "+231,+252,+257,+261,+269,+256,+244,+242,+675,+677,+239,+685,+236,+505");
        hashMap.put("facebookCTAOnlyClick", "false");
        hashMap.put("facebookAudienceNetworkBiddingKitWaitForNotifyWin", "true");
        hashMap.put("facebookAccessToken", "389565261068314|d1e2731fec3cb6200d2865485917a757");
        hashMap.put("searchNearbyEnabled", "false");
        hashMap.put("GoogleAdaptiveBannerEnabled", "true");
        hashMap.put("MissedNotAnsweredPreloadTimeoutSec", "15");
        hashMap.put("onlyNativeSocialLogin", "true");
        hashMap.put("cdInterstitialShowAnalytics", "true");
        hashMap.put("amazona9_app_id", "71c4388391f84f4ebea7911d4f9a10ac");
        hashMap.put("verizon_app_id", "8a8094180154547739867aee791b0018");
        hashMap.put("inmobi_app_id", "1021337");
        hashMap.put("criteo_app_id", "B-057613");
        hashMap.put("pubnative_app_id", "4a6a181ee15f4e5a8056205acccd1bf1");
        hashMap.put("bid_machine_app_id", "134");
        hashMap.put("pangle_app_id", "5074172");
        hashMap.put("callappDomain", "callapp.com");
        hashMap.put("domain_certs_pinning", "{\"s.callapp.com\":[\"sha256/Tzggqd6QHcDgu8Zwt0ZLaYZSLJvdNKJo+5B4eqFba+U=\",\"sha256/8Rw90Ej3Ttt8RRkrg+WYDS9n7IS03bk5bjP/UXPtaY8=\",\"sha256/Ko8tivDrEjiY90yGasP6ZpBU4jwXvHqVvQI0GS3GNdA=\"],\"s.call.app\":[\"sha256/gOyeolCMK+90F0dyfLWGIx8WqRrPjYieKMNEr4P87k0=\",\"sha256/8Rw90Ej3Ttt8RRkrg+WYDS9n7IS03bk5bjP/UXPtaY8=\",\"sha256/Ko8tivDrEjiY90yGasP6ZpBU4jwXvHqVvQI0GS3GNdA=\"]}");
        hashMap.put("RecorderTestRecordTime", "15000");
        hashMap.put("loginCallMeFirst", "false");
        hashMap.put("usePayWall", "false");
        hashMap.put("skipSocialNetwork", "false");
        return hashMap;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
        com.google.firebase.b a2;
        try {
            if (!CallAppApplication.get().isUnitTestMode() && (a2 = com.google.firebase.b.a(CallAppApplication.get())) != null) {
                this.y = a.a(a2);
            }
        } catch (Exception e2) {
        }
    }

    public void setDefaultsIfNeeded(final Task.DoneListener doneListener) {
        a aVar;
        if (CallAppApplication.get().isUnitTestMode() || ((!Prefs.aZ.get().booleanValue() && !Prefs.gl.get().booleanValue()) || (aVar = this.y) == null)) {
            doneListener.onDone();
            return;
        }
        Map<String, Object> defaults = getDefaults();
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, Object> entry : defaults.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                hashMap.put(entry.getKey(), new String((byte[]) value));
            } else {
                hashMap.put(entry.getKey(), value.toString());
            }
        }
        aVar.a(hashMap).a(new d<Void>() { // from class: com.callapp.contacts.manager.CallAppRemoteConfigManager.1
            @Override // com.google.android.gms.tasks.d
            public void onComplete(h<Void> hVar) {
                doneListener.onDone();
                Prefs.aZ.set(Boolean.FALSE);
            }
        });
    }
}
