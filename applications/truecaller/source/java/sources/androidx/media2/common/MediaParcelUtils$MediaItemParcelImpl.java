package androidx.media2.common;

import androidx.versionedparcelable.ParcelImpl;
import p1727n3.p1803i0.AbstractC26407e;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaParcelUtils$MediaItemParcelImpl.class */
public class MediaParcelUtils$MediaItemParcelImpl extends ParcelImpl {

    /* renamed from: b */
    public final MediaItem f933b;

    public MediaParcelUtils$MediaItemParcelImpl(MediaItem mediaItem) {
        super((AbstractC26407e) new MediaItem(mediaItem.b, mediaItem.c, mediaItem.d));
        this.f933b = mediaItem;
    }

    @Override // androidx.versionedparcelable.ParcelImpl
    /* renamed from: a */
    public AbstractC26407e mo42658a() {
        return this.f933b;
    }
}
