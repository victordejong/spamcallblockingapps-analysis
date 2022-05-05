package p081h.p093b.p094a.p095a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
/* renamed from: h.b.a.a.d */
/* loaded from: classes-dex2jar.jar:h/b/a/a/d.class */
public class C5539d {

    /* renamed from: a */
    public boolean f13833a;

    /* renamed from: b */
    public String f13834b;

    /* renamed from: c */
    public String f13835c;

    /* renamed from: d */
    public String f13836d;

    /* renamed from: e */
    public String f13837e;

    /* renamed from: f */
    public String f13838f;

    /* renamed from: g */
    public int f13839g;

    /* renamed from: h */
    public ArrayList<C5552i> f13840h;

    /* renamed from: i */
    public boolean f13841i;

    /* renamed from: h.b.a.a.d$a */
    /* loaded from: classes-dex2jar.jar:h/b/a/a/d$a.class */
    public static class C5540a {

        /* renamed from: a */
        public String f13842a;

        /* renamed from: b */
        public String f13843b;

        /* renamed from: c */
        public String f13844c;

        /* renamed from: d */
        public String f13845d;

        /* renamed from: e */
        public int f13846e;

        /* renamed from: f */
        public ArrayList<C5552i> f13847f;

        /* renamed from: g */
        public boolean f13848g;

        public C5540a() {
            this.f13846e = 0;
        }

        @NonNull
        /* renamed from: a */
        public C5540a m25172a(@NonNull C5552i iVar) {
            ArrayList<C5552i> arrayList = new ArrayList<>();
            arrayList.add(iVar);
            this.f13847f = arrayList;
            return this;
        }

        @NonNull
        /* renamed from: a */
        public C5539d m25173a() {
            ArrayList<C5552i> arrayList = this.f13847f;
            if (arrayList == null || arrayList.isEmpty()) {
                throw new IllegalArgumentException("SkuDetails must be provided.");
            }
            ArrayList<C5552i> arrayList2 = this.f13847f;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                C5552i iVar = arrayList2.get(i);
                i++;
                if (iVar == null) {
                    throw new IllegalArgumentException("SKU cannot be null.");
                }
            }
            if (this.f13847f.size() > 1) {
                C5552i iVar2 = this.f13847f.get(0);
                String n = iVar2.m25142n();
                ArrayList<C5552i> arrayList3 = this.f13847f;
                int size2 = arrayList3.size();
                int i2 = 0;
                while (i2 < size2) {
                    C5552i iVar3 = arrayList3.get(i2);
                    i2++;
                    if (!n.equals(iVar3.m25142n())) {
                        throw new IllegalArgumentException("SKUs should have the same type.");
                    }
                }
                String o = iVar2.m25141o();
                ArrayList<C5552i> arrayList4 = this.f13847f;
                int size3 = arrayList4.size();
                int i3 = 0;
                while (i3 < size3) {
                    C5552i iVar4 = arrayList4.get(i3);
                    i3++;
                    if (!o.equals(iVar4.m25141o())) {
                        throw new IllegalArgumentException("All SKUs must have the same package name.");
                    }
                }
            }
            C5539d dVar = new C5539d();
            dVar.f13833a = true ^ this.f13847f.get(0).m25141o().isEmpty();
            dVar.f13834b = null;
            dVar.f13835c = this.f13842a;
            dVar.f13838f = this.f13845d;
            dVar.f13836d = this.f13843b;
            dVar.f13837e = this.f13844c;
            dVar.f13839g = this.f13846e;
            dVar.f13840h = this.f13847f;
            dVar.f13841i = this.f13848g;
            return dVar;
        }
    }

    public C5539d() {
        this.f13839g = 0;
    }

    @NonNull
    /* renamed from: i */
    public static C5540a m25174i() {
        return new C5540a();
    }

    @Nullable
    /* renamed from: a */
    public String m25191a() {
        return this.f13836d;
    }

    @Nullable
    /* renamed from: b */
    public String m25186b() {
        return this.f13837e;
    }

    /* renamed from: c */
    public int m25183c() {
        return this.f13839g;
    }

    /* renamed from: d */
    public boolean m25181d() {
        return this.f13841i;
    }

    @NonNull
    /* renamed from: e */
    public final ArrayList<C5552i> m25179e() {
        ArrayList<C5552i> arrayList = new ArrayList<>();
        arrayList.addAll(this.f13840h);
        return arrayList;
    }

    @Nullable
    /* renamed from: f */
    public final String m25177f() {
        return this.f13835c;
    }

    /* renamed from: g */
    public final boolean m25176g() {
        return (!this.f13841i && this.f13835c == null && this.f13838f == null && this.f13839g == 0 && !this.f13833a) ? false : true;
    }

    @Nullable
    /* renamed from: h */
    public final String m25175h() {
        return this.f13838f;
    }
}
