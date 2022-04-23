package com.callerid.block.inapputil;

import android.app.Activity;
import android.util.Log;
import com.android.billingclient.api.AbstractC0624c;
import com.android.billingclient.api.AbstractC0643k;
import com.android.billingclient.api.C0619a;
import com.android.billingclient.api.C0630f;
import com.android.billingclient.api.C0633g;
import com.android.billingclient.api.C0636h;
import com.android.billingclient.api.C0645l;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.SkuDetails;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/callerid/block/inapputil/GoogleBillingUtil.class */
public class GoogleBillingUtil {

    /* renamed from: b */
    private static boolean f4524b = false;

    /* renamed from: e */
    private static AbstractC0624c f4527e;

    /* renamed from: f */
    private static AbstractC0624c.C0625a f4528f;

    /* renamed from: a */
    private d f4533a = new d(this, (a) null);

    /* renamed from: c */
    private static String[] f4525c = new String[0];

    /* renamed from: d */
    private static String[] f4526d = new String[0];

    /* renamed from: g */
    private static List<C1073c> f4529g = new ArrayList();

    /* renamed from: h */
    private static Map<String, C1073c> f4530h = new HashMap();

    /* renamed from: i */
    private static boolean f4531i = true;

    /* renamed from: j */
    private static final GoogleBillingUtil f4532j = new GoogleBillingUtil();

    /* loaded from: classes-dex2jar.jar:com/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag.class */
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

    private GoogleBillingUtil() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A */
    public void m10262A(String str) {
        m10227z(str, "inapp");
    }

    /* renamed from: C */
    private List<Purchase> m10260C(String str, String str2) {
        AbstractC0624c cVar = f4527e;
        if (cVar == null) {
            return null;
        }
        if (!cVar.m11522c()) {
            m10253J(str);
            return null;
        }
        Purchase.C0618a f = f4527e.m11519f(str2);
        if (f == null || f.m11543c() != 0) {
            return null;
        }
        List<Purchase> b = f.m11544b();
        if (b != null && !b.isEmpty()) {
            for (Purchase purchase : b) {
                for (C1073c cVar2 : f4529g) {
                    boolean equals = cVar2.f4544a.equals(str);
                    boolean h = cVar2.m10219h(str2, purchase, equals);
                    if (equals) {
                        if (purchase.m11551b() != 1) {
                            m10231v("未支付的订单:" + purchase.m11548e());
                        } else if (str2.equals("inapp")) {
                            if (h) {
                                m10240m(str, purchase.m11550c());
                            } else if (f4531i && !purchase.m11547f()) {
                                m10244i(str, purchase.m11550c());
                            }
                        } else if (str2.equals("subs") && f4531i && !purchase.m11547f()) {
                            m10244i(str, purchase.m11550c());
                        }
                    }
                }
            }
        }
        return b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D */
    public List<Purchase> m10259D(String str) {
        return m10260C(str, "inapp");
    }

    /* renamed from: H */
    public static void m10255H(String[] strArr, String[] strArr2) {
        if (strArr != null) {
            f4525c = (String[]) Arrays.copyOf(strArr, strArr.length);
        }
        if (strArr2 != null) {
            f4526d = (String[]) Arrays.copyOf(strArr2, strArr2.length);
        }
    }

    /* renamed from: J */
    private boolean m10253J(String str) {
        AbstractC0624c cVar = f4527e;
        if (cVar == null) {
            m10231v("初始化失败:mBillingClient==null");
            return false;
        } else if (cVar.m11522c()) {
            return true;
        } else {
            f4527e.m11517h(new a(this, str));
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public void m10244i(String str, String str2) {
        m10243j(str, str2, null);
    }

    /* renamed from: j */
    private void m10243j(String str, String str2, String str3) {
        if (f4527e != null) {
            C0619a.C0620a b = C0619a.m11533b();
            b.m11530b(str2);
            f4527e.m11524a(b.m11531a(), new b(this, str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public void m10240m(String str, String str2) {
        m10239n(str, str2, null);
    }

    /* renamed from: n */
    private void m10239n(String str, String str2, String str3) {
        if (f4527e != null) {
            C0636h.C0637a b = C0636h.m11480b();
            b.m11477b(str2);
            f4527e.m11523b(b.m11478a(), new c(this, str));
        }
    }

    /* renamed from: o */
    private void m10238o(String str, Runnable runnable) {
        if (m10253J(str)) {
            runnable.run();
        }
    }

    /* renamed from: p */
    public static GoogleBillingUtil m10237p() {
        return f4532j;
    }

    /* renamed from: r */
    private String m10235r(Activity activity) {
        return activity.getLocalClassName();
    }

    /* renamed from: s */
    static /* synthetic */ void m10234s(Activity activity, C0633g gVar, List list) {
        if (list != null && !list.isEmpty()) {
            C0630f.C0631a e = C0630f.m11505e();
            e.m11491b((SkuDetails) list.get(0));
            f4527e.m11521d(activity, e.m11492a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t */
    public /* synthetic */ void m10232u(String str, String str2) {
        if (f4527e == null) {
            for (C1073c cVar : f4529g) {
                cVar.m10223d(GoogleBillingListenerTag.QUERY, cVar.f4544a.equals(str));
            }
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (str2.equals("inapp")) {
            Collections.addAll(arrayList, f4525c);
        } else if (str2.equals("subs")) {
            Collections.addAll(arrayList, f4526d);
        }
        if (!arrayList.isEmpty()) {
            C0645l.C0646a c = C0645l.m11466c();
            c.m11462b(arrayList);
            c.m11461c(str2);
            f4527e.m11518g(c.m11463a(), new e(this, str2, str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v */
    public static void m10231v(String str) {
        if (f4524b) {
            Log.e("GoogleBillingUtil-3.0.3", str);
        }
    }

    /* renamed from: x */
    private void m10229x(Activity activity, String str, String str2) {
        String r = m10235r(activity);
        if (f4527e == null) {
            for (C1073c cVar : f4529g) {
                cVar.m10223d(GoogleBillingListenerTag.PURCHASE, cVar.f4544a.equals(r));
            }
        } else if (m10253J(r)) {
            AbstractC0643k kVar = this.f4533a;
            ((d) kVar).a = r;
            f4528f.m11514c(kVar);
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            C0645l.C0646a c = C0645l.m11466c();
            c.m11462b(arrayList);
            c.m11461c(str2);
            f4527e.m11518g(c.m11463a(), new b(activity));
        } else {
            for (C1073c cVar2 : f4529g) {
                cVar2.m10223d(GoogleBillingListenerTag.PURCHASE, cVar2.f4544a.equals(r));
            }
        }
    }

    /* renamed from: z */
    private void m10227z(final String str, final String str2) {
        m10238o(str, new Runnable() { // from class: com.callerid.block.inapputil.a
            @Override // java.lang.Runnable
            public final void run() {
                GoogleBillingUtil.this.m10232u(str, str2);
            }
        });
    }

    /* renamed from: B */
    public void m10261B(String str) {
        m10227z(str, "subs");
    }

    /* renamed from: E */
    public List<Purchase> m10258E(Activity activity) {
        return m10260C(m10235r(activity), "subs");
    }

    /* renamed from: F */
    public void m10257F(Activity activity) {
        String r = m10235r(activity);
        for (int size = f4529g.size() - 1; size >= 0; size--) {
            C1073c cVar = f4529g.get(size);
            if (cVar.f4544a.equals(r)) {
                m10256G(cVar);
                f4530h.remove(r);
            }
        }
    }

    /* renamed from: G */
    public void m10256G(C1073c cVar) {
        f4529g.remove(cVar);
    }

    /* renamed from: I */
    public boolean m10254I(Activity activity) {
        return m10253J(m10235r(activity));
    }

    /* renamed from: k */
    public GoogleBillingUtil m10242k(Activity activity, C1073c cVar) {
        String r = m10235r(activity);
        cVar.f4544a = r;
        f4530h.put(m10235r(activity), cVar);
        for (int size = f4529g.size() - 1; size >= 0; size--) {
            C1073c cVar2 = f4529g.get(size);
            if (cVar2.f4544a.equals(r)) {
                f4529g.remove(cVar2);
            }
        }
        f4529g.add(cVar);
        return this;
    }

    /* renamed from: l */
    public GoogleBillingUtil m10241l(Activity activity) {
        this.f4533a.a = m10235r(activity);
        if (f4527e == null) {
            synchronized (f4532j) {
                if (f4527e == null) {
                    AbstractC0624c.C0625a e = AbstractC0624c.m11520e(activity);
                    f4528f = e;
                    e.m11514c(this.f4533a);
                    e.m11515b();
                    f4527e = e.m11516a();
                } else {
                    f4528f.m11514c(this.f4533a);
                }
            }
        } else {
            f4528f.m11514c(this.f4533a);
        }
        GoogleBillingUtil googleBillingUtil = f4532j;
        synchronized (googleBillingUtil) {
            if (googleBillingUtil.m10254I(activity)) {
                googleBillingUtil.m10262A(m10235r(activity));
                googleBillingUtil.m10261B(m10235r(activity));
                googleBillingUtil.m10259D(m10235r(activity));
            }
        }
        return googleBillingUtil;
    }

    /* renamed from: q */
    public String m10236q(String str) {
        if (Arrays.asList(f4525c).contains(str)) {
            return "inapp";
        }
        if (Arrays.asList(f4526d).contains(str)) {
            return "subs";
        }
        return null;
    }

    /* renamed from: w */
    public void m10230w(Activity activity) {
        AbstractC0624c.C0625a aVar = f4528f;
        if (aVar != null) {
            aVar.m11514c(null);
        }
        m10257F(activity);
    }

    /* renamed from: y */
    public void m10228y(Activity activity, String str) {
        m10229x(activity, str, "subs");
    }
}
