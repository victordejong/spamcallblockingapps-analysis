package com.facebook.internal;

import android.os.Bundle;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import s1.z.c.l;
@Metadata(d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001:\u0001\rB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\bH\u0007R\u001e\u0010\u0003\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000e"}, d2 = {"Lcom/facebook/internal/BundleJSONConverter;", "", "()V", "SETTERS", "", "Ljava/lang/Class;", "Lcom/facebook/internal/BundleJSONConverter$Setter;", "convertToBundle", "Landroid/os/Bundle;", "jsonObject", "Lorg/json/JSONObject;", "convertToJSON", "bundle", "Setter", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.s */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/s.class */
public final class C1173s {

    /* renamed from: a */
    public static final C1173s f3205a = null;

    /* renamed from: b */
    public static final Map<Class<?>, AbstractC1181h> f3206b;

    @Metadata(d1 = {"��+\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\r"}, d2 = {"com/facebook/internal/BundleJSONConverter$1", "Lcom/facebook/internal/BundleJSONConverter$Setter;", "setOnBundle", "", "bundle", "Landroid/os/Bundle;", AnalyticsConstants.KEY, "", "value", "", "setOnJSON", "json", "Lorg/json/JSONObject;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.s$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/s$a.class */
    public static final class C1174a implements AbstractC1181h {
        @Override // com.facebook.internal.C1173s.AbstractC1181h
        /* renamed from: a */
        public void mo41647a(Bundle bundle, String str, Object obj) throws JSONException {
            l.e(bundle, "bundle");
            l.e(str, AnalyticsConstants.KEY);
            l.e(obj, "value");
            bundle.putBoolean(str, ((Boolean) obj).booleanValue());
        }
    }

    @Metadata(d1 = {"��+\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\r"}, d2 = {"com/facebook/internal/BundleJSONConverter$2", "Lcom/facebook/internal/BundleJSONConverter$Setter;", "setOnBundle", "", "bundle", "Landroid/os/Bundle;", AnalyticsConstants.KEY, "", "value", "", "setOnJSON", "json", "Lorg/json/JSONObject;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.s$b */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/s$b.class */
    public static final class C1175b implements AbstractC1181h {
        @Override // com.facebook.internal.C1173s.AbstractC1181h
        /* renamed from: a */
        public void mo41647a(Bundle bundle, String str, Object obj) throws JSONException {
            l.e(bundle, "bundle");
            l.e(str, AnalyticsConstants.KEY);
            l.e(obj, "value");
            bundle.putInt(str, ((Integer) obj).intValue());
        }
    }

    @Metadata(d1 = {"��+\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\r"}, d2 = {"com/facebook/internal/BundleJSONConverter$3", "Lcom/facebook/internal/BundleJSONConverter$Setter;", "setOnBundle", "", "bundle", "Landroid/os/Bundle;", AnalyticsConstants.KEY, "", "value", "", "setOnJSON", "json", "Lorg/json/JSONObject;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.s$c */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/s$c.class */
    public static final class C1176c implements AbstractC1181h {
        @Override // com.facebook.internal.C1173s.AbstractC1181h
        /* renamed from: a */
        public void mo41647a(Bundle bundle, String str, Object obj) throws JSONException {
            l.e(bundle, "bundle");
            l.e(str, AnalyticsConstants.KEY);
            l.e(obj, "value");
            bundle.putLong(str, ((Long) obj).longValue());
        }
    }

    @Metadata(d1 = {"��+\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\r"}, d2 = {"com/facebook/internal/BundleJSONConverter$4", "Lcom/facebook/internal/BundleJSONConverter$Setter;", "setOnBundle", "", "bundle", "Landroid/os/Bundle;", AnalyticsConstants.KEY, "", "value", "", "setOnJSON", "json", "Lorg/json/JSONObject;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.s$d */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/s$d.class */
    public static final class C1177d implements AbstractC1181h {
        @Override // com.facebook.internal.C1173s.AbstractC1181h
        /* renamed from: a */
        public void mo41647a(Bundle bundle, String str, Object obj) throws JSONException {
            l.e(bundle, "bundle");
            l.e(str, AnalyticsConstants.KEY);
            l.e(obj, "value");
            bundle.putDouble(str, ((Double) obj).doubleValue());
        }
    }

    @Metadata(d1 = {"��+\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\r"}, d2 = {"com/facebook/internal/BundleJSONConverter$5", "Lcom/facebook/internal/BundleJSONConverter$Setter;", "setOnBundle", "", "bundle", "Landroid/os/Bundle;", AnalyticsConstants.KEY, "", "value", "", "setOnJSON", "json", "Lorg/json/JSONObject;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.s$e */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/s$e.class */
    public static final class C1178e implements AbstractC1181h {
        @Override // com.facebook.internal.C1173s.AbstractC1181h
        /* renamed from: a */
        public void mo41647a(Bundle bundle, String str, Object obj) throws JSONException {
            l.e(bundle, "bundle");
            l.e(str, AnalyticsConstants.KEY);
            l.e(obj, "value");
            bundle.putString(str, (String) obj);
        }
    }

    @Metadata(d1 = {"��+\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\r"}, d2 = {"com/facebook/internal/BundleJSONConverter$6", "Lcom/facebook/internal/BundleJSONConverter$Setter;", "setOnBundle", "", "bundle", "Landroid/os/Bundle;", AnalyticsConstants.KEY, "", "value", "", "setOnJSON", "json", "Lorg/json/JSONObject;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.s$f */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/s$f.class */
    public static final class C1179f implements AbstractC1181h {
        @Override // com.facebook.internal.C1173s.AbstractC1181h
        /* renamed from: a */
        public void mo41647a(Bundle bundle, String str, Object obj) throws JSONException {
            l.e(bundle, "bundle");
            l.e(str, AnalyticsConstants.KEY);
            l.e(obj, "value");
            throw new IllegalArgumentException("Unexpected type from JSON");
        }
    }

    @Metadata(d1 = {"��+\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\r"}, d2 = {"com/facebook/internal/BundleJSONConverter$7", "Lcom/facebook/internal/BundleJSONConverter$Setter;", "setOnBundle", "", "bundle", "Landroid/os/Bundle;", AnalyticsConstants.KEY, "", "value", "", "setOnJSON", "json", "Lorg/json/JSONObject;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.s$g */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/s$g.class */
    public static final class C1180g implements AbstractC1181h {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.facebook.internal.C1173s.AbstractC1181h
        /* renamed from: a */
        public void mo41647a(Bundle bundle, String str, Object obj) throws JSONException {
            l.e(bundle, "bundle");
            l.e(str, AnalyticsConstants.KEY);
            l.e(obj, "value");
            JSONArray jSONArray = (JSONArray) obj;
            ArrayList arrayList = new ArrayList();
            if (jSONArray.length() == 0) {
                bundle.putStringArrayList(str, arrayList);
                return;
            }
            int i = 0;
            int length = jSONArray.length();
            if (length > 0) {
                while (true) {
                    int i2 = i + 1;
                    Object obj2 = jSONArray.get(i);
                    if (!(obj2 instanceof String)) {
                        throw new IllegalArgumentException(l.j("Unexpected type in an array: ", obj2.getClass()));
                    }
                    arrayList.add(obj2);
                    if (i2 >= length) {
                        break;
                    }
                    i = i2;
                }
            }
            bundle.putStringArrayList(str, arrayList);
        }
    }

    @Metadata(d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0001H&J \u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0001H&¨\u0006\f"}, d2 = {"Lcom/facebook/internal/BundleJSONConverter$Setter;", "", "setOnBundle", "", "bundle", "Landroid/os/Bundle;", AnalyticsConstants.KEY, "", "value", "setOnJSON", "json", "Lorg/json/JSONObject;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.s$h */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/s$h.class */
    public interface AbstractC1181h {
        /* renamed from: a */
        void mo41647a(Bundle bundle, String str, Object obj) throws JSONException;
    }

    static {
        HashMap hashMap = new HashMap();
        f3206b = hashMap;
        hashMap.put(Boolean.class, new C1174a());
        hashMap.put(Integer.class, new C1175b());
        hashMap.put(Long.class, new C1176c());
        hashMap.put(Double.class, new C1177d());
        hashMap.put(String.class, new C1178e());
        hashMap.put(String[].class, new C1179f());
        hashMap.put(JSONArray.class, new C1180g());
    }

    /* renamed from: a */
    public static final Bundle m41648a(JSONObject jSONObject) throws JSONException {
        l.e(jSONObject, "jsonObject");
        Bundle bundle = new Bundle();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj != JSONObject.NULL) {
                if (obj instanceof JSONObject) {
                    bundle.putBundle(next, m41648a((JSONObject) obj));
                } else {
                    AbstractC1181h abstractC1181h = f3206b.get(obj.getClass());
                    if (abstractC1181h == null) {
                        throw new IllegalArgumentException(l.j("Unsupported type: ", obj.getClass()));
                    }
                    l.d(next, AnalyticsConstants.KEY);
                    l.d(obj, "value");
                    abstractC1181h.mo41647a(bundle, next, obj);
                }
            }
        }
        return bundle;
    }
}
