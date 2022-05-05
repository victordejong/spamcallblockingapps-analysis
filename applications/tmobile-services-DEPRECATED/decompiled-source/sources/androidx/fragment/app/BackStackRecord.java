package androidx.fragment.app;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.LogWriter;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import java.io.PrintWriter;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/BackStackRecord.class */
public final class BackStackRecord extends FragmentTransaction implements FragmentManager.BackStackEntry, FragmentManager.OpGenerator {

    /* renamed from: r */
    final FragmentManager f3692r;

    /* renamed from: s */
    boolean f3693s;

    /* renamed from: t */
    int f3694t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BackStackRecord(@androidx.annotation.NonNull androidx.fragment.app.FragmentManager r5) {
        /*
            r4 = this;
            r0 = r5
            androidx.fragment.app.FragmentFactory r0 = r0.getFragmentFactory()
            r6 = r0
            r0 = r5
            androidx.fragment.app.FragmentHostCallback<?> r0 = r0.mHost
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0019
            r0 = r7
            android.content.Context r0 = r0.m18463e()
            java.lang.ClassLoader r0 = r0.getClassLoader()
            r7 = r0
            goto L_0x001b
        L_0x0019:
            r0 = 0
            r7 = r0
        L_0x001b:
            r0 = r4
            r1 = r6
            r2 = r7
            r0.<init>(r1, r2)
            r0 = r4
            r1 = -1
            r0.f3694t = r1
            r0 = r4
            r1 = r5
            r0.f3692r = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.BackStackRecord.<init>(androidx.fragment.app.FragmentManager):void");
    }

    /* renamed from: F */
    private static boolean m18516F(FragmentTransaction.C0335Op op) {
        Fragment fragment = op.f3854b;
        return fragment != null && fragment.mAdded && fragment.mView != null && !fragment.mDetached && !fragment.mHidden && fragment.isPostponed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A */
    public void m18521A(boolean z) {
        for (int size = this.f3836a.size() - 1; size >= 0; size--) {
            FragmentTransaction.C0335Op op = this.f3836a.get(size);
            Fragment fragment = op.f3854b;
            if (fragment != null) {
                fragment.setNextTransition(FragmentManager.reverseTransit(this.f3841f));
            }
            switch (op.f3853a) {
                case 1:
                    fragment.setNextAnim(op.f3858f);
                    this.f3692r.setExitAnimationOrder(fragment, true);
                    this.f3692r.removeFragment(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + op.f3853a);
                case 3:
                    fragment.setNextAnim(op.f3857e);
                    this.f3692r.addFragment(fragment);
                    break;
                case 4:
                    fragment.setNextAnim(op.f3857e);
                    this.f3692r.showFragment(fragment);
                    break;
                case 5:
                    fragment.setNextAnim(op.f3858f);
                    this.f3692r.setExitAnimationOrder(fragment, true);
                    this.f3692r.hideFragment(fragment);
                    break;
                case 6:
                    fragment.setNextAnim(op.f3857e);
                    this.f3692r.attachFragment(fragment);
                    break;
                case 7:
                    fragment.setNextAnim(op.f3858f);
                    this.f3692r.setExitAnimationOrder(fragment, true);
                    this.f3692r.detachFragment(fragment);
                    break;
                case 8:
                    this.f3692r.setPrimaryNavigationFragment(null);
                    break;
                case 9:
                    this.f3692r.setPrimaryNavigationFragment(fragment);
                    break;
                case 10:
                    this.f3692r.setMaxLifecycle(fragment, op.f3859g);
                    break;
            }
            if (!(this.f3851p || op.f3853a == 3 || fragment == null)) {
                this.f3692r.moveFragmentToExpectedState(fragment);
            }
        }
        if (!this.f3851p && z) {
            FragmentManager fragmentManager = this.f3692r;
            fragmentManager.moveToState(fragmentManager.mCurState, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B */
    public Fragment m18520B(ArrayList<Fragment> arrayList, Fragment fragment) {
        int i;
        for (int i2 = 0; i2 < this.f3836a.size(); i2 = i + 1) {
            FragmentTransaction.C0335Op op = this.f3836a.get(i2);
            int i3 = op.f3853a;
            if (i3 != 1) {
                if (i3 == 2) {
                    Fragment fragment2 = op.f3854b;
                    int i4 = fragment2.mContainerId;
                    boolean z = false;
                    i = i2;
                    fragment = fragment;
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        Fragment fragment3 = arrayList.get(size);
                        fragment = fragment;
                        i = i;
                        z = z;
                        if (fragment3.mContainerId == i4) {
                            if (fragment3 == fragment2) {
                                z = true;
                                fragment = fragment;
                                i = i;
                            } else {
                                fragment = fragment;
                                int i5 = i;
                                if (fragment3 == fragment) {
                                    this.f3836a.add(i, new FragmentTransaction.C0335Op(9, fragment3));
                                    i5 = i + 1;
                                    fragment = null;
                                }
                                FragmentTransaction.C0335Op op2 = new FragmentTransaction.C0335Op(3, fragment3);
                                op2.f3855c = op.f3855c;
                                op2.f3857e = op.f3857e;
                                op2.f3856d = op.f3856d;
                                op2.f3858f = op.f3858f;
                                this.f3836a.add(i5, op2);
                                arrayList.remove(fragment3);
                                i = i5 + 1;
                                z = z;
                            }
                        }
                    }
                    if (z) {
                        this.f3836a.remove(i);
                        i--;
                    } else {
                        op.f3853a = 1;
                        arrayList.add(fragment2);
                    }
                } else if (i3 == 3 || i3 == 6) {
                    arrayList.remove(op.f3854b);
                    Fragment fragment4 = op.f3854b;
                    fragment = fragment;
                    i = i2;
                    if (fragment4 == fragment) {
                        this.f3836a.add(i2, new FragmentTransaction.C0335Op(9, fragment4));
                        i = i2 + 1;
                        fragment = null;
                    }
                } else if (i3 != 7) {
                    if (i3 != 8) {
                        fragment = fragment;
                        i = i2;
                    } else {
                        this.f3836a.add(i2, new FragmentTransaction.C0335Op(9, fragment));
                        i = i2 + 1;
                        fragment = op.f3854b;
                    }
                }
            }
            arrayList.add(op.f3854b);
            i = i2;
            fragment = fragment;
        }
        return fragment;
    }

    @Nullable
    /* renamed from: C */
    public String m18519C() {
        return this.f3844i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: D */
    public boolean m18518D(int i) {
        int size = this.f3836a.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragment = this.f3836a.get(i2).f3854b;
            int i3 = fragment != null ? fragment.mContainerId : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: E */
    public boolean m18517E(ArrayList<BackStackRecord> arrayList, int i, int i2) {
        if (i2 == i) {
            return false;
        }
        int size = this.f3836a.size();
        int i3 = -1;
        for (int i4 = 0; i4 < size; i4++) {
            Fragment fragment = this.f3836a.get(i4).f3854b;
            int i5 = fragment != null ? fragment.mContainerId : 0;
            i3 = i3;
            if (i5 != 0) {
                i3 = i3;
                if (i5 != i3) {
                    for (int i6 = i; i6 < i2; i6++) {
                        BackStackRecord backStackRecord = arrayList.get(i6);
                        int size2 = backStackRecord.f3836a.size();
                        for (int i7 = 0; i7 < size2; i7++) {
                            Fragment fragment2 = backStackRecord.f3836a.get(i7).f3854b;
                            if ((fragment2 != null ? fragment2.mContainerId : 0) == i5) {
                                return true;
                            }
                        }
                    }
                    i3 = i5;
                } else {
                    continue;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: G */
    public boolean m18515G() {
        for (int i = 0; i < this.f3836a.size(); i++) {
            if (m18516F(this.f3836a.get(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: H */
    public void m18514H() {
        if (this.f3852q != null) {
            for (int i = 0; i < this.f3852q.size(); i++) {
                this.f3852q.get(i).run();
            }
            this.f3852q = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: I */
    public void m18513I(Fragment.OnStartEnterTransitionListener onStartEnterTransitionListener) {
        for (int i = 0; i < this.f3836a.size(); i++) {
            FragmentTransaction.C0335Op op = this.f3836a.get(i);
            if (m18516F(op)) {
                op.f3854b.setOnStartEnterTransitionListener(onStartEnterTransitionListener);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: J */
    public Fragment m18512J(ArrayList<Fragment> arrayList, Fragment fragment) {
        for (int size = this.f3836a.size() - 1; size >= 0; size--) {
            FragmentTransaction.C0335Op op = this.f3836a.get(size);
            int i = op.f3853a;
            if (i != 1) {
                if (i != 3) {
                    switch (i) {
                        case 8:
                            fragment = null;
                            break;
                        case 9:
                            fragment = op.f3854b;
                            break;
                        case 10:
                            op.f3860h = op.f3859g;
                            break;
                    }
                }
                arrayList.add(op.f3854b);
            }
            arrayList.remove(op.f3854b);
        }
        return fragment;
    }

    @Override // androidx.fragment.app.FragmentManager.OpGenerator
    /* renamed from: a */
    public boolean mo18419a(@NonNull ArrayList<BackStackRecord> arrayList, @NonNull ArrayList<Boolean> arrayList2) {
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.f3842g) {
            return true;
        }
        this.f3692r.addBackStackState(this);
        return true;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    /* renamed from: i */
    public int mo18339i() {
        return m18510w(false);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    /* renamed from: j */
    public int mo18338j() {
        return m18510w(true);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    /* renamed from: k */
    public void mo18337k() {
        m18334n();
        this.f3692r.execSingleAction(this, false);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    /* renamed from: l */
    public void mo18336l() {
        m18334n();
        this.f3692r.execSingleAction(this, true);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    /* renamed from: m */
    public FragmentTransaction mo18335m(@NonNull Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.f3692r) {
            super.mo18335m(fragment);
            return this;
        }
        throw new IllegalStateException("Cannot detach Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.fragment.app.FragmentTransaction
    /* renamed from: o */
    public void mo18333o(int i, Fragment fragment, @Nullable String str, int i2) {
        super.mo18333o(i, fragment, str, i2);
        fragment.mFragmentManager = this.f3692r;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    /* renamed from: p */
    public boolean mo18332p() {
        return this.f3836a.isEmpty();
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    /* renamed from: q */
    public FragmentTransaction mo18331q(@NonNull Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.f3692r) {
            super.mo18331q(fragment);
            return this;
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    /* renamed from: t */
    public FragmentTransaction mo18328t(@NonNull Fragment fragment, @NonNull Lifecycle.State state) {
        if (fragment.mFragmentManager != this.f3692r) {
            throw new IllegalArgumentException("Cannot setMaxLifecycle for Fragment not attached to FragmentManager " + this.f3692r);
        } else if (state.isAtLeast(Lifecycle.State.CREATED)) {
            super.mo18328t(fragment, state);
            return this;
        } else {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle below " + Lifecycle.State.CREATED);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f3694t >= 0) {
            sb.append(" #");
            sb.append(this.f3694t);
        }
        if (this.f3844i != null) {
            sb.append(" ");
            sb.append(this.f3844i);
        }
        sb.append("}");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: v */
    public void m18511v(int i) {
        FragmentTransaction.C0335Op op;
        if (this.f3842g) {
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
            }
            int size = this.f3836a.size();
            for (int i2 = 0; i2 < size; i2++) {
                Fragment fragment = this.f3836a.get(i2).f3854b;
                if (fragment != null) {
                    fragment.mBackStackNesting += i;
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "Bump nesting of " + op.f3854b + " to " + op.f3854b.mBackStackNesting);
                    }
                }
            }
        }
    }

    /* renamed from: w */
    int m18510w(boolean z) {
        if (!this.f3693s) {
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Commit: " + this);
                PrintWriter printWriter = new PrintWriter(new LogWriter("FragmentManager"));
                m18509x("  ", printWriter);
                printWriter.close();
            }
            this.f3693s = true;
            if (this.f3842g) {
                this.f3694t = this.f3692r.allocBackStackIndex();
            } else {
                this.f3694t = -1;
            }
            this.f3692r.enqueueAction(this, z);
            return this.f3694t;
        }
        throw new IllegalStateException("commit already called");
    }

    /* renamed from: x */
    public void m18509x(String str, PrintWriter printWriter) {
        m18508y(str, printWriter, true);
    }

    /* renamed from: y */
    public void m18508y(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f3844i);
            printWriter.print(" mIndex=");
            printWriter.print(this.f3694t);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f3693s);
            if (this.f3841f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f3841f));
            }
            if (!(this.f3837b == 0 && this.f3838c == 0)) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f3837b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f3838c));
            }
            if (!(this.f3839d == 0 && this.f3840e == 0)) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f3839d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f3840e));
            }
            if (!(this.f3845j == 0 && this.f3846k == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f3845j));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f3846k);
            }
            if (!(this.f3847l == 0 && this.f3848m == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f3847l));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f3848m);
            }
        }
        if (!this.f3836a.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Operations:");
            int size = this.f3836a.size();
            for (int i = 0; i < size; i++) {
                FragmentTransaction.C0335Op op = this.f3836a.get(i);
                switch (op.f3853a) {
                    case 0:
                        str2 = "NULL";
                        break;
                    case 1:
                        str2 = "ADD";
                        break;
                    case 2:
                        str2 = "REPLACE";
                        break;
                    case 3:
                        str2 = "REMOVE";
                        break;
                    case 4:
                        str2 = "HIDE";
                        break;
                    case 5:
                        str2 = "SHOW";
                        break;
                    case 6:
                        str2 = "DETACH";
                        break;
                    case 7:
                        str2 = "ATTACH";
                        break;
                    case 8:
                        str2 = "SET_PRIMARY_NAV";
                        break;
                    case 9:
                        str2 = "UNSET_PRIMARY_NAV";
                        break;
                    case 10:
                        str2 = "OP_SET_MAX_LIFECYCLE";
                        break;
                    default:
                        str2 = "cmd=" + op.f3853a;
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(str2);
                printWriter.print(" ");
                printWriter.println(op.f3854b);
                if (z) {
                    if (!(op.f3855c == 0 && op.f3856d == 0)) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(op.f3855c));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(op.f3856d));
                    }
                    if (op.f3857e != 0 || op.f3858f != 0) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(op.f3857e));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(op.f3858f));
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: z */
    public void m18507z() {
        int size = this.f3836a.size();
        for (int i = 0; i < size; i++) {
            FragmentTransaction.C0335Op op = this.f3836a.get(i);
            Fragment fragment = op.f3854b;
            if (fragment != null) {
                fragment.setNextTransition(this.f3841f);
            }
            switch (op.f3853a) {
                case 1:
                    fragment.setNextAnim(op.f3855c);
                    this.f3692r.setExitAnimationOrder(fragment, false);
                    this.f3692r.addFragment(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + op.f3853a);
                case 3:
                    fragment.setNextAnim(op.f3856d);
                    this.f3692r.removeFragment(fragment);
                    break;
                case 4:
                    fragment.setNextAnim(op.f3856d);
                    this.f3692r.hideFragment(fragment);
                    break;
                case 5:
                    fragment.setNextAnim(op.f3855c);
                    this.f3692r.setExitAnimationOrder(fragment, false);
                    this.f3692r.showFragment(fragment);
                    break;
                case 6:
                    fragment.setNextAnim(op.f3856d);
                    this.f3692r.detachFragment(fragment);
                    break;
                case 7:
                    fragment.setNextAnim(op.f3855c);
                    this.f3692r.setExitAnimationOrder(fragment, false);
                    this.f3692r.attachFragment(fragment);
                    break;
                case 8:
                    this.f3692r.setPrimaryNavigationFragment(fragment);
                    break;
                case 9:
                    this.f3692r.setPrimaryNavigationFragment(null);
                    break;
                case 10:
                    this.f3692r.setMaxLifecycle(fragment, op.f3860h);
                    break;
            }
            if (!(this.f3851p || op.f3853a == 1 || fragment == null)) {
                this.f3692r.moveFragmentToExpectedState(fragment);
            }
        }
        if (!this.f3851p) {
            FragmentManager fragmentManager = this.f3692r;
            fragmentManager.moveToState(fragmentManager.mCurState, true);
        }
    }
}
