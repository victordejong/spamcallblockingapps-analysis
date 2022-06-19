package p193e.p194a.p1275v.p1276a.p1283c0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.truecaller.details_view.C3857R;
import s1.z.c.l;
/* renamed from: e.a.v.a.c0.o */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/c0/o.class */
public final class C20718o implements AbstractC20719p {

    /* renamed from: a */
    public final Drawable f58328a;

    public C20718o(Drawable drawable) {
        l.e(drawable, "drawable");
        this.f58328a = drawable;
    }

    @Override // p193e.p194a.p1275v.p1276a.p1283c0.AbstractC20719p
    /* renamed from: a */
    public void mo10803a(ImageView imageView) {
        l.e(imageView, "image");
        Context context = imageView.getContext();
        l.d(context, "image.context");
        Resources resources = context.getResources();
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        int dimensionPixelSize = resources.getDimensionPixelSize(C3857R.dimen.tab_tcx_icon_size);
        layoutParams.height = dimensionPixelSize;
        layoutParams.width = dimensionPixelSize;
        imageView.setLayoutParams(layoutParams);
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        imageView.setColorFilter((ColorFilter) null);
        imageView.setImageTintList(null);
        imageView.setImageDrawable(this.f58328a);
    }
}
