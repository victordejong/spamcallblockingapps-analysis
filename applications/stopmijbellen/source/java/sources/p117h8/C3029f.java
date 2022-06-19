package p117h8;

import android.support.p012v4.media.AbstractC0081a;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.raizlabs.android.dbflow.config.AbstractC2116c;
import p010a9.C0044a;
import p010a9.C0045b;
import p024b9.AbstractC0744d;
import p034c9.AbstractC0859f;
import p034c9.C0860g;
import p124i4.C3102d;
import p278w8.C4776g;
import p278w8.C4785l;
import p278w8.C4791r;
import p289x8.AbstractC4932a;
import p289x8.C4933b;
/* renamed from: h8.f */
/* loaded from: classes2-dex2jar.jar:h8/f.class */
public final class C3029f extends AbstractC0744d<C3028e> {

    /* renamed from: f */
    public static final C4933b<Integer> f10181f;

    /* renamed from: g */
    public static final AbstractC4932a[] f10182g;

    static {
        C4933b<Integer> c4933b = new C4933b<>(C3028e.class, FacebookAdapter.KEY_ID);
        f10181f = c4933b;
        f10182g = new AbstractC4932a[]{c4933b, new C4933b(C3028e.class, "mItemType"), new C4933b(C3028e.class, "mOrderId"), new C4933b(C3028e.class, "mPackageName"), new C4933b(C3028e.class, "mSku"), new C4933b(C3028e.class, "mPurchaseTime"), new C4933b(C3028e.class, "mPurchaseState"), new C4933b(C3028e.class, "mDeveloperPayload"), new C4933b(C3028e.class, "mToken"), new C4933b(C3028e.class, "mOriginalJson"), new C4933b(C3028e.class, "mSignature"), new C4933b(C3028e.class, "mIsAutoRenewing"), new C4933b(C3028e.class, "sent"), new C4933b(C3028e.class, "isGPlay"), new C4933b(C3028e.class, "inventoryPrice"), new C4933b(C3028e.class, "inventoryPriceCurrencyCode"), new C4933b(C3028e.class, "inventoryType"), new C4933b(C3028e.class, "inventoryTitle"), new C4933b(C3028e.class, "inventoryDescription"), new C4933b(C3028e.class, "inventoryPriceAmountMicros")};
    }

    public C3029f(AbstractC2116c abstractC2116c) {
        super(abstractC2116c);
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: a */
    public boolean mo2691a(Object obj, AbstractC0859f abstractC0859f) {
        C3028e c3028e = (C3028e) obj;
        boolean z = true;
        if (c3028e.f10161b <= 0 || !new C4791r(new C4776g(C3102d.m2646F(new AbstractC4932a[0]), C3028e.class), mo2689c(c3028e)).m479g(abstractC0859f)) {
            z = false;
        }
        return z;
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: b */
    public final Class<C3028e> mo2690b() {
        return C3028e.class;
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: d */
    public void mo2688d(C0860g c0860g, Object obj) {
        C3028e c3028e = (C3028e) obj;
        c3028e.f10161b = c0860g.m7250k(FacebookAdapter.KEY_ID);
        c3028e.f10162c = c0860g.m7247p("mItemType");
        c3028e.f10163d = c0860g.m7247p("mOrderId");
        c3028e.f10164e = c0860g.m7247p("mPackageName");
        c3028e.f10165f = c0860g.m7247p("mSku");
        c3028e.f10166g = c0860g.m7248o("mPurchaseTime");
        c3028e.f10167h = c0860g.m7250k("mPurchaseState");
        c3028e.f10168i = c0860g.m7247p("mDeveloperPayload");
        c3028e.f10169j = c0860g.m7247p("mToken");
        c3028e.f10170k = c0860g.m7247p("mOriginalJson");
        c3028e.f10171l = c0860g.m7247p("mSignature");
        int columnIndex = c0860g.getColumnIndex("mIsAutoRenewing");
        if (columnIndex == -1 || c0860g.isNull(columnIndex)) {
            c3028e.f10172m = false;
        } else {
            c3028e.f10172m = c0860g.m7251d(columnIndex);
        }
        int columnIndex2 = c0860g.getColumnIndex("sent");
        if (columnIndex2 == -1 || c0860g.isNull(columnIndex2)) {
            c3028e.f10173n = false;
        } else {
            c3028e.f10173n = c0860g.m7251d(columnIndex2);
        }
        int columnIndex3 = c0860g.getColumnIndex("isGPlay");
        if (columnIndex3 == -1 || c0860g.isNull(columnIndex3)) {
            c3028e.f10174o = false;
        } else {
            c3028e.f10174o = c0860g.m7251d(columnIndex3);
        }
        c3028e.f10175p = c0860g.m7247p("inventoryPrice");
        c3028e.f10176q = c0860g.m7247p("inventoryPriceCurrencyCode");
        c3028e.f10177r = c0860g.m7247p("inventoryType");
        c3028e.f10178s = c0860g.m7247p("inventoryTitle");
        c3028e.f10179t = c0860g.m7247p("inventoryDescription");
        c3028e.f10180u = c0860g.m7247p("inventoryPriceAmountMicros");
    }

    @Override // p024b9.AbstractC0742b
    /* renamed from: e */
    public Object mo2687e() {
        return new C3028e();
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: g */
    public void mo2685g(AbstractC0081a abstractC0081a, C3028e c3028e) {
        C3028e c3028e2 = c3028e;
        abstractC0081a.mo7274g(1, c3028e2.f10161b);
        mo2686f(abstractC0081a, c3028e2, 1);
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: h */
    public void mo2684h(AbstractC0081a abstractC0081a, Object obj) {
        C3028e c3028e = (C3028e) obj;
        abstractC0081a.mo7274g(1, c3028e.f10161b);
        abstractC0081a.m8764k(2, c3028e.f10162c);
        abstractC0081a.m8764k(3, c3028e.f10163d);
        abstractC0081a.m8764k(4, c3028e.f10164e);
        abstractC0081a.m8764k(5, c3028e.f10165f);
        abstractC0081a.mo7274g(6, c3028e.f10166g);
        abstractC0081a.mo7274g(7, c3028e.f10167h);
        abstractC0081a.m8764k(8, c3028e.f10168i);
        abstractC0081a.m8764k(9, c3028e.f10169j);
        abstractC0081a.m8764k(10, c3028e.f10170k);
        abstractC0081a.m8764k(11, c3028e.f10171l);
        abstractC0081a.mo7274g(12, (c3028e.f10172m ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(13, (c3028e.f10173n ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(14, (c3028e.f10174o ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.m8764k(15, c3028e.f10175p);
        abstractC0081a.m8764k(16, c3028e.f10176q);
        abstractC0081a.m8764k(17, c3028e.f10177r);
        abstractC0081a.m8764k(18, c3028e.f10178s);
        abstractC0081a.m8764k(19, c3028e.f10179t);
        abstractC0081a.m8764k(20, c3028e.f10180u);
        abstractC0081a.mo7274g(21, c3028e.f10161b);
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: i */
    public final C0045b<C3028e> mo2683i() {
        return new C0044a();
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: j */
    public Number mo2682j(C3028e c3028e) {
        return Integer.valueOf(c3028e.f10161b);
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: k */
    public final String mo2681k() {
        return "INSERT INTO `Billing`(`id`,`mItemType`,`mOrderId`,`mPackageName`,`mSku`,`mPurchaseTime`,`mPurchaseState`,`mDeveloperPayload`,`mToken`,`mOriginalJson`,`mSignature`,`mIsAutoRenewing`,`sent`,`isGPlay`,`inventoryPrice`,`inventoryPriceCurrencyCode`,`inventoryType`,`inventoryTitle`,`inventoryDescription`,`inventoryPriceAmountMicros`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: l */
    public final String mo2680l() {
        return "CREATE TABLE IF NOT EXISTS `Billing`(`id` INTEGER PRIMARY KEY AUTOINCREMENT, `mItemType` TEXT, `mOrderId` TEXT, `mPackageName` TEXT, `mSku` TEXT, `mPurchaseTime` INTEGER, `mPurchaseState` INTEGER, `mDeveloperPayload` TEXT, `mToken` TEXT, `mOriginalJson` TEXT, `mSignature` TEXT, `mIsAutoRenewing` INTEGER, `sent` INTEGER, `isGPlay` INTEGER, `inventoryPrice` TEXT, `inventoryPriceCurrencyCode` TEXT, `inventoryType` TEXT, `inventoryTitle` TEXT, `inventoryDescription` TEXT, `inventoryPriceAmountMicros` TEXT)";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: m */
    public final String mo2679m() {
        return "INSERT INTO `Billing`(`mItemType`,`mOrderId`,`mPackageName`,`mSku`,`mPurchaseTime`,`mPurchaseState`,`mDeveloperPayload`,`mToken`,`mOriginalJson`,`mSignature`,`mIsAutoRenewing`,`sent`,`isGPlay`,`inventoryPrice`,`inventoryPriceCurrencyCode`,`inventoryType`,`inventoryTitle`,`inventoryDescription`,`inventoryPriceAmountMicros`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: n */
    public final String mo2678n() {
        return "`Billing`";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: p */
    public final String mo2677p() {
        return "UPDATE `Billing` SET `id`=?,`mItemType`=?,`mOrderId`=?,`mPackageName`=?,`mSku`=?,`mPurchaseTime`=?,`mPurchaseState`=?,`mDeveloperPayload`=?,`mToken`=?,`mOriginalJson`=?,`mSignature`=?,`mIsAutoRenewing`=?,`sent`=?,`isGPlay`=?,`inventoryPrice`=?,`inventoryPriceCurrencyCode`=?,`inventoryType`=?,`inventoryTitle`=?,`inventoryDescription`=?,`inventoryPriceAmountMicros`=? WHERE `id`=?";
    }

    @Override // p024b9.AbstractC0744d
    /* renamed from: s */
    public void mo2676s(C3028e c3028e, Number number) {
        c3028e.f10161b = number.intValue();
    }

    /* renamed from: t */
    public final void mo2686f(AbstractC0081a abstractC0081a, C3028e c3028e, int i) {
        abstractC0081a.m8764k(i + 1, c3028e.f10162c);
        abstractC0081a.m8764k(i + 2, c3028e.f10163d);
        abstractC0081a.m8764k(i + 3, c3028e.f10164e);
        abstractC0081a.m8764k(i + 4, c3028e.f10165f);
        abstractC0081a.mo7274g(i + 5, c3028e.f10166g);
        abstractC0081a.mo7274g(i + 6, c3028e.f10167h);
        abstractC0081a.m8764k(i + 7, c3028e.f10168i);
        abstractC0081a.m8764k(i + 8, c3028e.f10169j);
        abstractC0081a.m8764k(i + 9, c3028e.f10170k);
        abstractC0081a.m8764k(i + 10, c3028e.f10171l);
        abstractC0081a.mo7274g(i + 11, (c3028e.f10172m ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(i + 12, (c3028e.f10173n ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.mo7274g(i + 13, (c3028e.f10174o ? 1 : null) == 1 ? 1L : 0L);
        abstractC0081a.m8764k(i + 14, c3028e.f10175p);
        abstractC0081a.m8764k(i + 15, c3028e.f10176q);
        abstractC0081a.m8764k(i + 16, c3028e.f10177r);
        abstractC0081a.m8764k(i + 17, c3028e.f10178s);
        abstractC0081a.m8764k(i + 18, c3028e.f10179t);
        abstractC0081a.m8764k(i + 19, c3028e.f10180u);
    }

    /* renamed from: u */
    public final C4785l mo2689c(C3028e c3028e) {
        C4785l c4785l = new C4785l();
        c4785l.m467k("AND", f10181f.m239a(Integer.valueOf(c3028e.f10161b)));
        return c4785l;
    }
}
