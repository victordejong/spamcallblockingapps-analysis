package com.google.android.gms.analytics;

import android.support.p001v4.app.NotificationCompat;
import android.text.TextUtils;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzco;
import com.google.android.gms.internal.measurement.zzdg;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/HitBuilders.class */
public class HitBuilders {

    @VisibleForTesting
    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/HitBuilders$AppViewBuilder.class */
    public static class AppViewBuilder extends HitBuilder<AppViewBuilder> {
        public AppViewBuilder() {
            set("&t", "screenview");
        }
    }

    @VisibleForTesting
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

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/HitBuilders$ExceptionBuilder.class */
    public static class ExceptionBuilder extends HitBuilder<ExceptionBuilder> {
        public ExceptionBuilder() {
            set("&t", "exception");
        }

        public ExceptionBuilder setDescription(String str) {
            set("&exd", str);
            return this;
        }

        public ExceptionBuilder setFatal(boolean z) {
            set("&exf", zzdg.zzc(z));
            return this;
        }
    }

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/HitBuilders$HitBuilder.class */
    public static class HitBuilder<T extends HitBuilder> {
        private ProductAction zzrt;
        private Map<String, String> map = new HashMap();
        private Map<String, List<Product>> zzru = new HashMap();
        private List<Promotion> zzrv = new ArrayList();
        private List<Product> zzrw = new ArrayList();

        protected HitBuilder() {
        }

        private final T zza(String str, String str2) {
            if (str2 != null) {
                this.map.put(str, str2);
            }
            return this;
        }

        public T addImpression(Product product, String str) {
            if (product == null) {
                zzco.zzab("product should be non-null");
                return this;
            }
            String str2 = str;
            if (str == null) {
                str2 = "";
            }
            if (!this.zzru.containsKey(str2)) {
                this.zzru.put(str2, new ArrayList());
            }
            this.zzru.get(str2).add(product);
            return this;
        }

        public T addProduct(Product product) {
            if (product == null) {
                zzco.zzab("product should be non-null");
                return this;
            }
            this.zzrw.add(product);
            return this;
        }

        public T addPromotion(Promotion promotion) {
            if (promotion == null) {
                zzco.zzab("promotion should be non-null");
                return this;
            }
            this.zzrv.add(promotion);
            return this;
        }

        public Map<String, String> build() {
            HashMap hashMap = new HashMap(this.map);
            if (this.zzrt != null) {
                hashMap.putAll(this.zzrt.build());
            }
            int i = 1;
            for (Promotion promotion : this.zzrv) {
                hashMap.putAll(promotion.zzn(zzd.zzj(i)));
                i++;
            }
            int i2 = 1;
            for (Product product : this.zzrw) {
                hashMap.putAll(product.zzn(zzd.zzh(i2)));
                i2++;
            }
            int i3 = 1;
            for (Map.Entry<String, List<Product>> entry : this.zzru.entrySet()) {
                List<Product> value = entry.getValue();
                String zzm = zzd.zzm(i3);
                int i4 = 1;
                for (Product product2 : value) {
                    String valueOf = String.valueOf(zzm);
                    String valueOf2 = String.valueOf(zzd.zzl(i4));
                    hashMap.putAll(product2.zzn(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)));
                    i4++;
                }
                if (!TextUtils.isEmpty(entry.getKey())) {
                    String valueOf3 = String.valueOf(zzm);
                    String valueOf4 = String.valueOf("nm");
                    hashMap.put(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3), entry.getKey());
                }
                i3++;
            }
            return hashMap;
        }

        @VisibleForTesting
        protected String get(String str) {
            return this.map.get(str);
        }

        public final T set(String str, String str2) {
            if (str != null) {
                this.map.put(str, str2);
            } else {
                zzco.zzab("HitBuilder.set() called with a null paramName.");
            }
            return this;
        }

        public final T setAll(Map<String, String> map) {
            if (map == null) {
                return this;
            }
            this.map.putAll(new HashMap(map));
            return this;
        }

        public T setCampaignParamsFromUrl(String str) {
            String zzag = zzdg.zzag(str);
            if (TextUtils.isEmpty(zzag)) {
                return this;
            }
            Map<String, String> zzae = zzdg.zzae(zzag);
            zza("&cc", zzae.get("utm_content"));
            zza("&cm", zzae.get("utm_medium"));
            zza("&cn", zzae.get("utm_campaign"));
            zza("&cs", zzae.get("utm_source"));
            zza("&ck", zzae.get("utm_term"));
            zza("&ci", zzae.get("utm_id"));
            zza("&anid", zzae.get("anid"));
            zza("&gclid", zzae.get("gclid"));
            zza("&dclid", zzae.get("dclid"));
            zza("&aclid", zzae.get(FirebaseAnalytics.Param.ACLID));
            zza("&gmob_t", zzae.get("gmob_t"));
            return this;
        }

        public T setCustomDimension(int i, String str) {
            set(zzd.zzd(i), str);
            return this;
        }

        public T setCustomMetric(int i, float f) {
            set(zzd.zzf(i), Float.toString(f));
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
            set("&ni", zzdg.zzc(z));
            return this;
        }

        public T setProductAction(ProductAction productAction) {
            this.zzrt = productAction;
            return this;
        }

        public T setPromotionAction(String str) {
            this.map.put("&promoa", str);
            return this;
        }
    }

    @VisibleForTesting
    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/HitBuilders$ItemBuilder.class */
    public static class ItemBuilder extends HitBuilder<ItemBuilder> {
        public ItemBuilder() {
            set("&t", "item");
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

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/HitBuilders$ScreenViewBuilder.class */
    public static class ScreenViewBuilder extends HitBuilder<ScreenViewBuilder> {
        public ScreenViewBuilder() {
            set("&t", "screenview");
        }
    }

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/HitBuilders$SocialBuilder.class */
    public static class SocialBuilder extends HitBuilder<SocialBuilder> {
        public SocialBuilder() {
            set("&t", NotificationCompat.CATEGORY_SOCIAL);
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

    @VisibleForTesting
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

    @VisibleForTesting
    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/HitBuilders$TransactionBuilder.class */
    public static class TransactionBuilder extends HitBuilder<TransactionBuilder> {
        public TransactionBuilder() {
            set("&t", "transaction");
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
