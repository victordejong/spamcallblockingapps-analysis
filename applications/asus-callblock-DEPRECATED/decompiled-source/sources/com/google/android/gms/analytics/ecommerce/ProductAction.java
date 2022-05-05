package com.google.android.gms.analytics.ecommerce;

import com.google.android.gms.analytics.zzg;
import com.google.android.gms.common.internal.b;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/ecommerce/ProductAction.class */
public class ProductAction {
    public static final String ACTION_ADD = "add";
    public static final String ACTION_CHECKOUT = "checkout";
    public static final String ACTION_CHECKOUT_OPTION = "checkout_option";
    @Deprecated
    public static final String ACTION_CHECKOUT_OPTIONS = "checkout_options";
    public static final String ACTION_CLICK = "click";
    public static final String ACTION_DETAIL = "detail";
    public static final String ACTION_PURCHASE = "purchase";
    public static final String ACTION_REFUND = "refund";
    public static final String ACTION_REMOVE = "remove";

    /* renamed from: a  reason: collision with root package name */
    Map<String, String> f3792a = new HashMap();

    public ProductAction(String str) {
        a("&pa", str);
    }

    private void a(String str, String str2) {
        b.a(str, (Object) "Name should be non-null");
        this.f3792a.put(str, str2);
    }

    public Map<String, String> build() {
        return new HashMap(this.f3792a);
    }

    public ProductAction setCheckoutOptions(String str) {
        a("&col", str);
        return this;
    }

    public ProductAction setCheckoutStep(int i) {
        a("&cos", Integer.toString(i));
        return this;
    }

    public ProductAction setProductActionList(String str) {
        a("&pal", str);
        return this;
    }

    public ProductAction setProductListSource(String str) {
        a("&pls", str);
        return this;
    }

    public ProductAction setTransactionAffiliation(String str) {
        a("&ta", str);
        return this;
    }

    public ProductAction setTransactionCouponCode(String str) {
        a("&tcc", str);
        return this;
    }

    public ProductAction setTransactionId(String str) {
        a("&ti", str);
        return this;
    }

    public ProductAction setTransactionRevenue(double d) {
        a("&tr", Double.toString(d));
        return this;
    }

    public ProductAction setTransactionShipping(double d) {
        a("&ts", Double.toString(d));
        return this;
    }

    public ProductAction setTransactionTax(double d) {
        a("&tt", Double.toString(d));
        return this;
    }

    public String toString() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, String> entry : this.f3792a.entrySet()) {
            if (entry.getKey().startsWith("&")) {
                hashMap.put(entry.getKey().substring(1), entry.getValue());
            } else {
                hashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return zzg.zzO(hashMap);
    }
}
