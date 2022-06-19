package androidx.fragment.app;

import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* renamed from: androidx.fragment.app.r */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/r.class */
public class C0753r {

    /* renamed from: a */
    private final ArrayList<Fragment> f3545a = new ArrayList<>();

    /* renamed from: b */
    private final HashMap<String, C0749p> f3546b = new HashMap<>();

    /* renamed from: c */
    private C0744l f3547c;

    /* renamed from: a */
    public void m32533a(Fragment fragment) {
        if (this.f3545a.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        synchronized (this.f3545a) {
            this.f3545a.add(fragment);
        }
        fragment.f3231p = true;
    }

    /* renamed from: b */
    public void m32532b() {
        this.f3546b.values().removeAll(Collections.singleton(null));
    }

    /* renamed from: c */
    public boolean m32531c(String str) {
        return this.f3546b.get(str) != null;
    }

    /* renamed from: d */
    public void m32530d(int i) {
        for (C0749p c0749p : this.f3546b.values()) {
            if (c0749p != null) {
                c0749p.m32536u(i);
            }
        }
    }

    /* renamed from: e */
    public void m32529e(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2 = str + "    ";
        if (!this.f3546b.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (C0749p c0749p : this.f3546b.values()) {
                printWriter.print(str);
                if (c0749p != null) {
                    Fragment m32546k = c0749p.m32546k();
                    printWriter.println(m32546k);
                    m32546k.mo17299q(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size = this.f3545a.size();
        if (size > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size; i++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(this.f3545a.get(i).toString());
            }
        }
    }

    /* renamed from: f */
    public Fragment m32528f(String str) {
        C0749p c0749p = this.f3546b.get(str);
        if (c0749p != null) {
            return c0749p.m32546k();
        }
        return null;
    }

    /* renamed from: g */
    public Fragment m32527g(int i) {
        for (int size = this.f3545a.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f3545a.get(size);
            if (fragment != null && fragment.f3190A == i) {
                return fragment;
            }
        }
        for (C0749p c0749p : this.f3546b.values()) {
            if (c0749p != null) {
                Fragment m32546k = c0749p.m32546k();
                if (m32546k.f3190A == i) {
                    return m32546k;
                }
            }
        }
        return null;
    }

    /* renamed from: h */
    public Fragment m32526h(String str) {
        if (str != null) {
            for (int size = this.f3545a.size() - 1; size >= 0; size--) {
                Fragment fragment = this.f3545a.get(size);
                if (fragment != null && str.equals(fragment.f3192C)) {
                    return fragment;
                }
            }
        }
        if (str != null) {
            for (C0749p c0749p : this.f3546b.values()) {
                if (c0749p != null) {
                    Fragment m32546k = c0749p.m32546k();
                    if (str.equals(m32546k.f3192C)) {
                        return m32546k;
                    }
                }
            }
            return null;
        }
        return null;
    }

    /* renamed from: i */
    public Fragment m32525i(String str) {
        Fragment m32899t;
        for (C0749p c0749p : this.f3546b.values()) {
            if (c0749p != null && (m32899t = c0749p.m32546k().m32899t(str)) != null) {
                return m32899t;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x004d, code lost:
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0059, code lost:
        if (r8 >= r3.f3545a.size()) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005c, code lost:
        r0 = r3.f3545a.get(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x006e, code lost:
        if (r0.f3200K != r0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0071, code lost:
        r0 = r0.f3201L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0077, code lost:
        if (r0 == null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x007f, code lost:
        return r0.indexOfChild(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0083, code lost:
        return -1;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m32524j(androidx.fragment.app.Fragment r4) {
        /*
            r3 = this;
            r0 = r4
            android.view.ViewGroup r0 = r0.f3200K
            r5 = r0
            r0 = r5
            if (r0 != 0) goto Lb
            r0 = -1
            return r0
        Lb:
            r0 = r3
            java.util.ArrayList<androidx.fragment.app.Fragment> r0 = r0.f3545a
            r1 = r4
            int r0 = r0.indexOf(r1)
            r6 = r0
            r0 = r6
            r1 = 1
            int r0 = r0 - r1
            r7 = r0
        L19:
            r0 = r6
            r8 = r0
            r0 = r7
            if (r0 < 0) goto L4d
            r0 = r3
            java.util.ArrayList<androidx.fragment.app.Fragment> r0 = r0.f3545a
            r1 = r7
            java.lang.Object r0 = r0.get(r1)
            androidx.fragment.app.Fragment r0 = (androidx.fragment.app.Fragment) r0
            r4 = r0
            r0 = r4
            android.view.ViewGroup r0 = r0.f3200K
            r1 = r5
            if (r0 != r1) goto L47
            r0 = r4
            android.view.View r0 = r0.f3201L
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L47
            r0 = r5
            r1 = r4
            int r0 = r0.indexOfChild(r1)
            r1 = 1
            int r0 = r0 + r1
            return r0
        L47:
            int r7 = r7 + (-1)
            goto L19
        L4d:
            int r8 = r8 + 1
            r0 = r8
            r1 = r3
            java.util.ArrayList<androidx.fragment.app.Fragment> r1 = r1.f3545a
            int r1 = r1.size()
            if (r0 >= r1) goto L83
            r0 = r3
            java.util.ArrayList<androidx.fragment.app.Fragment> r0 = r0.f3545a
            r1 = r8
            java.lang.Object r0 = r0.get(r1)
            androidx.fragment.app.Fragment r0 = (androidx.fragment.app.Fragment) r0
            r4 = r0
            r0 = r4
            android.view.ViewGroup r0 = r0.f3200K
            r1 = r5
            if (r0 != r1) goto L80
            r0 = r4
            android.view.View r0 = r0.f3201L
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L80
            r0 = r5
            r1 = r4
            int r0 = r0.indexOfChild(r1)
            return r0
        L80:
            goto L4d
        L83:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.C0753r.m32524j(androidx.fragment.app.Fragment):int");
    }

    /* renamed from: k */
    public List<C0749p> m32523k() {
        ArrayList arrayList = new ArrayList();
        for (C0749p c0749p : this.f3546b.values()) {
            if (c0749p != null) {
                arrayList.add(c0749p);
            }
        }
        return arrayList;
    }

    /* renamed from: l */
    public List<Fragment> m32522l() {
        ArrayList arrayList = new ArrayList();
        for (C0749p c0749p : this.f3546b.values()) {
            if (c0749p != null) {
                arrayList.add(c0749p.m32546k());
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    /* renamed from: m */
    public C0749p m32521m(String str) {
        return this.f3546b.get(str);
    }

    /* renamed from: n */
    public List<Fragment> m32520n() {
        ArrayList arrayList;
        if (this.f3545a.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f3545a) {
            arrayList = new ArrayList(this.f3545a);
        }
        return arrayList;
    }

    /* renamed from: o */
    public C0744l m32519o() {
        return this.f3547c;
    }

    /* renamed from: p */
    public void m32518p(C0749p c0749p) {
        Fragment m32546k = c0749p.m32546k();
        if (m32531c(m32546k.f3225j)) {
            return;
        }
        this.f3546b.put(m32546k.f3225j, c0749p);
        if (m32546k.f3196G) {
            if (m32546k.f3195F) {
                this.f3547c.m32571e(m32546k);
            } else {
                this.f3547c.m32563m(m32546k);
            }
            m32546k.f3196G = false;
        }
        if (!FragmentManager.m32848G0(2)) {
            return;
        }
        Log.v("FragmentManager", "Added fragment to active set " + m32546k);
    }

    /* renamed from: q */
    public void m32517q(C0749p c0749p) {
        Fragment m32546k = c0749p.m32546k();
        if (m32546k.f3195F) {
            this.f3547c.m32563m(m32546k);
        }
        if (this.f3546b.put(m32546k.f3225j, null) != null && FragmentManager.m32848G0(2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + m32546k);
        }
    }

    /* renamed from: r */
    public void m32516r() {
        Iterator<Fragment> it = this.f3545a.iterator();
        while (it.hasNext()) {
            C0749p c0749p = this.f3546b.get(it.next().f3225j);
            if (c0749p != null) {
                c0749p.m32544m();
            }
        }
        for (C0749p c0749p2 : this.f3546b.values()) {
            if (c0749p2 != null) {
                c0749p2.m32544m();
                Fragment m32546k = c0749p2.m32546k();
                if (m32546k.f3232q && !m32546k.m32910o0()) {
                    m32517q(c0749p2);
                }
            }
        }
    }

    /* renamed from: s */
    public void m32515s(Fragment fragment) {
        synchronized (this.f3545a) {
            this.f3545a.remove(fragment);
        }
        fragment.f3231p = false;
    }

    /* renamed from: t */
    public void m32514t() {
        this.f3546b.clear();
    }

    /* renamed from: u */
    public void m32513u(List<String> list) {
        this.f3545a.clear();
        if (list != null) {
            for (String str : list) {
                Fragment m32528f = m32528f(str);
                if (m32528f == null) {
                    throw new IllegalStateException("No instantiated fragment for (" + str + ")");
                }
                if (FragmentManager.m32848G0(2)) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + str + "): " + m32528f);
                }
                m32533a(m32528f);
            }
        }
    }

    /* renamed from: v */
    public ArrayList<FragmentState> m32512v() {
        ArrayList<FragmentState> arrayList = new ArrayList<>(this.f3546b.size());
        for (C0749p c0749p : this.f3546b.values()) {
            if (c0749p != null) {
                Fragment m32546k = c0749p.m32546k();
                FragmentState m32538s = c0749p.m32538s();
                arrayList.add(m32538s);
                if (FragmentManager.m32848G0(2)) {
                    Log.v("FragmentManager", "Saved state of " + m32546k + ": " + m32538s.f3375p);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: w */
    public ArrayList<String> m32511w() {
        synchronized (this.f3545a) {
            if (this.f3545a.isEmpty()) {
                return null;
            }
            ArrayList<String> arrayList = new ArrayList<>(this.f3545a.size());
            Iterator<Fragment> it = this.f3545a.iterator();
            while (it.hasNext()) {
                Fragment next = it.next();
                arrayList.add(next.f3225j);
                if (FragmentManager.m32848G0(2)) {
                    Log.v("FragmentManager", "saveAllState: adding fragment (" + next.f3225j + "): " + next);
                }
            }
            return arrayList;
        }
    }

    /* renamed from: x */
    public void m32510x(C0744l c0744l) {
        this.f3547c = c0744l;
    }
}
