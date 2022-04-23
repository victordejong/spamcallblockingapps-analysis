package com.google.android.gms.tagmanager;

import android.content.Context;
import com.apptentive.android.sdk.module.engagement.interaction.model.TextModalInteraction;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzgk.class */
public final class zzgk extends zzgh {

    /* renamed from: ID */
    private static final String f199ID = zza.UNIVERSAL_ANALYTICS.toString();
    private static final String zzbgx = zzb.ACCOUNT.toString();
    private static final String zzbgy = zzb.ANALYTICS_PASS_THROUGH.toString();
    private static final String zzbgz = zzb.ENABLE_ECOMMERCE.toString();
    private static final String zzbha = zzb.ECOMMERCE_USE_DATA_LAYER.toString();
    private static final String zzbhb = zzb.ECOMMERCE_MACRO_DATA.toString();
    private static final String zzbhc = zzb.ANALYTICS_FIELDS.toString();
    private static final String zzbhd = zzb.TRACK_TRANSACTION.toString();
    private static final String zzbhe = zzb.TRANSACTION_DATALAYER_MAP.toString();
    private static final String zzbhf = zzb.TRANSACTION_ITEM_DATALAYER_MAP.toString();
    private static final List<String> zzbhg = Arrays.asList(ProductAction.ACTION_DETAIL, ProductAction.ACTION_CHECKOUT, "checkout_option", "click", ProductAction.ACTION_ADD, ProductAction.ACTION_REMOVE, ProductAction.ACTION_PURCHASE, ProductAction.ACTION_REFUND);
    private static final Pattern zzbhh = Pattern.compile("dimension(\\d+)");
    private static final Pattern zzbhi = Pattern.compile("metric(\\d+)");
    private static Map<String, String> zzbhj;
    private static Map<String, String> zzbhk;
    private final DataLayer zzazg;
    private final Set<String> zzbhl;
    private final zzgf zzbhm;

    public zzgk(Context context, DataLayer dataLayer) {
        this(context, dataLayer, new zzgf(context));
    }

    @VisibleForTesting
    private zzgk(Context context, DataLayer dataLayer, zzgf zzgfVar) {
        super(f199ID, new String[0]);
        this.zzazg = dataLayer;
        this.zzbhm = zzgfVar;
        this.zzbhl = new HashSet();
        this.zzbhl.add("");
        this.zzbhl.add("0");
        this.zzbhl.add("false");
    }

    private static boolean zzc(Map<String, zzp> map, String str) {
        zzp zzpVar = map.get(str);
        if (zzpVar == null) {
            return false;
        }
        return zzgj.zzg(zzpVar).booleanValue();
    }

    private static void zzd(Map<String, String> map, String str, String str2) {
        if (str2 != null) {
            map.put(str, str2);
        }
    }

    private final String zzed(String str) {
        Object obj = this.zzazg.get(str);
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }

    private static Product zzi(Map<String, Object> map) {
        Product product = new Product();
        Object obj = map.get("id");
        if (obj != null) {
            product.setId(String.valueOf(obj));
        }
        Object obj2 = map.get("name");
        if (obj2 != null) {
            product.setName(String.valueOf(obj2));
        }
        Object obj3 = map.get("brand");
        if (obj3 != null) {
            product.setBrand(String.valueOf(obj3));
        }
        Object obj4 = map.get("category");
        if (obj4 != null) {
            product.setCategory(String.valueOf(obj4));
        }
        Object obj5 = map.get("variant");
        if (obj5 != null) {
            product.setVariant(String.valueOf(obj5));
        }
        Object obj6 = map.get(FirebaseAnalytics.Param.COUPON);
        if (obj6 != null) {
            product.setCouponCode(String.valueOf(obj6));
        }
        Object obj7 = map.get(TextModalInteraction.EVENT_KEY_ACTION_POSITION);
        if (obj7 != null) {
            product.setPosition(zzo(obj7).intValue());
        }
        Object obj8 = map.get("price");
        if (obj8 != null) {
            product.setPrice(zzn(obj8).doubleValue());
        }
        Object obj9 = map.get(FirebaseAnalytics.Param.QUANTITY);
        if (obj9 != null) {
            product.setQuantity(zzo(obj9).intValue());
        }
        for (String str : map.keySet()) {
            Matcher matcher = zzbhh.matcher(str);
            if (matcher.matches()) {
                try {
                    product.setCustomDimension(Integer.parseInt(matcher.group(1)), String.valueOf(map.get(str)));
                } catch (NumberFormatException e) {
                    String valueOf = String.valueOf(str);
                    zzdi.zzab(valueOf.length() != 0 ? "illegal number in custom dimension value: ".concat(valueOf) : new String("illegal number in custom dimension value: "));
                }
            } else {
                Matcher matcher2 = zzbhi.matcher(str);
                if (matcher2.matches()) {
                    try {
                        product.setCustomMetric(Integer.parseInt(matcher2.group(1)), zzo(map.get(str)).intValue());
                    } catch (NumberFormatException e2) {
                        String valueOf2 = String.valueOf(str);
                        zzdi.zzab(valueOf2.length() != 0 ? "illegal number in custom metric value: ".concat(valueOf2) : new String("illegal number in custom metric value: "));
                    }
                }
            }
        }
        return product;
    }

    private static Map<String, String> zzi(zzp zzpVar) {
        Object zzh = zzgj.zzh(zzpVar);
        if (!(zzh instanceof Map)) {
            return null;
        }
        Map map = (Map) zzh;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey().toString(), entry.getValue().toString());
        }
        return linkedHashMap;
    }

    private final Map<String, String> zzj(zzp zzpVar) {
        Map<String, String> zzi;
        if (!(zzpVar == null || (zzi = zzi(zzpVar)) == null)) {
            String str = zzi.get("&aip");
            if (str != null && this.zzbhl.contains(str.toLowerCase())) {
                zzi.remove("&aip");
            }
            return zzi;
        }
        return new HashMap();
    }

    private static Double zzn(Object obj) {
        if (obj instanceof String) {
            try {
                return Double.valueOf((String) obj);
            } catch (NumberFormatException e) {
                String valueOf = String.valueOf(e.getMessage());
                throw new RuntimeException(valueOf.length() != 0 ? "Cannot convert the object to Double: ".concat(valueOf) : new String("Cannot convert the object to Double: "));
            }
        } else if (obj instanceof Integer) {
            return Double.valueOf(((Integer) obj).doubleValue());
        } else {
            if (obj instanceof Double) {
                return (Double) obj;
            }
            String valueOf2 = String.valueOf(obj.toString());
            throw new RuntimeException(valueOf2.length() != 0 ? "Cannot convert the object to Double: ".concat(valueOf2) : new String("Cannot convert the object to Double: "));
        }
    }

    private static Integer zzo(Object obj) {
        if (obj instanceof String) {
            try {
                return Integer.valueOf((String) obj);
            } catch (NumberFormatException e) {
                String valueOf = String.valueOf(e.getMessage());
                throw new RuntimeException(valueOf.length() != 0 ? "Cannot convert the object to Integer: ".concat(valueOf) : new String("Cannot convert the object to Integer: "));
            }
        } else if (obj instanceof Double) {
            return Integer.valueOf(((Double) obj).intValue());
        } else {
            if (obj instanceof Integer) {
                return (Integer) obj;
            }
            String valueOf2 = String.valueOf(obj.toString());
            throw new RuntimeException(valueOf2.length() != 0 ? "Cannot convert the object to Integer: ".concat(valueOf2) : new String("Cannot convert the object to Integer: "));
        }
    }

    @Override // com.google.android.gms.tagmanager.zzgh, com.google.android.gms.tagmanager.zzbq
    public final /* bridge */ /* synthetic */ zzp zze(Map map) {
        return super.zze(map);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x02c0  */
    @Override // com.google.android.gms.tagmanager.zzgh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzg(java.util.Map<java.lang.String, com.google.android.gms.internal.measurement.zzp> r6) {
        /*
            Method dump skipped, instructions count: 2015
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzgk.zzg(java.util.Map):void");
    }

    @Override // com.google.android.gms.tagmanager.zzgh, com.google.android.gms.tagmanager.zzbq
    public final /* bridge */ /* synthetic */ boolean zznb() {
        return super.zznb();
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final /* bridge */ /* synthetic */ String zzok() {
        return super.zzok();
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final /* bridge */ /* synthetic */ Set zzol() {
        return super.zzol();
    }
}
