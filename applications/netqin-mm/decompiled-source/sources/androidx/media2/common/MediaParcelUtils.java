package androidx.media2.common;

import androidx.versionedparcelable.ParcelImpl;
import p012b.p130z.AbstractC1978c;
import p012b.p130z.C1976a;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaParcelUtils.class */
public class MediaParcelUtils {

    /* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaParcelUtils$MediaItemParcelImpl.class */
    public static class MediaItemParcelImpl extends ParcelImpl {

        /* renamed from: b */
        public final MediaItem f1529b;

        public MediaItemParcelImpl(MediaItem mediaItem) {
            super(new MediaItem(mediaItem));
            this.f1529b = mediaItem;
        }

        @Override // androidx.versionedparcelable.ParcelImpl
        /* renamed from: a */
        public MediaItem mo37002a() {
            return this.f1529b;
        }
    }

    /* renamed from: a */
    public static ParcelImpl m38221a(AbstractC1978c cVar) {
        return cVar instanceof MediaItem ? new MediaItemParcelImpl((MediaItem) cVar) : (ParcelImpl) C1976a.m31388a(cVar);
    }

    /* renamed from: a */
    public static <T extends AbstractC1978c> T m38222a(ParcelImpl parcelImpl) {
        return (T) C1976a.m31389a(parcelImpl);
    }
}
