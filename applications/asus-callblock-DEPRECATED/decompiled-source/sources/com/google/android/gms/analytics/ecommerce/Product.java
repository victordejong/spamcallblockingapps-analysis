package com.google.android.gms.analytics.ecommerce;

import com.google.android.gms.analytics.zzc;
import com.google.android.gms.analytics.zzg;
import com.google.android.gms.common.internal.b;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/ecommerce/Product.class */
public class Product {

    /* renamed from: a  reason: collision with root package name */
    Map<String, String> f3791a = new HashMap();

    private void a(String str, String str2) {
        b.a(str, (Object) "Name should be non-null");
        this.f3791a.put(str, str2);
    }

    public Product setBrand(String str) {
        a("br", str);
        return this;
    }

    public Product setCategory(String str) {
        a("ca", str);
        return this;
    }

    public Product setCouponCode(String str) {
        a("cc", str);
        return this;
    }

    public Product setCustomDimension(int i, String str) {
        a(zzc.zzal(i), str);
        return this;
    }

    public Product setCustomMetric(int i, int i2) {
        a(zzc.zzam(i), Integer.toString(i2));
        return this;
    }

    public Product setId(String str) {
        a("id", str);
        return this;
    }

    public Product setName(String str) {
        a("nm", str);
        return this;
    }

    public Product setPosition(int i) {
        a("ps", Integer.toString(i));
        return this;
    }

    public Product setPrice(double d) {
        a("pr", Double.toString(d));
        return this;
    }

    public Product setQuantity(int i) {
        a("qt", Integer.toString(i));
        return this;
    }

    public Product setVariant(String str) {
        a("va", str);
        return this;
    }

    public String toString() {
        return zzg.zzO(this.f3791a);
    }

    public Map<String, String> zzbD(String str) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, String> entry : this.f3791a.entrySet()) {
            String valueOf = String.valueOf(str);
            String valueOf2 = String.valueOf(entry.getKey());
            hashMap.put(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf), entry.getValue());
        }
        return hashMap;
    }
}
