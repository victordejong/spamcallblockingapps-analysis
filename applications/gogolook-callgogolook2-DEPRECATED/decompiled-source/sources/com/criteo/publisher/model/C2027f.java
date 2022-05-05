package com.criteo.publisher.model;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.criteo.publisher.p020a0.C1910c;
import com.criteo.publisher.p020a0.C1925m;
import com.criteo.publisher.p020a0.EnumC1908a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
/* renamed from: com.criteo.publisher.model.f */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/f.class */
public class C2027f {

    /* renamed from: c */
    public static final String f2218c = "f";

    /* renamed from: a */
    public final C1910c f2219a;

    /* renamed from: b */
    public final C1925m f2220b;

    /* renamed from: com.criteo.publisher.model.f$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/f$a.class */
    public static /* synthetic */ class C2028a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f2221a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC1908a.values().length];
            f2221a = iArr;
            try {
                iArr[EnumC1908a.CRITEO_BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2221a[EnumC1908a.CRITEO_INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2221a[EnumC1908a.CRITEO_CUSTOM_NATIVE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public C2027f(C1910c cVar, C1925m mVar) {
        this.f2219a = cVar;
        this.f2220b = mVar;
    }

    /* renamed from: a */
    private C2037k m35871a(String str) {
        return this.f2219a.m36043a() == 1 ? new C2037k(this.f2220b.m36012d(), str, EnumC1908a.CRITEO_INTERSTITIAL) : new C2037k(this.f2220b.m36013c(), str, EnumC1908a.CRITEO_INTERSTITIAL);
    }

    /* renamed from: a */
    private List<C2037k> m35870a(Collection<C2037k> collection) {
        ArrayList arrayList = new ArrayList();
        for (C2037k kVar : collection) {
            if (kVar.m35862b() == null || kVar.m35862b().isEmpty() || kVar.m35861c() == null || kVar.m35861c().getWidth() <= 0 || kVar.m35861c().getHeight() <= 0) {
                String str = f2218c;
                Log.e(str, "Found an invalid AdUnit: " + kVar);
            } else {
                arrayList.add(kVar);
            }
        }
        return arrayList;
    }

    @VisibleForTesting
    /* renamed from: a */
    public static <T> List<List<T>> m35868a(List<T> list, int i) {
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

    @Nullable
    /* renamed from: a */
    public C2037k m35872a(@Nullable AdUnit adUnit) {
        List<List<C2037k>> a = m35869a(Collections.singletonList(adUnit));
        if (a.isEmpty() || a.get(0).isEmpty()) {
            return null;
        }
        return a.get(0).get(0);
    }

    /* renamed from: a */
    public List<List<C2037k>> m35869a(@NonNull List<AdUnit> list) {
        HashSet hashSet = new HashSet();
        for (AdUnit adUnit : list) {
            if (adUnit != null) {
                int i = C2028a.f2221a[adUnit.getAdUnitType().ordinal()];
                if (i == 1) {
                    BannerAdUnit bannerAdUnit = (BannerAdUnit) adUnit;
                    hashSet.add(new C2037k(bannerAdUnit.getSize(), bannerAdUnit.getAdUnitId(), EnumC1908a.CRITEO_BANNER));
                } else if (i == 2) {
                    hashSet.add(m35871a(((InterstitialAdUnit) adUnit).getAdUnitId()));
                } else if (i == 3) {
                    NativeAdUnit nativeAdUnit = (NativeAdUnit) adUnit;
                    hashSet.add(new C2037k(nativeAdUnit.getAdSize(), nativeAdUnit.getAdUnitId(), EnumC1908a.CRITEO_CUSTOM_NATIVE));
                } else {
                    throw new IllegalArgumentException("Found an invalid AdUnit");
                }
            }
        }
        return m35868a(m35870a(hashSet), 8);
    }
}
