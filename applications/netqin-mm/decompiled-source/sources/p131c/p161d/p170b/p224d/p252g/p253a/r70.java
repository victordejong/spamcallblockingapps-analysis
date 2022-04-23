package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeip;
import com.google.android.gms.internal.ads.zzejj;
import com.google.android.gms.internal.ads.zzeju;
import com.google.android.gms.internal.ads.zzekb;
import com.google.android.gms.internal.ads.zzeke;
import com.google.android.gms.internal.ads.zzeko;
import com.google.android.gms.internal.ads.zzelj;
import com.google.android.gms.internal.ads.zzels;
import com.google.android.gms.internal.ads.zzeno;
import com.google.android.gms.internal.ads.zzenr;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.r70 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/r70.class */
public final class r70<T extends zzeju<T>> {

    /* renamed from: d */
    public static final r70 f14876d = new r70(true);

    /* renamed from: a */
    public final k90<T, Object> f14877a;

    /* renamed from: b */
    public boolean f14878b;

    /* renamed from: c */
    public boolean f14879c;

    public r70() {
        this.f14877a = k90.m26722c(16);
    }

    public r70(k90<T, Object> k90Var) {
        this.f14877a = k90Var;
        m26428e();
    }

    public r70(boolean z) {
        this(k90.m26722c(0));
        m26428e();
    }

    /* renamed from: a */
    public static int m26439a(zzeno zzenoVar, int i, Object obj) {
        int e = zzejj.m12468e(i);
        int i2 = e;
        if (zzenoVar == zzeno.GROUP) {
            zzekb.m12373a((zzelj) obj);
            i2 = e << 1;
        }
        return i2 + m26433b(zzenoVar, obj);
    }

    /* renamed from: a */
    public static Object m26437a(Object obj) {
        if (obj instanceof zzels) {
            return ((zzels) obj).mo12340D();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    /* renamed from: a */
    public static void m26442a(zzejj zzejjVar, zzeno zzenoVar, int i, Object obj) throws IOException {
        if (zzenoVar == zzeno.GROUP) {
            zzelj zzeljVar = (zzelj) obj;
            zzekb.m12373a(zzeljVar);
            zzejjVar.mo12441a(i, 3);
            zzeljVar.mo12350a(zzejjVar);
            zzejjVar.mo12441a(i, 4);
            return;
        }
        zzejjVar.mo12441a(i, zzenoVar.zzbjf());
        switch (q70.f14602b[zzenoVar.ordinal()]) {
            case 1:
                zzejjVar.m12504a(((Double) obj).doubleValue());
                return;
            case 2:
                zzejjVar.m12503a(((Float) obj).floatValue());
                return;
            case 3:
                zzejjVar.mo12434a(((Long) obj).longValue());
                return;
            case 4:
                zzejjVar.mo12434a(((Long) obj).longValue());
                return;
            case 5:
                zzejjVar.mo12442a(((Integer) obj).intValue());
                return;
            case 6:
                zzejjVar.mo12423c(((Long) obj).longValue());
                return;
            case 7:
                zzejjVar.mo12421d(((Integer) obj).intValue());
                return;
            case 8:
                zzejjVar.m12496a(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((zzelj) obj).mo12350a(zzejjVar);
                return;
            case 10:
                zzejjVar.mo12432a((zzelj) obj);
                return;
            case 11:
                if (obj instanceof zzeip) {
                    zzejjVar.mo12433a((zzeip) obj);
                    return;
                } else {
                    zzejjVar.mo12431a((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof zzeip) {
                    zzejjVar.mo12433a((zzeip) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzejjVar.mo12426b(bArr, 0, bArr.length);
                return;
            case 13:
                zzejjVar.mo12429b(((Integer) obj).intValue());
                return;
            case 14:
                zzejjVar.mo12421d(((Integer) obj).intValue());
                return;
            case 15:
                zzejjVar.mo12423c(((Long) obj).longValue());
                return;
            case 16:
                zzejjVar.m12476c(((Integer) obj).intValue());
                return;
            case 17:
                zzejjVar.m12483b(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof zzeke) {
                    zzejjVar.mo12442a(((zzeke) obj).zzv());
                    return;
                } else {
                    zzejjVar.mo12442a(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public static void m26438a(zzeno zzenoVar, Object obj) {
        boolean z;
        zzekb.m12372a(obj);
        switch (q70.f14601a[zzenoVar.zzbje().ordinal()]) {
            case 1:
                z = obj instanceof Integer;
                break;
            case 2:
                z = obj instanceof Long;
                break;
            case 3:
                z = obj instanceof Float;
                break;
            case 4:
                z = obj instanceof Double;
                break;
            case 5:
                z = obj instanceof Boolean;
                break;
            case 6:
                z = obj instanceof String;
                break;
            case 7:
                z = true;
                if (!(obj instanceof zzeip)) {
                    if (obj instanceof byte[]) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            case 8:
                z = true;
                if (!(obj instanceof Integer)) {
                    if (obj instanceof zzeke) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            case 9:
                z = true;
                if (!(obj instanceof zzelj)) {
                    if (obj instanceof zzeko) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            default:
                z = false;
                break;
        }
        if (!z) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
    }

    /* renamed from: b */
    public static int m26434b(zzeju<?> zzejuVar, Object obj) {
        zzeno z = zzejuVar.mo12388z();
        int zzv = zzejuVar.zzv();
        if (!zzejuVar.mo12392I()) {
            return m26439a(z, zzv, obj);
        }
        int i = 0;
        int i2 = 0;
        if (zzejuVar.mo12389j()) {
            for (Object obj2 : (List) obj) {
                i2 += m26433b(z, obj2);
            }
            return zzejj.m12468e(zzv) + i2 + zzejj.m12445m(i2);
        }
        for (Object obj3 : (List) obj) {
            i += m26439a(z, zzv, obj3);
        }
        return i;
    }

    /* renamed from: b */
    public static int m26433b(zzeno zzenoVar, Object obj) {
        switch (q70.f14602b[zzenoVar.ordinal()]) {
            case 1:
                return zzejj.m12493b(((Double) obj).doubleValue());
            case 2:
                return zzejj.m12492b(((Float) obj).floatValue());
            case 3:
                return zzejj.m12469d(((Long) obj).longValue());
            case 4:
                return zzejj.m12466e(((Long) obj).longValue());
            case 5:
                return zzejj.m12465f(((Integer) obj).intValue());
            case 6:
                return zzejj.m12458g(((Long) obj).longValue());
            case 7:
                return zzejj.m12453i(((Integer) obj).intValue());
            case 8:
                return zzejj.m12479b(((Boolean) obj).booleanValue());
            case 9:
                return zzejj.m12473c((zzelj) obj);
            case 10:
                return obj instanceof zzeko ? zzejj.m12499a((zzeko) obj) : zzejj.m12481b((zzelj) obj);
            case 11:
                return obj instanceof zzeip ? zzejj.m12482b((zzeip) obj) : zzejj.m12480b((String) obj);
            case 12:
                return obj instanceof zzeip ? zzejj.m12482b((zzeip) obj) : zzejj.m12478b((byte[]) obj);
            case 13:
                return zzejj.m12461g(((Integer) obj).intValue());
            case 14:
                return zzejj.m12450j(((Integer) obj).intValue());
            case 15:
                return zzejj.m12454h(((Long) obj).longValue());
            case 16:
                return zzejj.m12457h(((Integer) obj).intValue());
            case 17:
                return zzejj.m12462f(((Long) obj).longValue());
            case 18:
                return obj instanceof zzeke ? zzejj.m12448k(((zzeke) obj).zzv()) : zzejj.m12448k(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* renamed from: b */
    public static <T extends zzeju<T>> boolean m26432b(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.mo12393E() != zzenr.MESSAGE) {
            return true;
        }
        if (key.mo12392I()) {
            for (zzelj zzeljVar : (List) entry.getValue()) {
                if (!zzeljVar.isInitialized()) {
                    return false;
                }
            }
            return true;
        }
        Object value = entry.getValue();
        if (value instanceof zzelj) {
            return ((zzelj) value).isInitialized();
        }
        if (value instanceof zzeko) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    /* renamed from: c */
    public static int m26430c(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        return (key.mo12393E() != zzenr.MESSAGE || key.mo12392I() || key.mo12389j()) ? m26434b((zzeju<?>) key, value) : value instanceof zzeko ? zzejj.m12488b(entry.getKey().zzv(), (zzeko) value) : zzejj.m12487b(entry.getKey().zzv(), (zzelj) value);
    }

    /* renamed from: g */
    public static <T extends zzeju<T>> r70<T> m26426g() {
        return f14876d;
    }

    /* renamed from: a */
    public final Object m26441a(T t) {
        Object obj = this.f14877a.get(t);
        if (!(obj instanceof zzeko)) {
            return obj;
        }
        zzeko zzekoVar = (zzeko) obj;
        zzeko.m12359c();
        throw null;
    }

    /* renamed from: a */
    public final Iterator<Map.Entry<T, Object>> m26444a() {
        return this.f14879c ? new y70(this.f14877a.m26718e().iterator()) : this.f14877a.m26718e().iterator();
    }

    /* renamed from: a */
    public final void m26443a(r70<T> r70Var) {
        for (int i = 0; i < r70Var.f14877a.m26723c(); i++) {
            m26436a((Map.Entry) r70Var.f14877a.m26731a(i));
        }
        for (Map.Entry<T, Object> entry : r70Var.f14877a.m26720d()) {
            m26436a((Map.Entry) entry);
        }
    }

    /* renamed from: a */
    public final void m26440a(T t, Object obj) {
        if (!t.mo12392I()) {
            m26438a(t.mo12388z(), obj);
        } else if (obj instanceof List) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList.get(i);
                i++;
                m26438a(t.mo12388z(), obj2);
            }
            obj = arrayList;
        } else {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        if (obj instanceof zzeko) {
            this.f14879c = true;
        }
        this.f14877a.m26727a((k90<T, Object>) t, (T) obj);
    }

    /* renamed from: a */
    public final void m26436a(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof zzeko) {
            zzeko zzekoVar = (zzeko) value;
            zzeko.m12359c();
            throw null;
        } else if (key.mo12392I()) {
            Object a = m26441a((r70<T>) key);
            Object obj = a;
            if (a == null) {
                obj = new ArrayList();
            }
            for (Object obj2 : (List) value) {
                ((List) obj).add(m26437a(obj2));
            }
            this.f14877a.m26727a((k90<T, Object>) key, (T) obj);
        } else if (key.mo12393E() == zzenr.MESSAGE) {
            Object a2 = m26441a((r70<T>) key);
            if (a2 == null) {
                this.f14877a.m26727a((k90<T, Object>) key, (T) m26437a(value));
            } else {
                this.f14877a.m26727a((k90<T, Object>) key, (T) (a2 instanceof zzels ? key.mo12390a((zzels) a2, (zzels) value) : key.mo12391a(((zzelj) a2).mo12348e(), (zzelj) value).mo12342K()));
            }
        } else {
            this.f14877a.m26727a((k90<T, Object>) key, (T) m26437a(value));
        }
    }

    /* renamed from: b */
    public final boolean m26435b() {
        return this.f14878b;
    }

    /* renamed from: c */
    public final boolean m26431c() {
        for (int i = 0; i < this.f14877a.m26723c(); i++) {
            if (!m26432b(this.f14877a.m26731a(i))) {
                return false;
            }
        }
        for (Map.Entry<T, Object> entry : this.f14877a.m26720d()) {
            if (!m26432b(entry)) {
                return false;
            }
        }
        return true;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        r70 r70Var = new r70();
        for (int i = 0; i < this.f14877a.m26723c(); i++) {
            Map.Entry<T, Object> a = this.f14877a.m26731a(i);
            r70Var.m26440a((r70) a.getKey(), a.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f14877a.m26720d()) {
            r70Var.m26440a((r70) entry.getKey(), entry.getValue());
        }
        r70Var.f14879c = this.f14879c;
        return r70Var;
    }

    /* renamed from: d */
    public final Iterator<Map.Entry<T, Object>> m26429d() {
        return this.f14879c ? new y70(this.f14877a.entrySet().iterator()) : this.f14877a.entrySet().iterator();
    }

    /* renamed from: e */
    public final void m26428e() {
        if (!this.f14878b) {
            this.f14877a.mo26726b();
            this.f14878b = true;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r70)) {
            return false;
        }
        return this.f14877a.equals(((r70) obj).f14877a);
    }

    /* renamed from: f */
    public final int m26427f() {
        int i = 0;
        for (int i2 = 0; i2 < this.f14877a.m26723c(); i2++) {
            i += m26430c(this.f14877a.m26731a(i2));
        }
        for (Map.Entry<T, Object> entry : this.f14877a.m26720d()) {
            i += m26430c(entry);
        }
        return i;
    }

    public final int hashCode() {
        return this.f14877a.hashCode();
    }
}
