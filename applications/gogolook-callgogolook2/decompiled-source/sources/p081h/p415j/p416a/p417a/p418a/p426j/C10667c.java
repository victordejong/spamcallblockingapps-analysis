package p081h.p415j.p416a.p417a.p418a.p426j;

import android.view.View;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import p081h.p415j.p416a.p417a.p418a.p420d.C10626i;
import p081h.p415j.p416a.p417a.p418a.p421e.C10627a;
import p081h.p415j.p416a.p417a.p418a.p423g.C10646f;
import p081h.p415j.p416a.p417a.p418a.p424h.C10647a;
/* renamed from: h.j.a.a.a.j.c */
/* loaded from: classes2-dex2jar.jar:h/j/a/a/a/j/c.class */
public class C10667c {

    /* renamed from: a */
    public final HashMap<View, String> f24264a = new HashMap<>();

    /* renamed from: b */
    public final HashMap<View, ArrayList<String>> f24265b = new HashMap<>();

    /* renamed from: c */
    public final HashSet<View> f24266c = new HashSet<>();

    /* renamed from: d */
    public final HashSet<String> f24267d = new HashSet<>();

    /* renamed from: e */
    public final HashSet<String> f24268e = new HashSet<>();

    /* renamed from: f */
    public boolean f24269f;

    /* renamed from: a */
    public String m11021a(View view) {
        if (this.f24264a.size() == 0) {
            return null;
        }
        String str = this.f24264a.get(view);
        if (str != null) {
            this.f24264a.remove(view);
        }
        return str;
    }

    /* renamed from: a */
    public HashSet<String> m11022a() {
        return this.f24267d;
    }

    /* renamed from: a */
    public final void m11020a(View view, C10626i iVar) {
        ArrayList<String> arrayList = this.f24265b.get(view);
        ArrayList<String> arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = new ArrayList<>();
            this.f24265b.put(view, arrayList2);
        }
        arrayList2.add(iVar.m11158i());
    }

    /* renamed from: a */
    public final void m11019a(C10626i iVar) {
        for (C10647a aVar : iVar.m11168c()) {
            View view = aVar.get();
            if (view != null) {
                m11020a(view, iVar);
            }
        }
    }

    /* renamed from: b */
    public ArrayList<String> m11017b(View view) {
        if (this.f24265b.size() == 0) {
            return null;
        }
        ArrayList<String> arrayList = this.f24265b.get(view);
        if (arrayList != null) {
            this.f24265b.remove(view);
            Collections.sort(arrayList);
        }
        return arrayList;
    }

    /* renamed from: b */
    public HashSet<String> m11018b() {
        return this.f24268e;
    }

    /* renamed from: c */
    public EnumC10669e m11015c(View view) {
        if (this.f24266c.contains(view)) {
            return EnumC10669e.PARENT_VIEW;
        }
        return this.f24269f ? EnumC10669e.OBSTRUCTION_VIEW : EnumC10669e.UNDERLYING_VIEW;
    }

    /* renamed from: c */
    public void m11016c() {
        C10627a d = C10627a.m11148d();
        if (d != null) {
            for (C10626i iVar : d.m11152b()) {
                View e = iVar.m11164e();
                if (iVar.m11162f()) {
                    if (e == null || !m11013d(e)) {
                        this.f24268e.add(iVar.m11158i());
                    } else {
                        this.f24267d.add(iVar.m11158i());
                        this.f24264a.put(e, iVar.m11158i());
                        m11019a(iVar);
                    }
                }
            }
        }
    }

    /* renamed from: d */
    public void m11014d() {
        this.f24264a.clear();
        this.f24265b.clear();
        this.f24266c.clear();
        this.f24267d.clear();
        this.f24268e.clear();
        this.f24269f = false;
    }

    /* renamed from: d */
    public final boolean m11013d(View view) {
        if (!view.hasWindowFocus()) {
            return false;
        }
        HashSet hashSet = new HashSet();
        while (view != null) {
            if (!C10646f.m11073d(view)) {
                return false;
            }
            hashSet.add(view);
            ViewParent parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        this.f24266c.addAll(hashSet);
        return true;
    }

    /* renamed from: e */
    public void m11012e() {
        this.f24269f = true;
    }
}
