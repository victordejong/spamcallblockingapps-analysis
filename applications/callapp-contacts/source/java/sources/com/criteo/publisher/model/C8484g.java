package com.criteo.publisher.model;

import com.criteo.publisher.C8281f;
import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import com.criteo.publisher.p256m0.C8440k;
import com.criteo.publisher.p256m0.EnumC8423a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
/* renamed from: com.criteo.publisher.model.g */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/g.class */
public class C8484g {

    /* renamed from: c */
    private static final AdSize f30298c = new AdSize(2, 2);

    /* renamed from: a */
    private final C8402g f30299a = C8404h.m25741a(getClass());

    /* renamed from: b */
    private final C8440k f30300b;

    /* renamed from: com.criteo.publisher.model.g$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/g$a.class */
    public static /* synthetic */ class C8485a {

        /* renamed from: a */
        static final /* synthetic */ int[] f30301a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8423a.values().length];
            f30301a = iArr;
            try {
                iArr[EnumC8423a.CRITEO_BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30301a[EnumC8423a.CRITEO_INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f30301a[EnumC8423a.CRITEO_CUSTOM_NATIVE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public C8484g(C8440k c8440k) {
        this.f30300b = c8440k;
    }

    /* renamed from: a */
    private AdSize m25601a(AdUnit adUnit) {
        int i = C8485a.f30301a[adUnit.getAdUnitType().ordinal()];
        if (i != 1) {
            if (i == 2) {
                return this.f30300b.m25683b();
            }
            if (i != 3) {
                throw new IllegalArgumentException("Found an invalid AdUnit");
            }
            return f30298c;
        }
        return ((BannerAdUnit) adUnit).getSize();
    }

    /* renamed from: a */
    private List<C8498n> m25600a(Collection<C8498n> collection) {
        ArrayList arrayList = new ArrayList();
        for (C8498n c8498n : collection) {
            if (c8498n.m25583b().isEmpty() || c8498n.m25582c().getWidth() <= 0 || c8498n.m25582c().getHeight() <= 0) {
                this.f30299a.m25744a(C8281f.m25923a(c8498n));
            } else {
                arrayList.add(c8498n);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    static <T> List<List<T>> m25598a(List<T> list, int i) {
        if (list.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= list.size()) {
                return arrayList;
            }
            int i4 = i3 + i;
            arrayList.add(list.subList(i3, Math.min(i4, list.size())));
            i2 = i4;
        }
    }

    /* renamed from: a */
    public List<List<C8498n>> m25599a(List<AdUnit> list) {
        HashSet hashSet = new HashSet();
        for (AdUnit adUnit : list) {
            if (adUnit != null) {
                hashSet.add(new C8498n(m25601a(adUnit), adUnit.getAdUnitId(), adUnit.getAdUnitType()));
            }
        }
        return m25598a(m25600a(hashSet), 8);
    }

    /* renamed from: b */
    public C8498n m25597b(AdUnit adUnit) {
        List<List<C8498n>> m25599a = m25599a(Collections.singletonList(adUnit));
        if (m25599a.isEmpty() || m25599a.get(0).isEmpty()) {
            return null;
        }
        return m25599a.get(0).get(0);
    }
}
