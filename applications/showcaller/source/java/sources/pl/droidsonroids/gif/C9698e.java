package pl.droidsonroids.gif;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageView;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
/* renamed from: pl.droidsonroids.gif.e */
/* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/e.class */
public final class C9698e {

    /* renamed from: a */
    static final List<String> f40967a = Arrays.asList("raw", "drawable", "mipmap");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: pl.droidsonroids.gif.e$a */
    /* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/e$a.class */
    public static class C9699a extends C9700b {

        /* renamed from: c */
        final int f40968c;

        /* renamed from: d */
        final int f40969d;

        C9699a() {
            this.f40968c = 0;
            this.f40969d = 0;
        }

        C9699a(ImageView imageView, AttributeSet attributeSet, int i, int i2) {
            super(imageView, attributeSet, i, i2);
            this.f40968c = m43a(imageView, attributeSet, true);
            this.f40969d = m43a(imageView, attributeSet, false);
        }

        /* renamed from: a */
        private static int m43a(ImageView imageView, AttributeSet attributeSet, boolean z) {
            int attributeResourceValue = attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", z ? "src" : "background", 0);
            if (attributeResourceValue > 0) {
                if (C9698e.f40967a.contains(imageView.getResources().getResourceTypeName(attributeResourceValue)) && !C9698e.m44e(imageView, z, attributeResourceValue)) {
                    return attributeResourceValue;
                }
                return 0;
            }
            return 0;
        }
    }

    /* renamed from: pl.droidsonroids.gif.e$b */
    /* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/e$b.class */
    public static class C9700b {

        /* renamed from: a */
        boolean f40970a;

        /* renamed from: b */
        final int f40971b;

        public C9700b() {
            this.f40970a = false;
            this.f40971b = -1;
        }

        public C9700b(View view, AttributeSet attributeSet, int i, int i2) {
            TypedArray obtainStyledAttributes = view.getContext().obtainStyledAttributes(attributeSet, C9708j.GifView, i, i2);
            this.f40970a = obtainStyledAttributes.getBoolean(C9708j.GifView_freezesAnimation, false);
            this.f40971b = obtainStyledAttributes.getInt(C9708j.GifView_loopCount, -1);
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: a */
    public static void m48a(int i, Drawable drawable) {
        if (drawable instanceof C9692c) {
            ((C9692c) drawable).m54j(i);
        }
    }

    /* renamed from: b */
    public static float m47b(Resources resources, int i) {
        TypedValue typedValue = new TypedValue();
        resources.getValue(i, typedValue, true);
        int i2 = typedValue.density;
        if (i2 == 0) {
            i2 = 160;
        } else if (i2 == 65535) {
            i2 = 0;
        }
        int i3 = resources.getDisplayMetrics().densityDpi;
        if (i2 <= 0 || i3 <= 0) {
            return 1.0f;
        }
        return i3 / i2;
    }

    /* renamed from: c */
    public static C9699a m46c(ImageView imageView, AttributeSet attributeSet, int i, int i2) {
        if (attributeSet == null || imageView.isInEditMode()) {
            return new C9699a();
        }
        C9699a c9699a = new C9699a(imageView, attributeSet, i, i2);
        int i3 = c9699a.f40971b;
        if (i3 >= 0) {
            m48a(i3, imageView.getDrawable());
            m48a(i3, imageView.getBackground());
        }
        return c9699a;
    }

    /* renamed from: d */
    public static boolean m45d(ImageView imageView, Uri uri) {
        if (uri != null) {
            try {
                imageView.setImageDrawable(new C9692c(imageView.getContext().getContentResolver(), uri));
                return true;
            } catch (IOException e) {
                return false;
            }
        }
        return false;
    }

    /* renamed from: e */
    public static boolean m44e(ImageView imageView, boolean z, int i) {
        Resources resources = imageView.getResources();
        if (resources != null) {
            try {
                if (!f40967a.contains(resources.getResourceTypeName(i))) {
                    return false;
                }
                C9692c c9692c = new C9692c(resources, i);
                if (z) {
                    imageView.setImageDrawable(c9692c);
                    return true;
                }
                imageView.setBackground(c9692c);
                return true;
            } catch (Resources.NotFoundException | IOException e) {
                return false;
            }
        }
        return false;
    }
}
