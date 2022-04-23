package p131c.p372f.p373a.p374a.p375a.p387p;

import android.view.View;
import android.view.ViewParent;
import com.integralads.avid.library.inmobi.session.internal.InternalAvidAdSession;
import com.integralads.avid.library.inmobi.walking.ViewType;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import p131c.p372f.p373a.p374a.p375a.p380l.C6425a;
import p131c.p372f.p373a.p374a.p375a.p385n.C6457e;
import p131c.p372f.p373a.p374a.p375a.p389q.C6472b;
/* renamed from: c.f.a.a.a.p.a */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/p/a.class */
public class C6461a {

    /* renamed from: a */
    public final C6425a f20145a;

    /* renamed from: b */
    public final HashMap<View, String> f20146b = new HashMap<>();

    /* renamed from: c */
    public final HashMap<View, ArrayList<String>> f20147c = new HashMap<>();

    /* renamed from: d */
    public final HashSet<View> f20148d = new HashSet<>();

    /* renamed from: e */
    public final HashSet<String> f20149e = new HashSet<>();

    /* renamed from: f */
    public final HashSet<String> f20150f = new HashSet<>();

    /* renamed from: g */
    public boolean f20151g;

    public C6461a(C6425a aVar) {
        this.f20145a = aVar;
    }

    /* renamed from: a */
    public void m20797a() {
        this.f20146b.clear();
        this.f20147c.clear();
        this.f20148d.clear();
        this.f20149e.clear();
        this.f20150f.clear();
        this.f20151g = false;
    }

    /* renamed from: a */
    public final void m20795a(View view, InternalAvidAdSession internalAvidAdSession) {
        ArrayList<String> arrayList = this.f20147c.get(view);
        ArrayList<String> arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = new ArrayList<>();
            this.f20147c.put(view, arrayList2);
        }
        arrayList2.add(internalAvidAdSession.m5454b());
    }

    /* renamed from: a */
    public final void m20794a(InternalAvidAdSession internalAvidAdSession) {
        Iterator<C6472b> it = internalAvidAdSession.m5446f().m20876a().iterator();
        while (it.hasNext()) {
            C6472b next = it.next();
            if (!next.m20772b()) {
                m20795a((View) next.m20774a(), internalAvidAdSession);
            }
        }
    }

    /* renamed from: a */
    public final boolean m20796a(View view) {
        if (!view.hasWindowFocus()) {
            return false;
        }
        HashSet hashSet = new HashSet();
        while (view != null) {
            if (!C6457e.m20821a(view)) {
                return false;
            }
            hashSet.add(view);
            ViewParent parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        this.f20148d.addAll(hashSet);
        return true;
    }

    /* renamed from: b */
    public ArrayList<String> m20792b(View view) {
        if (this.f20147c.size() == 0) {
            return null;
        }
        ArrayList<String> arrayList = this.f20147c.get(view);
        if (arrayList != null) {
            this.f20147c.remove(view);
            Collections.sort(arrayList);
        }
        return arrayList;
    }

    /* renamed from: b */
    public HashSet<String> m20793b() {
        return this.f20150f;
    }

    /* renamed from: c */
    public String m20790c(View view) {
        if (this.f20146b.size() == 0) {
            return null;
        }
        String str = this.f20146b.get(view);
        if (str != null) {
            this.f20146b.remove(view);
        }
        return str;
    }

    /* renamed from: c */
    public HashSet<String> m20791c() {
        return this.f20149e;
    }

    /* renamed from: d */
    public ViewType m20788d(View view) {
        return this.f20148d.contains(view) ? ViewType.ROOT_VIEW : this.f20151g ? ViewType.OBSTRUCTION_VIEW : ViewType.UNDERLYING_VIEW;
    }

    /* renamed from: d */
    public void m20789d() {
        this.f20151g = true;
    }

    /* renamed from: e */
    public void m20787e() {
        for (InternalAvidAdSession internalAvidAdSession : this.f20145a.m20906a()) {
            View h = internalAvidAdSession.m5444h();
            if (internalAvidAdSession.m5442j() && h != null) {
                if (m20796a(h)) {
                    this.f20149e.add(internalAvidAdSession.m5454b());
                    this.f20146b.put(h, internalAvidAdSession.m5454b());
                    m20794a(internalAvidAdSession);
                } else {
                    this.f20150f.add(internalAvidAdSession.m5454b());
                }
            }
        }
    }
}
