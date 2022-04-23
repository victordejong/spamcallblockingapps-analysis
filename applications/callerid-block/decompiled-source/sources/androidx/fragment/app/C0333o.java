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
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.fragment.app.o */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/o.class */
public class C0333o {

    /* renamed from: a */
    private final ArrayList<Fragment> f1934a = new ArrayList<>();

    /* renamed from: b */
    private final HashMap<String, C0331n> f1935b = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m13115a(Fragment fragment) {
        if (!this.f1934a.contains(fragment)) {
            synchronized (this.f1934a) {
                this.f1934a.add(fragment);
            }
            fragment.l = true;
            return;
        }
        throw new IllegalStateException("Fragment already added: " + fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m13114b() {
        this.f1935b.values().removeAll(Collections.singleton(null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public boolean m13113c(String str) {
        return this.f1935b.containsKey(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m13112d(int i) {
        Iterator<Fragment> it = this.f1934a.iterator();
        while (it.hasNext()) {
            C0331n nVar = this.f1935b.get(it.next().f);
            if (nVar != null) {
                nVar.m13118q(i);
            }
        }
        for (C0331n nVar2 : this.f1935b.values()) {
            if (nVar2 != null) {
                nVar2.m13118q(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m13111e(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2 = str + "    ";
        if (!this.f1935b.isEmpty()) {
            printWriter.print(str);
            printWriter.print("Active Fragments:");
            for (C0331n nVar : this.f1935b.values()) {
                printWriter.print(str);
                if (nVar != null) {
                    Fragment i = nVar.m13126i();
                    printWriter.println(i);
                    i.f(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size = this.f1934a.size();
        if (size > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i2 = 0; i2 < size; i2++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(this.f1934a.get(i2).toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public Fragment m13110f(String str) {
        C0331n nVar = this.f1935b.get(str);
        if (nVar != null) {
            return nVar.m13126i();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public Fragment m13109g(int i) {
        for (int size = this.f1934a.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f1934a.get(size);
            if (fragment != null && fragment.w == i) {
                return fragment;
            }
        }
        for (C0331n nVar : this.f1935b.values()) {
            if (nVar != null) {
                Fragment i2 = nVar.m13126i();
                if (i2.w == i) {
                    return i2;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
        if (str == null) {
            return null;
        }
        for (C0331n nVar : this.f1935b.values()) {
            if (nVar != null) {
                Fragment i = nVar.m13126i();
                if (str.equals(i.y)) {
                    return i;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public Fragment m13107i(String str) {
        Fragment i;
        for (C0331n nVar : this.f1935b.values()) {
            if (!(nVar == null || (i = nVar.m13126i().i(str)) == null)) {
                return i;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public C0331n m13104l(String str) {
        return this.f1935b.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public void m13102n(C0331n nVar) {
        this.f1935b.put(nVar.m13126i().f, nVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public void m13101o(C0331n nVar) {
        Fragment i = nVar.m13126i();
        for (C0331n nVar2 : this.f1935b.values()) {
            if (nVar2 != null) {
                Fragment i2 = nVar2.m13126i();
                if (i.f.equals(i2.i)) {
                    i2.h = i;
                    i2.i = null;
                }
            }
        }
        this.f1935b.put(i.f, null);
        String str = i.i;
        if (str != null) {
            i.h = m13110f(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public void m13100p(Fragment fragment) {
        synchronized (this.f1934a) {
            this.f1934a.remove(fragment);
        }
        fragment.l = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public void m13099q() {
        this.f1935b.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public void m13098r(List<String> list) {
        this.f1934a.clear();
        if (list != null) {
            for (String str : list) {
                Fragment f = m13110f(str);
                if (f != null) {
                    if (AbstractC0325j.m13169q0(2)) {
                        Log.v("FragmentManager", "restoreSaveState: added (" + str + "): " + f);
                    }
                    m13115a(f);
                } else {
                    throw new IllegalStateException("No instantiated fragment for (" + str + ")");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public ArrayList<FragmentState> m13097s() {
        ArrayList<FragmentState> arrayList = new ArrayList<>(this.f1935b.size());
        for (C0331n nVar : this.f1935b.values()) {
            if (nVar != null) {
                Fragment i = nVar.m13126i();
                FragmentState o = nVar.m13120o();
                arrayList.add(o);
                if (AbstractC0325j.m13169q0(2)) {
                    Log.v("FragmentManager", "Saved state of " + i + ": " + o.f1853n);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
