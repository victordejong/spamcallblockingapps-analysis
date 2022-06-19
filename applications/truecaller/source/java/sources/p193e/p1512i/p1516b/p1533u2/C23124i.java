package p193e.p1512i.p1516b.p1533u2;

import com.criteo.publisher.model.AdSize;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.BannerAdUnit;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import p193e.p1512i.p1516b.p1528q2.C23019f;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1528q2.C23023i;
import p193e.p1512i.p1516b.p1531s2.C23086i;
import p193e.p1512i.p1516b.p1531s2.EnumC23072a;
import s1.z.c.l;
/* renamed from: e.i.b.u2.i */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/i.class */
public class C23124i {

    /* renamed from: c */
    public static final AdSize f64021c = new AdSize(2, 2);

    /* renamed from: a */
    public final C23021h f64022a = C23023i.m7583a(C23124i.class);

    /* renamed from: b */
    public final C23086i f64023b;

    /* renamed from: e.i.b.u2.i$a */
    /* loaded from: classes-dex2jar.jar:e/i/b/u2/i$a.class */
    public static /* synthetic */ class C23125a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f64024a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x001d -> B:11:0x0016). Please submit an issue!!! */
        static {
            EnumC23072a.values();
            f64024a = r0;
            int[] iArr = {1};
            try {
                f64024a[1] = 2;
            } catch (NoSuchFieldError e) {
            }
            try {
                f64024a[2] = 3;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public C23124i(C23086i c23086i) {
        this.f64023b = c23086i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [java.util.List] */
    /* renamed from: a */
    public List<List<C23126p>> m7499a(List<AdUnit> list) {
        ArrayList arrayList;
        AdSize adSize;
        HashSet hashSet = new HashSet();
        for (AdUnit adUnit : list) {
            if (adUnit != null) {
                int i = C23125a.f64024a[adUnit.getAdUnitType().ordinal()];
                if (i == 1) {
                    adSize = ((BannerAdUnit) adUnit).getSize();
                } else if (i == 2) {
                    adSize = this.f64023b.m7564a();
                } else if (i != 3) {
                    throw new IllegalArgumentException("Found an invalid AdUnit");
                } else {
                    adSize = f64021c;
                }
                hashSet.add(new C23126p(adSize, adUnit.getAdUnitId(), adUnit.getAdUnitType()));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            C23126p c23126p = (C23126p) it.next();
            if (c23126p.f64051b.isEmpty() || c23126p.f64050a.getWidth() <= 0 || c23126p.f64050a.getHeight() <= 0) {
                C23021h c23021h = this.f64022a;
                l.f(c23126p, "adUnit");
                c23021h.m7586a(new C23019f(5, "Found an invalid AdUnit: " + c23126p, null, "onInvalidAdUnit", 4));
            } else {
                arrayList2.add(c23126p);
            }
        }
        if (!arrayList2.isEmpty()) {
            arrayList = new ArrayList();
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 >= arrayList2.size()) {
                    break;
                }
                int i4 = i3 + 8;
                arrayList.add(arrayList2.subList(i3, Math.min(i4, arrayList2.size())));
                i2 = i4;
            }
        } else {
            arrayList = Collections.emptyList();
        }
        return arrayList;
    }
}
