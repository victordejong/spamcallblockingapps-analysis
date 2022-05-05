package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentStore.class */
public class FragmentStore {

    /* renamed from: a */
    private final ArrayList<Fragment> f3820a = new ArrayList<>();

    /* renamed from: b */
    private final HashMap<String, FragmentStateManager> f3821b = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m18374a(@NonNull Fragment fragment) {
        if (!this.f3820a.contains(fragment)) {
            synchronized (this.f3820a) {
                this.f3820a.add(fragment);
            }
            fragment.mAdded = true;
            return;
        }
        throw new IllegalStateException("Fragment already added: " + fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m18373b() {
        this.f3821b.values().removeAll(Collections.singleton(null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public boolean m18372c(@NonNull String str) {
        return this.f3821b.containsKey(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m18371d(int i) {
        Iterator<Fragment> it = this.f3820a.iterator();
        while (it.hasNext()) {
            FragmentStateManager fragmentStateManager = this.f3821b.get(it.next().mWho);
            if (fragmentStateManager != null) {
                fragmentStateManager.m18377r(i);
            }
        }
        for (FragmentStateManager fragmentStateManager2 : this.f3821b.values()) {
            if (fragmentStateManager2 != null) {
                fragmentStateManager2.m18377r(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m18370e(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
        String str2 = str + "    ";
        if (!this.f3821b.isEmpty()) {
            printWriter.print(str);
            printWriter.print("Active Fragments:");
            for (FragmentStateManager fragmentStateManager : this.f3821b.values()) {
                printWriter.print(str);
                if (fragmentStateManager != null) {
                    Fragment i = fragmentStateManager.m18386i();
                    printWriter.println(i);
                    i.dump(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size = this.f3820a.size();
        if (size > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i2 = 0; i2 < size; i2++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(this.f3820a.get(i2).toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: f */
    public Fragment m18369f(@NonNull String str) {
        FragmentStateManager fragmentStateManager = this.f3821b.get(str);
        if (fragmentStateManager != null) {
            return fragmentStateManager.m18386i();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: g */
    public Fragment m18368g(@IdRes int i) {
        for (int size = this.f3820a.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f3820a.get(size);
            if (fragment != null && fragment.mFragmentId == i) {
                return fragment;
            }
        }
        for (FragmentStateManager fragmentStateManager : this.f3821b.values()) {
            if (fragmentStateManager != null) {
                Fragment i2 = fragmentStateManager.m18386i();
                if (i2.mFragmentId == i) {
                    return i2;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: h */
    public Fragment m18367h(@Nullable String str) {
        if (str != null) {
            for (int size = this.f3820a.size() - 1; size >= 0; size--) {
                Fragment fragment = this.f3820a.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (str == null) {
            return null;
        }
        for (FragmentStateManager fragmentStateManager : this.f3821b.values()) {
            if (fragmentStateManager != null) {
                Fragment i = fragmentStateManager.m18386i();
                if (str.equals(i.mTag)) {
                    return i;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: i */
    public Fragment m18366i(@NonNull String str) {
        Fragment findFragmentByWho;
        for (FragmentStateManager fragmentStateManager : this.f3821b.values()) {
            if (!(fragmentStateManager == null || (findFragmentByWho = fragmentStateManager.m18386i().findFragmentByWho(str)) == null)) {
                return findFragmentByWho;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public Fragment m18365j(@NonNull Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        View view = fragment.mView;
        if (viewGroup == null || view == null) {
            return null;
        }
        for (int indexOf = this.f3820a.indexOf(fragment) - 1; indexOf >= 0; indexOf--) {
            Fragment fragment2 = this.f3820a.get(indexOf);
            if (fragment2.mContainer == viewGroup && fragment2.mView != null) {
                return fragment2;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public int m18364k() {
        return this.f3821b.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: l */
    public List<Fragment> m18363l() {
        ArrayList arrayList = new ArrayList();
        for (FragmentStateManager fragmentStateManager : this.f3821b.values()) {
            if (fragmentStateManager != null) {
                arrayList.add(fragmentStateManager.m18386i());
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: m */
    public FragmentStateManager m18362m(@NonNull String str) {
        return this.f3821b.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: n */
    public List<Fragment> m18361n() {
        ArrayList arrayList;
        if (this.f3820a.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f3820a) {
            arrayList = new ArrayList(this.f3820a);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public void m18360o(@NonNull FragmentStateManager fragmentStateManager) {
        this.f3821b.put(fragmentStateManager.m18386i().mWho, fragmentStateManager);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public void m18359p(@NonNull FragmentStateManager fragmentStateManager) {
        Fragment i = fragmentStateManager.m18386i();
        for (FragmentStateManager fragmentStateManager2 : this.f3821b.values()) {
            if (fragmentStateManager2 != null) {
                Fragment i2 = fragmentStateManager2.m18386i();
                if (i.mWho.equals(i2.mTargetWho)) {
                    i2.mTarget = i;
                    i2.mTargetWho = null;
                }
            }
        }
        this.f3821b.put(i.mWho, null);
        String str = i.mTargetWho;
        if (str != null) {
            i.mTarget = m18369f(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public void m18358q(@NonNull Fragment fragment) {
        synchronized (this.f3820a) {
            this.f3820a.remove(fragment);
        }
        fragment.mAdded = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public void m18357r() {
        this.f3821b.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public void m18356s(@Nullable List<String> list) {
        this.f3820a.clear();
        if (list != null) {
            for (String str : list) {
                Fragment f = m18369f(str);
                if (f != null) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "restoreSaveState: added (" + str + "): " + f);
                    }
                    m18374a(f);
                } else {
                    throw new IllegalStateException("No instantiated fragment for (" + str + ")");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: t */
    public ArrayList<FragmentState> m18355t() {
        ArrayList<FragmentState> arrayList = new ArrayList<>(this.f3821b.size());
        for (FragmentStateManager fragmentStateManager : this.f3821b.values()) {
            if (fragmentStateManager != null) {
                Fragment i = fragmentStateManager.m18386i();
                FragmentState p = fragmentStateManager.m18379p();
                arrayList.add(p);
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "Saved state of " + i + ": " + p.f3809r);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: u */
    public ArrayList<String> m18354u() {
        synchronized (this.f3820a) {
            if (this.f3820a.isEmpty()) {
                return null;
            }
            ArrayList<String> arrayList = new ArrayList<>(this.f3820a.size());
            Iterator<Fragment> it = this.f3820a.iterator();
            while (it.hasNext()) {
                Fragment next = it.next();
                arrayList.add(next.mWho);
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "saveAllState: adding fragment (" + next.mWho + "): " + next);
                }
            }
            return arrayList;
        }
    }
}
