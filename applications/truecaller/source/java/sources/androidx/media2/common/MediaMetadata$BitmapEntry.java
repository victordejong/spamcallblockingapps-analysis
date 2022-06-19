package androidx.media2.common;

import android.graphics.Bitmap;
import p1727n3.p1803i0.AbstractC26407e;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaMetadata$BitmapEntry.class */
public final class MediaMetadata$BitmapEntry implements AbstractC26407e {

    /* renamed from: a */
    public String f931a;

    /* renamed from: b */
    public Bitmap f932b;

    public MediaMetadata$BitmapEntry() {
    }

    public MediaMetadata$BitmapEntry(String str, Bitmap bitmap) {
        this.f931a = str;
        this.f932b = bitmap;
        int allocationByteCount = bitmap.getAllocationByteCount();
        if (allocationByteCount > 262144) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            double sqrt = Math.sqrt(262144.0d / allocationByteCount);
            this.f932b = Bitmap.createScaledBitmap(bitmap, (int) (width * sqrt), (int) (height * sqrt), true);
        }
    }
}
