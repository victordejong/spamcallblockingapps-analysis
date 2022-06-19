package androidx.fragment.app;

import android.util.Log;
import androidx.core.util.LogWriter;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import java.io.PrintWriter;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/BackStackRecord.class */
public final class BackStackRecord extends FragmentTransaction implements FragmentManager.BackStackEntry, FragmentManager.OpGenerator {
    private static final String TAG = "FragmentManager";
    boolean mCommitted;
    int mIndex;
    final FragmentManager mManager;

    public BackStackRecord(FragmentManager fragmentManager) {
        super(fragmentManager.getFragmentFactory(), fragmentManager.mHost != null ? fragmentManager.mHost.getContext().getClassLoader() : null);
        this.mIndex = -1;
        this.mManager = fragmentManager;
    }

    private static boolean isFragmentPostponed(FragmentTransaction.C0335Op c0335Op) {
        Fragment fragment = c0335Op.mFragment;
        return fragment != null && fragment.mAdded && fragment.mView != null && !fragment.mDetached && !fragment.mHidden && fragment.isPostponed();
    }

    public void bumpBackStackNesting(int i) {
        if (!this.mAddToBackStack) {
            return;
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(TAG, "Bump nesting in " + this + " by " + i);
        }
        int size = this.mOps.size();
        for (int i2 = 0; i2 < size; i2++) {
            FragmentTransaction.C0335Op c0335Op = this.mOps.get(i2);
            if (c0335Op.mFragment != null) {
                c0335Op.mFragment.mBackStackNesting += i;
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(TAG, "Bump nesting of " + c0335Op.mFragment + " to " + c0335Op.mFragment.mBackStackNesting);
                }
            }
        }
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public int commit() {
        return commitInternal(false);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public int commitAllowingStateLoss() {
        return commitInternal(true);
    }

    int commitInternal(boolean z) {
        if (!this.mCommitted) {
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v(TAG, "Commit: " + this);
                PrintWriter printWriter = new PrintWriter(new LogWriter(TAG));
                dump("  ", printWriter);
                printWriter.close();
            }
            this.mCommitted = true;
            if (this.mAddToBackStack) {
                this.mIndex = this.mManager.allocBackStackIndex();
            } else {
                this.mIndex = -1;
            }
            this.mManager.enqueueAction(this, z);
            return this.mIndex;
        }
        throw new IllegalStateException("commit already called");
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public void commitNow() {
        disallowAddToBackStack();
        this.mManager.execSingleAction(this, false);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public void commitNowAllowingStateLoss() {
        disallowAddToBackStack();
        this.mManager.execSingleAction(this, true);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public FragmentTransaction detach(Fragment fragment) {
        if (fragment.mFragmentManager == null || fragment.mFragmentManager == this.mManager) {
            return super.detach(fragment);
        }
        throw new IllegalStateException("Cannot detach Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public void doAddOp(int i, Fragment fragment, String str, int i2) {
        super.doAddOp(i, fragment, str, i2);
        fragment.mFragmentManager = this.mManager;
    }

    public void dump(String str, PrintWriter printWriter) {
        dump(str, printWriter, true);
    }

    public void dump(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.mName);
            printWriter.print(" mIndex=");
            printWriter.print(this.mIndex);
            printWriter.print(" mCommitted=");
            printWriter.println(this.mCommitted);
            if (this.mTransition != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.mTransition));
            }
            if (this.mEnterAnim != 0 || this.mExitAnim != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mEnterAnim));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.mExitAnim));
            }
            if (this.mPopEnterAnim != 0 || this.mPopExitAnim != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mPopEnterAnim));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.mPopExitAnim));
            }
            if (this.mBreadCrumbTitleRes != 0 || this.mBreadCrumbTitleText != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbTitleRes));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.mBreadCrumbTitleText);
            }
            if (this.mBreadCrumbShortTitleRes != 0 || this.mBreadCrumbShortTitleText != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbShortTitleRes));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.mBreadCrumbShortTitleText);
            }
        }
        if (!this.mOps.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Operations:");
            int size = this.mOps.size();
            for (int i = 0; i < size; i++) {
                FragmentTransaction.C0335Op c0335Op = this.mOps.get(i);
                switch (c0335Op.mCmd) {
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
                        str2 = "cmd=" + c0335Op.mCmd;
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(str2);
                printWriter.print(" ");
                printWriter.println(c0335Op.mFragment);
                if (z) {
                    if (c0335Op.mEnterAnim != 0 || c0335Op.mExitAnim != 0) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(c0335Op.mEnterAnim));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(c0335Op.mExitAnim));
                    }
                    if (c0335Op.mPopEnterAnim != 0 || c0335Op.mPopExitAnim != 0) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(c0335Op.mPopEnterAnim));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(c0335Op.mPopExitAnim));
                    }
                }
            }
        }
    }

    public void executeOps() {
        int size = this.mOps.size();
        for (int i = 0; i < size; i++) {
            FragmentTransaction.C0335Op c0335Op = this.mOps.get(i);
            Fragment fragment = c0335Op.mFragment;
            if (fragment != null) {
                fragment.setNextTransition(this.mTransition);
            }
            switch (c0335Op.mCmd) {
                case 1:
                    fragment.setNextAnim(c0335Op.mEnterAnim);
                    this.mManager.setExitAnimationOrder(fragment, false);
                    this.mManager.addFragment(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + c0335Op.mCmd);
                case 3:
                    fragment.setNextAnim(c0335Op.mExitAnim);
                    this.mManager.removeFragment(fragment);
                    break;
                case 4:
                    fragment.setNextAnim(c0335Op.mExitAnim);
                    this.mManager.hideFragment(fragment);
                    break;
                case 5:
                    fragment.setNextAnim(c0335Op.mEnterAnim);
                    this.mManager.setExitAnimationOrder(fragment, false);
                    this.mManager.showFragment(fragment);
                    break;
                case 6:
                    fragment.setNextAnim(c0335Op.mExitAnim);
                    this.mManager.detachFragment(fragment);
                    break;
                case 7:
                    fragment.setNextAnim(c0335Op.mEnterAnim);
                    this.mManager.setExitAnimationOrder(fragment, false);
                    this.mManager.attachFragment(fragment);
                    break;
                case 8:
                    this.mManager.setPrimaryNavigationFragment(fragment);
                    break;
                case 9:
                    this.mManager.setPrimaryNavigationFragment(null);
                    break;
                case 10:
                    this.mManager.setMaxLifecycle(fragment, c0335Op.mCurrentMaxState);
                    break;
            }
            if (!this.mReorderingAllowed && c0335Op.mCmd != 1 && fragment != null) {
                this.mManager.moveFragmentToExpectedState(fragment);
            }
        }
        if (!this.mReorderingAllowed) {
            FragmentManager fragmentManager = this.mManager;
            fragmentManager.moveToState(fragmentManager.mCurState, true);
        }
    }

    public void executePopOps(boolean z) {
        for (int size = this.mOps.size() - 1; size >= 0; size--) {
            FragmentTransaction.C0335Op c0335Op = this.mOps.get(size);
            Fragment fragment = c0335Op.mFragment;
            if (fragment != null) {
                fragment.setNextTransition(FragmentManager.reverseTransit(this.mTransition));
            }
            switch (c0335Op.mCmd) {
                case 1:
                    fragment.setNextAnim(c0335Op.mPopExitAnim);
                    this.mManager.setExitAnimationOrder(fragment, true);
                    this.mManager.removeFragment(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + c0335Op.mCmd);
                case 3:
                    fragment.setNextAnim(c0335Op.mPopEnterAnim);
                    this.mManager.addFragment(fragment);
                    break;
                case 4:
                    fragment.setNextAnim(c0335Op.mPopEnterAnim);
                    this.mManager.showFragment(fragment);
                    break;
                case 5:
                    fragment.setNextAnim(c0335Op.mPopExitAnim);
                    this.mManager.setExitAnimationOrder(fragment, true);
                    this.mManager.hideFragment(fragment);
                    break;
                case 6:
                    fragment.setNextAnim(c0335Op.mPopEnterAnim);
                    this.mManager.attachFragment(fragment);
                    break;
                case 7:
                    fragment.setNextAnim(c0335Op.mPopExitAnim);
                    this.mManager.setExitAnimationOrder(fragment, true);
                    this.mManager.detachFragment(fragment);
                    break;
                case 8:
                    this.mManager.setPrimaryNavigationFragment(null);
                    break;
                case 9:
                    this.mManager.setPrimaryNavigationFragment(fragment);
                    break;
                case 10:
                    this.mManager.setMaxLifecycle(fragment, c0335Op.mOldMaxState);
                    break;
            }
            if (!this.mReorderingAllowed && c0335Op.mCmd != 3 && fragment != null) {
                this.mManager.moveFragmentToExpectedState(fragment);
            }
        }
        if (this.mReorderingAllowed || !z) {
            return;
        }
        FragmentManager fragmentManager = this.mManager;
        fragmentManager.moveToState(fragmentManager.mCurState, true);
    }

    public Fragment expandOps(ArrayList<Fragment> arrayList, Fragment fragment) {
        int i;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            Fragment fragment2 = fragment;
            if (i3 < this.mOps.size()) {
                FragmentTransaction.C0335Op c0335Op = this.mOps.get(i3);
                int i4 = c0335Op.mCmd;
                if (i4 != 1) {
                    if (i4 == 2) {
                        Fragment fragment3 = c0335Op.mFragment;
                        int i5 = fragment3.mContainerId;
                        int size = arrayList.size() - 1;
                        boolean z = false;
                        i = i3;
                        fragment = fragment2;
                        while (size >= 0) {
                            Fragment fragment4 = arrayList.get(size);
                            Fragment fragment5 = fragment;
                            int i6 = i;
                            boolean z2 = z;
                            if (fragment4.mContainerId == i5) {
                                if (fragment4 == fragment3) {
                                    z2 = true;
                                    fragment5 = fragment;
                                    i6 = i;
                                } else {
                                    fragment5 = fragment;
                                    int i7 = i;
                                    if (fragment4 == fragment) {
                                        this.mOps.add(i, new FragmentTransaction.C0335Op(9, fragment4));
                                        i7 = i + 1;
                                        fragment5 = null;
                                    }
                                    FragmentTransaction.C0335Op c0335Op2 = new FragmentTransaction.C0335Op(3, fragment4);
                                    c0335Op2.mEnterAnim = c0335Op.mEnterAnim;
                                    c0335Op2.mPopEnterAnim = c0335Op.mPopEnterAnim;
                                    c0335Op2.mExitAnim = c0335Op.mExitAnim;
                                    c0335Op2.mPopExitAnim = c0335Op.mPopExitAnim;
                                    this.mOps.add(i7, c0335Op2);
                                    arrayList.remove(fragment4);
                                    i6 = i7 + 1;
                                    z2 = z;
                                }
                            }
                            size--;
                            fragment = fragment5;
                            i = i6;
                            z = z2;
                        }
                        if (z) {
                            this.mOps.remove(i);
                            i--;
                        } else {
                            c0335Op.mCmd = 1;
                            arrayList.add(fragment3);
                        }
                    } else if (i4 == 3 || i4 == 6) {
                        arrayList.remove(c0335Op.mFragment);
                        fragment = fragment2;
                        i = i3;
                        if (c0335Op.mFragment == fragment2) {
                            this.mOps.add(i3, new FragmentTransaction.C0335Op(9, c0335Op.mFragment));
                            i = i3 + 1;
                            fragment = null;
                        }
                    } else if (i4 != 7) {
                        if (i4 != 8) {
                            fragment = fragment2;
                            i = i3;
                        } else {
                            this.mOps.add(i3, new FragmentTransaction.C0335Op(9, fragment2));
                            i = i3 + 1;
                            fragment = c0335Op.mFragment;
                        }
                    }
                    i2 = i + 1;
                }
                arrayList.add(c0335Op.mFragment);
                i = i3;
                fragment = fragment2;
                i2 = i + 1;
            } else {
                return fragment2;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentManager.OpGenerator
    public boolean generateOps(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2) {
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(TAG, "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(false);
        if (this.mAddToBackStack) {
            this.mManager.addBackStackState(this);
            return true;
        }
        return true;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    public CharSequence getBreadCrumbShortTitle() {
        return this.mBreadCrumbShortTitleRes != 0 ? this.mManager.mHost.getContext().getText(this.mBreadCrumbShortTitleRes) : this.mBreadCrumbShortTitleText;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    public int getBreadCrumbShortTitleRes() {
        return this.mBreadCrumbShortTitleRes;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    public CharSequence getBreadCrumbTitle() {
        return this.mBreadCrumbTitleRes != 0 ? this.mManager.mHost.getContext().getText(this.mBreadCrumbTitleRes) : this.mBreadCrumbTitleText;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    public int getBreadCrumbTitleRes() {
        return this.mBreadCrumbTitleRes;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    public int getId() {
        return this.mIndex;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    public String getName() {
        return this.mName;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public FragmentTransaction hide(Fragment fragment) {
        if (fragment.mFragmentManager == null || fragment.mFragmentManager == this.mManager) {
            return super.hide(fragment);
        }
        throw new IllegalStateException("Cannot hide Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    public boolean interactsWith(int i) {
        int size = this.mOps.size();
        for (int i2 = 0; i2 < size; i2++) {
            FragmentTransaction.C0335Op c0335Op = this.mOps.get(i2);
            int i3 = c0335Op.mFragment != null ? c0335Op.mFragment.mContainerId : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    public boolean interactsWith(ArrayList<BackStackRecord> arrayList, int i, int i2) {
        if (i2 == i) {
            return false;
        }
        int size = this.mOps.size();
        int i3 = -1;
        int i4 = 0;
        while (i4 < size) {
            FragmentTransaction.C0335Op c0335Op = this.mOps.get(i4);
            int i5 = c0335Op.mFragment != null ? c0335Op.mFragment.mContainerId : 0;
            int i6 = i3;
            if (i5 != 0) {
                i6 = i3;
                if (i5 != i3) {
                    for (int i7 = i; i7 < i2; i7++) {
                        BackStackRecord backStackRecord = arrayList.get(i7);
                        int size2 = backStackRecord.mOps.size();
                        for (int i8 = 0; i8 < size2; i8++) {
                            FragmentTransaction.C0335Op c0335Op2 = backStackRecord.mOps.get(i8);
                            if ((c0335Op2.mFragment != null ? c0335Op2.mFragment.mContainerId : 0) == i5) {
                                return true;
                            }
                        }
                    }
                    i6 = i5;
                } else {
                    continue;
                }
            }
            i4++;
            i3 = i6;
        }
        return false;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public boolean isEmpty() {
        return this.mOps.isEmpty();
    }

    public boolean isPostponed() {
        for (int i = 0; i < this.mOps.size(); i++) {
            if (isFragmentPostponed(this.mOps.get(i))) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public FragmentTransaction remove(Fragment fragment) {
        if (fragment.mFragmentManager == null || fragment.mFragmentManager == this.mManager) {
            return super.remove(fragment);
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    public void runOnCommitRunnables() {
        if (this.mCommitRunnables != null) {
            for (int i = 0; i < this.mCommitRunnables.size(); i++) {
                this.mCommitRunnables.get(i).run();
            }
            this.mCommitRunnables = null;
        }
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public FragmentTransaction setMaxLifecycle(Fragment fragment, Lifecycle.State state) {
        if (fragment.mFragmentManager != this.mManager) {
            throw new IllegalArgumentException("Cannot setMaxLifecycle for Fragment not attached to FragmentManager " + this.mManager);
        } else if (state.isAtLeast(Lifecycle.State.CREATED)) {
            return super.setMaxLifecycle(fragment, state);
        } else {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle below " + Lifecycle.State.CREATED);
        }
    }

    public void setOnStartPostponedListener(Fragment.OnStartEnterTransitionListener onStartEnterTransitionListener) {
        for (int i = 0; i < this.mOps.size(); i++) {
            FragmentTransaction.C0335Op c0335Op = this.mOps.get(i);
            if (isFragmentPostponed(c0335Op)) {
                c0335Op.mFragment.setOnStartEnterTransitionListener(onStartEnterTransitionListener);
            }
        }
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public FragmentTransaction setPrimaryNavigationFragment(Fragment fragment) {
        if (fragment == null || fragment.mFragmentManager == null || fragment.mFragmentManager == this.mManager) {
            return super.setPrimaryNavigationFragment(fragment);
        }
        throw new IllegalStateException("Cannot setPrimaryNavigation for Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public FragmentTransaction show(Fragment fragment) {
        if (fragment.mFragmentManager == null || fragment.mFragmentManager == this.mManager) {
            return super.show(fragment);
        }
        throw new IllegalStateException("Cannot show Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.mIndex >= 0) {
            sb.append(" #");
            sb.append(this.mIndex);
        }
        if (this.mName != null) {
            sb.append(" ");
            sb.append(this.mName);
        }
        sb.append("}");
        return sb.toString();
    }

    public Fragment trackAddedFragmentsInPop(ArrayList<Fragment> arrayList, Fragment fragment) {
        for (int size = this.mOps.size() - 1; size >= 0; size--) {
            FragmentTransaction.C0335Op c0335Op = this.mOps.get(size);
            int i = c0335Op.mCmd;
            if (i != 1) {
                if (i != 3) {
                    switch (i) {
                        case 8:
                            fragment = null;
                            break;
                        case 9:
                            fragment = c0335Op.mFragment;
                            break;
                        case 10:
                            c0335Op.mCurrentMaxState = c0335Op.mOldMaxState;
                            break;
                    }
                }
                arrayList.add(c0335Op.mFragment);
            }
            arrayList.remove(c0335Op.mFragment);
        }
        return fragment;
    }
}
