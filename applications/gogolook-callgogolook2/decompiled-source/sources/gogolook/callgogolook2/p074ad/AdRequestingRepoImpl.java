package gogolook.callgogolook2.p074ad;

import android.content.Context;
import android.util.ArrayMap;
import androidx.lifecycle.LiveData;
import gogolook.callgogolook2.p074ad.AdRequestState;
import java.util.Set;
import kotlin.Metadata;
import p081h.p160h.p161a.EnumC6184a;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p081h.p160h.p161a.p169o.C6262a;
import p459j.p460a.p582w0.p590x4.C14247d;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\n\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u000e\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0016J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J&\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00020\u00102\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bH\u0016J\u0010\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010 \u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u001a\u0010!\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\"\u001a\u0004\u0018\u00010\bH\u0016J\u0010\u0010#\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u0014H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R)\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\n¨\u0006&"}, m815d2 = {"Lgogolook/callgogolook2/ad/AdRequestingRepoImpl;", "Lgogolook/callgogolook2/ad/AdRequestingRepo;", "adDataSource", "Lgogolook/callgogolook2/ad/AdDataSource;", "(Lgogolook/callgogolook2/ad/AdDataSource;)V", "adObjectMap", "Landroid/util/ArrayMap;", "", "Lcom/gogolook/adsdk/adobject/BaseAdObject;", "getAdObjectMap", "()Landroid/util/ArrayMap;", "adObjectMap$delegate", "Lkotlin/Lazy;", "destroyAdObject", "", "adUnit", "Lgogolook/callgogolook2/ad/AdUnit;", "getAdObject", "getAdRequestState", "Landroidx/lifecycle/LiveData;", "Lgogolook/callgogolook2/ad/AdRequestState;", "isAdNotRequesting", "", "requestAd", "context", "Landroid/content/Context;", "needToRequestAdSourceSet", "", "Lcom/gogolook/adsdk/Definition$AdSource;", "startAdTracking", "stopAdTracking", "stopRequest", "trackAdClick", "trackAdContent", "adObject", "trackAdImpression", "trackAdRequestState", "adRequestState", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: gogolook.callgogolook2.ad.AdRequestingRepoImpl */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AdRequestingRepoImpl.class */
public final class AdRequestingRepoImpl implements AdRequestingRepo {
    public static final /* synthetic */ AbstractC14906i[] $$delegatedProperties;
    public final AdDataSource adDataSource;
    public final AbstractC14974f adObjectMap$delegate = C14975g.m662a(AdRequestingRepoImpl$adObjectMap$2.INSTANCE);

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(AdRequestingRepoImpl.class), "adObjectMap", "getAdObjectMap()Landroid/util/ArrayMap;");
        C15131a0.m412a(sVar);
        $$delegatedProperties = new AbstractC14906i[]{sVar};
    }

    public AdRequestingRepoImpl(AdDataSource adDataSource) {
        C15149k.m377b(adDataSource, "adDataSource");
        this.adDataSource = adDataSource;
    }

    @Override // gogolook.callgogolook2.p074ad.AdRequestingRepo
    /* renamed from: a */
    public LiveData<AdRequestState> mo28844a() {
        return this.adDataSource.mo28870a();
    }

    @Override // gogolook.callgogolook2.p074ad.AdRequestingRepo
    /* renamed from: a */
    public void mo28843a(Context context, AdUnit adUnit, Set<? extends EnumC6184a> set) {
        C15149k.m377b(context, "context");
        C15149k.m377b(adUnit, "adUnit");
        C15149k.m377b(set, "needToRequestAdSourceSet");
        if (AdStatusController.m28827c().m28830a(adUnit) && m28841a(adUnit)) {
            this.adDataSource.mo28869a(context, adUnit, set);
        }
    }

    @Override // gogolook.callgogolook2.p074ad.AdRequestingRepo
    /* renamed from: a */
    public void mo28842a(AdRequestState adRequestState) {
        C15149k.m377b(adRequestState, "adRequestState");
        if (adRequestState instanceof AdRequestState.Start) {
            C14247d.f31867v.m2022e(adRequestState.m28847a());
        } else if (adRequestState instanceof AdRequestState.Requesting) {
            C14247d.f31867v.m2037a(adRequestState.m28847a(), C6262a.EnumC6267e.AD_REQUESTING.m23446a());
        } else if (adRequestState instanceof AdRequestState.End) {
            C14247d.f31867v.m2037a(adRequestState.m28847a(), ((AdRequestState.End) adRequestState).m28846b());
        }
    }

    @Override // gogolook.callgogolook2.p074ad.AdRequestingRepo
    /* renamed from: a */
    public void mo28840a(AdUnit adUnit, AbstractC6207d dVar) {
        C15149k.m377b(adUnit, "adUnit");
        if (dVar != null) {
            C14247d.f31867v.m2038a(adUnit, dVar);
        }
    }

    /* renamed from: a */
    public boolean m28841a(AdUnit adUnit) {
        C15149k.m377b(adUnit, "adUnit");
        return !this.adDataSource.mo28867a(adUnit);
    }

    /* renamed from: b */
    public final ArrayMap<String, AbstractC6207d> m28839b() {
        AbstractC14974f fVar = this.adObjectMap$delegate;
        AbstractC14906i iVar = $$delegatedProperties[0];
        return (ArrayMap) fVar.getValue();
    }

    @Override // gogolook.callgogolook2.p074ad.AdRequestingRepo
    /* renamed from: b */
    public AbstractC6207d mo28838b(AdUnit adUnit) {
        C15149k.m377b(adUnit, "adUnit");
        AbstractC6207d b = this.adDataSource.mo28865b(adUnit);
        m28839b().put(adUnit.m28821a(), b);
        return b;
    }

    @Override // gogolook.callgogolook2.p074ad.AdRequestingRepo
    /* renamed from: c */
    public void mo28837c(AdUnit adUnit) {
        C15149k.m377b(adUnit, "adUnit");
        m28832h(adUnit);
        AbstractC6207d remove = m28839b().remove(adUnit.m28821a());
        if (remove != null) {
            remove.mo23568b();
        }
    }

    @Override // gogolook.callgogolook2.p074ad.AdRequestingRepo
    /* renamed from: d */
    public void mo28836d(AdUnit adUnit) {
        C15149k.m377b(adUnit, "adUnit");
        C14247d.f31867v.m2031b(adUnit);
    }

    @Override // gogolook.callgogolook2.p074ad.AdRequestingRepo
    /* renamed from: e */
    public void mo28835e(AdUnit adUnit) {
        C15149k.m377b(adUnit, "adUnit");
        C14247d.f31867v.m2025d(adUnit);
    }

    @Override // gogolook.callgogolook2.p074ad.AdRequestingRepo
    /* renamed from: f */
    public void mo28834f(AdUnit adUnit) {
        C15149k.m377b(adUnit, "adUnit");
        C14247d.f31867v.m2040a(adUnit);
        mo28840a(adUnit, m28839b().get(adUnit.m28821a()));
    }

    @Override // gogolook.callgogolook2.p074ad.AdRequestingRepo
    /* renamed from: g */
    public void mo28833g(AdUnit adUnit) {
        C15149k.m377b(adUnit, "adUnit");
        C14247d.f31867v.m2028c(adUnit);
    }

    /* renamed from: h */
    public void m28832h(AdUnit adUnit) {
        C15149k.m377b(adUnit, "adUnit");
        this.adDataSource.mo28864c(adUnit);
    }
}
