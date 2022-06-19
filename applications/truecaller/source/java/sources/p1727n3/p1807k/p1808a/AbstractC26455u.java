package p1727n3.p1807k.p1808a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.widget.RemoteViews;
import androidx.core.C0122R;
import androidx.core.graphics.drawable.IconCompat;
/* renamed from: n3.k.a.u */
/* loaded from: classes-dex2jar.jar:n3/k/a/u.class */
public abstract class AbstractC26455u {

    /* renamed from: a */
    public C26450q f74179a;

    /* renamed from: b */
    public CharSequence f74180b;

    /* renamed from: c */
    public CharSequence f74181c;

    /* renamed from: d */
    public boolean f74182d = false;

    /* renamed from: a */
    public void mo1833a(Bundle bundle) {
        if (this.f74182d) {
            bundle.putCharSequence("android.summaryText", this.f74181c);
        }
        CharSequence charSequence = this.f74180b;
        if (charSequence != null) {
            bundle.putCharSequence("android.title.big", charSequence);
        }
        String mo1828f = mo1828f();
        if (mo1828f != null) {
            bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", mo1828f);
        }
    }

    /* renamed from: b */
    public abstract void mo1832b(AbstractC26441j abstractC26441j);

    /* renamed from: c */
    public void mo1831c(Bundle bundle) {
        bundle.remove("android.summaryText");
        bundle.remove("android.title.big");
        bundle.remove("androidx.core.app.extra.COMPAT_TEMPLATE");
    }

    /* renamed from: d */
    public final Bitmap m1830d(IconCompat iconCompat, int i, int i2) {
        Context context = this.f74179a.f74141a;
        iconCompat.e(context);
        Drawable loadDrawable = iconCompat.v(context).loadDrawable(context);
        int intrinsicWidth = i2 == 0 ? loadDrawable.getIntrinsicWidth() : i2;
        int i3 = i2;
        if (i2 == 0) {
            i3 = loadDrawable.getIntrinsicHeight();
        }
        Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, i3, Bitmap.Config.ARGB_8888);
        loadDrawable.setBounds(0, 0, intrinsicWidth, i3);
        if (i != 0) {
            loadDrawable.mutate().setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
        }
        loadDrawable.draw(new Canvas(createBitmap));
        return createBitmap;
    }

    /* renamed from: e */
    public final Bitmap m1829e(int i, int i2, int i3, int i4) {
        int i5 = C0122R.C0123drawable.notification_icon_background;
        int i6 = i4;
        if (i4 == 0) {
            i6 = 0;
        }
        Bitmap m1830d = m1830d(IconCompat.i(this.f74179a.f74141a, i5), i6, i2);
        Canvas canvas = new Canvas(m1830d);
        Drawable mutate = this.f74179a.f74141a.getResources().getDrawable(i).mutate();
        mutate.setFilterBitmap(true);
        int i7 = (i2 - i3) / 2;
        int i8 = i3 + i7;
        mutate.setBounds(i7, i7, i8, i8);
        mutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_ATOP));
        mutate.draw(canvas);
        return m1830d;
    }

    /* renamed from: f */
    public abstract String mo1828f();

    /* renamed from: g */
    public RemoteViews mo1827g(AbstractC26441j abstractC26441j) {
        return null;
    }

    /* renamed from: h */
    public RemoteViews mo1826h(AbstractC26441j abstractC26441j) {
        return null;
    }

    /* renamed from: i */
    public RemoteViews mo1825i(AbstractC26441j abstractC26441j) {
        return null;
    }

    /* renamed from: j */
    public void mo1824j(Bundle bundle) {
        if (bundle.containsKey("android.summaryText")) {
            this.f74181c = bundle.getCharSequence("android.summaryText");
            this.f74182d = true;
        }
        this.f74180b = bundle.getCharSequence("android.title.big");
    }
}
