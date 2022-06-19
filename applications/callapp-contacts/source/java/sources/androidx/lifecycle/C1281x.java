package androidx.lifecycle;

import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.savedstate.C2770b;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: androidx.lifecycle.x */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/x.class */
public final class C1281x {

    /* renamed from: e */
    private static final Class[] f4852e;

    /* renamed from: a */
    final Map<String, Object> f4853a;

    /* renamed from: b */
    final Map<String, C2770b.AbstractC2772b> f4854b;

    /* renamed from: c */
    final C2770b.AbstractC2772b f4855c;

    /* renamed from: d */
    private final Map<String, Object<?>> f4856d;

    static {
        f4852e = new Class[]{Boolean.TYPE, boolean[].class, Double.TYPE, double[].class, Integer.TYPE, int[].class, Long.TYPE, long[].class, String.class, String[].class, Binder.class, Bundle.class, Byte.TYPE, byte[].class, Character.TYPE, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, Float.TYPE, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, Short.TYPE, short[].class, SparseArray.class, Build.VERSION.SDK_INT >= 21 ? Size.class : Integer.TYPE, Build.VERSION.SDK_INT >= 21 ? SizeF.class : Integer.TYPE};
    }

    public C1281x() {
        this.f4854b = new HashMap();
        this.f4856d = new HashMap();
        this.f4855c = new C2770b.AbstractC2772b() { // from class: androidx.lifecycle.x.1
            @Override // androidx.savedstate.C2770b.AbstractC2772b
            /* renamed from: a */
            public final Bundle mo39931a() {
                for (Map.Entry entry : new HashMap(C1281x.this.f4854b).entrySet()) {
                    C1281x.this.m43276a((String) entry.getKey(), (String) ((C2770b.AbstractC2772b) entry.getValue()).mo39931a());
                }
                Set<String> keySet = C1281x.this.f4853a.keySet();
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>(keySet.size());
                ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(arrayList.size());
                for (String str : keySet) {
                    arrayList.add(str);
                    arrayList2.add(C1281x.this.f4853a.get(str));
                }
                Bundle bundle = new Bundle();
                bundle.putParcelableArrayList("keys", arrayList);
                bundle.putParcelableArrayList("values", arrayList2);
                return bundle;
            }
        };
        this.f4853a = new HashMap();
    }

    public C1281x(Map<String, Object> map) {
        this.f4854b = new HashMap();
        this.f4856d = new HashMap();
        this.f4855c = new C2770b.AbstractC2772b() { // from class: androidx.lifecycle.x.1
            @Override // androidx.savedstate.C2770b.AbstractC2772b
            /* renamed from: a */
            public final Bundle mo39931a() {
                for (Map.Entry entry : new HashMap(C1281x.this.f4854b).entrySet()) {
                    C1281x.this.m43276a((String) entry.getKey(), (String) ((C2770b.AbstractC2772b) entry.getValue()).mo39931a());
                }
                Set<String> keySet = C1281x.this.f4853a.keySet();
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>(keySet.size());
                ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(arrayList.size());
                for (String str : keySet) {
                    arrayList.add(str);
                    arrayList2.add(C1281x.this.f4853a.get(str));
                }
                Bundle bundle = new Bundle();
                bundle.putParcelableArrayList("keys", arrayList);
                bundle.putParcelableArrayList("values", arrayList2);
                return bundle;
            }
        };
        this.f4853a = new HashMap(map);
    }

    /* renamed from: a */
    public static C1281x m43277a(Bundle bundle, Bundle bundle2) {
        if (bundle == null && bundle2 == null) {
            return new C1281x();
        }
        HashMap hashMap = new HashMap();
        if (bundle2 != null) {
            for (String str : bundle2.keySet()) {
                hashMap.put(str, bundle2.get(str));
            }
        }
        if (bundle == null) {
            return new C1281x(hashMap);
        }
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("keys");
        ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("values");
        if (parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) {
            throw new IllegalStateException("Invalid bundle passed as restored state");
        }
        for (int i = 0; i < parcelableArrayList.size(); i++) {
            hashMap.put((String) parcelableArrayList.get(i), parcelableArrayList2.get(i));
        }
        return new C1281x(hashMap);
    }

    /* renamed from: a */
    public final <T> void m43276a(String str, T t) {
        if (t != null) {
            for (Class cls : f4852e) {
                if (!cls.isInstance(t)) {
                }
            }
            throw new IllegalArgumentException("Can't put value with type " + t.getClass() + " into saved state");
        }
        C1267t c1267t = (C1267t) this.f4856d.get(str);
        if (c1267t != null) {
            c1267t.mo43286b((C1267t) t);
        } else {
            this.f4853a.put(str, t);
        }
    }
}
