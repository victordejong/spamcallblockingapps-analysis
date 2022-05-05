package dagger.android;

import dagger.internal.GwtIncompatible;
import dagger.releasablereferences.TypedReleasableReferenceManager;
import java.util.Set;
import javax.inject.Inject;
@GwtIncompatible
/* loaded from: classes2-dex2jar.jar:dagger/android/AndroidMemorySensitiveReferenceManager.class */
public final class AndroidMemorySensitiveReferenceManager {
    private final Set<TypedReleasableReferenceManager<ReleaseReferencesAt>> managers;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Inject
    public AndroidMemorySensitiveReferenceManager(Set<TypedReleasableReferenceManager<ReleaseReferencesAt>> set) {
        this.managers = set;
    }

    public void onTrimMemory(int i) {
        for (TypedReleasableReferenceManager<ReleaseReferencesAt> typedReleasableReferenceManager : this.managers) {
            if (i >= typedReleasableReferenceManager.metadata().value()) {
                typedReleasableReferenceManager.releaseStrongReferences();
            } else {
                typedReleasableReferenceManager.restoreStrongReferences();
            }
        }
    }
}
