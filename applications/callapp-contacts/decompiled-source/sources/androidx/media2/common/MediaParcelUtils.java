package androidx.media2.common;

import androidx.versionedparcelable.ParcelImpl;
import androidx.versionedparcelable.a;
import androidx.versionedparcelable.c;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaParcelUtils.class */
public final class MediaParcelUtils {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaParcelUtils$MediaItemParcelImpl.class */
    public static class MediaItemParcelImpl extends ParcelImpl {
        private final MediaItem mItem;

        MediaItemParcelImpl(MediaItem mediaItem) {
            super(new MediaItem(mediaItem));
            this.mItem = mediaItem;
        }

        @Override // androidx.versionedparcelable.ParcelImpl
        public MediaItem getVersionedParcel() {
            return this.mItem;
        }
    }

    private MediaParcelUtils() {
    }

    public static ParcelImpl a(c cVar) {
        return cVar instanceof MediaItem ? new MediaItemParcelImpl((MediaItem) cVar) : (ParcelImpl) a.a(cVar);
    }
}
