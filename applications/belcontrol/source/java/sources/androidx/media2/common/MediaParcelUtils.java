package androidx.media2.common;

import androidx.versionedparcelable.ParcelImpl;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaParcelUtils.class */
public class MediaParcelUtils {
    /* renamed from: a */
    public static <T extends f40> T m6520a(ParcelImpl parcelImpl) {
        return (T) c40.m5455a(parcelImpl);
    }

    /* renamed from: b */
    public static ParcelImpl m6519b(f40 f40Var) {
        return f40Var instanceof MediaItem ? new MediaItemParcelImpl((MediaItem) f40Var) : (ParcelImpl) c40.m5452d(f40Var);
    }
}
