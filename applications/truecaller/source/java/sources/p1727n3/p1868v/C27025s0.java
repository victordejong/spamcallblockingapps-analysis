package p1727n3.p1868v;

import android.os.Binder;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p1727n3.p1757d0.C25700a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.v.s0 */
/* loaded from: classes-dex2jar.jar:n3/v/s0.class */
public final class C27025s0 {

    /* renamed from: e */
    public static final Class[] f75559e = {Boolean.TYPE, boolean[].class, Double.TYPE, double[].class, Integer.TYPE, int[].class, Long.TYPE, long[].class, String.class, String[].class, Binder.class, Bundle.class, Byte.TYPE, byte[].class, Character.TYPE, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, Float.TYPE, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, Short.TYPE, short[].class, SparseArray.class, Size.class, SizeF.class};

    /* renamed from: a */
    public final Map<String, Object> f75560a;

    /* renamed from: b */
    public final Map<String, C25700a.AbstractC25702b> f75561b;

    /* renamed from: c */
    public final Map<String, Object<?>> f75562c;

    /* renamed from: d */
    public final C25700a.AbstractC25702b f75563d;

    /* renamed from: n3.v.s0$a */
    /* loaded from: classes-dex2jar.jar:n3/v/s0$a.class */
    public class C27026a implements C25700a.AbstractC25702b {
        public C27026a() {
            C27025s0.this = r4;
        }

        @Override // p1727n3.p1757d0.C25700a.AbstractC25702b
        /* renamed from: a */
        public Bundle mo990a() {
            for (Map.Entry entry : new HashMap(C27025s0.this.f75561b).entrySet()) {
                Bundle mo990a = ((C25700a.AbstractC25702b) entry.getValue()).mo990a();
                C27025s0 c27025s0 = C27025s0.this;
                String str = (String) entry.getKey();
                Objects.requireNonNull(c27025s0);
                if (mo990a != null) {
                    for (Class cls : C27025s0.f75559e) {
                        if (!cls.isInstance(mo990a)) {
                        }
                    }
                    StringBuilder m8728C = C22128a.m8728C("Can't put value with type ");
                    m8728C.append(mo990a.getClass());
                    m8728C.append(" into saved state");
                    throw new IllegalArgumentException(m8728C.toString());
                }
                C27010k0 c27010k0 = (C27010k0) c27025s0.f75562c.get(str);
                if (c27010k0 != null) {
                    c27010k0.mo1000l(mo990a);
                } else {
                    c27025s0.f75560a.put(str, mo990a);
                }
            }
            Set<String> keySet = C27025s0.this.f75560a.keySet();
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(keySet.size());
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(arrayList.size());
            for (String str2 : keySet) {
                arrayList.add(str2);
                arrayList2.add(C27025s0.this.f75560a.get(str2));
            }
            Bundle bundle = new Bundle();
            bundle.putParcelableArrayList("keys", arrayList);
            bundle.putParcelableArrayList("values", arrayList2);
            return bundle;
        }
    }

    public C27025s0() {
        this.f75561b = new HashMap();
        this.f75562c = new HashMap();
        this.f75563d = new C27026a();
        this.f75560a = new HashMap();
    }

    public C27025s0(Map<String, Object> map) {
        this.f75561b = new HashMap();
        this.f75562c = new HashMap();
        this.f75563d = new C27026a();
        this.f75560a = new HashMap(map);
    }
}
