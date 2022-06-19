package p000;

import android.content.IntentFilter;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
/* renamed from: cz */
/* loaded from: classes-dex2jar.jar:cz.class */
public final class C1266cz {

    /* renamed from: c */
    public static final C1266cz f5728c = new C1266cz(new Bundle(), null);

    /* renamed from: a */
    public final Bundle f5729a;

    /* renamed from: b */
    public List<String> f5730b;

    /* renamed from: cz$a */
    /* loaded from: classes-dex2jar.jar:cz$a.class */
    public static final class C1267a {

        /* renamed from: a */
        public ArrayList<String> f5731a;

        public C1267a() {
        }

        public C1267a(C1266cz c1266cz) {
            if (c1266cz != null) {
                c1266cz.m2930c();
                if (c1266cz.f5730b.isEmpty()) {
                    return;
                }
                this.f5731a = new ArrayList<>(c1266cz.f5730b);
                return;
            }
            throw new IllegalArgumentException("selector must not be null");
        }

        /* renamed from: a */
        public C1267a m2924a(Collection<String> collection) {
            if (collection != null) {
                if (!collection.isEmpty()) {
                    for (String str : collection) {
                        m2923b(str);
                    }
                }
                return this;
            }
            throw new IllegalArgumentException("categories must not be null");
        }

        /* renamed from: b */
        public C1267a m2923b(String str) {
            if (str != null) {
                if (this.f5731a == null) {
                    this.f5731a = new ArrayList<>();
                }
                if (!this.f5731a.contains(str)) {
                    this.f5731a.add(str);
                }
                return this;
            }
            throw new IllegalArgumentException("category must not be null");
        }

        /* renamed from: c */
        public C1267a m2922c(C1266cz c1266cz) {
            if (c1266cz != null) {
                m2924a(c1266cz.m2928e());
                return this;
            }
            throw new IllegalArgumentException("selector must not be null");
        }

        /* renamed from: d */
        public C1266cz m2921d() {
            if (this.f5731a == null) {
                return C1266cz.f5728c;
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("controlCategories", this.f5731a);
            return new C1266cz(bundle, this.f5731a);
        }
    }

    public C1266cz(Bundle bundle, List<String> list) {
        this.f5729a = bundle;
        this.f5730b = list;
    }

    /* renamed from: d */
    public static C1266cz m2929d(Bundle bundle) {
        C1266cz c1266cz = null;
        if (bundle != null) {
            c1266cz = new C1266cz(bundle, null);
        }
        return c1266cz;
    }

    /* renamed from: a */
    public Bundle m2932a() {
        return this.f5729a;
    }

    /* renamed from: b */
    public boolean m2931b(C1266cz c1266cz) {
        if (c1266cz != null) {
            m2930c();
            c1266cz.m2930c();
            return this.f5730b.containsAll(c1266cz.f5730b);
        }
        return false;
    }

    /* renamed from: c */
    public void m2930c() {
        if (this.f5730b == null) {
            ArrayList<String> stringArrayList = this.f5729a.getStringArrayList("controlCategories");
            this.f5730b = stringArrayList;
            if (stringArrayList != null && !stringArrayList.isEmpty()) {
                return;
            }
            this.f5730b = Collections.emptyList();
        }
    }

    /* renamed from: e */
    public List<String> m2928e() {
        m2930c();
        return this.f5730b;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C1266cz) {
            C1266cz c1266cz = (C1266cz) obj;
            m2930c();
            c1266cz.m2930c();
            return this.f5730b.equals(c1266cz.f5730b);
        }
        return false;
    }

    /* renamed from: f */
    public boolean m2927f() {
        m2930c();
        return this.f5730b.isEmpty();
    }

    /* renamed from: g */
    public boolean m2926g() {
        m2930c();
        return !this.f5730b.contains(null);
    }

    /* renamed from: h */
    public boolean m2925h(List<IntentFilter> list) {
        if (list != null) {
            m2930c();
            int size = this.f5730b.size();
            if (size == 0) {
                return false;
            }
            int size2 = list.size();
            for (int i = 0; i < size2; i++) {
                IntentFilter intentFilter = list.get(i);
                if (intentFilter != null) {
                    for (int i2 = 0; i2 < size; i2++) {
                        if (intentFilter.hasCategory(this.f5730b.get(i2))) {
                            return true;
                        }
                    }
                    continue;
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        m2930c();
        return this.f5730b.hashCode();
    }

    public String toString() {
        return "MediaRouteSelector{ controlCategories=" + Arrays.toString(m2928e().toArray()) + " }";
    }
}
