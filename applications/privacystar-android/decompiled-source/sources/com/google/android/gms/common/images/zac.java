package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.p004v7.widget.helper.ItemTouchHelper;
import android.widget.ImageView;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.internal.base.zae;
import com.google.android.gms.internal.base.zaj;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/zac.class */
public final class zac extends zaa {
    private WeakReference<ImageView> zanb;

    public zac(ImageView imageView, int i) {
        super(null, i);
        Asserts.checkNotNull(imageView);
        this.zanb = new WeakReference<>(imageView);
    }

    public zac(ImageView imageView, Uri uri) {
        super(uri, 0);
        Asserts.checkNotNull(imageView);
        this.zanb = new WeakReference<>(imageView);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zac)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        ImageView imageView = this.zanb.get();
        ImageView imageView2 = ((zac) obj).zanb.get();
        return (imageView2 == null || imageView == null || !Objects.equal(imageView2, imageView)) ? false : true;
    }

    public final int hashCode() {
        return 0;
    }

    @Override // com.google.android.gms.common.images.zaa
    protected final void zaa(Drawable drawable, boolean z, boolean z2, boolean z3) {
        Drawable drawable2;
        ImageView imageView = this.zanb.get();
        if (imageView != null) {
            int i = 0;
            boolean z4 = !z2 && !z3;
            if (z4 && (imageView instanceof zaj)) {
                int zach = zaj.zach();
                if (this.zamw != 0 && zach == this.zamw) {
                    return;
                }
            }
            boolean zaa = zaa(z, z2);
            Uri uri = null;
            Drawable drawable3 = drawable;
            if (zaa) {
                Drawable drawable4 = imageView.getDrawable();
                if (drawable4 != null) {
                    drawable2 = drawable4;
                    if (drawable4 instanceof zae) {
                        drawable2 = ((zae) drawable4).zacf();
                    }
                } else {
                    drawable2 = null;
                }
                drawable3 = new zae(drawable2, drawable);
            }
            imageView.setImageDrawable(drawable3);
            if (imageView instanceof zaj) {
                if (z3) {
                    uri = this.zamu.uri;
                }
                zaj.zaa(uri);
                if (z4) {
                    i = this.zamw;
                }
                zaj.zai(i);
            }
            if (zaa) {
                ((zae) drawable3).startTransition(ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
            }
        }
    }
}
