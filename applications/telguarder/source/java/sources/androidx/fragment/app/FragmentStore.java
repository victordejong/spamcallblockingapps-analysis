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
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentStore.class */
public class FragmentStore {
    private static final String TAG = "FragmentManager";
    private final ArrayList<Fragment> mAdded = new ArrayList<>();
    private final HashMap<String, FragmentStateManager> mActive = new HashMap<>();

    public void addFragment(Fragment fragment) {
        if (this.mAdded.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        synchronized (this.mAdded) {
            this.mAdded.add(fragment);
        }
        fragment.mAdded = true;
    }

    public void burpActive() {
        this.mActive.values().removeAll(Collections.singleton(null));
    }

    public boolean containsActiveFragment(String str) {
        return this.mActive.containsKey(str);
    }

    public void dispatchStateChange(int i) {
        Iterator<Fragment> it = this.mAdded.iterator();
        while (it.hasNext()) {
            FragmentStateManager fragmentStateManager = this.mActive.get(it.next().mWho);
            if (fragmentStateManager != null) {
                fragmentStateManager.setFragmentManagerState(i);
            }
        }
        for (FragmentStateManager fragmentStateManager2 : this.mActive.values()) {
            if (fragmentStateManager2 != null) {
                fragmentStateManager2.setFragmentManagerState(i);
            }
        }
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2 = str + "    ";
        if (!this.mActive.isEmpty()) {
            printWriter.print(str);
            printWriter.print("Active Fragments:");
            for (FragmentStateManager fragmentStateManager : this.mActive.values()) {
                printWriter.print(str);
                if (fragmentStateManager != null) {
                    Fragment fragment = fragmentStateManager.getFragment();
                    printWriter.println(fragment);
                    fragment.dump(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size = this.mAdded.size();
        if (size > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size; i++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(this.mAdded.get(i).toString());
            }
        }
    }

    public Fragment findActiveFragment(String str) {
        FragmentStateManager fragmentStateManager = this.mActive.get(str);
        if (fragmentStateManager != null) {
            return fragmentStateManager.getFragment();
        }
        return null;
    }

    public Fragment findFragmentById(int i) {
        for (int size = this.mAdded.size() - 1; size >= 0; size--) {
            Fragment fragment = this.mAdded.get(size);
            if (fragment != null && fragment.mFragmentId == i) {
                return fragment;
            }
        }
        for (FragmentStateManager fragmentStateManager : this.mActive.values()) {
            if (fragmentStateManager != null) {
                Fragment fragment2 = fragmentStateManager.getFragment();
                if (fragment2.mFragmentId == i) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    public Fragment findFragmentByTag(String str) {
        if (str != null) {
            for (int size = this.mAdded.size() - 1; size >= 0; size--) {
                Fragment fragment = this.mAdded.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (str != null) {
            for (FragmentStateManager fragmentStateManager : this.mActive.values()) {
                if (fragmentStateManager != null) {
                    Fragment fragment2 = fragmentStateManager.getFragment();
                    if (str.equals(fragment2.mTag)) {
                        return fragment2;
                    }
                }
            }
            return null;
        }
        return null;
    }

    public Fragment findFragmentByWho(String str) {
        Fragment findFragmentByWho;
        for (FragmentStateManager fragmentStateManager : this.mActive.values()) {
            if (fragmentStateManager != null && (findFragmentByWho = fragmentStateManager.getFragment().findFragmentByWho(str)) != null) {
                return findFragmentByWho;
            }
        }
        return null;
    }

    public Fragment findFragmentUnder(Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        View view = fragment.mView;
        if (viewGroup == null || view == null) {
            return null;
        }
        for (int indexOf = this.mAdded.indexOf(fragment) - 1; indexOf >= 0; indexOf--) {
            Fragment fragment2 = this.mAdded.get(indexOf);
            if (fragment2.mContainer == viewGroup && fragment2.mView != null) {
                return fragment2;
            }
        }
        return null;
    }

    public int getActiveFragmentCount() {
        return this.mActive.size();
    }

    public List<Fragment> getActiveFragments() {
        ArrayList arrayList = new ArrayList();
        for (FragmentStateManager fragmentStateManager : this.mActive.values()) {
            if (fragmentStateManager != null) {
                arrayList.add(fragmentStateManager.getFragment());
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    public FragmentStateManager getFragmentStateManager(String str) {
        return this.mActive.get(str);
    }

    public List<Fragment> getFragments() {
        ArrayList arrayList;
        if (this.mAdded.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.mAdded) {
            arrayList = new ArrayList(this.mAdded);
        }
        return arrayList;
    }

    public void makeActive(FragmentStateManager fragmentStateManager) {
        this.mActive.put(fragmentStateManager.getFragment().mWho, fragmentStateManager);
    }

    public void makeInactive(FragmentStateManager fragmentStateManager) {
        Fragment fragment = fragmentStateManager.getFragment();
        for (FragmentStateManager fragmentStateManager2 : this.mActive.values()) {
            if (fragmentStateManager2 != null) {
                Fragment fragment2 = fragmentStateManager2.getFragment();
                if (fragment.mWho.equals(fragment2.mTargetWho)) {
                    fragment2.mTarget = fragment;
                    fragment2.mTargetWho = null;
                }
            }
        }
        this.mActive.put(fragment.mWho, null);
        if (fragment.mTargetWho != null) {
            fragment.mTarget = findActiveFragment(fragment.mTargetWho);
        }
    }

    public void removeFragment(Fragment fragment) {
        synchronized (this.mAdded) {
            this.mAdded.remove(fragment);
        }
        fragment.mAdded = false;
    }

    public void resetActiveFragments() {
        this.mActive.clear();
    }

    public void restoreAddedFragments(List<String> list) {
        this.mAdded.clear();
        if (list != null) {
            for (String str : list) {
                Fragment findActiveFragment = findActiveFragment(str);
                if (findActiveFragment == null) {
                    throw new IllegalStateException("No instantiated fragment for (" + str + ")");
                }
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(TAG, "restoreSaveState: added (" + str + "): " + findActiveFragment);
                }
                addFragment(findActiveFragment);
            }
        }
    }

    public ArrayList<FragmentState> saveActiveFragments() {
        ArrayList<FragmentState> arrayList = new ArrayList<>(this.mActive.size());
        for (FragmentStateManager fragmentStateManager : this.mActive.values()) {
            if (fragmentStateManager != null) {
                Fragment fragment = fragmentStateManager.getFragment();
                FragmentState saveState = fragmentStateManager.saveState();
                arrayList.add(saveState);
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(TAG, "Saved state of " + fragment + ": " + saveState.mSavedFragmentState);
                }
            }
        }
        return arrayList;
    }

    public ArrayList<String> saveAddedFragments() {
        synchronized (this.mAdded) {
            if (this.mAdded.isEmpty()) {
                return null;
            }
            ArrayList<String> arrayList = new ArrayList<>(this.mAdded.size());
            Iterator<Fragment> it = this.mAdded.iterator();
            while (it.hasNext()) {
                Fragment next = it.next();
                arrayList.add(next.mWho);
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(TAG, "saveAllState: adding fragment (" + next.mWho + "): " + next);
                }
            }
            return arrayList;
        }
    }
}
