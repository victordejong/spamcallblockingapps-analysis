package com.google.android.gms.tagmanager;

import android.content.Context;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.asus.updatesdk.BuildConfig;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.internal.h;
import com.google.android.gms.internal.i;
import com.google.android.gms.internal.k;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/co.class */
public final class co extends cl {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4363b = h.UNIVERSAL_ANALYTICS.toString();
    private static final String c = i.ACCOUNT.toString();
    private static final String d = i.ANALYTICS_PASS_THROUGH.toString();
    private static final String e = i.ENABLE_ECOMMERCE.toString();
    private static final String f = i.ECOMMERCE_USE_DATA_LAYER.toString();
    private static final String g = i.ECOMMERCE_MACRO_DATA.toString();
    private static final String h = i.ANALYTICS_FIELDS.toString();
    private static final String i = i.TRACK_TRANSACTION.toString();
    private static final String j = i.TRANSACTION_DATALAYER_MAP.toString();
    private static final String k = i.TRANSACTION_ITEM_DATALAYER_MAP.toString();
    private static final List<String> l = Arrays.asList(ProductAction.ACTION_DETAIL, ProductAction.ACTION_CHECKOUT, ProductAction.ACTION_CHECKOUT_OPTION, "click", ProductAction.ACTION_ADD, ProductAction.ACTION_REMOVE, ProductAction.ACTION_PURCHASE, ProductAction.ACTION_REFUND);
    private static final Pattern m = Pattern.compile("dimension(\\d+)");
    private static final Pattern n = Pattern.compile("metric(\\d+)");
    private static Map<String, String> o;
    private static Map<String, String> p;
    private final Set<String> q;
    private final ck r;
    private final c s;

    public co(Context context, c cVar) {
        this(cVar, new ck(context));
    }

    private co(c cVar, ck ckVar) {
        super(f4363b, new String[0]);
        this.s = cVar;
        this.r = ckVar;
        this.q = new HashSet();
        this.q.add(BuildConfig.FLAVOR);
        this.q.add("0");
        this.q.add("false");
    }

    private static Double a(Object obj) {
        Double valueOf;
        if (obj instanceof String) {
            try {
                valueOf = Double.valueOf((String) obj);
            } catch (NumberFormatException e2) {
                String valueOf2 = String.valueOf(e2.getMessage());
                throw new RuntimeException(valueOf2.length() != 0 ? "Cannot convert the object to Double: ".concat(valueOf2) : new String("Cannot convert the object to Double: "));
            }
        } else if (obj instanceof Integer) {
            valueOf = Double.valueOf(((Integer) obj).doubleValue());
        } else if (obj instanceof Double) {
            valueOf = (Double) obj;
        } else {
            String valueOf3 = String.valueOf(obj.toString());
            throw new RuntimeException(valueOf3.length() != 0 ? "Cannot convert the object to Double: ".concat(valueOf3) : new String("Cannot convert the object to Double: "));
        }
        return valueOf;
    }

    private String a(String str) {
        Object b2 = this.s.b(str);
        return b2 == null ? null : b2.toString();
    }

    private static Map<String, String> a(k.a aVar) {
        LinkedHashMap linkedHashMap;
        Object e2 = cn.e(aVar);
        if (!(e2 instanceof Map)) {
            linkedHashMap = null;
        } else {
            linkedHashMap = new LinkedHashMap();
            for (Map.Entry entry : ((Map) e2).entrySet()) {
                linkedHashMap.put(entry.getKey().toString(), entry.getValue().toString());
            }
        }
        return linkedHashMap;
    }

    private void a(Tracker tracker, Map<String, k.a> map) {
        Map<String, String> map2;
        Map<String, String> map3;
        String a2 = a("transactionId");
        if (a2 == null) {
            an.a("Cannot find transactionId in data layer.");
            return;
        }
        LinkedList<Map<String, String>> linkedList = new LinkedList();
        try {
            Map<String, String> b2 = b(map.get(h));
            b2.put("&t", "transaction");
            k.a aVar = map.get(j);
            if (aVar != null) {
                map2 = a(aVar);
            } else {
                if (o == null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("transactionId", "&ti");
                    hashMap.put("transactionAffiliation", "&ta");
                    hashMap.put("transactionTax", "&tt");
                    hashMap.put("transactionShipping", "&ts");
                    hashMap.put("transactionTotal", "&tr");
                    hashMap.put("transactionCurrency", "&cu");
                    o = hashMap;
                }
                map2 = o;
            }
            for (Map.Entry<String, String> entry : map2.entrySet()) {
                a(b2, entry.getValue(), a(entry.getKey()));
            }
            linkedList.add(b2);
            List<Map<String, String>> b3 = b("transactionProducts");
            if (b3 != null) {
                for (Map<String, String> map4 : b3) {
                    if (map4.get(ContactDetailCallogActivity.EXTRA_NAME) == null) {
                        an.a("Unable to send transaction item hit due to missing 'name' field.");
                        return;
                    }
                    Map<String, String> b4 = b(map.get(h));
                    b4.put("&t", "item");
                    b4.put("&ti", a2);
                    k.a aVar2 = map.get(k);
                    if (aVar2 != null) {
                        map3 = a(aVar2);
                    } else {
                        if (p == null) {
                            HashMap hashMap2 = new HashMap();
                            hashMap2.put(ContactDetailCallogActivity.EXTRA_NAME, "&in");
                            hashMap2.put("sku", "&ic");
                            hashMap2.put("category", "&iv");
                            hashMap2.put("price", "&ip");
                            hashMap2.put("quantity", "&iq");
                            hashMap2.put("currency", "&cu");
                            p = hashMap2;
                        }
                        map3 = p;
                    }
                    for (Map.Entry<String, String> entry2 : map3.entrySet()) {
                        a(b4, entry2.getValue(), map4.get(entry2.getKey()));
                    }
                    linkedList.add(b4);
                }
            }
            for (Map<String, String> map5 : linkedList) {
                tracker.send(map5);
            }
        } catch (IllegalArgumentException e2) {
            an.a("Unable to send transaction", e2);
        }
    }

    private static void a(Map<String, String> map, String str, String str2) {
        if (str2 != null) {
            map.put(str, str2);
        }
    }

    private static boolean a(Map<String, k.a> map, String str) {
        k.a aVar = map.get(str);
        return aVar == null ? false : cn.d(aVar).booleanValue();
    }

    private static Integer b(Object obj) {
        Integer valueOf;
        if (obj instanceof String) {
            try {
                valueOf = Integer.valueOf((String) obj);
            } catch (NumberFormatException e2) {
                String valueOf2 = String.valueOf(e2.getMessage());
                throw new RuntimeException(valueOf2.length() != 0 ? "Cannot convert the object to Integer: ".concat(valueOf2) : new String("Cannot convert the object to Integer: "));
            }
        } else if (obj instanceof Double) {
            valueOf = Integer.valueOf(((Double) obj).intValue());
        } else if (obj instanceof Integer) {
            valueOf = (Integer) obj;
        } else {
            String valueOf3 = String.valueOf(obj.toString());
            throw new RuntimeException(valueOf3.length() != 0 ? "Cannot convert the object to Integer: ".concat(valueOf3) : new String("Cannot convert the object to Integer: "));
        }
        return valueOf;
    }

    private List<Map<String, String>> b(String str) {
        List<Map<String, String>> list;
        Object b2 = this.s.b(str);
        if (b2 == null) {
            list = null;
        } else if (!(b2 instanceof List)) {
            throw new IllegalArgumentException("transactionProducts should be of type List.");
        } else {
            for (Object obj : (List) b2) {
                if (!(obj instanceof Map)) {
                    throw new IllegalArgumentException("Each element of transactionProducts should be of type Map.");
                }
            }
            list = (List) b2;
        }
        return list;
    }

    private Map<String, String> b(k.a aVar) {
        Map<String, String> a2;
        if (aVar == null) {
            a2 = new HashMap<>();
        } else {
            a2 = a(aVar);
            if (a2 == null) {
                a2 = new HashMap<>();
            } else {
                String str = a2.get("&aip");
                if (str != null && this.q.contains(str.toLowerCase())) {
                    a2.remove("&aip");
                }
            }
        }
        return a2;
    }

    private static Product c(Map<String, Object> map) {
        Product product = new Product();
        Object obj = map.get("id");
        if (obj != null) {
            product.setId(String.valueOf(obj));
        }
        Object obj2 = map.get(ContactDetailCallogActivity.EXTRA_NAME);
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
        Object obj6 = map.get("coupon");
        if (obj6 != null) {
            product.setCouponCode(String.valueOf(obj6));
        }
        Object obj7 = map.get("position");
        if (obj7 != null) {
            product.setPosition(b(obj7).intValue());
        }
        Object obj8 = map.get("price");
        if (obj8 != null) {
            product.setPrice(a(obj8).doubleValue());
        }
        Object obj9 = map.get("quantity");
        if (obj9 != null) {
            product.setQuantity(b(obj9).intValue());
        }
        for (String str : map.keySet()) {
            Matcher matcher = m.matcher(str);
            if (matcher.matches()) {
                try {
                    product.setCustomDimension(Integer.parseInt(matcher.group(1)), String.valueOf(map.get(str)));
                } catch (NumberFormatException e2) {
                    String valueOf = String.valueOf(str);
                    an.b(valueOf.length() != 0 ? "illegal number in custom dimension value: ".concat(valueOf) : new String("illegal number in custom dimension value: "));
                }
            } else {
                Matcher matcher2 = n.matcher(str);
                if (matcher2.matches()) {
                    try {
                        product.setCustomMetric(Integer.parseInt(matcher2.group(1)), b(map.get(str)).intValue());
                    } catch (NumberFormatException e3) {
                        String valueOf2 = String.valueOf(str);
                        an.b(valueOf2.length() != 0 ? "illegal number in custom metric value: ".concat(valueOf2) : new String("illegal number in custom metric value: "));
                    }
                }
            }
        }
        return product;
    }

    @Override // com.google.android.gms.tagmanager.cl, com.google.android.gms.tagmanager.q
    public final /* bridge */ /* synthetic */ k.a a(Map map) {
        return super.a((Map<String, k.a>) map);
    }

    @Override // com.google.android.gms.tagmanager.cl, com.google.android.gms.tagmanager.q
    public final /* bridge */ /* synthetic */ boolean a() {
        return super.a();
    }

    @Override // com.google.android.gms.tagmanager.q
    public final /* bridge */ /* synthetic */ String b() {
        return super.b();
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x0276  */
    @Override // com.google.android.gms.tagmanager.cl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(java.util.Map<java.lang.String, com.google.android.gms.internal.k.a> r6) {
        /*
            Method dump skipped, instructions count: 1221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.co.b(java.util.Map):void");
    }

    @Override // com.google.android.gms.tagmanager.q
    public final /* bridge */ /* synthetic */ Set c() {
        return super.c();
    }
}
