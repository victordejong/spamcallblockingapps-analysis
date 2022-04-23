package dagger.android;

import dagger.internal.Factory;
import dagger.internal.GwtIncompatible;
import dagger.releasablereferences.TypedReleasableReferenceManager;
import java.util.Set;
import javax.inject.Provider;
@GwtIncompatible
/* loaded from: classes2-dex2jar.jar:dagger/android/AndroidMemorySensitiveReferenceManager_Factory.class */
public final class AndroidMemorySensitiveReferenceManager_Factory implements Factory<AndroidMemorySensitiveReferenceManager> {
    private final Provider<Set<TypedReleasableReferenceManager<ReleaseReferencesAt>>> managersProvider;

    public AndroidMemorySensitiveReferenceManager_Factory(Provider<Set<TypedReleasableReferenceManager<ReleaseReferencesAt>>> provider) {
        this.managersProvider = provider;
    }

    public static Factory<AndroidMemorySensitiveReferenceManager> create(Provider<Set<TypedReleasableReferenceManager<ReleaseReferencesAt>>> provider) {
        return new AndroidMemorySensitiveReferenceManager_Factory(provider);
    }

    public static AndroidMemorySensitiveReferenceManager newAndroidMemorySensitiveReferenceManager(Set<TypedReleasableReferenceManager<ReleaseReferencesAt>> set) {
        return new AndroidMemorySensitiveReferenceManager(set);
    }

    @Override // javax.inject.Provider
    public AndroidMemorySensitiveReferenceManager get() {
        return new AndroidMemorySensitiveReferenceManager(this.managersProvider.get());
    }
}
