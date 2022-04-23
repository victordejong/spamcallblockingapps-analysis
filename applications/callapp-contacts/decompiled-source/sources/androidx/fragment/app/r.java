package androidx.fragment.app;

import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/r.class */
public final class r {

    /* renamed from: b  reason: collision with root package name */
    l f2320b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayList<Fragment> f2321c = new ArrayList<>();

    /* renamed from: a  reason: collision with root package name */
    final HashMap<String, p> f2319a = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Fragment a(String str) {
        if (str != null) {
            for (int size = this.f2321c.size() - 1; size >= 0; size--) {
                Fragment fragment = this.f2321c.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (str == null) {
            return null;
        }
        for (p pVar : this.f2319a.values()) {
            if (pVar != null) {
                Fragment fragment2 = pVar.f2308a;
                if (str.equals(fragment2.mTag)) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        Iterator<Fragment> it2 = this.f2321c.iterator();
        while (it2.hasNext()) {
            p pVar = this.f2319a.get(it2.next().mWho);
            if (pVar != null) {
                pVar.b();
            }
        }
        for (p pVar2 : this.f2319a.values()) {
            if (pVar2 != null) {
                pVar2.b();
                Fragment fragment = pVar2.f2308a;
                if (fragment.mRemoving && !fragment.isInBackStack()) {
                    b(pVar2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) {
        for (p pVar : this.f2319a.values()) {
            if (pVar != null) {
                pVar.f2309b = i;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Fragment fragment) {
        if (!this.f2321c.contains(fragment)) {
            synchronized (this.f2321c) {
                this.f2321c.add(fragment);
            }
            fragment.mAdded = true;
            return;
        }
        throw new IllegalStateException("Fragment already added: ".concat(String.valueOf(fragment)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(p pVar) {
        Fragment fragment = pVar.f2308a;
        if (!b(fragment.mWho)) {
            this.f2319a.put(fragment.mWho, pVar);
            if (fragment.mRetainInstanceChangedWhileDetached) {
                if (fragment.mRetainInstance) {
                    this.f2320b.a(fragment);
                } else {
                    this.f2320b.c(fragment);
                }
                fragment.mRetainInstanceChangedWhileDetached = false;
            }
            if (FragmentManager.a(2)) {
                new StringBuilder("Added fragment to active set ").append(fragment);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2 = str + "    ";
        if (!this.f2319a.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (p pVar : this.f2319a.values()) {
                printWriter.print(str);
                if (pVar != null) {
                    Fragment fragment = pVar.f2308a;
                    printWriter.println(fragment);
                    fragment.dump(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println(JsonReaderKt.NULL);
                }
            }
        }
        int size = this.f2321c.size();
        if (size > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size; i++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(this.f2321c.get(i).toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(List<String> list) {
        this.f2321c.clear();
        if (list != null) {
            for (String str : list) {
                Fragment e = e(str);
                if (e != null) {
                    if (FragmentManager.a(2)) {
                        StringBuilder sb = new StringBuilder("restoreSaveState: added (");
                        sb.append(str);
                        sb.append("): ");
                        sb.append(e);
                    }
                    a(e);
                } else {
                    throw new IllegalStateException("No instantiated fragment for (" + str + ")");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Fragment b(int i) {
        for (int size = this.f2321c.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f2321c.get(size);
            if (fragment != null && fragment.mFragmentId == i) {
                return fragment;
            }
        }
        for (p pVar : this.f2319a.values()) {
            if (pVar != null) {
                Fragment fragment2 = pVar.f2308a;
                if (fragment2.mFragmentId == i) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        this.f2319a.values().removeAll(Collections.singleton(null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(Fragment fragment) {
        synchronized (this.f2321c) {
            this.f2321c.remove(fragment);
        }
        fragment.mAdded = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(p pVar) {
        Fragment fragment = pVar.f2308a;
        if (fragment.mRetainInstance) {
            this.f2320b.c(fragment);
        }
        if (this.f2319a.put(fragment.mWho, null) != null && FragmentManager.a(2)) {
            new StringBuilder("Removed fragment from active set ").append(fragment);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b(String str) {
        return this.f2319a.get(str) != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004e, code lost:
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005a, code lost:
        if (r8 >= r3.f2321c.size()) goto L_0x0085;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005d, code lost:
        r0 = r3.f2321c.get(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x006f, code lost:
        if (r0.mContainer != r0) goto L_0x004e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0076, code lost:
        if (r0.mView == null) goto L_0x004e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0081, code lost:
        return r0.indexOfChild(r0.mView);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0085, code lost:
        return -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int c(androidx.fragment.app.Fragment r4) {
        /*
            r3 = this;
            r0 = r4
            android.view.ViewGroup r0 = r0.mContainer
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x000b
            r0 = -1
            return r0
        L_0x000b:
            r0 = r3
            java.util.ArrayList<androidx.fragment.app.Fragment> r0 = r0.f2321c
            r1 = r4
            int r0 = r0.indexOf(r1)
            r6 = r0
            r0 = r6
            r1 = 1
            int r0 = r0 - r1
            r7 = r0
        L_0x0019:
            r0 = r6
            r8 = r0
            r0 = r7
            if (r0 < 0) goto L_0x004e
            r0 = r3
            java.util.ArrayList<androidx.fragment.app.Fragment> r0 = r0.f2321c
            r1 = r7
            java.lang.Object r0 = r0.get(r1)
            androidx.fragment.app.Fragment r0 = (androidx.fragment.app.Fragment) r0
            r4 = r0
            r0 = r4
            android.view.ViewGroup r0 = r0.mContainer
            r1 = r5
            if (r0 != r1) goto L_0x0048
            r0 = r4
            android.view.View r0 = r0.mView
            if (r0 == 0) goto L_0x0048
            r0 = r5
            r1 = r4
            android.view.View r1 = r1.mView
            int r0 = r0.indexOfChild(r1)
            r1 = 1
            int r0 = r0 + r1
            return r0
        L_0x0048:
            int r7 = r7 + (-1)
            goto L_0x0019
        L_0x004e:
            int r8 = r8 + 1
            r0 = r8
            r1 = r3
            java.util.ArrayList<androidx.fragment.app.Fragment> r1 = r1.f2321c
            int r1 = r1.size()
            if (r0 >= r1) goto L_0x0085
            r0 = r3
            java.util.ArrayList<androidx.fragment.app.Fragment> r0 = r0.f2321c
            r1 = r8
            java.lang.Object r0 = r0.get(r1)
            androidx.fragment.app.Fragment r0 = (androidx.fragment.app.Fragment) r0
            r4 = r0
            r0 = r4
            android.view.ViewGroup r0 = r0.mContainer
            r1 = r5
            if (r0 != r1) goto L_0x0082
            r0 = r4
            android.view.View r0 = r0.mView
            if (r0 == 0) goto L_0x0082
            r0 = r5
            r1 = r4
            android.view.View r1 = r1.mView
            int r0 = r0.indexOfChild(r1)
            return r0
        L_0x0082:
            goto L_0x004e
        L_0x0085:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.r.c(androidx.fragment.app.Fragment):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final p c(String str) {
        return this.f2319a.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ArrayList<FragmentState> c() {
        ArrayList<FragmentState> arrayList = new ArrayList<>(this.f2319a.size());
        for (p pVar : this.f2319a.values()) {
            if (pVar != null) {
                Fragment fragment = pVar.f2308a;
                FragmentState l = pVar.l();
                arrayList.add(l);
                if (FragmentManager.a(2)) {
                    StringBuilder sb = new StringBuilder("Saved state of ");
                    sb.append(fragment);
                    sb.append(": ");
                    sb.append(l.mSavedFragmentState);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Fragment d(String str) {
        Fragment findFragmentByWho;
        for (p pVar : this.f2319a.values()) {
            if (!(pVar == null || (findFragmentByWho = pVar.f2308a.findFragmentByWho(str)) == null)) {
                return findFragmentByWho;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ArrayList<String> d() {
        synchronized (this.f2321c) {
            if (this.f2321c.isEmpty()) {
                return null;
            }
            ArrayList<String> arrayList = new ArrayList<>(this.f2321c.size());
            Iterator<Fragment> it2 = this.f2321c.iterator();
            while (it2.hasNext()) {
                Fragment next = it2.next();
                arrayList.add(next.mWho);
                if (FragmentManager.a(2)) {
                    StringBuilder sb = new StringBuilder("saveAllState: adding fragment (");
                    sb.append(next.mWho);
                    sb.append("): ");
                    sb.append(next);
                }
            }
            return arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Fragment e(String str) {
        p pVar = this.f2319a.get(str);
        if (pVar != null) {
            return pVar.f2308a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<p> e() {
        ArrayList arrayList = new ArrayList();
        for (p pVar : this.f2319a.values()) {
            if (pVar != null) {
                arrayList.add(pVar);
            }
        }
        return arrayList;
    }

    public final List<Fragment> f() {
        ArrayList arrayList;
        if (this.f2321c.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f2321c) {
            arrayList = new ArrayList(this.f2321c);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<Fragment> g() {
        ArrayList arrayList = new ArrayList();
        for (p pVar : this.f2319a.values()) {
            if (pVar != null) {
                arrayList.add(pVar.f2308a);
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }
}
