package androidx.fragment.app;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import p018b3.AbstractC0721a;
import p161l9.AbstractC3541a;
import p261v2.C4596i;
/* renamed from: androidx.fragment.app.h0 */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/h0.class */
public class C0436h0 implements AbstractC3541a {

    /* renamed from: a */
    public final Object f1816a;

    /* renamed from: b */
    public final Object f1817b;

    /* renamed from: c */
    public Object f1818c;

    public /* synthetic */ C0436h0() {
        this.f1816a = new ArrayList();
        this.f1817b = new HashMap();
    }

    public /* synthetic */ C0436h0(AbstractC3541a abstractC3541a, AbstractC3541a abstractC3541a2, AbstractC3541a abstractC3541a3) {
        this.f1816a = abstractC3541a;
        this.f1817b = abstractC3541a2;
        this.f1818c = abstractC3541a3;
    }

    /* renamed from: a */
    public void m8110a(Fragment fragment) {
        if (((ArrayList) this.f1816a).contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        synchronized (((ArrayList) this.f1816a)) {
            ((ArrayList) this.f1816a).add(fragment);
        }
        fragment.mAdded = true;
    }

    /* renamed from: b */
    public void m8109b() {
        ((HashMap) this.f1817b).values().removeAll(Collections.singleton(null));
    }

    /* renamed from: c */
    public boolean m8108c(String str) {
        return ((HashMap) this.f1817b).get(str) != null;
    }

    /* renamed from: d */
    public Fragment m8107d(String str) {
        C0433g0 c0433g0 = (C0433g0) ((HashMap) this.f1817b).get(str);
        if (c0433g0 != null) {
            return c0433g0.f1808c;
        }
        return null;
    }

    /* renamed from: e */
    public Fragment m8106e(String str) {
        Fragment findFragmentByWho;
        for (C0433g0 c0433g0 : ((HashMap) this.f1817b).values()) {
            if (c0433g0 != null && (findFragmentByWho = c0433g0.f1808c.findFragmentByWho(str)) != null) {
                return findFragmentByWho;
            }
        }
        return null;
    }

    /* renamed from: f */
    public List m8105f() {
        ArrayList arrayList = new ArrayList();
        for (C0433g0 c0433g0 : ((HashMap) this.f1817b).values()) {
            if (c0433g0 != null) {
                arrayList.add(c0433g0);
            }
        }
        return arrayList;
    }

    /* renamed from: g */
    public List m8104g() {
        ArrayList arrayList = new ArrayList();
        for (C0433g0 c0433g0 : ((HashMap) this.f1817b).values()) {
            if (c0433g0 != null) {
                arrayList.add(c0433g0.f1808c);
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    @Override // p161l9.AbstractC3541a
    public Object get() {
        return new C4596i((Context) ((AbstractC3541a) this.f1816a).get(), (AbstractC0721a) ((AbstractC3541a) this.f1817b).get(), (AbstractC0721a) ((AbstractC3541a) this.f1818c).get());
    }

    /* renamed from: h */
    public C0433g0 m8103h(String str) {
        return (C0433g0) ((HashMap) this.f1817b).get(str);
    }

    /* renamed from: i */
    public List m8102i() {
        ArrayList arrayList;
        if (((ArrayList) this.f1816a).isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (((ArrayList) this.f1816a)) {
            arrayList = new ArrayList((ArrayList) this.f1816a);
        }
        return arrayList;
    }

    /* renamed from: j */
    public void m8101j(C0433g0 c0433g0) {
        Fragment fragment = c0433g0.f1808c;
        if (m8108c(fragment.mWho)) {
            return;
        }
        ((HashMap) this.f1817b).put(fragment.mWho, c0433g0);
        if (fragment.mRetainInstanceChangedWhileDetached) {
            if (fragment.mRetainInstance) {
                ((C0424d0) this.f1818c).m8130c(fragment);
            } else {
                ((C0424d0) this.f1818c).m8129d(fragment);
            }
            fragment.mRetainInstanceChangedWhileDetached = false;
        }
        if (!AbstractC0397a0.m8192N(2)) {
            return;
        }
        fragment.toString();
    }

    /* renamed from: k */
    public void m8100k(C0433g0 c0433g0) {
        Fragment fragment = c0433g0.f1808c;
        if (fragment.mRetainInstance) {
            ((C0424d0) this.f1818c).m8129d(fragment);
        }
        if (((C0433g0) ((HashMap) this.f1817b).put(fragment.mWho, null)) != null && AbstractC0397a0.m8192N(2)) {
            fragment.toString();
        }
    }

    /* renamed from: l */
    public void m8099l(Fragment fragment) {
        synchronized (((ArrayList) this.f1816a)) {
            ((ArrayList) this.f1816a).remove(fragment);
        }
        fragment.mAdded = false;
    }
}
