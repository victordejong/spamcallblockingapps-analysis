package com.allinone.callerid.inapputil;

import android.app.Activity;
import android.util.Log;
import com.android.billingclient.api.AbstractC3893b;
import com.android.billingclient.api.AbstractC3895c;
import com.android.billingclient.api.AbstractC3900e;
import com.android.billingclient.api.AbstractC3911i;
import com.android.billingclient.api.AbstractC3915k;
import com.android.billingclient.api.AbstractC3920m;
import com.android.billingclient.api.C3890a;
import com.android.billingclient.api.C3902f;
import com.android.billingclient.api.C3905g;
import com.android.billingclient.api.C3908h;
import com.android.billingclient.api.C3917l;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.SkuDetails;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/inapputil/GoogleBillingUtil.class */
public class GoogleBillingUtil {

    /* renamed from: a */
    private static boolean f9831a = false;

    /* renamed from: d */
    private static AbstractC3895c f9834d;

    /* renamed from: e */
    private static AbstractC3895c.C3896a f9835e;

    /* renamed from: j */
    private C3019d f9840j = new C3019d(this, null);

    /* renamed from: b */
    private static String[] f9832b = new String[0];

    /* renamed from: c */
    private static String[] f9833c = new String[0];

    /* renamed from: f */
    private static List<C3023c> f9836f = new ArrayList();

    /* renamed from: g */
    private static Map<String, C3023c> f9837g = new HashMap();

    /* renamed from: h */
    private static boolean f9838h = true;

    /* renamed from: i */
    private static final GoogleBillingUtil f9839i = new GoogleBillingUtil();

    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/inapputil/GoogleBillingUtil$GoogleBillingListenerTag.class */
    public enum GoogleBillingListenerTag {
        QUERY("query"),
        PURCHASE("purchase"),
        SETUP("setup"),
        COMSUME("comsume"),
        AcKnowledgePurchase("AcKnowledgePurchase"),
        HISTORY("history");
        
        public String tag;

        GoogleBillingListenerTag(String str) {
            this.tag = str;
        }
    }

    /* renamed from: com.allinone.callerid.inapputil.GoogleBillingUtil$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/inapputil/GoogleBillingUtil$a.class */
    public class C3016a implements AbstractC3900e {

        /* renamed from: a */
        final /* synthetic */ String f9848a;

        C3016a(String str) {
            GoogleBillingUtil.this = r4;
            this.f9848a = str;
        }

        @Override // com.android.billingclient.api.AbstractC3900e
        /* renamed from: a */
        public void mo23804a(C3905g c3905g) {
            if (c3905g.m23779b() == 0) {
                for (C3023c c3023c : GoogleBillingUtil.f9836f) {
                    c3023c.mo25758i(c3023c.f9863a.equals(this.f9848a));
                }
                GoogleBillingUtil.this.m26256B(this.f9848a);
                GoogleBillingUtil.this.m26255C(this.f9848a);
                GoogleBillingUtil.this.m26253E(this.f9848a);
                return;
            }
            GoogleBillingUtil.m26224w("初始化失败:onSetupFail:code=" + c3905g.m23779b());
            for (C3023c c3023c2 : GoogleBillingUtil.f9836f) {
                c3023c2.mo25761e(GoogleBillingListenerTag.SETUP, c3905g.m23779b(), c3023c2.f9863a.equals(this.f9848a));
            }
        }

        @Override // com.android.billingclient.api.AbstractC3900e
        /* renamed from: b */
        public void mo23803b() {
            for (C3023c c3023c : GoogleBillingUtil.f9836f) {
                c3023c.m26220b();
            }
            GoogleBillingUtil.m26224w("初始化失败:onBillingServiceDisconnected");
        }
    }

    /* renamed from: com.allinone.callerid.inapputil.GoogleBillingUtil$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/inapputil/GoogleBillingUtil$b.class */
    public class C3017b implements AbstractC3893b {

        /* renamed from: a */
        private String f9850a;

        public C3017b(String str) {
            GoogleBillingUtil.this = r4;
            this.f9850a = str;
        }

        @Override // com.android.billingclient.api.AbstractC3893b
        /* renamed from: a */
        public void mo23847a(C3905g c3905g) {
            if (c3905g.m23779b() == 0) {
                for (C3023c c3023c : GoogleBillingUtil.f9836f) {
                    c3023c.mo25763a(c3023c.f9863a.equals(this.f9850a));
                }
                return;
            }
            for (C3023c c3023c2 : GoogleBillingUtil.f9836f) {
                c3023c2.mo25761e(GoogleBillingListenerTag.AcKnowledgePurchase, c3905g.m23779b(), c3023c2.f9863a.equals(this.f9850a));
            }
            if (!GoogleBillingUtil.f9831a) {
                return;
            }
            GoogleBillingUtil.m26224w("确认购买失败,responseCode:" + c3905g.m23779b() + ",msg:" + c3905g.m23780a());
        }
    }

    /* renamed from: com.allinone.callerid.inapputil.GoogleBillingUtil$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/inapputil/GoogleBillingUtil$c.class */
    public class C3018c implements AbstractC3911i {

        /* renamed from: a */
        private String f9852a;

        public C3018c(String str) {
            GoogleBillingUtil.this = r4;
            this.f9852a = str;
        }

        @Override // com.android.billingclient.api.AbstractC3911i
        /* renamed from: a */
        public void mo23765a(C3905g c3905g, String str) {
            if (c3905g.m23779b() == 0) {
                for (C3023c c3023c : GoogleBillingUtil.f9836f) {
                    c3023c.m26219c(str, c3023c.f9863a.equals(this.f9852a));
                }
                return;
            }
            for (C3023c c3023c2 : GoogleBillingUtil.f9836f) {
                c3023c2.mo25761e(GoogleBillingListenerTag.COMSUME, c3905g.m23779b(), c3023c2.f9863a.equals(this.f9852a));
            }
            if (!GoogleBillingUtil.f9831a) {
                return;
            }
            GoogleBillingUtil.m26224w("消耗失败,responseCode:" + c3905g.m23779b() + ",msg:" + c3905g.m23780a());
        }
    }

    /* renamed from: com.allinone.callerid.inapputil.GoogleBillingUtil$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/inapputil/GoogleBillingUtil$d.class */
    public class C3019d implements AbstractC3915k {

        /* renamed from: a */
        public String f9854a;

        private C3019d() {
            GoogleBillingUtil.this = r4;
        }

        /* synthetic */ C3019d(GoogleBillingUtil googleBillingUtil, C3016a c3016a) {
            this();
        }

        @Override // com.android.billingclient.api.AbstractC3915k
        /* renamed from: a */
        public void mo23760a(C3905g c3905g, List<Purchase> list) {
            if (c3905g.m23779b() != 0 || list == null) {
                if (GoogleBillingUtil.f9831a) {
                    GoogleBillingUtil.m26224w("购买失败,responseCode:" + c3905g.m23779b() + ",msg:" + c3905g.m23780a());
                }
                for (C3023c c3023c : GoogleBillingUtil.f9836f) {
                    c3023c.mo25761e(GoogleBillingListenerTag.PURCHASE, c3905g.m23779b(), c3023c.f9863a.equals(this.f9854a));
                }
                return;
            }
            for (Purchase purchase : list) {
                for (C3023c c3023c2 : GoogleBillingUtil.f9836f) {
                    boolean equals = c3023c2.f9863a.equals(this.f9854a);
                    boolean mo25760f = c3023c2.mo25760f(purchase, equals);
                    if (equals && purchase.m23871b() == 1) {
                        String m26230q = GoogleBillingUtil.this.m26230q(purchase.m23867f());
                        if ("inapp".equals(m26230q)) {
                            if (mo25760f) {
                                GoogleBillingUtil.this.m26234m(this.f9854a, purchase.m23869d());
                            } else if (GoogleBillingUtil.f9838h && !purchase.m23866g()) {
                                GoogleBillingUtil.this.m26238i(this.f9854a, purchase.m23869d());
                            }
                        } else if ("subs".equals(m26230q) && GoogleBillingUtil.f9838h && !purchase.m23866g()) {
                            GoogleBillingUtil.this.m26238i(this.f9854a, purchase.m23869d());
                        }
                    } else if (purchase.m23871b() == 2) {
                        GoogleBillingUtil.m26224w("待处理的订单:" + purchase.m23867f());
                    }
                }
            }
        }
    }

    /* renamed from: com.allinone.callerid.inapputil.GoogleBillingUtil$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/inapputil/GoogleBillingUtil$e.class */
    public class C3020e implements AbstractC3920m {

        /* renamed from: a */
        private String f9856a;

        /* renamed from: b */
        private String f9857b;

        public C3020e(String str, String str2) {
            GoogleBillingUtil.this = r4;
            this.f9856a = str;
            this.f9857b = str2;
        }

        @Override // com.android.billingclient.api.AbstractC3920m
        /* renamed from: a */
        public void mo23751a(C3905g c3905g, List<SkuDetails> list) {
            if (c3905g.m23779b() == 0 && list != null) {
                for (C3023c c3023c : GoogleBillingUtil.f9836f) {
                    c3023c.mo25759g(this.f9856a, list, c3023c.f9863a.equals(this.f9857b));
                }
                return;
            }
            for (C3023c c3023c2 : GoogleBillingUtil.f9836f) {
                c3023c2.mo25761e(GoogleBillingListenerTag.QUERY, c3905g.m23779b(), c3023c2.f9863a.equals(this.f9857b));
            }
            if (!GoogleBillingUtil.f9831a) {
                return;
            }
            GoogleBillingUtil.m26224w("查询失败,responseCode:" + c3905g.m23779b() + ",msg:" + c3905g.m23780a());
        }
    }

    private GoogleBillingUtil() {
    }

    /* renamed from: A */
    private void m26257A(final String str, final String str2) {
        m26232o(str, new Runnable() { // from class: com.allinone.callerid.inapputil.b
            @Override // java.lang.Runnable
            public final void run() {
                GoogleBillingUtil.this.m26225v(str, str2);
            }
        });
    }

    /* renamed from: B */
    public void m26256B(String str) {
        m26257A(str, "inapp");
    }

    /* renamed from: D */
    private List<Purchase> m26254D(String str, String str2) {
        AbstractC3895c abstractC3895c = f9834d;
        if (abstractC3895c == null) {
            return null;
        }
        if (!abstractC3895c.mo23827c()) {
            m26247K(str);
            return null;
        }
        Purchase.C3889a mo23825f = f9834d.mo23825f(str2);
        if (mo23825f == null || mo23825f.m23862c() != 0) {
            return null;
        }
        List<Purchase> m23863b = mo23825f.m23863b();
        if (m23863b != null && !m23863b.isEmpty()) {
            for (Purchase purchase : m23863b) {
                for (C3023c c3023c : f9836f) {
                    boolean equals = c3023c.f9863a.equals(str);
                    boolean m26218h = c3023c.m26218h(str2, purchase, equals);
                    if (equals) {
                        if (purchase.m23871b() != 1) {
                            m26224w("未支付的订单:" + purchase.m23867f());
                        } else if (str2.equals("inapp")) {
                            if (m26218h) {
                                m26234m(str, purchase.m23869d());
                            } else if (f9838h && !purchase.m23866g()) {
                                m26238i(str, purchase.m23869d());
                            }
                        } else if (str2.equals("subs") && f9838h && !purchase.m23866g()) {
                            m26238i(str, purchase.m23869d());
                        }
                    }
                }
            }
        }
        return m23863b;
    }

    /* renamed from: E */
    public List<Purchase> m26253E(String str) {
        return m26254D(str, "inapp");
    }

    /* renamed from: I */
    public static void m26249I(String[] strArr, String[] strArr2) {
        if (strArr != null) {
            f9832b = (String[]) Arrays.copyOf(strArr, strArr.length);
        }
        if (strArr2 != null) {
            f9833c = (String[]) Arrays.copyOf(strArr2, strArr2.length);
        }
    }

    /* renamed from: K */
    private boolean m26247K(String str) {
        AbstractC3895c abstractC3895c = f9834d;
        if (abstractC3895c == null) {
            m26224w("初始化失败:mBillingClient==null");
            return false;
        } else if (abstractC3895c.mo23827c()) {
            return true;
        } else {
            f9834d.mo23823h(new C3016a(str));
            return false;
        }
    }

    /* renamed from: i */
    public void m26238i(String str, String str2) {
        m26237j(str, str2, null);
    }

    /* renamed from: j */
    private void m26237j(String str, String str2, String str3) {
        if (f9834d == null) {
            return;
        }
        f9834d.mo23829a(C3890a.m23852b().m23849b(str2).m23850a(), new C3017b(str));
    }

    /* renamed from: m */
    public void m26234m(String str, String str2) {
        m26233n(str, str2, null);
    }

    /* renamed from: n */
    private void m26233n(String str, String str2, String str3) {
        if (f9834d == null) {
            return;
        }
        f9834d.mo23828b(C3908h.m23771b().m23768b(str2).m23769a(), new C3018c(str));
    }

    /* renamed from: o */
    private void m26232o(String str, Runnable runnable) {
        if (m26247K(str)) {
            runnable.run();
        }
    }

    /* renamed from: p */
    public static GoogleBillingUtil m26231p() {
        return f9839i;
    }

    /* renamed from: r */
    private String m26229r(Activity activity) {
        return activity.getLocalClassName();
    }

    /* renamed from: s */
    public static void m26228s(boolean z) {
        f9831a = z;
    }

    /* renamed from: t */
    public static /* synthetic */ void m26227t(Activity activity, C3905g c3905g, List list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        f9834d.mo23826d(activity, C3902f.m23796e().m23782b((SkuDetails) list.get(0)).m23783a());
    }

    /* renamed from: u */
    public /* synthetic */ void m26225v(String str, String str2) {
        if (f9834d == null) {
            for (C3023c c3023c : f9836f) {
                c3023c.mo25762d(GoogleBillingListenerTag.QUERY, c3023c.f9863a.equals(str));
            }
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (str2.equals("inapp")) {
            Collections.addAll(arrayList, f9832b);
        } else if (str2.equals("subs")) {
            Collections.addAll(arrayList, f9833c);
        }
        if (arrayList.isEmpty()) {
            return;
        }
        C3917l.C3918a m23757c = C3917l.m23757c();
        m23757c.m23753b(arrayList).m23752c(str2);
        f9834d.mo23824g(m23757c.m23754a(), new C3020e(str2, str));
    }

    /* renamed from: w */
    public static void m26224w(String str) {
        if (f9831a) {
            Log.e("GoogleBillingUtil-3.0.3", str);
        }
    }

    /* renamed from: y */
    private void m26222y(final Activity activity, String str, String str2) {
        String m26229r = m26229r(activity);
        if (f9834d == null) {
            for (C3023c c3023c : f9836f) {
                c3023c.mo25762d(GoogleBillingListenerTag.PURCHASE, c3023c.f9863a.equals(m26229r));
            }
        } else if (!m26247K(m26229r)) {
            for (C3023c c3023c2 : f9836f) {
                c3023c2.mo25762d(GoogleBillingListenerTag.PURCHASE, c3023c2.f9863a.equals(m26229r));
            }
        } else {
            C3019d c3019d = this.f9840j;
            c3019d.f9854a = m26229r;
            f9835e.m23840c(c3019d);
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            f9834d.mo23824g(C3917l.m23757c().m23753b(arrayList).m23752c(str2).m23754a(), new AbstractC3920m() { // from class: com.allinone.callerid.inapputil.a
                @Override // com.android.billingclient.api.AbstractC3920m
                /* renamed from: a */
                public final void mo23751a(C3905g c3905g, List list) {
                    GoogleBillingUtil.m26227t(activity, c3905g, list);
                }
            });
        }
    }

    /* renamed from: C */
    public void m26255C(String str) {
        m26257A(str, "subs");
    }

    /* renamed from: F */
    public List<Purchase> m26252F(Activity activity) {
        return m26254D(m26229r(activity), "subs");
    }

    /* renamed from: G */
    public void m26251G(Activity activity) {
        String m26229r = m26229r(activity);
        for (int size = f9836f.size() - 1; size >= 0; size--) {
            C3023c c3023c = f9836f.get(size);
            if (c3023c.f9863a.equals(m26229r)) {
                m26250H(c3023c);
                f9837g.remove(m26229r);
            }
        }
    }

    /* renamed from: H */
    public void m26250H(C3023c c3023c) {
        f9836f.remove(c3023c);
    }

    /* renamed from: J */
    public boolean m26248J(Activity activity) {
        return m26247K(m26229r(activity));
    }

    /* renamed from: k */
    public GoogleBillingUtil m26236k(Activity activity, C3023c c3023c) {
        String m26229r = m26229r(activity);
        c3023c.f9863a = m26229r;
        f9837g.put(m26229r(activity), c3023c);
        for (int size = f9836f.size() - 1; size >= 0; size--) {
            C3023c c3023c2 = f9836f.get(size);
            if (c3023c2.f9863a.equals(m26229r)) {
                f9836f.remove(c3023c2);
            }
        }
        f9836f.add(c3023c);
        return this;
    }

    /* renamed from: l */
    public GoogleBillingUtil m26235l(Activity activity) {
        this.f9840j.f9854a = m26229r(activity);
        if (f9834d == null) {
            synchronized (f9839i) {
                if (f9834d == null) {
                    AbstractC3895c.C3896a m23843e = AbstractC3895c.m23843e(activity);
                    f9835e = m23843e;
                    f9834d = m23843e.m23840c(this.f9840j).m23841b().m23842a();
                } else {
                    f9835e.m23840c(this.f9840j);
                }
            }
        } else {
            f9835e.m23840c(this.f9840j);
        }
        GoogleBillingUtil googleBillingUtil = f9839i;
        synchronized (googleBillingUtil) {
            if (googleBillingUtil.m26248J(activity)) {
                googleBillingUtil.m26256B(m26229r(activity));
                googleBillingUtil.m26255C(m26229r(activity));
                googleBillingUtil.m26253E(m26229r(activity));
            }
        }
        return googleBillingUtil;
    }

    /* renamed from: q */
    public String m26230q(String str) {
        if (Arrays.asList(f9832b).contains(str)) {
            return "inapp";
        }
        if (!Arrays.asList(f9833c).contains(str)) {
            return null;
        }
        return "subs";
    }

    /* renamed from: x */
    public void m26223x(Activity activity) {
        AbstractC3895c.C3896a c3896a = f9835e;
        if (c3896a != null) {
            c3896a.m23840c(null);
        }
        m26251G(activity);
    }

    /* renamed from: z */
    public void m26221z(Activity activity, String str) {
        m26222y(activity, str, "subs");
    }
}
