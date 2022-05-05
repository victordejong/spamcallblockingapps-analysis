package gogolook.callgogolook2.p074ad;

import android.content.Context;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import gogolook.callgogolook2.p074ad.AdRequestState;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import p081h.p160h.p161a.C6192e;
import p081h.p160h.p161a.EnumC6184a;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p081h.p160h.p161a.p163i.C6214a;
import p081h.p160h.p161a.p167m.AbstractC6258b;
import p081h.p160h.p161a.p168n.C6260a;
import p081h.p160h.p161a.p169o.C6262a;
import p081h.p160h.p161a.p170p.C6268a;
import p459j.p460a.p582w0.p590x4.C14261f;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J&\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0015\u001a\u00020\u00162\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001eH\u0016J\u0010\u0010 \u001a\u00020\u001a2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016R!\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0010\u0010\u0002\u001a\u0004\b\u0011\u0010\u0012¨\u0006!"}, m815d2 = {"Lgogolook/callgogolook2/ad/AdDataSourceImpl;", "Lgogolook/callgogolook2/ad/AdDataSource;", "()V", "_adRequestState", "Landroidx/lifecycle/MutableLiveData;", "Lgogolook/callgogolook2/ad/AdRequestState;", "get_adRequestState", "()Landroidx/lifecycle/MutableLiveData;", "_adRequestState$delegate", "Lkotlin/Lazy;", "adRequestState", "Landroidx/lifecycle/LiveData;", "getAdRequestState", "()Landroidx/lifecycle/LiveData;", "listener", "Lcom/gogolook/adsdk/listener/AdRequestStatusListener;", "listener$annotations", "getListener", "()Lcom/gogolook/adsdk/listener/AdRequestStatusListener;", "getFromCache", "Lcom/gogolook/adsdk/adobject/BaseAdObject;", "adUnit", "Lgogolook/callgogolook2/ad/AdUnit;", "isAdRequesting", "", "startRequest", "", "context", "Landroid/content/Context;", "needToRequestAdSourceSet", "", "Lcom/gogolook/adsdk/Definition$AdSource;", "stopRequest", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: gogolook.callgogolook2.ad.AdDataSourceImpl */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AdDataSourceImpl.class */
public final class AdDataSourceImpl implements AdDataSource {
    public static final /* synthetic */ AbstractC14906i[] $$delegatedProperties;
    public final AbstractC14974f _adRequestState$delegate = C14975g.m662a(AdDataSourceImpl$_adRequestState$2.INSTANCE);
    public final AbstractC6258b listener = new AbstractC6258b() { // from class: gogolook.callgogolook2.ad.AdDataSourceImpl$listener$1
        @Override // p081h.p160h.p161a.p167m.AbstractC6258b
        /* renamed from: a */
        public void mo5004a(String str) {
            MutableLiveData b;
            C15149k.m377b(str, "adUnitName");
            C14261f.m1975a(str, AdUtils.m28811a(str));
            List<C6260a> a = C6268a.m23442a(str);
            if (a != null) {
                C14261f.m1972a(a);
            }
            AdRequestState.End end = C6214a.m23563c(str) ? new AdRequestState.End(AdUnit.Companion.m28820a(str), AdResult.FILL, C6262a.EnumC6267e.AD_FILL.m23446a()) : new AdRequestState.End(AdUnit.Companion.m28820a(str), AdResult.FAIL, C6192e.f15373p.m23592a(str).m23605b());
            b = AdDataSourceImpl.this.m28866b();
            b.setValue(end);
        }

        @Override // p081h.p160h.p161a.p167m.AbstractC6258b
        /* renamed from: b */
        public void mo5003b(String str) {
            MutableLiveData b;
            C15149k.m377b(str, "adUnitName");
            AdRequestState.Requesting requesting = new AdRequestState.Requesting(AdUnit.Companion.m28820a(str));
            b = AdDataSourceImpl.this.m28866b();
            b.setValue(requesting);
        }
    };

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(AdDataSourceImpl.class), "_adRequestState", "get_adRequestState()Landroidx/lifecycle/MutableLiveData;");
        C15131a0.m412a(sVar);
        $$delegatedProperties = new AbstractC14906i[]{sVar};
    }

    @Override // gogolook.callgogolook2.p074ad.AdDataSource
    /* renamed from: a */
    public LiveData<AdRequestState> mo28870a() {
        return m28866b();
    }

    @Override // gogolook.callgogolook2.p074ad.AdDataSource
    /* renamed from: a */
    public void mo28869a(Context context, AdUnit adUnit, Set<? extends EnumC6184a> set) {
        EnumC6184a[] values;
        C15149k.m377b(context, "context");
        C15149k.m377b(adUnit, "adUnit");
        C15149k.m377b(set, "needToRequestAdSourceSet");
        if (C6214a.m23563c(adUnit.m28821a())) {
            m28866b().setValue(new AdRequestState.End(adUnit, AdResult.EXIST, C6262a.EnumC6267e.AD_EXIST.m23446a()));
            return;
        }
        C6192e a = C6192e.f15373p.m23592a(adUnit.m28821a());
        if (a.m23597e()) {
            m28866b().setValue(new AdRequestState.Requesting(adUnit));
            return;
        }
        a.m23606a(AdUtils.m28803f());
        for (EnumC6184a aVar : EnumC6184a.values()) {
            a.m23617a(aVar, set.contains(aVar));
        }
        a.m23608a(this.listener);
        a.m23619a(context);
        m28866b().setValue(new AdRequestState.Start(adUnit));
    }

    @Override // gogolook.callgogolook2.p074ad.AdDataSource
    /* renamed from: a */
    public boolean mo28867a(AdUnit adUnit) {
        C15149k.m377b(adUnit, "adUnit");
        return C6192e.f15373p.m23592a(adUnit.m28821a()).m23597e();
    }

    /* renamed from: b */
    public final MutableLiveData<AdRequestState> m28866b() {
        AbstractC14974f fVar = this._adRequestState$delegate;
        AbstractC14906i iVar = $$delegatedProperties[0];
        return (MutableLiveData) fVar.getValue();
    }

    @Override // gogolook.callgogolook2.p074ad.AdDataSource
    /* renamed from: b */
    public AbstractC6207d mo28865b(AdUnit adUnit) {
        C15149k.m377b(adUnit, "adUnit");
        return C6214a.m23564b(adUnit.m28821a());
    }

    @Override // gogolook.callgogolook2.p074ad.AdDataSource
    /* renamed from: c */
    public void mo28864c(AdUnit adUnit) {
        C15149k.m377b(adUnit, "adUnit");
        C6192e.f15373p.m23592a(adUnit.m28821a()).m23594h();
    }
}
