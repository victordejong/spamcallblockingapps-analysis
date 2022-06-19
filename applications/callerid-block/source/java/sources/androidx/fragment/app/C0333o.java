package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* renamed from: androidx.fragment.app.o */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/o.class */
public class C0333o {

    /* renamed from: a */
    private final ArrayList<Fragment> f1934a = new ArrayList<>();

    /* renamed from: b */
    private final HashMap<String, C0331n> f1935b = new HashMap<>();

    /* renamed from: a */
    public void m13115a(Fragment fragment) {
        if (this.f1934a.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        synchronized (this.f1934a) {
            this.f1934a.add(fragment);
        }
        fragment.l = true;
    }

    /* renamed from: b */
    public void m13114b() {
        this.f1935b.values().removeAll(Collections.singleton(null));
    }

    /* renamed from: c */
    public boolean m13113c(String str) {
        return this.f1935b.containsKey(str);
    }

    /* renamed from: d */
    public void m13112d(int i) {
        Iterator<Fragment> it = this.f1934a.iterator();
        while (it.hasNext()) {
            C0331n c0331n = this.f1935b.get(it.next().f);
            if (c0331n != null) {
                c0331n.m13118q(i);
            }
        }
        for (C0331n c0331n2 : this.f1935b.values()) {
            if (c0331n2 != null) {
                c0331n2.m13118q(i);
            }
        }
    }

    /* renamed from: e */
    public void m13111e(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2 = str + "    ";
        if (!this.f1935b.isEmpty()) {
            printWriter.print(str);
            printWriter.print("Active Fragments:");
            for (C0331n c0331n : this.f1935b.values()) {
                printWriter.print(str);
                if (c0331n != null) {
                    Fragment m13126i = c0331n.m13126i();
                    printWriter.println(m13126i);
                    m13126i.f(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size = this.f1934a.size();
        if (size > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size; i++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(this.f1934a.get(i).toString());
            }
        }
    }

    /* renamed from: f */
    public Fragment m13110f(String str) {
        C0331n c0331n = this.f1935b.get(str);
        if (c0331n != null) {
            return c0331n.m13126i();
        }
        return null;
    }

    /* renamed from: g */
    public Fragment m13109g(int i) {
        for (int size = this.f1934a.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f1934a.get(size);
            if (fragment != null && fragment.w == i) {
                return fragment;
            }
        }
        for (C0331n c0331n : this.f1935b.values()) {
            if (c0331n != null) {
                Fragment m13126i = c0331n.m13126i();
                if (m13126i.w == i) {
                    return m13126i;
                }
            }
        }
        return null;
    }

    /* renamed from: h */
    public Fragment m13108h(String str) {
        if (str != null) {
            for (int size = this.f1934a.size() - 1; size >= 0; size--) {
                Fragment fragment = this.f1934a.get(size);
                if (fragment != null && str.equals(fragment.y)) {
                    return fragment;
                }
            }
        }
        if (str != null) {
            for (C0331n c0331n : this.f1935b.values()) {
                if (c0331n != null) {
                    Fragment m13126i = c0331n.m13126i();
                    if (str.equals(m13126i.y)) {
                        return m13126i;
                    }
                }
            }
            return null;
        }
        return null;
    }

    /* renamed from: i */
    public Fragment m13107i(String str) {
        Fragment i;
        for (C0331n c0331n : this.f1935b.values()) {
            if (c0331n != null && (i = c0331n.m13126i().i(str)) != null) {
                return i;
            }
        }
        return null;
    }

    /* renamed from: j */
    public Fragment m13106j(Fragment fragment) {
        ViewGroup viewGroup = fragment.G;
        View view = fragment.H;
        if (viewGroup == null || view == null) {
            return null;
        }
        for (int indexOf = this.f1934a.indexOf(fragment) - 1; indexOf >= 0; indexOf--) {
            Fragment fragment2 = this.f1934a.get(indexOf);
            if (fragment2.G == viewGroup && fragment2.H != null) {
                return fragment2;
            }
        }
        return null;
    }

    /* renamed from: k */
    public List<Fragment> m13105k() {
        ArrayList arrayList = new ArrayList();
        Iterator<C0331n> it = this.f1935b.values().iterator();
        while (it.hasNext()) {
            C0331n next = it.next();
            arrayList.add(next != null ? next.m13126i() : null);
        }
        return arrayList;
    }

    /* renamed from: l */
    public C0331n m13104l(String str) {
        return this.f1935b.get(str);
    }

    /* renamed from: m */
    public List<Fragment> m13103m() {
        ArrayList arrayList;
        if (this.f1934a.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f1934a) {
            arrayList = new ArrayList(this.f1934a);
        }
        return arrayList;
    }

    /* renamed from: n */
    public void m13102n(C0331n c0331n) {
        this.f1935b.put(c0331n.m13126i().f, c0331n);
    }

    /* renamed from: o */
    public void m13101o(C0331n c0331n) {
        Fragment m13126i = c0331n.m13126i();
        for (C0331n c0331n2 : this.f1935b.values()) {
            if (c0331n2 != null) {
                Fragment m13126i2 = c0331n2.m13126i();
                if (m13126i.f.equals(m13126i2.i)) {
                    m13126i2.h = m13126i;
                    m13126i2.i = null;
                }
            }
        }
        this.f1935b.put(m13126i.f, null);
        String str = m13126i.i;
        if (str != null) {
            m13126i.h = m13110f(str);
        }
    }

    /* renamed from: p */
    public void m13100p(Fragment fragment) {
        synchronized (this.f1934a) {
            this.f1934a.remove(fragment);
        }
        fragment.l = false;
    }

    /* renamed from: q */
    public void m13099q() {
        this.f1935b.clear();
    }

    /* renamed from: r */
    public void m13098r(List<String> list) {
        this.f1934a.clear();
        if (list != null) {
            for (String str : list) {
                Fragment m13110f = m13110f(str);
                if (m13110f == null) {
                    throw new IllegalStateException("No instantiated fragment for (" + str + ")");
                }
                if (AbstractC0325j.m13169q0(2)) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + str + "): " + m13110f);
                }
                m13115a(m13110f);
            }
        }
    }

    /* renamed from: s */
    public ArrayList<FragmentState> m13097s() {
        ArrayList<FragmentState> arrayList = new ArrayList<>(this.f1935b.size());
        for (C0331n c0331n : this.f1935b.values()) {
            if (c0331n != null) {
                Fragment m13126i = c0331n.m13126i();
                FragmentState m13120o = c0331n.m13120o();
                arrayList.add(m13120o);
                if (AbstractC0325j.m13169q0(2)) {
                    Log.v("FragmentManager", "Saved state of " + m13126i + ": " + m13120o.f1853n);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: t */
    public ArrayList<String> m13096t() {
        synchronized (this.f1934a) {
            try {
                if (this.f1934a.isEmpty()) {
                    return null;
                }
                ArrayList<String> arrayList = new ArrayList<>(this.f1934a.size());
                Iterator<Fragment> it = this.f1934a.iterator();
                while (it.hasNext()) {
                    Fragment next = it.next();
                    arrayList.add(next.f);
                    if (AbstractC0325j.m13169q0(2)) {
                        Log.v("FragmentManager", "saveAllState: adding fragment (" + next.f + "): " + next);
                    }
                }
                return arrayList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
