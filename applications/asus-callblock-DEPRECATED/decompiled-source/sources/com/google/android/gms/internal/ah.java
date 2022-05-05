package com.google.android.gms.internal;

import com.asus.updatesdk.BuildConfig;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.analytics.zzg;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ah.class */
public final class ah extends zzg<ah> {

    /* renamed from: a  reason: collision with root package name */
    public final List<Product> f4105a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    public final List<Promotion> f4106b = new ArrayList();
    public final Map<String, List<Product>> c = new HashMap();
    public ProductAction d;

    public final String toString() {
        HashMap hashMap = new HashMap();
        if (!this.f4105a.isEmpty()) {
            hashMap.put("products", this.f4105a);
        }
        if (!this.f4106b.isEmpty()) {
            hashMap.put("promotions", this.f4106b);
        }
        if (!this.c.isEmpty()) {
            hashMap.put("impressions", this.c);
        }
        hashMap.put("productAction", this.d);
        return zzj(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzg
    public final /* synthetic */ void zzb(ah ahVar) {
        ah ahVar2 = ahVar;
        ahVar2.f4105a.addAll(this.f4105a);
        ahVar2.f4106b.addAll(this.f4106b);
        for (Map.Entry<String, List<Product>> entry : this.c.entrySet()) {
            String key = entry.getKey();
            for (Product product : entry.getValue()) {
                if (product != null) {
                    String str = key == null ? BuildConfig.FLAVOR : key;
                    if (!ahVar2.c.containsKey(str)) {
                        ahVar2.c.put(str, new ArrayList());
                    }
                    ahVar2.c.get(str).add(product);
                }
            }
        }
        if (this.d != null) {
            ahVar2.d = this.d;
        }
    }
}
