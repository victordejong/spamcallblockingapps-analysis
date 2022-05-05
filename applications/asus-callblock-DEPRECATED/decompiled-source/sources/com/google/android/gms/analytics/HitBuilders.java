package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.asus.updatesdk.BuildConfig;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.analytics.internal.zzae;
import com.google.android.gms.analytics.internal.zzao;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/HitBuilders.class */
public class HitBuilders {

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/HitBuilders$AppViewBuilder.class */
    public static class AppViewBuilder extends HitBuilder<AppViewBuilder> {
        public AppViewBuilder() {
            set("&t", "screenview");
        }

        @Override // com.google.android.gms.analytics.HitBuilders.HitBuilder
        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/HitBuilders$EventBuilder.class */
    public static class EventBuilder extends HitBuilder<EventBuilder> {
        public EventBuilder() {
            set("&t", "event");
        }

        public EventBuilder(String str, String str2) {
            this();
            setCategory(str);
            setAction(str2);
        }

        @Override // com.google.android.gms.analytics.HitBuilders.HitBuilder
        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }

        public EventBuilder setAction(String str) {
            set("&ea", str);
            return this;
        }

        public EventBuilder setCategory(String str) {
            set("&ec", str);
            return this;
        }

        public EventBuilder setLabel(String str) {
            set("&el", str);
            return this;
        }

        public EventBuilder setValue(long j) {
            set("&ev", Long.toString(j));
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/HitBuilders$ExceptionBuilder.class */
    public static class ExceptionBuilder extends HitBuilder<ExceptionBuilder> {
        public ExceptionBuilder() {
            set("&t", "exception");
        }

        @Override // com.google.android.gms.analytics.HitBuilders.HitBuilder
        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }

        public ExceptionBuilder setDescription(String str) {
            set("&exd", str);
            return this;
        }

        public ExceptionBuilder setFatal(boolean z) {
            set("&exf", zzao.zzS(z));
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/HitBuilders$HitBuilder.class */
    public static class HitBuilder<T extends HitBuilder> {

        /* renamed from: a  reason: collision with root package name */
        ProductAction f3782a;
        private Map<String, String> e = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        Map<String, List<Product>> f3783b = new HashMap();
        List<Promotion> c = new ArrayList();
        List<Product> d = new ArrayList();

        protected HitBuilder() {
        }

        private T a(String str, String str2) {
            if (str2 != null) {
                this.e.put(str, str2);
            }
            return this;
        }

        public T addImpression(Product product, String str) {
            if (product == null) {
                zzae.zzaW("product should be non-null");
            } else {
                String str2 = str;
                if (str == null) {
                    str2 = BuildConfig.FLAVOR;
                }
                if (!this.f3783b.containsKey(str2)) {
                    this.f3783b.put(str2, new ArrayList());
                }
                this.f3783b.get(str2).add(product);
            }
            return this;
        }

        public T addProduct(Product product) {
            if (product == null) {
                zzae.zzaW("product should be non-null");
            } else {
                this.d.add(product);
            }
            return this;
        }

        public T addPromotion(Promotion promotion) {
            if (promotion == null) {
                zzae.zzaW("promotion should be non-null");
            } else {
                this.c.add(promotion);
            }
            return this;
        }

        public Map<String, String> build() {
            HashMap hashMap = new HashMap(this.e);
            if (this.f3782a != null) {
                hashMap.putAll(this.f3782a.build());
            }
            int i = 1;
            for (Promotion promotion : this.c) {
                hashMap.putAll(promotion.zzbD(zzc.zzag(i)));
                i++;
            }
            int i2 = 1;
            for (Product product : this.d) {
                hashMap.putAll(product.zzbD(zzc.zzae(i2)));
                i2++;
            }
            int i3 = 1;
            for (Map.Entry<String, List<Product>> entry : this.f3783b.entrySet()) {
                List<Product> value = entry.getValue();
                String zzaj = zzc.zzaj(i3);
                int i4 = 1;
                for (Product product2 : value) {
                    String valueOf = String.valueOf(zzaj);
                    String valueOf2 = String.valueOf(zzc.zzai(i4));
                    hashMap.putAll(product2.zzbD(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)));
                    i4++;
                }
                if (!TextUtils.isEmpty(entry.getKey())) {
                    String valueOf3 = String.valueOf(zzaj);
                    String valueOf4 = String.valueOf("nm");
                    hashMap.put(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3), entry.getKey());
                }
                i3++;
            }
            return hashMap;
        }

        protected String get(String str) {
            return this.e.get(str);
        }

        public final T set(String str, String str2) {
            if (str != null) {
                this.e.put(str, str2);
            } else {
                zzae.zzaW("HitBuilder.set() called with a null paramName.");
            }
            return this;
        }

        public final T setAll(Map<String, String> map) {
            if (map != null) {
                this.e.putAll(new HashMap(map));
            }
            return this;
        }

        public T setCampaignParamsFromUrl(String str) {
            String zzbY = zzao.zzbY(str);
            if (!TextUtils.isEmpty(zzbY)) {
                Map<String, String> zzbW = zzao.zzbW(zzbY);
                a("&cc", zzbW.get("utm_content"));
                a("&cm", zzbW.get("utm_medium"));
                a("&cn", zzbW.get("utm_campaign"));
                a("&cs", zzbW.get("utm_source"));
                a("&ck", zzbW.get("utm_term"));
                a("&ci", zzbW.get("utm_id"));
                a("&anid", zzbW.get("anid"));
                a("&gclid", zzbW.get("gclid"));
                a("&dclid", zzbW.get("dclid"));
                a("&aclid", zzbW.get("aclid"));
                a("&gmob_t", zzbW.get("gmob_t"));
            }
            return this;
        }

        public T setCustomDimension(int i, String str) {
            set(zzc.zzaa(i), str);
            return this;
        }

        public T setCustomMetric(int i, float f) {
            set(zzc.zzac(i), Float.toString(f));
            return this;
        }

        protected T setHitType(String str) {
            set("&t", str);
            return this;
        }

        public T setNewSession() {
            set("&sc", "start");
            return this;
        }

        public T setNonInteraction(boolean z) {
            set("&ni", zzao.zzS(z));
            return this;
        }

        public T setProductAction(ProductAction productAction) {
            this.f3782a = productAction;
            return this;
        }

        public T setPromotionAction(String str) {
            this.e.put("&promoa", str);
            return this;
        }
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/HitBuilders$ItemBuilder.class */
    public static class ItemBuilder extends HitBuilder<ItemBuilder> {
        public ItemBuilder() {
            set("&t", "item");
        }

        @Override // com.google.android.gms.analytics.HitBuilders.HitBuilder
        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }

        public ItemBuilder setCategory(String str) {
            set("&iv", str);
            return this;
        }

        public ItemBuilder setCurrencyCode(String str) {
            set("&cu", str);
            return this;
        }

        public ItemBuilder setName(String str) {
            set("&in", str);
            return this;
        }

        public ItemBuilder setPrice(double d) {
            set("&ip", Double.toString(d));
            return this;
        }

        public ItemBuilder setQuantity(long j) {
            set("&iq", Long.toString(j));
            return this;
        }

        public ItemBuilder setSku(String str) {
            set("&ic", str);
            return this;
        }

        public ItemBuilder setTransactionId(String str) {
            set("&ti", str);
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/HitBuilders$ScreenViewBuilder.class */
    public static class ScreenViewBuilder extends HitBuilder<ScreenViewBuilder> {
        public ScreenViewBuilder() {
            set("&t", "screenview");
        }

        @Override // com.google.android.gms.analytics.HitBuilders.HitBuilder
        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/HitBuilders$SocialBuilder.class */
    public static class SocialBuilder extends HitBuilder<SocialBuilder> {
        public SocialBuilder() {
            set("&t", "social");
        }

        @Override // com.google.android.gms.analytics.HitBuilders.HitBuilder
        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }

        public SocialBuilder setAction(String str) {
            set("&sa", str);
            return this;
        }

        public SocialBuilder setNetwork(String str) {
            set("&sn", str);
            return this;
        }

        public SocialBuilder setTarget(String str) {
            set("&st", str);
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/HitBuilders$TimingBuilder.class */
    public static class TimingBuilder extends HitBuilder<TimingBuilder> {
        public TimingBuilder() {
            set("&t", "timing");
        }

        public TimingBuilder(String str, String str2, long j) {
            this();
            setVariable(str2);
            setValue(j);
            setCategory(str);
        }

        @Override // com.google.android.gms.analytics.HitBuilders.HitBuilder
        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }

        public TimingBuilder setCategory(String str) {
            set("&utc", str);
            return this;
        }

        public TimingBuilder setLabel(String str) {
            set("&utl", str);
            return this;
        }

        public TimingBuilder setValue(long j) {
            set("&utt", Long.toString(j));
            return this;
        }

        public TimingBuilder setVariable(String str) {
            set("&utv", str);
            return this;
        }
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/HitBuilders$TransactionBuilder.class */
    public static class TransactionBuilder extends HitBuilder<TransactionBuilder> {
        public TransactionBuilder() {
            set("&t", "transaction");
        }

        @Override // com.google.android.gms.analytics.HitBuilders.HitBuilder
        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }

        public TransactionBuilder setAffiliation(String str) {
            set("&ta", str);
            return this;
        }

        public TransactionBuilder setCurrencyCode(String str) {
            set("&cu", str);
            return this;
        }

        public TransactionBuilder setRevenue(double d) {
            set("&tr", Double.toString(d));
            return this;
        }

        public TransactionBuilder setShipping(double d) {
            set("&ts", Double.toString(d));
            return this;
        }

        public TransactionBuilder setTax(double d) {
            set("&tt", Double.toString(d));
            return this;
        }

        public TransactionBuilder setTransactionId(String str) {
            set("&ti", str);
            return this;
        }
    }
}
