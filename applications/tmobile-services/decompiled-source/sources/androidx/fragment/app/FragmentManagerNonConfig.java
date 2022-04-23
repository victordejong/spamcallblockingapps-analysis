package androidx.fragment.app;

import androidx.annotation.Nullable;
import androidx.lifecycle.ViewModelStore;
import java.util.Collection;
import java.util.Map;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManagerNonConfig.class */
public class FragmentManagerNonConfig {
    @Nullable

    /* renamed from: a */
    private final Collection<Fragment> f3782a;
    @Nullable

    /* renamed from: b */
    private final Map<String, FragmentManagerNonConfig> f3783b;
    @Nullable

    /* renamed from: c */
    private final Map<String, ViewModelStore> f3784c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentManagerNonConfig(@Nullable Collection<Fragment> collection, @Nullable Map<String, FragmentManagerNonConfig> map, @Nullable Map<String, ViewModelStore> map2) {
        this.f3782a = collection;
        this.f3783b = map;
        this.f3784c = map2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: a */
    public Map<String, FragmentManagerNonConfig> m18413a() {
        return this.f3783b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: b */
    public Collection<Fragment> m18412b() {
        return this.f3782a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: c */
    public Map<String, ViewModelStore> m18411c() {
        return this.f3784c;
    }
}
