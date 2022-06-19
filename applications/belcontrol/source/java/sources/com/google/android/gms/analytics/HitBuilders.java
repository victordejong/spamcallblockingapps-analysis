package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.gtm.zzch;
import com.google.android.gms.internal.gtm.zzcz;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/HitBuilders.class */
public class HitBuilders {

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/HitBuilders$HitBuilder.class */
    public static class HitBuilder<T extends HitBuilder> {
        private ProductAction zzrx;
        private Map<String, String> map = new HashMap();
        private Map<String, List<Product>> zzry = new HashMap();
        private List<Promotion> zzrz = new ArrayList();
        private List<Product> zzsa = new ArrayList();

        private final T zza(String str, String str2) {
            if (str2 != null) {
                this.map.put(str, str2);
            }
            return this;
        }

        public T addImpression(Product product, String str) {
            if (product == null) {
                zzch.zzac("product should be non-null");
                return this;
            }
            String str2 = str;
            if (str == null) {
                str2 = "";
            }
            if (!this.zzry.containsKey(str2)) {
                this.zzry.put(str2, new ArrayList());
            }
            this.zzry.get(str2).add(product);
            return this;
        }

        public T addProduct(Product product) {
            if (product == null) {
                zzch.zzac("product should be non-null");
                return this;
            }
            this.zzsa.add(product);
            return this;
        }

        public T addPromotion(Promotion promotion) {
            if (promotion == null) {
                zzch.zzac("promotion should be non-null");
                return this;
            }
            this.zzrz.add(promotion);
            return this;
        }

        public Map<String, String> build() {
            HashMap hashMap = new HashMap(this.map);
            ProductAction productAction = this.zzrx;
            if (productAction != null) {
                hashMap.putAll(productAction.build());
            }
            int i = 1;
            for (Promotion promotion : this.zzrz) {
                hashMap.putAll(promotion.zzn(zzd.zzj(i)));
                i++;
            }
            int i2 = 1;
            for (Product product : this.zzsa) {
                hashMap.putAll(product.zzn(zzd.zzh(i2)));
                i2++;
            }
            int i3 = 1;
            for (Map.Entry<String, List<Product>> entry : this.zzry.entrySet()) {
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
                    hashMap.put("nm".length() != 0 ? valueOf3.concat("nm") : new String(valueOf3), entry.getKey());
                }
                i3++;
            }
            return hashMap;
        }

        @VisibleForTesting
        public String get(String str) {
            return this.map.get(str);
        }

        public final T set(String str, String str2) {
            if (str != null) {
                this.map.put(str, str2);
            } else {
                zzch.zzac("HitBuilder.set() called with a null paramName.");
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
            String zzah = zzcz.zzah(str);
            if (TextUtils.isEmpty(zzah)) {
                return this;
            }
            Map zzaf = zzcz.zzaf(zzah);
            zza("&cc", (String) zzaf.get("utm_content"));
            zza("&cm", (String) zzaf.get("utm_medium"));
            zza("&cn", (String) zzaf.get("utm_campaign"));
            zza("&cs", (String) zzaf.get("utm_source"));
            zza("&ck", (String) zzaf.get("utm_term"));
            zza("&ci", (String) zzaf.get("utm_id"));
            zza("&anid", (String) zzaf.get("anid"));
            zza("&gclid", (String) zzaf.get("gclid"));
            zza("&dclid", (String) zzaf.get("dclid"));
            zza("&aclid", (String) zzaf.get("aclid"));
            zza("&gmob_t", (String) zzaf.get("gmob_t"));
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

        public T setHitType(String str) {
            set("&t", str);
            return this;
        }

        public T setNewSession() {
            set("&sc", TtmlNode.START);
            return this;
        }

        public T setNonInteraction(boolean z) {
            set("&ni", zzcz.zzc(z));
            return this;
        }

        public T setProductAction(ProductAction productAction) {
            this.zzrx = productAction;
            return this;
        }

        public T setPromotionAction(String str) {
            this.map.put("&promoa", str);
            return this;
        }
    }
}
