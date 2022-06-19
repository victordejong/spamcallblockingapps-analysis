package p000;

import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
/* renamed from: az */
/* loaded from: classes-dex2jar.jar:az.class */
public final class C0225az {

    /* renamed from: a */
    public Bundle f1694a;

    /* renamed from: b */
    public final List<xy> f1695b;

    /* renamed from: c */
    public final boolean f1696c;

    /* renamed from: az$a */
    /* loaded from: classes-dex2jar.jar:az$a.class */
    public static final class C0226a {

        /* renamed from: a */
        public List<xy> f1697a;

        /* renamed from: b */
        public boolean f1698b;

        public C0226a() {
            this.f1698b = false;
        }

        public C0226a(C0225az c0225az) {
            this.f1698b = false;
            if (c0225az != null) {
                this.f1697a = c0225az.f1695b;
                this.f1698b = c0225az.f1696c;
                return;
            }
            throw new IllegalArgumentException("descriptor must not be null");
        }

        /* renamed from: a */
        public C0226a m5830a(xy xyVar) {
            if (xyVar != null) {
                List<xy> list = this.f1697a;
                if (list == null) {
                    this.f1697a = new ArrayList();
                } else if (list.contains(xyVar)) {
                    throw new IllegalArgumentException("route descriptor already added");
                }
                this.f1697a.add(xyVar);
                return this;
            }
            throw new IllegalArgumentException("route must not be null");
        }

        /* renamed from: b */
        public C0225az m5829b() {
            return new C0225az(this.f1697a, this.f1698b);
        }

        /* renamed from: c */
        public C0226a m5828c(Collection<xy> collection) {
            if (collection == null || collection.isEmpty()) {
                this.f1697a = null;
            } else {
                this.f1697a = new ArrayList(collection);
            }
            return this;
        }

        /* renamed from: d */
        public C0226a m5827d(boolean z) {
            this.f1698b = z;
            return this;
        }
    }

    public C0225az(List<xy> list, boolean z) {
        this.f1695b = list == null ? Collections.emptyList() : list;
        this.f1696c = z;
    }

    /* renamed from: b */
    public static C0225az m5834b(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("routes");
        ArrayList arrayList = null;
        if (parcelableArrayList != null) {
            arrayList = null;
            if (!parcelableArrayList.isEmpty()) {
                int size = parcelableArrayList.size();
                arrayList = new ArrayList(size);
                for (int i = 0; i < size; i++) {
                    arrayList.add(xy.e((Bundle) parcelableArrayList.get(i)));
                }
            }
        }
        return new C0225az(arrayList, bundle.getBoolean("supportsDynamicGroupRoute", false));
    }

    /* renamed from: a */
    public Bundle m5835a() {
        Bundle bundle = this.f1694a;
        if (bundle != null) {
            return bundle;
        }
        this.f1694a = new Bundle();
        List<xy> list = this.f1695b;
        if (list != null && !list.isEmpty()) {
            int size = this.f1695b.size();
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(size);
            for (int i = 0; i < size; i++) {
                arrayList.add(this.f1695b.get(i).a());
            }
            this.f1694a.putParcelableArrayList("routes", arrayList);
        }
        this.f1694a.putBoolean("supportsDynamicGroupRoute", this.f1696c);
        return this.f1694a;
    }

    /* renamed from: c */
    public List<xy> m5833c() {
        return this.f1695b;
    }

    /* renamed from: d */
    public boolean m5832d() {
        int size = m5833c().size();
        for (int i = 0; i < size; i++) {
            xy xyVar = this.f1695b.get(i);
            if (xyVar == null || !xyVar.y()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: e */
    public boolean m5831e() {
        return this.f1696c;
    }

    public String toString() {
        return "MediaRouteProviderDescriptor{ routes=" + Arrays.toString(m5833c().toArray()) + ", isValid=" + m5832d() + " }";
    }
}
