package androidx.lifecycle;

import android.os.Binder;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.p012v4.media.C0082b;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.savedstate.C0657a;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* renamed from: androidx.lifecycle.u */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/u.class */
public final class C0541u {

    /* renamed from: e */
    public static final Class[] f2063e = {Boolean.TYPE, boolean[].class, Double.TYPE, double[].class, Integer.TYPE, int[].class, Long.TYPE, long[].class, String.class, String[].class, Binder.class, Bundle.class, Byte.TYPE, byte[].class, Character.TYPE, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, Float.TYPE, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, Short.TYPE, short[].class, SparseArray.class, Size.class, SizeF.class};

    /* renamed from: a */
    public final Map<String, Object> f2064a;

    /* renamed from: b */
    public final Map<String, C0657a.AbstractC0659b> f2065b;

    /* renamed from: c */
    public final Map<String, Object> f2066c;

    /* renamed from: d */
    public final C0657a.AbstractC0659b f2067d;

    /* renamed from: androidx.lifecycle.u$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/u$a.class */
    public class C0542a implements C0657a.AbstractC0659b {
        public C0542a() {
            C0541u.this = r4;
        }

        @Override // androidx.savedstate.C0657a.AbstractC0659b
        /* renamed from: a */
        public Bundle mo3371a() {
            for (Map.Entry entry : new HashMap(C0541u.this.f2065b).entrySet()) {
                Bundle mo3371a = ((C0657a.AbstractC0659b) entry.getValue()).mo3371a();
                C0541u c0541u = C0541u.this;
                String str = (String) entry.getKey();
                Objects.requireNonNull(c0541u);
                if (mo3371a != null) {
                    for (Class cls : C0541u.f2063e) {
                        if (!cls.isInstance(mo3371a)) {
                        }
                    }
                    StringBuilder m8752j = C0082b.m8752j("Can't put value with type ");
                    m8752j.append(mo3371a.getClass());
                    m8752j.append(" into saved state");
                    throw new IllegalArgumentException(m8752j.toString());
                }
                C0530o c0530o = (C0530o) c0541u.f2066c.get(str);
                if (c0530o != null) {
                    c0530o.mo7432h(mo3371a);
                } else {
                    c0541u.f2064a.put(str, mo3371a);
                }
            }
            Set<String> keySet = C0541u.this.f2064a.keySet();
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(keySet.size());
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(arrayList.size());
            for (String str2 : keySet) {
                arrayList.add(str2);
                arrayList2.add(C0541u.this.f2064a.get(str2));
            }
            Bundle bundle = new Bundle();
            bundle.putParcelableArrayList("keys", arrayList);
            bundle.putParcelableArrayList("values", arrayList2);
            return bundle;
        }
    }

    public C0541u() {
        this.f2065b = new HashMap();
        this.f2066c = new HashMap();
        this.f2067d = new C0542a();
        this.f2064a = new HashMap();
    }

    public C0541u(Map<String, Object> map) {
        this.f2065b = new HashMap();
        this.f2066c = new HashMap();
        this.f2067d = new C0542a();
        this.f2064a = new HashMap(map);
    }
}
