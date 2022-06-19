package com.facebook.login.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.facebook.AccessToken;
import rm0;
/* loaded from: classes-dex2jar.jar:com/facebook/login/widget/ProfilePictureView.class */
public class ProfilePictureView extends FrameLayout {

    /* renamed from: l */
    public static final String f2580l = ProfilePictureView.class.getSimpleName();

    /* renamed from: a */
    public String f2581a;

    /* renamed from: f */
    public ImageView f2585f;

    /* renamed from: h */
    public rm0 f2587h;

    /* renamed from: j */
    public AbstractC0355b f2588j;

    /* renamed from: b */
    public int f2582b = 0;

    /* renamed from: c */
    public int f2583c = 0;

    /* renamed from: d */
    public boolean f2584d = true;

    /* renamed from: g */
    public int f2586g = -1;

    /* renamed from: k */
    public Bitmap f2589k = null;

    /* renamed from: com.facebook.login.widget.ProfilePictureView$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/widget/ProfilePictureView$b.class */
    public interface AbstractC0355b {
        /* renamed from: b */
        void m5006b(ri0 ri0Var);
    }

    public ProfilePictureView(Context context) {
        super(context);
        m5014c(context);
    }

    public ProfilePictureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m5014c(context);
        m5012e(attributeSet);
    }

    public ProfilePictureView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m5014c(context);
        m5012e(attributeSet);
    }

    private void setImageBitmap(Bitmap bitmap) {
        ImageView imageView = this.f2585f;
        if (imageView == null || bitmap == null) {
            return;
        }
        imageView.setImageBitmap(bitmap);
    }

    /* renamed from: b */
    public final int m5015b(boolean z) {
        int i;
        int i2 = this.f2586g;
        if (i2 != -4) {
            if (i2 != -3) {
                if (i2 == -2) {
                    i = yn0.com_facebook_profilepictureview_preset_size_small;
                } else if (i2 != -1 || !z) {
                    return 0;
                }
            }
            i = yn0.com_facebook_profilepictureview_preset_size_normal;
        } else {
            i = yn0.com_facebook_profilepictureview_preset_size_large;
        }
        return getResources().getDimensionPixelSize(i);
    }

    /* renamed from: c */
    public final void m5014c(Context context) {
        removeAllViews();
        this.f2585f = new ImageView(context);
        this.f2585f.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f2585f.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        addView(this.f2585f);
    }

    /* renamed from: d */
    public final boolean m5013d() {
        return this.f2584d;
    }

    /* renamed from: e */
    public final void m5012e(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, eo0.com_facebook_profile_picture_view);
        setPresetSize(obtainStyledAttributes.getInt(eo0.com_facebook_profile_picture_view_com_facebook_preset_size, -1));
        this.f2584d = obtainStyledAttributes.getBoolean(eo0.com_facebook_profile_picture_view_com_facebook_is_cropped, true);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: f */
    public final void m5011f(sm0 sm0Var) {
        if (sm0Var.c() == this.f2587h) {
            this.f2587h = null;
            Bitmap a = sm0Var.a();
            Exception b = sm0Var.b();
            if (b == null) {
                if (a == null) {
                    return;
                }
                setImageBitmap(a);
                if (!sm0Var.d()) {
                    return;
                }
                m5009h(false);
                return;
            }
            AbstractC0355b abstractC0355b = this.f2588j;
            if (abstractC0355b == null) {
                xm0.e(dj0.REQUESTS, 6, f2580l, b.toString());
                return;
            }
            abstractC0355b.m5006b(new ri0("Error in downloading profile picture for profileId: " + getProfileId(), b));
        }
    }

    /* renamed from: g */
    public final void m5010g(boolean z) {
        boolean m5007j = m5007j();
        String str = this.f2581a;
        if (str == null || str.length() == 0 || (this.f2583c == 0 && this.f2582b == 0)) {
            m5008i();
        } else if (!m5007j && !z) {
        } else {
            m5009h(true);
        }
    }

    public final AbstractC0355b getOnErrorListener() {
        return this.f2588j;
    }

    public final int getPresetSize() {
        return this.f2586g;
    }

    public final String getProfileId() {
        return this.f2581a;
    }

    /* renamed from: h */
    public final void m5009h(boolean z) {
        rm0.b bVar = new rm0.b(getContext(), rm0.e(this.f2581a, this.f2583c, this.f2582b, AccessToken.m5239s() ? AccessToken.m5251g().m5241q() : ""));
        bVar.g(z);
        bVar.i(this);
        bVar.h(new a(this));
        rm0 f = bVar.f();
        rm0 rm0Var = this.f2587h;
        if (rm0Var != null) {
            qm0.c(rm0Var);
        }
        this.f2587h = f;
        qm0.e(f);
    }

    /* renamed from: i */
    public final void m5008i() {
        Bitmap bitmap;
        rm0 rm0Var = this.f2587h;
        if (rm0Var != null) {
            qm0.c(rm0Var);
        }
        if (this.f2589k == null) {
            bitmap = BitmapFactory.decodeResource(getResources(), m5013d() ? zn0.com_facebook_profile_picture_blank_square : zn0.com_facebook_profile_picture_blank_portrait);
        } else {
            m5007j();
            bitmap = Bitmap.createScaledBitmap(this.f2589k, this.f2583c, this.f2582b, false);
        }
        setImageBitmap(bitmap);
    }

    /* renamed from: j */
    public final boolean m5007j() {
        int height = getHeight();
        int width = getWidth();
        if (width < 1 || height < 1) {
            return false;
        }
        int m5015b = m5015b(false);
        if (m5015b != 0) {
            height = m5015b;
            width = height;
        }
        if (width <= height) {
            height = m5013d() ? width : 0;
        } else {
            width = m5013d() ? height : 0;
        }
        boolean z = true;
        if (width == this.f2583c) {
            z = height != this.f2582b;
        }
        this.f2583c = width;
        this.f2582b = height;
        return z;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f2587h = null;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m5010g(false);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        int i4;
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i);
        boolean z2 = true;
        if (View.MeasureSpec.getMode(i2) == 1073741824 || layoutParams.height != -2) {
            i3 = i2;
            z = false;
        } else {
            size = m5015b(true);
            i3 = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
            z = true;
        }
        if (View.MeasureSpec.getMode(i) == 1073741824 || layoutParams.width != -2) {
            z2 = z;
            i4 = size2;
        } else {
            i4 = m5015b(true);
            i = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
        }
        if (!z2) {
            super.onMeasure(i, i3);
            return;
        }
        setMeasuredDimension(i4, size);
        measureChildren(i, i3);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable.getClass() != Bundle.class) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable("ProfilePictureView_superState"));
        this.f2581a = bundle.getString("ProfilePictureView_profileId");
        this.f2586g = bundle.getInt("ProfilePictureView_presetSize");
        this.f2584d = bundle.getBoolean("ProfilePictureView_isCropped");
        this.f2583c = bundle.getInt("ProfilePictureView_width");
        this.f2582b = bundle.getInt("ProfilePictureView_height");
        m5010g(true);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable("ProfilePictureView_superState", onSaveInstanceState);
        bundle.putString("ProfilePictureView_profileId", this.f2581a);
        bundle.putInt("ProfilePictureView_presetSize", this.f2586g);
        bundle.putBoolean("ProfilePictureView_isCropped", this.f2584d);
        bundle.putInt("ProfilePictureView_width", this.f2583c);
        bundle.putInt("ProfilePictureView_height", this.f2582b);
        bundle.putBoolean("ProfilePictureView_refresh", this.f2587h != null);
        return bundle;
    }

    public final void setCropped(boolean z) {
        this.f2584d = z;
        m5010g(false);
    }

    public final void setDefaultProfilePicture(Bitmap bitmap) {
        this.f2589k = bitmap;
    }

    public final void setOnErrorListener(AbstractC0355b abstractC0355b) {
        this.f2588j = abstractC0355b;
    }

    public final void setPresetSize(int i) {
        if (i == -4 || i == -3 || i == -2 || i == -1) {
            this.f2586g = i;
            requestLayout();
            return;
        }
        throw new IllegalArgumentException("Must use a predefined preset size");
    }

    public final void setProfileId(String str) {
        boolean z;
        if (fn0.Q(this.f2581a) || !this.f2581a.equalsIgnoreCase(str)) {
            m5008i();
            z = true;
        } else {
            z = false;
        }
        this.f2581a = str;
        m5010g(z);
    }
}
