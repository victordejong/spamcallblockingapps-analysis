package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.internal.base.zai;
import com.google.android.gms.internal.base.zaj;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/zae.class */
public final class zae extends zag {
    private final WeakReference<ImageView> zac;

    public zae(ImageView imageView, int i) {
        super(Uri.EMPTY, i);
        Asserts.checkNotNull(imageView);
        this.zac = new WeakReference<>(imageView);
    }

    public zae(ImageView imageView, Uri uri) {
        super(uri, 0);
        Asserts.checkNotNull(imageView);
        this.zac = new WeakReference<>(imageView);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zae)) {
            return false;
        }
        ImageView imageView = this.zac.get();
        ImageView imageView2 = ((zae) obj).zac.get();
        return (imageView2 == null || imageView == null || !Objects.equal(imageView2, imageView)) ? false : true;
    }

    public final int hashCode() {
        return 0;
    }

    @Override // com.google.android.gms.common.images.zag
    public final void zaa(Drawable drawable, boolean z, boolean z2, boolean z3) {
        Drawable drawable2;
        ImageView imageView = this.zac.get();
        if (imageView != null) {
            if (!z2 && !z3 && (imageView instanceof zaj)) {
                zaj zajVar = (zaj) imageView;
                throw null;
            }
            boolean z4 = false;
            if (!z2) {
                z4 = !z;
            }
            zai zaiVar = drawable;
            if (z4) {
                Drawable drawable3 = imageView.getDrawable();
                if (drawable3 != null) {
                    drawable2 = drawable3;
                    if (drawable3 instanceof zai) {
                        drawable2 = ((zai) drawable3).zab();
                    }
                } else {
                    drawable2 = null;
                }
                zaiVar = new zai(drawable2, drawable);
            }
            imageView.setImageDrawable(zaiVar);
            if (imageView instanceof zaj) {
                zaj zajVar2 = (zaj) imageView;
                throw null;
            } else if (zaiVar == null || !z4) {
            } else {
                ((zai) zaiVar).zac(250);
            }
        }
    }
}
