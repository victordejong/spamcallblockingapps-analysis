package com.callapp.contacts.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewStub;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.R;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.framework.util.StringUtils;
import com.explorestack.iab.vast.VastError;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.pnikosis.materialishprogress.ProgressWheel;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/ProfilePictureView.class */
public class ProfilePictureView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public String f16553a;

    /* renamed from: b  reason: collision with root package name */
    private final int f16554b;

    /* renamed from: c  reason: collision with root package name */
    private int f16555c;

    /* renamed from: d  reason: collision with root package name */
    private CircularTextView f16556d;
    private ImageView e;
    private ProgressWheel f;
    private View g;
    private int h;
    private int i;
    private int j;
    private int k;
    private boolean l;
    private DualCirclesCheckBox m;
    private TypedArray n;
    private TypedArray o;
    private ProgressWheelAttrs p;
    private View q;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/ProfilePictureView$ProgressWheelAttrs.class */
    class ProgressWheelAttrs {

        /* renamed from: b  reason: collision with root package name */
        private final int f16561b;

        /* renamed from: c  reason: collision with root package name */
        private final int f16562c;

        /* renamed from: d  reason: collision with root package name */
        private final int f16563d;
        private final int e;
        private final int f;

        private ProgressWheelAttrs(int i, int i2, int i3, int i4, int i5) {
            this.f16561b = i;
            this.f16562c = i2;
            this.f16563d = i3;
            this.e = i4;
            this.f = i5;
        }
    }

    public ProfilePictureView(Context context) {
        this(context, null, 0);
    }

    public ProfilePictureView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ProfilePictureView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.h = 5;
        this.i = 5;
        this.k = 0;
        this.l = true;
        this.f16555c = ThemeUtils.getColor(2131099784);
        this.f16554b = ThemeUtils.getColor(2131099686);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ImageWithBadge_ProfilePictureView);
        setPresetSize(obtainStyledAttributes.getInt(2, 5));
        setPresetFontSize(obtainStyledAttributes.getInt(0, this.h));
        obtainStyledAttributes.getBoolean(4, true);
        setFontStyle(obtainStyledAttributes.getInt(1, 10));
        this.l = obtainStyledAttributes.getBoolean(3, this.l);
        if (!isInEditMode()) {
            obtainStyledAttributes.recycle();
        }
        inflate(getContext(), 2131558780, this);
        this.j = getPresetHeight();
        this.q = findViewById(2131363569);
        int i2 = this.j;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i2);
        ImageView imageView = (ImageView) findViewById(2131362438);
        this.e = imageView;
        imageView.setSoundEffectsEnabled(false);
        this.e.setLayoutParams(layoutParams);
        if (!this.l) {
            ViewUtils.a(this.e, (Drawable) null);
        }
        int i3 = this.j;
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i3 + 0, i3 - 0, 17);
        View findViewById = findViewById(2131362339);
        this.g = findViewById;
        findViewById.setLayoutParams(layoutParams2);
        CircularTextView circularTextView = new CircularTextView(getContext());
        this.f16556d = circularTextView;
        circularTextView.setTextSize(0, getPresetFontSize());
        this.f16556d.setTypeface(getPresetTypeFace());
        this.f16556d.setLayoutParams(layoutParams2);
        final CircularTextView circularTextView2 = this.f16556d;
        int i4 = this.j;
        circularTextView2.f16455c = i4;
        circularTextView2.f16454b = i4;
        circularTextView2.e.setColor(-1);
        circularTextView2.e.setTextAlign(Paint.Align.CENTER);
        circularTextView2.e.setTypeface(circularTextView2.getTypeface());
        circularTextView2.e.setTextSize(circularTextView2.getTextSize());
        circularTextView2.f16453a = new Drawable() { // from class: com.callapp.contacts.widget.CircularTextView.1
            @Override // android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                int i5;
                CircularTextView.this.h.setColor(CircularTextView.a(CircularTextView.this.getText().toString()));
                int i6 = CircularTextView.this.f16455c > CircularTextView.this.f16454b ? CircularTextView.this.f16455c : CircularTextView.this.f16454b;
                CircularTextView.this.setHeight(i6);
                CircularTextView.this.setWidth(i6);
                float f = i6 / 2;
                canvas.drawCircle(f, f, f, CircularTextView.this.i);
                canvas.drawCircle(f, f, i5 - CircularTextView.this.f, CircularTextView.this.h);
                canvas.drawText(CircularTextView.this.getText().toString(), canvas.getWidth() / 2, (int) ((canvas.getHeight() / 2) - ((CircularTextView.this.e.descent() + CircularTextView.this.e.ascent()) / 2.0f)), CircularTextView.this.e);
                if (CircularTextView.this.f > 0) {
                    RectF rectF = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, CircularTextView.this.f16454b, CircularTextView.this.f16455c);
                    float min = Math.min((rectF.height() - CircularTextView.this.f) / 2.0f, (rectF.width() - CircularTextView.this.f) / 2.0f);
                    Paint paint = new Paint();
                    paint.setStyle(Paint.Style.STROKE);
                    paint.setAntiAlias(true);
                    paint.setColor(CircularTextView.this.g);
                    paint.setStrokeWidth(CircularTextView.this.f);
                    canvas.drawCircle(f, f, min, paint);
                }
                CircularTextView.super.draw(canvas);
            }

            @Override // android.graphics.drawable.Drawable
            public int getOpacity() {
                return 0;
            }

            @Override // android.graphics.drawable.Drawable
            public void setAlpha(int i5) {
            }

            @Override // android.graphics.drawable.Drawable
            public void setColorFilter(ColorFilter colorFilter) {
                setColorFilter(-1, PorterDuff.Mode.SRC);
            }
        };
        TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(attributeSet, R.styleable.ProgressWheel);
        this.p = new ProgressWheelAttrs((int) obtainStyledAttributes2.getDimension(2, BitmapDescriptorFactory.HUE_RED), (int) obtainStyledAttributes2.getDimension(8, BitmapDescriptorFactory.HUE_RED), (int) obtainStyledAttributes2.getDimension(3, this.j), obtainStyledAttributes2.getColor(0, ThemeUtils.a(getContext(), 2131100072)), obtainStyledAttributes2.getColor(7, ThemeUtils.a(getContext(), 2131100073)));
        obtainStyledAttributes2.recycle();
        this.n = getContext().obtainStyledAttributes(attributeSet, R.styleable.dualCircleImageView);
        TypedArray obtainStyledAttributes3 = getContext().obtainStyledAttributes(attributeSet, R.styleable.CircleImageView_ImageWithBadge);
        this.o = obtainStyledAttributes3;
        Drawable drawable = obtainStyledAttributes3.getDrawable(4);
        if (drawable != null) {
            a(drawable);
        }
    }

    private void b() {
        try {
            GlideUtils.b(getContext()).a((View) this.e);
        } catch (Exception e) {
            CLog.a(ProfilePictureView.class, e);
        }
    }

    private float getPresetFontSize() {
        int i;
        int i2 = this.i;
        if (!(i2 == -1 || i2 == 0 || i2 == 1 || i2 == 5)) {
            if (i2 == 10) {
                i = 2131166021;
            } else if (i2 == 15 || i2 == 17 || i2 == 20) {
                i = 2131166019;
            } else if (!(i2 == 25 || i2 == 30 || i2 == 35 || i2 == 40)) {
                throw new IllegalArgumentException("Must use a predefined preset size");
            }
            return getResources().getDimensionPixelSize(i);
        }
        i = 2131166027;
        return getResources().getDimensionPixelSize(i);
    }

    private int getPresetHeight() {
        int i = this.h;
        if (i == -1) {
            return getResources().getDimensionPixelSize(2131166032);
        }
        if (i == 0) {
            return getResources().getDimensionPixelSize(2131166031);
        }
        if (i == 1) {
            return getResources().getDimensionPixelSize(2131166018);
        }
        if (i == 5) {
            return getResources().getDimensionPixelSize(2131166028);
        }
        if (i == 10) {
            return getResources().getDimensionPixelSize(2131166022);
        }
        if (i == 15) {
            return getResources().getDimensionPixelSize(2131166020);
        }
        if (i == 17) {
            return getResources().getDimensionPixelSize(2131166023);
        }
        if (i == 20) {
            return getResources().getDimensionPixelSize(2131166030);
        }
        if (i == 25) {
            return getResources().getDimensionPixelSize(2131166024);
        }
        if (i == 30) {
            return getResources().getDimensionPixelSize(2131166029);
        }
        if (i == 35) {
            return getResources().getDimensionPixelOffset(2131166026);
        }
        if (i == 40) {
            return getResources().getDimensionPixelOffset(2131166017);
        }
        throw new IllegalArgumentException("Must use a predefined preset size");
    }

    private Typeface getPresetTypeFace() {
        int i = this.k;
        if (i == 0) {
            return Typeface.create("sans-serif", 0);
        }
        if (i == 5) {
            return Typeface.create("sans-serif-thin", 0);
        }
        if (i == 10) {
            return Typeface.create("sans-serif-light", 0);
        }
        throw new IllegalArgumentException("Must use a predefined font style");
    }

    private void setBadgeLayoutParams(DualCirclesCheckBox dualCirclesCheckBox) {
        dualCirclesCheckBox.setFromAttributes(this.n);
        TypedArray typedArray = this.o;
        if (typedArray != null) {
            int color = typedArray.getColor(5, 0);
            float dimension = this.o.getDimension(1, 14.0f);
            float dimension2 = this.o.getDimension(3, 9.0f);
            int dimension3 = (int) this.o.getDimension(2, -2.14748365E9f);
            b((int) dimension);
            a(color, true);
            c((int) dimension2);
            if (dimension3 != Integer.MIN_VALUE) {
                d(dimension3);
            }
        }
        dualCirclesCheckBox.setBackground(null);
        dualCirclesCheckBox.requestLayout();
    }

    private void setFontStyle(int i) {
        if (i == 0 || i == 5 || i == 10) {
            this.k = i;
            return;
        }
        throw new IllegalArgumentException("Must use a predefined font style");
    }

    private void setPresetFontSize(int i) {
        if (i == -1 || i == 0 || i == 1 || i == 5 || i == 10 || i == 15 || i == 17 || i == 20 || i == 25 || i == 30 || i == 35 || i == 40) {
            this.i = i;
            return;
        }
        throw new IllegalArgumentException("Must use a predefined preset size");
    }

    private void setPresetSize(int i) {
        if (i == -1 || i == 0 || i == 1 || i == 5 || i == 10 || i == 15 || i == 17 || i == 20 || i == 25 || i == 30 || i == 35 || i == 40) {
            this.h = i;
            return;
        }
        throw new IllegalArgumentException("Must use a predefined preset size");
    }

    public final ProfilePictureView a(int i) {
        getBadgeView().b(i);
        return this;
    }

    public final ProfilePictureView a(int i, boolean z) {
        if (i != 0) {
            getBadgeView().setIconColorFilter(i, z);
        }
        return this;
    }

    public final ProfilePictureView a(Drawable drawable) {
        getBadgeView().setButtonDrawable(drawable);
        return this;
    }

    public final void a() {
        this.f16553a = null;
        b();
        this.e.setImageDrawable(this.f16556d.getDrawable());
    }

    public final void a(boolean z) {
        getBadgeView().setVisibility(z ? 0 : 8);
    }

    public final void a(boolean z, boolean z2) {
        final int dimensionPixelOffset = z ? CallAppApplication.get().getResources().getDimensionPixelOffset(2131165696) : 0;
        final int i = z ? this.f16555c : this.f16554b;
        if (z2) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.q, View.ROTATION_Y, BitmapDescriptorFactory.HUE_RED, 360.0f);
            ofFloat.setDuration(400L);
            ofFloat.setInterpolator(new AccelerateDecelerateInterpolator());
            ofFloat.start();
            CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.widget.ProfilePictureView.1
                @Override // java.lang.Runnable
                public void run() {
                    ProfilePictureView.this.setBorder(i, dimensionPixelOffset);
                }
            }, 400L);
            return;
        }
        setBorder(i, dimensionPixelOffset);
    }

    public final boolean a(GlideUtils.GlideRequestBuilder glideRequestBuilder) {
        if (StringUtils.a((CharSequence) glideRequestBuilder.getPhotoUrl())) {
            a();
            return false;
        } else if (StringUtils.b(this.f16553a, glideRequestBuilder.getPhotoUrl()) && !StringUtils.c(glideRequestBuilder.getPhotoUrl()) && !glideRequestBuilder.isForce()) {
            return true;
        } else {
            this.f16553a = glideRequestBuilder.getPhotoUrl();
            if (glideRequestBuilder.getBackgroundColor() == null && !StringUtils.c(this.f16553a)) {
                glideRequestBuilder.g = Integer.valueOf(ThemeUtils.getColor(2131100228));
            }
            glideRequestBuilder.h = glideRequestBuilder.isShowInitialsTextView() ? this.f16556d.getDrawable() : glideRequestBuilder.getPlaceHolder();
            glideRequestBuilder.f16204a = this.e;
            glideRequestBuilder.e = getContext();
            glideRequestBuilder.d();
            return true;
        }
    }

    public final ProfilePictureView b(int i) {
        getBadgeView().setIconBounded(i);
        return this;
    }

    public final void b(boolean z, boolean z2) {
        View findViewById = findViewById(2131363569);
        View view = this.g;
        if (view instanceof ViewStub) {
            this.g = ((ViewStub) view).inflate();
        }
        if (z2) {
            if (z) {
                CallappAnimationUtils.a(findViewById, this.g, CallappAnimationUtils.FlipDirection.LTR, (int) VastError.ERROR_CODE_GENERAL_WRAPPER);
            } else {
                CallappAnimationUtils.a(this.g, findViewById, CallappAnimationUtils.FlipDirection.RTL, (int) VastError.ERROR_CODE_GENERAL_WRAPPER);
            }
        } else if (z) {
            this.g.setVisibility(0);
            findViewById.setVisibility(8);
        } else {
            this.g.setVisibility(8);
            findViewById.setVisibility(0);
        }
    }

    public final ProfilePictureView c(int i) {
        getBadgeView().f16485b = i;
        return this;
    }

    public final ProfilePictureView d(int i) {
        ViewUtils.a(getBadgeView(), (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, i, i);
        return this;
    }

    public DualCirclesCheckBox getBadgeView() {
        if (this.m == null) {
            DualCirclesCheckBox dualCirclesCheckBox = (DualCirclesCheckBox) ((ViewStub) findViewById(2131362067)).inflate();
            this.m = dualCirclesCheckBox;
            dualCirclesCheckBox.a(ThemeUtils.getColor(2131099686));
            this.m.setVisibility(0);
            setBadgeLayoutParams(this.m);
        }
        return this.m;
    }

    public ProgressWheel getProgressWheel() {
        if (this.f == null) {
            ProgressWheel progressWheel = (ProgressWheel) ViewUtils.b(findViewById(2131363590));
            this.f = progressWheel;
            progressWheel.setCircleRadius(this.p.f16563d);
            this.f.setBarColor(this.p.e);
            this.f.setBarWidth(this.p.f16561b);
            this.f.setRimWidth(this.p.f16562c);
            this.f.setRimColor(this.p.f);
        }
        return this.f;
    }

    public boolean isBadgeInflated() {
        return ViewUtils.a(this.m);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int i3 = this.j;
        setMeasuredDimension(i3, i3);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        super.requestLayout();
        if (ViewUtils.a(this.m)) {
            this.m.requestLayout();
        }
    }

    public void setBadgeBorderWidth(int i) {
        getBadgeView().f16484a = Activities.a(i);
    }

    public void setBorder(int i, int i2) {
        if (StringUtils.a((CharSequence) this.f16553a)) {
            this.f16556d.setBorder(i2, i);
            return;
        }
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.e, this.f16553a, getContext());
        glideRequestBuilder.h = this.e.getDrawable();
        GlideUtils.GlideRequestBuilder b2 = glideRequestBuilder.b(i2, i);
        b2.l = true;
        b2.p = true;
        a(b2);
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        this.e.setClickable(z);
    }

    public void setDefaultProfilePic() {
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(2131232143);
        glideRequestBuilder.g = Integer.valueOf(ThemeUtils.a(CallAppApplication.get(), 2131099786));
        GlideUtils.GlideRequestBuilder a2 = glideRequestBuilder.a(-1, PorterDuff.Mode.SRC_IN);
        a2.l = true;
        a(a2.b(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165387), -1));
    }

    @Override // android.view.View
    public void setLongClickable(boolean z) {
        this.e.setLongClickable(z);
    }

    public void setMargins(int i) {
        ViewUtils.a(this, i, (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, i, (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.e.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public void setOnCreateContextMenuListener(View.OnCreateContextMenuListener onCreateContextMenuListener) {
        this.e.setOnCreateContextMenuListener(onCreateContextMenuListener);
        this.f16556d.setOnCreateContextMenuListener(onCreateContextMenuListener);
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.e.setOnLongClickListener(onLongClickListener);
    }

    @Override // android.view.View
    public void setTag(Object obj) {
        super.setTag(obj);
        this.e.setTag(obj);
    }

    public void setText(CharSequence charSequence) {
        this.f16556d.setLetterText(charSequence);
    }
}
