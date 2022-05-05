package androidx.fragment.app;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManagerViewModel.class */
public final class FragmentManagerViewModel extends ViewModel {

    /* renamed from: i */
    private static final ViewModelProvider.Factory f3790i = new ViewModelProvider.Factory() { // from class: androidx.fragment.app.FragmentManagerViewModel.1
        @Override // androidx.lifecycle.ViewModelProvider.Factory
        @NonNull
        /* renamed from: a */
        public <T extends ViewModel> T mo18109a(@NonNull Class<T> cls) {
            return new FragmentManagerViewModel(true);
        }
    };

    /* renamed from: f */
    private final boolean f3794f;

    /* renamed from: c */
    private final HashMap<String, Fragment> f3791c = new HashMap<>();

    /* renamed from: d */
    private final HashMap<String, FragmentManagerViewModel> f3792d = new HashMap<>();

    /* renamed from: e */
    private final HashMap<String, ViewModelStore> f3793e = new HashMap<>();

    /* renamed from: g */
    private boolean f3795g = false;

    /* renamed from: h */
    private boolean f3796h = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentManagerViewModel(boolean z) {
        this.f3794f = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: j */
    public static FragmentManagerViewModel m18404j(ViewModelStore viewModelStore) {
        return (FragmentManagerViewModel) new ViewModelProvider(viewModelStore, f3790i).m18145a(FragmentManagerViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.lifecycle.ViewModel
    /* renamed from: d */
    public void mo18118d() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.f3795g = true;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || FragmentManagerViewModel.class != obj.getClass()) {
            return false;
        }
        FragmentManagerViewModel fragmentManagerViewModel = (FragmentManagerViewModel) obj;
        if (!this.f3791c.equals(fragmentManagerViewModel.f3791c) || !this.f3792d.equals(fragmentManagerViewModel.f3792d) || !this.f3793e.equals(fragmentManagerViewModel.f3793e)) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public boolean m18408f(@NonNull Fragment fragment) {
        if (this.f3791c.containsKey(fragment.mWho)) {
            return false;
        }
        this.f3791c.put(fragment.mWho, fragment);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public void m18407g(@NonNull Fragment fragment) {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "Clearing non-config state for " + fragment);
        }
        FragmentManagerViewModel fragmentManagerViewModel = this.f3792d.get(fragment.mWho);
        if (fragmentManagerViewModel != null) {
            fragmentManagerViewModel.mo18118d();
            this.f3792d.remove(fragment.mWho);
        }
        ViewModelStore viewModelStore = this.f3793e.get(fragment.mWho);
        if (viewModelStore != null) {
            viewModelStore.m18138a();
            this.f3793e.remove(fragment.mWho);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: h */
    public Fragment m18406h(String str) {
        return this.f3791c.get(str);
    }

    public int hashCode() {
        return (((this.f3791c.hashCode() * 31) + this.f3792d.hashCode()) * 31) + this.f3793e.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: i */
    public FragmentManagerViewModel m18405i(@NonNull Fragment fragment) {
        FragmentManagerViewModel fragmentManagerViewModel = this.f3792d.get(fragment.mWho);
        FragmentManagerViewModel fragmentManagerViewModel2 = fragmentManagerViewModel;
        if (fragmentManagerViewModel == null) {
            fragmentManagerViewModel2 = new FragmentManagerViewModel(this.f3794f);
            this.f3792d.put(fragment.mWho, fragmentManagerViewModel2);
        }
        return fragmentManagerViewModel2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: k */
    public Collection<Fragment> m18403k() {
        return this.f3791c.values();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    @Deprecated
    /* renamed from: l */
    public FragmentManagerNonConfig m18402l() {
        if (this.f3791c.isEmpty() && this.f3792d.isEmpty() && this.f3793e.isEmpty()) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, FragmentManagerViewModel> entry : this.f3792d.entrySet()) {
            FragmentManagerNonConfig l = entry.getValue().m18402l();
            if (l != null) {
                hashMap.put(entry.getKey(), l);
            }
        }
        this.f3796h = true;
        if (!this.f3791c.isEmpty() || !hashMap.isEmpty() || !this.f3793e.isEmpty()) {
            return new FragmentManagerNonConfig(new ArrayList(this.f3791c.values()), hashMap, new HashMap(this.f3793e));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: m */
    public ViewModelStore m18401m(@NonNull Fragment fragment) {
        ViewModelStore viewModelStore = this.f3793e.get(fragment.mWho);
        ViewModelStore viewModelStore2 = viewModelStore;
        if (viewModelStore == null) {
            viewModelStore2 = new ViewModelStore();
            this.f3793e.put(fragment.mWho, viewModelStore2);
        }
        return viewModelStore2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public boolean m18400n() {
        return this.f3795g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public boolean m18399o(@NonNull Fragment fragment) {
        return this.f3791c.remove(fragment.mWho) != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    /* renamed from: p */
    public void m18398p(@Nullable FragmentManagerNonConfig fragmentManagerNonConfig) {
        this.f3791c.clear();
        this.f3792d.clear();
        this.f3793e.clear();
        if (fragmentManagerNonConfig != null) {
            Collection<Fragment> b = fragmentManagerNonConfig.m18412b();
            if (b != null) {
                for (Fragment fragment : b) {
                    if (fragment != null) {
                        this.f3791c.put(fragment.mWho, fragment);
                    }
                }
            }
            Map<String, FragmentManagerNonConfig> a = fragmentManagerNonConfig.m18413a();
            if (a != null) {
                for (Map.Entry<String, FragmentManagerNonConfig> entry : a.entrySet()) {
                    FragmentManagerViewModel fragmentManagerViewModel = new FragmentManagerViewModel(this.f3794f);
                    fragmentManagerViewModel.m18398p(entry.getValue());
                    this.f3792d.put(entry.getKey(), fragmentManagerViewModel);
                }
            }
            Map<String, ViewModelStore> c = fragmentManagerNonConfig.m18411c();
            if (c != null) {
                this.f3793e.putAll(c);
            }
        }
        this.f3796h = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public boolean m18397q(@NonNull Fragment fragment) {
        if (!this.f3791c.containsKey(fragment.mWho)) {
            return true;
        }
        return this.f3794f ? this.f3795g : !this.f3796h;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator<Fragment> it = this.f3791c.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator<String> it2 = this.f3792d.keySet().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator<String> it3 = this.f3793e.keySet().iterator();
        while (it3.hasNext()) {
            sb.append(it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
