package p081h.p160h.p161a.p163i;

import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000b\u001a\u00020\fH\u0007J\u0012\u0010\r\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000e\u001a\u00020\u0005H\u0007J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0005H\u0007J\u001a\u0010\u0011\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u00052\b\u0010\u0012\u001a\u0004\u0018\u00010\u0006H\u0007J\u0010\u0010\u0013\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0005H\u0002R'\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\u0014"}, m815d2 = {"Lcom/gogolook/adsdk/cache/AdCacheManager;", "", "()V", "mAdCacheHashMap", "Ljava/util/concurrent/ConcurrentHashMap;", "", "Lcom/gogolook/adsdk/adobject/BaseAdObject;", "getMAdCacheHashMap", "()Ljava/util/concurrent/ConcurrentHashMap;", "mAdCacheHashMap$delegate", "Lkotlin/Lazy;", "clearCache", "", "getCacheAd", "adUnitName", "hasCache", "", "putCacheAd", "cacheAd", "removeCacheAd", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.a.i.a */
/* loaded from: classes2-dex2jar.jar:h/h/a/i/a.class */
public final class C6214a {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f15405a;

    /* renamed from: c */
    public static final C6214a f15407c = new C6214a();

    /* renamed from: b */
    public static final AbstractC14974f f15406b = C14975g.m662a(C6215a.f15408a);

    /* renamed from: h.h.a.i.a$a */
    /* loaded from: classes2-dex2jar.jar:h/h/a/i/a$a.class */
    public static final class C6215a extends AbstractC15150l implements AbstractC15107a<ConcurrentHashMap<String, AbstractC6207d>> {

        /* renamed from: a */
        public static final C6215a f15408a = new C6215a();

        public C6215a() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final ConcurrentHashMap<String, AbstractC6207d> invoke() {
            return new ConcurrentHashMap<>();
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C6214a.class), "mAdCacheHashMap", "getMAdCacheHashMap()Ljava/util/concurrent/ConcurrentHashMap;");
        C15131a0.m412a(sVar);
        f15405a = new AbstractC14906i[]{sVar};
    }

    /* renamed from: a */
    public static final void m23565a(String str, AbstractC6207d dVar) {
        C15149k.m377b(str, "adUnitName");
        if (dVar != null) {
            f15407c.m23567a().put(str, dVar);
        }
    }

    /* renamed from: b */
    public static final AbstractC6207d m23564b(String str) {
        AbstractC6207d dVar;
        C15149k.m377b(str, "adUnitName");
        AbstractC6207d dVar2 = f15407c.m23567a().get(str);
        if (dVar2 != null) {
            f15407c.m23566a(str);
            dVar = dVar2;
        } else {
            dVar = null;
        }
        return dVar;
    }

    /* renamed from: c */
    public static final boolean m23563c(String str) {
        C15149k.m377b(str, "adUnitName");
        AbstractC6207d dVar = f15407c.m23567a().get(str);
        if (dVar != null) {
            if (!dVar.m23574f()) {
                dVar = null;
            }
            if (dVar != null) {
                f15407c.m23566a(str);
            }
        }
        return f15407c.m23567a().containsKey(str);
    }

    /* renamed from: a */
    public final ConcurrentHashMap<String, AbstractC6207d> m23567a() {
        AbstractC14974f fVar = f15406b;
        AbstractC14906i iVar = f15405a[0];
        return (ConcurrentHashMap) fVar.getValue();
    }

    /* renamed from: a */
    public final void m23566a(String str) {
        m23567a().remove(str);
    }
}
