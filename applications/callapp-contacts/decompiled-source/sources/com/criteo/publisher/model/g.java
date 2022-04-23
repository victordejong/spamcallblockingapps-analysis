package com.criteo.publisher.model;

import com.criteo.publisher.f;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.m0.k;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/g.class */
public class g {

    /* renamed from: c  reason: collision with root package name */
    private static final AdSize f17594c = new AdSize(2, 2);

    /* renamed from: a  reason: collision with root package name */
    private final com.criteo.publisher.logging.g f17595a = h.a(getClass());

    /* renamed from: b  reason: collision with root package name */
    private final k f17596b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/g$a.class */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f17597a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[com.criteo.publisher.m0.a.values().length];
            f17597a = iArr;
            try {
                iArr[com.criteo.publisher.m0.a.CRITEO_BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f17597a[com.criteo.publisher.m0.a.CRITEO_INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f17597a[com.criteo.publisher.m0.a.CRITEO_CUSTOM_NATIVE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public g(k kVar) {
        this.f17596b = kVar;
    }

    private AdSize a(AdUnit adUnit) {
        int i = a.f17597a[adUnit.getAdUnitType().ordinal()];
        if (i == 1) {
            return ((BannerAdUnit) adUnit).getSize();
        }
        if (i == 2) {
            return this.f17596b.b();
        }
        if (i == 3) {
            return f17594c;
        }
        throw new IllegalArgumentException("Found an invalid AdUnit");
    }

    private List<n> a(Collection<n> collection) {
        ArrayList arrayList = new ArrayList();
        for (n nVar : collection) {
            if (nVar.b().isEmpty() || nVar.c().getWidth() <= 0 || nVar.c().getHeight() <= 0) {
                this.f17595a.a(f.a(nVar));
            } else {
                arrayList.add(nVar);
            }
        }
        return arrayList;
    }

    static <T> List<List<T>> a(List<T> list, int i) {
        if (list.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < list.size()) {
            int i3 = i2 + i;
            arrayList.add(list.subList(i2, Math.min(i3, list.size())));
            i2 = i3;
        }
        return arrayList;
    }

    public List<List<n>> a(List<AdUnit> list) {
        HashSet hashSet = new HashSet();
        for (AdUnit adUnit : list) {
            if (adUnit != null) {
                hashSet.add(new n(a(adUnit), adUnit.getAdUnitId(), adUnit.getAdUnitType()));
            }
        }
        return a(a(hashSet), 8);
    }

    public n b(AdUnit adUnit) {
        List<List<n>> a2 = a(Collections.singletonList(adUnit));
        if (a2.isEmpty() || a2.get(0).isEmpty()) {
            return null;
        }
        return a2.get(0).get(0);
    }
}
