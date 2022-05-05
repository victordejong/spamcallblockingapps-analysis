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
import com.facebook.internal.C2487s;
import com.facebook.internal.C2493t;
import com.facebook.internal.C2497u;
import com.facebook.internal.C2503y;
import com.facebook.login.R$dimen;
import com.facebook.login.R$drawable;
import com.facebook.login.R$styleable;
import p081h.p154f.C6131k;
import p081h.p154f.EnumC6151v;
/* loaded from: classes-dex2jar.jar:com/facebook/login/widget/ProfilePictureView.class */
public class ProfilePictureView extends FrameLayout {

    /* renamed from: j */
    public static final String f3414j = ProfilePictureView.class.getSimpleName();

    /* renamed from: a */
    public String f3415a;

    /* renamed from: e */
    public ImageView f3419e;

    /* renamed from: g */
    public C2493t f3421g;

    /* renamed from: h */
    public AbstractC2565b f3422h;

    /* renamed from: b */
    public int f3416b = 0;

    /* renamed from: c */
    public int f3417c = 0;

    /* renamed from: d */
    public boolean f3418d = true;

    /* renamed from: f */
    public int f3420f = -1;

    /* renamed from: i */
    public Bitmap f3423i = null;

    /* renamed from: com.facebook.login.widget.ProfilePictureView$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/widget/ProfilePictureView$a.class */
    public class C2564a implements C2493t.AbstractC2496c {
        public C2564a() {
        }

        @Override // com.facebook.internal.C2493t.AbstractC2496c
        /* renamed from: a */
        public void mo34279a(C2497u uVar) {
            ProfilePictureView.this.m34287a(uVar);
        }
    }

    /* renamed from: com.facebook.login.widget.ProfilePictureView$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/widget/ProfilePictureView$b.class */
    public interface AbstractC2565b {
        /* renamed from: a */
        void m34278a(C6131k kVar);
    }

    public ProfilePictureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m34290a(context);
        m34288a(attributeSet);
    }

    public ProfilePictureView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m34290a(context);
        m34288a(attributeSet);
    }

    /* renamed from: a */
    public final int m34285a(boolean z) {
        int i;
        int i2 = this.f3420f;
        if (i2 == -4) {
            i = R$dimen.com_facebook_profilepictureview_preset_size_large;
        } else if (i2 == -3) {
            i = R$dimen.com_facebook_profilepictureview_preset_size_normal;
        } else if (i2 == -2) {
            i = R$dimen.com_facebook_profilepictureview_preset_size_small;
        } else if (i2 != -1 || !z) {
            return 0;
        } else {
            i = R$dimen.com_facebook_profilepictureview_preset_size_normal;
        }
        return getResources().getDimensionPixelSize(i);
    }

    /* renamed from: a */
    public final String m34292a() {
        return this.f3415a;
    }

    /* renamed from: a */
    public final void m34291a(int i) {
        if (i == -4 || i == -3 || i == -2 || i == -1) {
            this.f3420f = i;
            requestLayout();
            return;
        }
        throw new IllegalArgumentException("Must use a predefined preset size");
    }

    /* renamed from: a */
    public final void m34290a(Context context) {
        removeAllViews();
        this.f3419e = new ImageView(context);
        this.f3419e.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f3419e.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        addView(this.f3419e);
    }

    /* renamed from: a */
    public final void m34289a(Bitmap bitmap) {
        ImageView imageView = this.f3419e;
        if (imageView != null && bitmap != null) {
            imageView.setImageBitmap(bitmap);
        }
    }

    /* renamed from: a */
    public final void m34288a(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.com_facebook_profile_picture_view);
        m34291a(obtainStyledAttributes.getInt(R$styleable.com_facebook_profile_picture_view_com_facebook_preset_size, -1));
        this.f3418d = obtainStyledAttributes.getBoolean(R$styleable.com_facebook_profile_picture_view_com_facebook_is_cropped, true);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    public final void m34287a(C2497u uVar) {
        if (uVar.m34572c() == this.f3421g) {
            this.f3421g = null;
            Bitmap a = uVar.m34574a();
            Exception b = uVar.m34573b();
            if (b != null) {
                AbstractC2565b bVar = this.f3422h;
                if (bVar != null) {
                    bVar.m34278a(new C6131k("Error in downloading profile picture for profileId: " + m34292a(), b));
                    return;
                }
                C2503y.m34559a(EnumC6151v.REQUESTS, 6, f3414j, b.toString());
            } else if (a != null) {
                m34289a(a);
                if (uVar.m34571d()) {
                    m34281c(false);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m34283b(boolean z) {
        boolean d = m34280d();
        String str = this.f3415a;
        if (str == null || str.length() == 0 || (this.f3417c == 0 && this.f3416b == 0)) {
            m34282c();
        } else if (d || z) {
            m34281c(true);
        }
    }

    /* renamed from: b */
    public final boolean m34284b() {
        return this.f3418d;
    }

    /* renamed from: c */
    public final void m34282c() {
        C2493t tVar = this.f3421g;
        if (tVar != null) {
            C2487s.m34596a(tVar);
        }
        if (this.f3423i == null) {
            m34289a(BitmapFactory.decodeResource(getResources(), m34284b() ? R$drawable.com_facebook_profile_picture_blank_square : R$drawable.com_facebook_profile_picture_blank_portrait));
            return;
        }
        m34280d();
        m34289a(Bitmap.createScaledBitmap(this.f3423i, this.f3417c, this.f3416b, false));
    }

    /* renamed from: c */
    public final void m34281c(boolean z) {
        C2493t.C2495b bVar = new C2493t.C2495b(getContext(), C2493t.m34588a(this.f3415a, this.f3417c, this.f3416b, AccessToken.m35506C() ? AccessToken.m35507B().m35491v() : ""));
        bVar.m34579a(z);
        bVar.m34580a(this);
        bVar.m34581a((C2493t.AbstractC2496c) new C2564a());
        C2493t a = bVar.m34583a();
        C2493t tVar = this.f3421g;
        if (tVar != null) {
            C2487s.m34596a(tVar);
        }
        this.f3421g = a;
        C2487s.m34590b(a);
    }

    /* renamed from: d */
    public final boolean m34280d() {
        int height = getHeight();
        int width = getWidth();
        if (width < 1 || height < 1) {
            return false;
        }
        int a = m34285a(false);
        if (a != 0) {
            height = a;
            width = height;
        }
        if (width <= height) {
            height = m34284b() ? width : 0;
        } else {
            width = m34284b() ? height : 0;
        }
        boolean z = true;
        if (width == this.f3417c) {
            z = height != this.f3416b;
        }
        this.f3417c = width;
        this.f3416b = height;
        return z;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f3421g = null;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m34283b(false);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i);
        if (View.MeasureSpec.getMode(i2) == 1073741824 || layoutParams.height != -2) {
            z = false;
            i3 = i2;
        } else {
            size = m34285a(true);
            i3 = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
            z = true;
        }
        int i4 = size2;
        boolean z2 = z;
        int i5 = i;
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            i4 = size2;
            z2 = z;
            i5 = i;
            if (layoutParams.width == -2) {
                i4 = m34285a(true);
                i5 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
                z2 = true;
            }
        }
        if (z2) {
            setMeasuredDimension(i4, size);
            measureChildren(i5, i3);
            return;
        }
        super.onMeasure(i5, i3);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable.getClass() != Bundle.class) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable("ProfilePictureView_superState"));
        this.f3415a = bundle.getString("ProfilePictureView_profileId");
        this.f3420f = bundle.getInt("ProfilePictureView_presetSize");
        this.f3418d = bundle.getBoolean("ProfilePictureView_isCropped");
        this.f3417c = bundle.getInt("ProfilePictureView_width");
        this.f3416b = bundle.getInt("ProfilePictureView_height");
        m34283b(true);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable("ProfilePictureView_superState", onSaveInstanceState);
        bundle.putString("ProfilePictureView_profileId", this.f3415a);
        bundle.putInt("ProfilePictureView_presetSize", this.f3420f);
        bundle.putBoolean("ProfilePictureView_isCropped", this.f3418d);
        bundle.putInt("ProfilePictureView_width", this.f3417c);
        bundle.putInt("ProfilePictureView_height", this.f3416b);
        bundle.putBoolean("ProfilePictureView_refresh", this.f3421g != null);
        return bundle;
    }
}
