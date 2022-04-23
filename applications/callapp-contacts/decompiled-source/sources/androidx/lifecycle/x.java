package androidx.lifecycle;

import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.savedstate.b;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/x.class */
public final class x {
    private static final Class[] e;

    /* renamed from: a  reason: collision with root package name */
    final Map<String, Object> f2594a;

    /* renamed from: b  reason: collision with root package name */
    final Map<String, b.AbstractC0116b> f2595b;

    /* renamed from: c  reason: collision with root package name */
    final b.AbstractC0116b f2596c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, Object<?>> f2597d;

    static {
        e = new Class[]{Boolean.TYPE, boolean[].class, Double.TYPE, double[].class, Integer.TYPE, int[].class, Long.TYPE, long[].class, String.class, String[].class, Binder.class, Bundle.class, Byte.TYPE, byte[].class, Character.TYPE, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, Float.TYPE, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, Short.TYPE, short[].class, SparseArray.class, Build.VERSION.SDK_INT >= 21 ? Size.class : Integer.TYPE, Build.VERSION.SDK_INT >= 21 ? SizeF.class : Integer.TYPE};
    }

    public x() {
        this.f2595b = new HashMap();
        this.f2597d = new HashMap();
        this.f2596c = new b.AbstractC0116b() { // from class: androidx.lifecycle.x.1
            @Override // androidx.savedstate.b.AbstractC0116b
            public final Bundle a() {
                for (Map.Entry entry : new HashMap(x.this.f2595b).entrySet()) {
                    x.this.a((String) entry.getKey(), (String) ((b.AbstractC0116b) entry.getValue()).a());
                }
                Set<String> keySet = x.this.f2594a.keySet();
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>(keySet.size());
                ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(arrayList.size());
                for (String str : keySet) {
                    arrayList.add(str);
                    arrayList2.add(x.this.f2594a.get(str));
                }
                Bundle bundle = new Bundle();
                bundle.putParcelableArrayList("keys", arrayList);
                bundle.putParcelableArrayList("values", arrayList2);
                return bundle;
            }
        };
        this.f2594a = new HashMap();
    }

    public x(Map<String, Object> map) {
        this.f2595b = new HashMap();
        this.f2597d = new HashMap();
        this.f2596c = new b.AbstractC0116b() { // from class: androidx.lifecycle.x.1
            @Override // androidx.savedstate.b.AbstractC0116b
            public final Bundle a() {
                for (Map.Entry entry : new HashMap(x.this.f2595b).entrySet()) {
                    x.this.a((String) entry.getKey(), (String) ((b.AbstractC0116b) entry.getValue()).a());
                }
                Set<String> keySet = x.this.f2594a.keySet();
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>(keySet.size());
                ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(arrayList.size());
                for (String str : keySet) {
                    arrayList.add(str);
                    arrayList2.add(x.this.f2594a.get(str));
                }
                Bundle bundle = new Bundle();
                bundle.putParcelableArrayList("keys", arrayList);
                bundle.putParcelableArrayList("values", arrayList2);
                return bundle;
            }
        };
        this.f2594a = new HashMap(map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static x a(Bundle bundle, Bundle bundle2) {
        if (bundle == null && bundle2 == null) {
            return new x();
        }
        HashMap hashMap = new HashMap();
        if (bundle2 != null) {
            for (String str : bundle2.keySet()) {
                hashMap.put(str, bundle2.get(str));
            }
        }
        if (bundle == null) {
            return new x(hashMap);
        }
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("keys");
        ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("values");
        if (parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) {
            throw new IllegalStateException("Invalid bundle passed as restored state");
        }
        for (int i = 0; i < parcelableArrayList.size(); i++) {
            hashMap.put((String) parcelableArrayList.get(i), parcelableArrayList2.get(i));
        }
        return new x(hashMap);
    }

    public final <T> void a(String str, T t) {
        if (t != null) {
            for (Class cls : e) {
                if (!cls.isInstance(t)) {
                }
            }
            throw new IllegalArgumentException("Can't put value with type " + t.getClass() + " into saved state");
        }
        t tVar = (t) this.f2597d.get(str);
        if (tVar != null) {
            tVar.b((t) t);
        } else {
            this.f2594a.put(str, t);
        }
    }
}
