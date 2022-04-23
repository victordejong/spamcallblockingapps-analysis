package p131c.p372f.p373a.p374a.p375a.p376h;

import android.app.Activity;
import android.os.Build;
import android.view.View;
import android.view.Window;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p131c.p372f.p373a.p374a.p375a.p389q.C6471a;
/* renamed from: c.f.a.a.a.h.a */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/h/a.class */
public class C6416a {

    /* renamed from: b */
    public static C6416a f20097b = new C6416a();

    /* renamed from: a */
    public final ArrayList<C6471a> f20098a = new ArrayList<>();

    /* renamed from: c */
    public static C6416a m20917c() {
        return f20097b;
    }

    /* renamed from: a */
    public final View m20921a(C6471a aVar) {
        Window window;
        View decorView;
        Activity a = aVar.m20774a();
        if (a == null || (window = a.getWindow()) == null || !a.hasWindowFocus() || (decorView = window.getDecorView()) == null || !decorView.isShown()) {
            return null;
        }
        return decorView;
    }

    /* renamed from: a */
    public void m20923a() {
        this.f20098a.clear();
    }

    /* renamed from: a */
    public void m20922a(Activity activity) {
        if (m20919b(activity) == null) {
            this.f20098a.add(new C6471a(activity));
        }
    }

    /* renamed from: b */
    public C6471a m20919b(Activity activity) {
        Iterator<C6471a> it = this.f20098a.iterator();
        while (it.hasNext()) {
            C6471a next = it.next();
            if (next.m20773a(activity)) {
                return next;
            }
        }
        return null;
    }

    /* renamed from: b */
    public List<View> m20920b() {
        ArrayList arrayList = new ArrayList();
        Iterator<C6471a> it = this.f20098a.iterator();
        View view = null;
        while (it.hasNext()) {
            C6471a next = it.next();
            if (m20918b(next)) {
                it.remove();
            } else {
                View a = m20921a(next);
                if (a != null) {
                    view = a;
                }
            }
        }
        if (view != null) {
            arrayList.add(view);
        }
        return arrayList;
    }

    /* renamed from: b */
    public boolean m20918b(C6471a aVar) {
        Activity a = aVar.m20774a();
        if (a == null) {
            return true;
        }
        return Build.VERSION.SDK_INT >= 17 ? a.isDestroyed() : a.isFinishing();
    }
}
