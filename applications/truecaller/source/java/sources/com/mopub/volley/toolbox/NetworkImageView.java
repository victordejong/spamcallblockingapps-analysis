package com.mopub.volley.toolbox;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.MainThread;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.mopub.volley.toolbox.ImageLoader;
import e.m.d.y.n;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/NetworkImageView.class */
public class NetworkImageView extends ImageView {

    /* renamed from: a */
    public String f9346a;

    /* renamed from: b */
    public int f9347b;
    @Nullable

    /* renamed from: c */
    public Bitmap f9348c;

    /* renamed from: d */
    public int f9349d;
    @Nullable

    /* renamed from: e */
    public Bitmap f9350e;

    /* renamed from: f */
    public ImageLoader f9351f;

    /* renamed from: g */
    public ImageLoader.ImageContainer f9352g;

    public NetworkImageView(Context context) {
        this(context, null);
    }

    public NetworkImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NetworkImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: a */
    public void m36150a(boolean z) {
        boolean z2;
        boolean z3;
        int width = getWidth();
        int height = getHeight();
        ImageView.ScaleType scaleType = getScaleType();
        boolean z4 = true;
        if (getLayoutParams() != null) {
            boolean z5 = getLayoutParams().width == -2;
            if (getLayoutParams().height == -2) {
                z2 = z5;
                z3 = true;
            } else {
                z2 = z5;
                z3 = false;
            }
        } else {
            z2 = false;
            z3 = false;
        }
        if (!z2 || !z3) {
            z4 = false;
        }
        if (width == 0 && height == 0 && !z4) {
            return;
        }
        if (TextUtils.isEmpty(this.f9346a)) {
            ImageLoader.ImageContainer imageContainer = this.f9352g;
            if (imageContainer != null) {
                imageContainer.cancelRequest();
                this.f9352g = null;
            }
            m36149b();
            return;
        }
        ImageLoader.ImageContainer imageContainer2 = this.f9352g;
        if (imageContainer2 != null && imageContainer2.getRequestUrl() != null) {
            if (this.f9352g.getRequestUrl().equals(this.f9346a)) {
                return;
            }
            this.f9352g.cancelRequest();
            m36149b();
        }
        int i = width;
        if (z2) {
            i = 0;
        }
        this.f9352g = this.f9351f.get(this.f9346a, new a(this, z), i, z3 ? 0 : height, scaleType);
    }

    /* renamed from: b */
    public final void m36149b() {
        int i = this.f9347b;
        if (i != 0) {
            setImageResource(i);
            return;
        }
        Bitmap bitmap = this.f9348c;
        if (bitmap != null) {
            setImageBitmap(bitmap);
        } else {
            setImageBitmap(null);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        ImageLoader.ImageContainer imageContainer = this.f9352g;
        if (imageContainer != null) {
            imageContainer.cancelRequest();
            setImageBitmap(null);
            this.f9352g = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m36150a(true);
    }

    public void setDefaultImageBitmap(Bitmap bitmap) {
        this.f9347b = 0;
        this.f9348c = bitmap;
    }

    public void setDefaultImageResId(int i) {
        this.f9348c = null;
        this.f9347b = i;
    }

    public void setErrorImageBitmap(Bitmap bitmap) {
        this.f9349d = 0;
        this.f9350e = bitmap;
    }

    public void setErrorImageResId(int i) {
        this.f9350e = null;
        this.f9349d = i;
    }

    @MainThread
    public void setImageUrl(String str, ImageLoader imageLoader) {
        n.o1();
        this.f9346a = str;
        this.f9351f = imageLoader;
        m36150a(false);
    }
}
