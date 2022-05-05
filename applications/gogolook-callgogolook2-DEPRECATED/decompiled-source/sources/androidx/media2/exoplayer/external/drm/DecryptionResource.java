package androidx.media2.exoplayer.external.drm;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.drm.DecryptionResource;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DecryptionResource.class */
public abstract class DecryptionResource<T extends DecryptionResource<T>> {
    public final Owner<T> owner;
    public int referenceCount = 0;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DecryptionResource$Owner.class */
    public interface Owner<T extends DecryptionResource<T>> {
        void onLastReferenceReleased(T t);
    }

    public DecryptionResource(Owner<T> owner) {
        this.owner = owner;
    }

    public void acquireReference() {
        this.referenceCount++;
    }

    public void releaseReference() {
        int i = this.referenceCount - 1;
        this.referenceCount = i;
        if (i == 0) {
            this.owner.onLastReferenceReleased(this);
        } else if (this.referenceCount < 0) {
            throw new IllegalStateException("Illegal release of resource.");
        }
    }
}
