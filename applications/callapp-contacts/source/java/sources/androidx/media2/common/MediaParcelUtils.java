package androidx.media2.common;

import androidx.versionedparcelable.AbstractC2922c;
import androidx.versionedparcelable.C2920a;
import androidx.versionedparcelable.ParcelImpl;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaParcelUtils.class */
public final class MediaParcelUtils {

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

    /* renamed from: a */
    public static ParcelImpl m43186a(AbstractC2922c abstractC2922c) {
        return abstractC2922c instanceof MediaItem ? new MediaItemParcelImpl((MediaItem) abstractC2922c) : (ParcelImpl) C2920a.m39627a(abstractC2922c);
    }
}
