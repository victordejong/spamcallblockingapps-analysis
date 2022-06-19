package androidx.fragment.app;

import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* renamed from: androidx.fragment.app.r */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/r.class */
public final class C1120r {

    /* renamed from: b */
    C1111l f4399b;

    /* renamed from: c */
    private final ArrayList<Fragment> f4400c = new ArrayList<>();

    /* renamed from: a */
    final HashMap<String, C1116p> f4398a = new HashMap<>();

    /* renamed from: a */
    public final Fragment m43559a(String str) {
        if (str != null) {
            for (int size = this.f4400c.size() - 1; size >= 0; size--) {
                Fragment fragment = this.f4400c.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (str != null) {
            for (C1116p c1116p : this.f4398a.values()) {
                if (c1116p != null) {
                    Fragment fragment2 = c1116p.f4383a;
                    if (str.equals(fragment2.mTag)) {
                        return fragment2;
                    }
                }
            }
            return null;
        }
        return null;
    }

    /* renamed from: a */
    public final void m43563a() {
        Iterator<Fragment> it2 = this.f4400c.iterator();
        while (it2.hasNext()) {
            C1116p c1116p = this.f4398a.get(it2.next().mWho);
            if (c1116p != null) {
                c1116p.m43580b();
            }
        }
        for (C1116p c1116p2 : this.f4398a.values()) {
            if (c1116p2 != null) {
                c1116p2.m43580b();
                Fragment fragment = c1116p2.f4383a;
                if (fragment.mRemoving && !fragment.isInBackStack()) {
                    m43553b(c1116p2);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m43562a(int i) {
        for (C1116p c1116p : this.f4398a.values()) {
            if (c1116p != null) {
                c1116p.f4384b = i;
            }
        }
    }

    /* renamed from: a */
    public final void m43561a(Fragment fragment) {
        if (!this.f4400c.contains(fragment)) {
            synchronized (this.f4400c) {
                this.f4400c.add(fragment);
            }
            fragment.mAdded = true;
            return;
        }
        throw new IllegalStateException("Fragment already added: ".concat(String.valueOf(fragment)));
    }

    /* renamed from: a */
    public final void m43560a(C1116p c1116p) {
        Fragment fragment = c1116p.f4383a;
        if (m43552b(fragment.mWho)) {
            return;
        }
        this.f4398a.put(fragment.mWho, c1116p);
        if (fragment.mRetainInstanceChangedWhileDetached) {
            if (fragment.mRetainInstance) {
                this.f4399b.m43591a(fragment);
            } else {
                this.f4399b.m43586c(fragment);
            }
            fragment.mRetainInstanceChangedWhileDetached = false;
        }
        if (!FragmentManager.m43764a(2)) {
            return;
        }
        new StringBuilder("Added fragment to active set ").append(fragment);
    }

    /* renamed from: a */
    public final void m43558a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2 = str + "    ";
        if (!this.f4398a.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (C1116p c1116p : this.f4398a.values()) {
                printWriter.print(str);
                if (c1116p != null) {
                    Fragment fragment = c1116p.f4383a;
                    printWriter.println(fragment);
                    fragment.dump(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println(JsonReaderKt.NULL);
                }
            }
        }
        int size = this.f4400c.size();
        if (size > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size; i++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(this.f4400c.get(i).toString());
            }
        }
    }

    /* renamed from: a */
    public final void m43557a(List<String> list) {
        this.f4400c.clear();
        if (list != null) {
            for (String str : list) {
                Fragment m43545e = m43545e(str);
                if (m43545e == null) {
                    throw new IllegalStateException("No instantiated fragment for (" + str + ")");
                }
                if (FragmentManager.m43764a(2)) {
                    StringBuilder sb = new StringBuilder("restoreSaveState: added (");
                    sb.append(str);
                    sb.append("): ");
                    sb.append(m43545e);
                }
                m43561a(m43545e);
            }
        }
    }

    /* renamed from: b */
    public final Fragment m43555b(int i) {
        for (int size = this.f4400c.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f4400c.get(size);
            if (fragment != null && fragment.mFragmentId == i) {
                return fragment;
            }
        }
        for (C1116p c1116p : this.f4398a.values()) {
            if (c1116p != null) {
                Fragment fragment2 = c1116p.f4383a;
                if (fragment2.mFragmentId == i) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    /* renamed from: b */
    public final void m43556b() {
        this.f4398a.values().removeAll(Collections.singleton(null));
    }

    /* renamed from: b */
    public final void m43554b(Fragment fragment) {
        synchronized (this.f4400c) {
            this.f4400c.remove(fragment);
        }
        fragment.mAdded = false;
    }

    /* renamed from: b */
    public final void m43553b(C1116p c1116p) {
        Fragment fragment = c1116p.f4383a;
        if (fragment.mRetainInstance) {
            this.f4399b.m43586c(fragment);
        }
        if (this.f4398a.put(fragment.mWho, null) != null && FragmentManager.m43764a(2)) {
            new StringBuilder("Removed fragment from active set ").append(fragment);
        }
    }

    /* renamed from: b */
    public final boolean m43552b(String str) {
        return this.f4398a.get(str) != null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x004e, code lost:
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005a, code lost:
        if (r8 >= r3.f4400c.size()) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005d, code lost:
        r0 = r3.f4400c.get(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x006f, code lost:
        if (r0.mContainer != r0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0076, code lost:
        if (r0.mView == null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0081, code lost:
        return r0.indexOfChild(r0.mView);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0085, code lost:
        return -1;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m43550c(androidx.fragment.app.Fragment r4) {
        /*
            r3 = this;
            r0 = r4
            android.view.ViewGroup r0 = r0.mContainer
            r5 = r0
            r0 = r5
            if (r0 != 0) goto Lb
            r0 = -1
            return r0
        Lb:
            r0 = r3
            java.util.ArrayList<androidx.fragment.app.Fragment> r0 = r0.f4400c
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
            if (r0 < 0) goto L4e
            r0 = r3
            java.util.ArrayList<androidx.fragment.app.Fragment> r0 = r0.f4400c
            r1 = r7
            java.lang.Object r0 = r0.get(r1)
            androidx.fragment.app.Fragment r0 = (androidx.fragment.app.Fragment) r0
            r4 = r0
            r0 = r4
            android.view.ViewGroup r0 = r0.mContainer
            r1 = r5
            if (r0 != r1) goto L48
            r0 = r4
            android.view.View r0 = r0.mView
            if (r0 == 0) goto L48
            r0 = r5
            r1 = r4
            android.view.View r1 = r1.mView
            int r0 = r0.indexOfChild(r1)
            r1 = 1
            int r0 = r0 + r1
            return r0
        L48:
            int r7 = r7 + (-1)
            goto L19
        L4e:
            int r8 = r8 + 1
            r0 = r8
            r1 = r3
            java.util.ArrayList<androidx.fragment.app.Fragment> r1 = r1.f4400c
            int r1 = r1.size()
            if (r0 >= r1) goto L85
            r0 = r3
            java.util.ArrayList<androidx.fragment.app.Fragment> r0 = r0.f4400c
            r1 = r8
            java.lang.Object r0 = r0.get(r1)
            androidx.fragment.app.Fragment r0 = (androidx.fragment.app.Fragment) r0
            r4 = r0
            r0 = r4
            android.view.ViewGroup r0 = r0.mContainer
            r1 = r5
            if (r0 != r1) goto L82
            r0 = r4
            android.view.View r0 = r0.mView
            if (r0 == 0) goto L82
            r0 = r5
            r1 = r4
            android.view.View r1 = r1.mView
            int r0 = r0.indexOfChild(r1)
            return r0
        L82:
            goto L4e
        L85:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.C1120r.m43550c(androidx.fragment.app.Fragment):int");
    }

    /* renamed from: c */
    public final C1116p m43549c(String str) {
        return this.f4398a.get(str);
    }

    /* renamed from: c */
    public final ArrayList<FragmentState> m43551c() {
        ArrayList<FragmentState> arrayList = new ArrayList<>(this.f4398a.size());
        for (C1116p c1116p : this.f4398a.values()) {
            if (c1116p != null) {
                Fragment fragment = c1116p.f4383a;
                FragmentState m43570l = c1116p.m43570l();
                arrayList.add(m43570l);
                if (FragmentManager.m43764a(2)) {
                    StringBuilder sb = new StringBuilder("Saved state of ");
                    sb.append(fragment);
                    sb.append(": ");
                    sb.append(m43570l.mSavedFragmentState);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: d */
    public final Fragment m43547d(String str) {
        Fragment findFragmentByWho;
        for (C1116p c1116p : this.f4398a.values()) {
            if (c1116p != null && (findFragmentByWho = c1116p.f4383a.findFragmentByWho(str)) != null) {
                return findFragmentByWho;
            }
        }
        return null;
    }

    /* renamed from: d */
    public final ArrayList<String> m43548d() {
        synchronized (this.f4400c) {
            if (this.f4400c.isEmpty()) {
                return null;
            }
            ArrayList<String> arrayList = new ArrayList<>(this.f4400c.size());
            Iterator<Fragment> it2 = this.f4400c.iterator();
            while (it2.hasNext()) {
                Fragment next = it2.next();
                arrayList.add(next.mWho);
                if (FragmentManager.m43764a(2)) {
                    StringBuilder sb = new StringBuilder("saveAllState: adding fragment (");
                    sb.append(next.mWho);
                    sb.append("): ");
                    sb.append(next);
                }
            }
            return arrayList;
        }
    }

    /* renamed from: e */
    public final Fragment m43545e(String str) {
        C1116p c1116p = this.f4398a.get(str);
        if (c1116p != null) {
            return c1116p.f4383a;
        }
        return null;
    }

    /* renamed from: e */
    public final List<C1116p> m43546e() {
        ArrayList arrayList = new ArrayList();
        for (C1116p c1116p : this.f4398a.values()) {
            if (c1116p != null) {
                arrayList.add(c1116p);
            }
        }
        return arrayList;
    }

    /* renamed from: f */
    public final List<Fragment> m43544f() {
        ArrayList arrayList;
        if (this.f4400c.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f4400c) {
            arrayList = new ArrayList(this.f4400c);
        }
        return arrayList;
    }

    /* renamed from: g */
    public final List<Fragment> m43543g() {
        ArrayList arrayList = new ArrayList();
        for (C1116p c1116p : this.f4398a.values()) {
            if (c1116p != null) {
                arrayList.add(c1116p.f4383a);
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }
}
