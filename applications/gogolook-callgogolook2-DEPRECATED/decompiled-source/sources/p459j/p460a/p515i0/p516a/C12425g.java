package p459j.p460a.p515i0.p516a;

import android.content.Context;
import android.util.ArrayMap;
import android.view.ViewGroup;
import gogolook.callgogolook2.p074ad.AdRendererUtils;
import gogolook.callgogolook2.p074ad.AdStatusController;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.p074ad.AdUtils;
import java.util.List;
import kotlin.Metadata;
import p081h.p160h.p161a.C6192e;
import p081h.p160h.p161a.EnumC6184a;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p081h.p160h.p161a.p163i.C6214a;
import p081h.p160h.p161a.p167m.AbstractC6258b;
import p081h.p160h.p161a.p168n.C6260a;
import p081h.p160h.p161a.p169o.C6262a;
import p081h.p160h.p161a.p170p.C6268a;
import p459j.p460a.p518j.AbstractC12475b;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14247d;
import p459j.p460a.p582w0.p590x4.C14261f;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0006\u0010\u0013\u001a\u00020\u0010J\u0006\u0010\u0014\u001a\u00020\u0010J\u0010\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0018\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0010\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u001a\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0002R)\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001e"}, m815d2 = {"Lgogolook/callgogolook2/offline/offlinedb/OfflineDbAdPresenter;", "Lgogolook/callgogolook2/offline/offlinedb/OfflineDbAdContract$Presenter;", "contextInterface", "Lgogolook/callgogolook2/app/ContextInterface;", "(Lgogolook/callgogolook2/app/ContextInterface;)V", "adObjectMap", "Landroid/util/ArrayMap;", "", "Lcom/gogolook/adsdk/adobject/BaseAdObject;", "getAdObjectMap", "()Landroid/util/ArrayMap;", "adObjectMap$delegate", "Lkotlin/Lazy;", "expandAdVertically", "", "destroyAd", "", "adUnit", "Lgogolook/callgogolook2/ad/AdUnit;", "disableAdExpandVertically", "enableAdExpandVertically", "loadAd", "loadAndShowAd", "container", "Landroid/view/ViewGroup;", "showAd", "startAdTracking", "stopAdTracking", "trackAdContent", "tryToLoadAndShowAd", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.i0.a.g */
/* loaded from: classes3-dex2jar.jar:j/a/i0/a/g.class */
public final class C12425g implements AbstractC12424f {

    /* renamed from: d */
    public static final /* synthetic */ AbstractC14906i[] f28004d;

    /* renamed from: a */
    public final AbstractC14974f f28005a = C14975g.m662a(C12426a.f28008a);

    /* renamed from: b */
    public boolean f28006b = true;

    /* renamed from: c */
    public final AbstractC12475b f28007c;

    /* renamed from: j.a.i0.a.g$a */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/g$a.class */
    public static final class C12426a extends AbstractC15150l implements AbstractC15107a<ArrayMap<String, AbstractC6207d>> {

        /* renamed from: a */
        public static final C12426a f28008a = new C12426a();

        public C12426a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final ArrayMap<String, AbstractC6207d> invoke() {
            return new ArrayMap<>();
        }
    }

    /* renamed from: j.a.i0.a.g$b */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/g$b.class */
    public static final class C12427b implements AbstractC6207d.AbstractC6208a {

        /* renamed from: a */
        public final /* synthetic */ AdUnit f28009a;

        public C12427b(C12425g gVar, AdUnit adUnit, ViewGroup viewGroup) {
            this.f28009a = adUnit;
        }

        @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
        /* renamed from: a */
        public void mo5002a() {
            C14247d.f31867v.m2028c(this.f28009a);
        }

        @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
        public void onAdImpression() {
            C14247d.f31867v.m2025d(this.f28009a);
        }
    }

    /* renamed from: j.a.i0.a.g$c */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/g$c.class */
    public static final class C12428c implements AbstractC6258b {

        /* renamed from: b */
        public final /* synthetic */ AdUnit f28011b;

        /* renamed from: c */
        public final /* synthetic */ ViewGroup f28012c;

        public C12428c(AdUnit adUnit, ViewGroup viewGroup) {
            this.f28011b = adUnit;
            this.f28012c = viewGroup;
        }

        @Override // p081h.p160h.p161a.p167m.AbstractC6258b
        /* renamed from: a */
        public void mo5004a(String str) {
            C15149k.m377b(str, "adUnitName");
            C14261f.m1975a(str, AdUtils.m28811a(str));
            List<C6260a> a = C6268a.m23442a(str);
            if (a != null) {
                C14261f.m1972a(a);
            }
            if (C6214a.m23563c(this.f28011b.m28821a())) {
                C14247d.f31867v.m2033a(str, C6262a.EnumC6267e.AD_FILL.m23446a());
                ViewGroup viewGroup = this.f28012c;
                if (viewGroup != null) {
                    C12425g.this.m6192b(this.f28011b, viewGroup);
                    return;
                }
                return;
            }
            C14247d.f31867v.m2033a(str, C6192e.f15373p.m23592a(str).m23605b());
        }

        @Override // p081h.p160h.p161a.p167m.AbstractC6258b
        /* renamed from: b */
        public void mo5003b(String str) {
            C15149k.m377b(str, "adUnitName");
            C14247d.f31867v.m2034a(str);
            C14247d.f31867v.m2033a(str, C6262a.EnumC6267e.AD_REQUESTING.m23446a());
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C12425g.class), "adObjectMap", "getAdObjectMap()Landroid/util/ArrayMap;");
        C15131a0.m412a(sVar);
        f28004d = new AbstractC14906i[]{sVar};
    }

    public C12425g(AbstractC12475b bVar) {
        C15149k.m377b(bVar, "contextInterface");
        this.f28007c = bVar;
    }

    /* renamed from: a */
    public final void m6198a() {
        this.f28006b = false;
    }

    /* renamed from: a */
    public void m6197a(AdUnit adUnit) {
        C15149k.m377b(adUnit, "adUnit");
        C6192e.f15373p.m23592a(adUnit.m28821a()).m23594h();
        AbstractC6207d remove = m6191c().remove(adUnit.m28821a());
        if (remove != null) {
            remove.mo23568b();
        }
    }

    /* renamed from: a */
    public void m6196a(AdUnit adUnit, ViewGroup viewGroup) {
        C15149k.m377b(adUnit, "adUnit");
        C15149k.m377b(viewGroup, "container");
        m6189c(adUnit, viewGroup);
    }

    /* renamed from: b */
    public final void m6194b() {
        this.f28006b = true;
    }

    /* renamed from: b */
    public void m6193b(AdUnit adUnit) {
        C15149k.m377b(adUnit, "adUnit");
        m6189c(adUnit, null);
    }

    /* renamed from: b */
    public final void m6192b(AdUnit adUnit, ViewGroup viewGroup) {
        viewGroup.setVisibility(0);
        m6191c().put(adUnit.m28821a(), C6214a.m23564b(adUnit.m28821a()));
        AbstractC6207d dVar = m6191c().get(adUnit.m28821a());
        if (dVar != null) {
            C14247d.C14259l lVar = C14247d.f31867v;
            C15149k.m383a((Object) dVar, "it");
            lVar.m2038a(adUnit, dVar);
            dVar.mo23569a((AbstractC6207d.AbstractC6208a) new C12427b(this, adUnit, viewGroup));
            Context e = this.f28007c.mo6072e();
            if (e == null) {
                e = viewGroup.getContext();
            }
            dVar.mo23572a(e, viewGroup);
        }
        if (this.f28006b) {
            AdRendererUtils.m28850a(viewGroup, C14217x3.m2201a(240.0f), 700L);
            int a = C14217x3.m2201a(4.0f);
            int a2 = C14217x3.m2201a(8.0f);
            viewGroup.setPadding(a2, a, a2, a);
        }
    }

    /* renamed from: c */
    public final ArrayMap<String, AbstractC6207d> m6191c() {
        AbstractC14974f fVar = this.f28005a;
        AbstractC14906i iVar = f28004d[0];
        return (ArrayMap) fVar.getValue();
    }

    /* renamed from: c */
    public void m6190c(AdUnit adUnit) {
        C15149k.m377b(adUnit, "adUnit");
        C14247d.f31867v.m2040a(adUnit);
        m6187e(adUnit);
    }

    /* renamed from: c */
    public final void m6189c(AdUnit adUnit, ViewGroup viewGroup) {
        if (AdStatusController.m28827c().m28830a(adUnit)) {
            if ((viewGroup != null ? viewGroup.getChildCount() : 0) <= 0) {
                if (C6214a.m23563c(adUnit.m28821a())) {
                    C14247d.f31867v.m2037a(adUnit, C6262a.EnumC6267e.AD_EXIST.m23446a());
                    if (viewGroup != null) {
                        m6192b(adUnit, viewGroup);
                        return;
                    }
                    return;
                }
                C6192e a = C6192e.f15373p.m23592a(adUnit.m28821a());
                a.m23606a(AdUtils.m28803f());
                a.m23617a(EnumC6184a.AOTTER_TREK, false);
                a.m23617a(EnumC6184a.NATIVE, true);
                a.m23617a(EnumC6184a.BANNER, false);
                a.m23608a(new C12428c(adUnit, viewGroup));
                Context e = this.f28007c.mo6072e();
                if (e == null) {
                    e = viewGroup != null ? viewGroup.getContext() : null;
                }
                a.m23619a(e);
            }
        }
    }

    /* renamed from: d */
    public void m6188d(AdUnit adUnit) {
        C15149k.m377b(adUnit, "adUnit");
        C14247d.f31867v.m2031b(adUnit);
    }

    /* renamed from: e */
    public final void m6187e(AdUnit adUnit) {
        AbstractC6207d dVar = m6191c().get(adUnit.m28821a());
        if (dVar != null) {
            C14247d.C14259l lVar = C14247d.f31867v;
            C15149k.m383a((Object) dVar, "it");
            lVar.m2038a(adUnit, dVar);
        }
    }
}
