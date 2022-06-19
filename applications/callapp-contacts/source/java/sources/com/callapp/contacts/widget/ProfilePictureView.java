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
import com.callapp.contacts.C5563R;
import com.callapp.contacts.CallAppApplication;
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

    /* renamed from: a */
    public String f28791a;

    /* renamed from: b */
    private final int f28792b;

    /* renamed from: c */
    private int f28793c;

    /* renamed from: d */
    private CircularTextView f28794d;

    /* renamed from: e */
    private ImageView f28795e;

    /* renamed from: f */
    private ProgressWheel f28796f;

    /* renamed from: g */
    private View f28797g;

    /* renamed from: h */
    private int f28798h;

    /* renamed from: i */
    private int f28799i;

    /* renamed from: j */
    private int f28800j;

    /* renamed from: k */
    private int f28801k;

    /* renamed from: l */
    private boolean f28802l;

    /* renamed from: m */
    private DualCirclesCheckBox f28803m;

    /* renamed from: n */
    private TypedArray f28804n;

    /* renamed from: o */
    private TypedArray f28805o;

    /* renamed from: p */
    private ProgressWheelAttrs f28806p;

    /* renamed from: q */
    private View f28807q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/ProfilePictureView$ProgressWheelAttrs.class */
    public class ProgressWheelAttrs {

        /* renamed from: b */
        private final int f28812b;

        /* renamed from: c */
        private final int f28813c;

        /* renamed from: d */
        private final int f28814d;

        /* renamed from: e */
        private final int f28815e;

        /* renamed from: f */
        private final int f28816f;

        private ProgressWheelAttrs(int i, int i2, int i3, int i4, int i5) {
            ProfilePictureView.this = r4;
            this.f28812b = i;
            this.f28813c = i2;
            this.f28814d = i3;
            this.f28815e = i4;
            this.f28816f = i5;
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
        this.f28798h = 5;
        this.f28799i = 5;
        this.f28801k = 0;
        this.f28802l = true;
        this.f28793c = ThemeUtils.getColor(2131099784);
        this.f28792b = ThemeUtils.getColor(2131099686);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C5563R.styleable.ImageWithBadge_ProfilePictureView);
        setPresetSize(obtainStyledAttributes.getInt(2, 5));
        setPresetFontSize(obtainStyledAttributes.getInt(0, this.f28798h));
        obtainStyledAttributes.getBoolean(4, true);
        setFontStyle(obtainStyledAttributes.getInt(1, 10));
        this.f28802l = obtainStyledAttributes.getBoolean(3, this.f28802l);
        if (!isInEditMode()) {
            obtainStyledAttributes.recycle();
        }
        inflate(getContext(), 2131558780, this);
        this.f28800j = getPresetHeight();
        this.f28807q = findViewById(2131363569);
        int i2 = this.f28800j;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i2);
        ImageView imageView = (ImageView) findViewById(2131362438);
        this.f28795e = imageView;
        imageView.setSoundEffectsEnabled(false);
        this.f28795e.setLayoutParams(layoutParams);
        if (!this.f28802l) {
            ViewUtils.m27320a(this.f28795e, (Drawable) null);
        }
        int i3 = this.f28800j;
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i3 + 0, i3 - 0, 17);
        View findViewById = findViewById(2131362339);
        this.f28797g = findViewById;
        findViewById.setLayoutParams(layoutParams2);
        CircularTextView circularTextView = new CircularTextView(getContext());
        this.f28794d = circularTextView;
        circularTextView.setTextSize(0, getPresetFontSize());
        this.f28794d.setTypeface(getPresetTypeFace());
        this.f28794d.setLayoutParams(layoutParams2);
        final CircularTextView circularTextView2 = this.f28794d;
        int i4 = this.f28800j;
        circularTextView2.f28642c = i4;
        circularTextView2.f28641b = i4;
        circularTextView2.f28643e.setColor(-1);
        circularTextView2.f28643e.setTextAlign(Paint.Align.CENTER);
        circularTextView2.f28643e.setTypeface(circularTextView2.getTypeface());
        circularTextView2.f28643e.setTextSize(circularTextView2.getTextSize());
        circularTextView2.f28640a = new Drawable() { // from class: com.callapp.contacts.widget.CircularTextView.1
            @Override // android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                int i5;
                circularTextView2.f28646h.setColor(CircularTextView.m26789a(circularTextView2.getText().toString()));
                int i6 = circularTextView2.f28642c > circularTextView2.f28641b ? circularTextView2.f28642c : circularTextView2.f28641b;
                circularTextView2.setHeight(i6);
                circularTextView2.setWidth(i6);
                float f = i6 / 2;
                canvas.drawCircle(f, f, f, circularTextView2.f28647i);
                canvas.drawCircle(f, f, i5 - circularTextView2.f28644f, circularTextView2.f28646h);
                canvas.drawText(circularTextView2.getText().toString(), canvas.getWidth() / 2, (int) ((canvas.getHeight() / 2) - ((circularTextView2.f28643e.descent() + circularTextView2.f28643e.ascent()) / 2.0f)), circularTextView2.f28643e);
                if (circularTextView2.f28644f > 0) {
                    RectF rectF = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, circularTextView2.f28641b, circularTextView2.f28642c);
                    float min = Math.min((rectF.height() - circularTextView2.f28644f) / 2.0f, (rectF.width() - circularTextView2.f28644f) / 2.0f);
                    Paint paint = new Paint();
                    paint.setStyle(Paint.Style.STROKE);
                    paint.setAntiAlias(true);
                    paint.setColor(circularTextView2.f28645g);
                    paint.setStrokeWidth(circularTextView2.f28644f);
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
        TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(attributeSet, C5563R.styleable.ProgressWheel);
        this.f28806p = new ProgressWheelAttrs((int) obtainStyledAttributes2.getDimension(2, BitmapDescriptorFactory.HUE_RED), (int) obtainStyledAttributes2.getDimension(8, BitmapDescriptorFactory.HUE_RED), (int) obtainStyledAttributes2.getDimension(3, this.f28800j), obtainStyledAttributes2.getColor(0, ThemeUtils.m27386a(getContext(), 2131100072)), obtainStyledAttributes2.getColor(7, ThemeUtils.m27386a(getContext(), 2131100073)));
        obtainStyledAttributes2.recycle();
        this.f28804n = getContext().obtainStyledAttributes(attributeSet, C5563R.styleable.dualCircleImageView);
        TypedArray obtainStyledAttributes3 = getContext().obtainStyledAttributes(attributeSet, C5563R.styleable.CircleImageView_ImageWithBadge);
        this.f28805o = obtainStyledAttributes3;
        Drawable drawable = obtainStyledAttributes3.getDrawable(4);
        if (drawable != null) {
            m26685a(drawable);
        }
    }

    /* renamed from: b */
    private void m26681b() {
        try {
            GlideUtils.m27035b(getContext()).m37549a((View) this.f28795e);
        } catch (Exception e) {
            CLog.m27609a(ProfilePictureView.class, e);
        }
    }

    private float getPresetFontSize() {
        int i;
        int i2 = this.f28799i;
        if (i2 != -1 && i2 != 0 && i2 != 1 && i2 != 5) {
            if (i2 == 10) {
                i = 2131166021;
            } else if (i2 == 15 || i2 == 17 || i2 == 20) {
                i = 2131166019;
            } else if (i2 != 25 && i2 != 30 && i2 != 35 && i2 != 40) {
                throw new IllegalArgumentException("Must use a predefined preset size");
            }
            return getResources().getDimensionPixelSize(i);
        }
        i = 2131166027;
        return getResources().getDimensionPixelSize(i);
    }

    private int getPresetHeight() {
        int i = this.f28798h;
        if (i != -1) {
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
            if (i != 40) {
                throw new IllegalArgumentException("Must use a predefined preset size");
            }
            return getResources().getDimensionPixelOffset(2131166017);
        }
        return getResources().getDimensionPixelSize(2131166032);
    }

    private Typeface getPresetTypeFace() {
        int i = this.f28801k;
        if (i != 0) {
            if (i == 5) {
                return Typeface.create("sans-serif-thin", 0);
            }
            if (i != 10) {
                throw new IllegalArgumentException("Must use a predefined font style");
            }
            return Typeface.create("sans-serif-light", 0);
        }
        return Typeface.create("sans-serif", 0);
    }

    private void setBadgeLayoutParams(DualCirclesCheckBox dualCirclesCheckBox) {
        dualCirclesCheckBox.setFromAttributes(this.f28804n);
        TypedArray typedArray = this.f28805o;
        if (typedArray != null) {
            int color = typedArray.getColor(5, 0);
            float dimension = this.f28805o.getDimension(1, 14.0f);
            float dimension2 = this.f28805o.getDimension(3, 9.0f);
            int dimension3 = (int) this.f28805o.getDimension(2, -2.14748365E9f);
            m26680b((int) dimension);
            m26686a(color, true);
            m26678c((int) dimension2);
            if (dimension3 != Integer.MIN_VALUE) {
                m26677d(dimension3);
            }
        }
        dualCirclesCheckBox.setBackground(null);
        dualCirclesCheckBox.requestLayout();
    }

    private void setFontStyle(int i) {
        if (i == 0 || i == 5 || i == 10) {
            this.f28801k = i;
            return;
        }
        throw new IllegalArgumentException("Must use a predefined font style");
    }

    private void setPresetFontSize(int i) {
        if (i == -1 || i == 0 || i == 1 || i == 5 || i == 10 || i == 15 || i == 17 || i == 20 || i == 25 || i == 30 || i == 35 || i == 40) {
            this.f28799i = i;
            return;
        }
        throw new IllegalArgumentException("Must use a predefined preset size");
    }

    private void setPresetSize(int i) {
        if (i == -1 || i == 0 || i == 1 || i == 5 || i == 10 || i == 15 || i == 17 || i == 20 || i == 25 || i == 30 || i == 35 || i == 40) {
            this.f28798h = i;
            return;
        }
        throw new IllegalArgumentException("Must use a predefined preset size");
    }

    /* renamed from: a */
    public final ProfilePictureView m26687a(int i) {
        getBadgeView().m26747b(i);
        return this;
    }

    /* renamed from: a */
    public final ProfilePictureView m26686a(int i, boolean z) {
        if (i != 0) {
            getBadgeView().setIconColorFilter(i, z);
        }
        return this;
    }

    /* renamed from: a */
    public final ProfilePictureView m26685a(Drawable drawable) {
        getBadgeView().setButtonDrawable(drawable);
        return this;
    }

    /* renamed from: a */
    public final void m26688a() {
        this.f28791a = null;
        m26681b();
        this.f28795e.setImageDrawable(this.f28794d.getDrawable());
    }

    /* renamed from: a */
    public final void m26683a(boolean z) {
        getBadgeView().setVisibility(z ? 0 : 8);
    }

    /* renamed from: a */
    public final void m26682a(boolean z, boolean z2) {
        int dimensionPixelOffset = z ? CallAppApplication.get().getResources().getDimensionPixelOffset(2131165696) : 0;
        int i = z ? this.f28793c : this.f28792b;
        if (!z2) {
            setBorder(i, dimensionPixelOffset);
            return;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f28807q, View.ROTATION_Y, BitmapDescriptorFactory.HUE_RED, 360.0f);
        ofFloat.setDuration(400L);
        ofFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        ofFloat.start();
        final int i2 = i;
        final int i3 = dimensionPixelOffset;
        CallAppApplication.get().m31869a(new Runnable() { // from class: com.callapp.contacts.widget.ProfilePictureView.1
            @Override // java.lang.Runnable
            public void run() {
                ProfilePictureView.this.setBorder(i2, i3);
            }
        }, 400L);
    }

    /* renamed from: a */
    public final boolean m26684a(GlideUtils.GlideRequestBuilder glideRequestBuilder) {
        if (StringUtils.m26059a((CharSequence) glideRequestBuilder.getPhotoUrl())) {
            m26688a();
            return false;
        } else if (StringUtils.m26042b(this.f28791a, glideRequestBuilder.getPhotoUrl()) && !StringUtils.m26038c(glideRequestBuilder.getPhotoUrl()) && !glideRequestBuilder.isForce()) {
            return true;
        } else {
            this.f28791a = glideRequestBuilder.getPhotoUrl();
            if (glideRequestBuilder.getBackgroundColor() == null && !StringUtils.m26038c(this.f28791a)) {
                glideRequestBuilder.f28241g = Integer.valueOf(ThemeUtils.getColor(2131100228));
            }
            glideRequestBuilder.f28242h = glideRequestBuilder.isShowInitialsTextView() ? this.f28794d.getDrawable() : glideRequestBuilder.getPlaceHolder();
            glideRequestBuilder.f28235a = this.f28795e;
            glideRequestBuilder.f28239e = getContext();
            glideRequestBuilder.m27013d();
            return true;
        }
    }

    /* renamed from: b */
    public final ProfilePictureView m26680b(int i) {
        getBadgeView().setIconBounded(i);
        return this;
    }

    /* renamed from: b */
    public final void m26679b(boolean z, boolean z2) {
        View findViewById = findViewById(2131363569);
        View view = this.f28797g;
        if (view instanceof ViewStub) {
            this.f28797g = ((ViewStub) view).inflate();
        }
        if (z2) {
            if (z) {
                CallappAnimationUtils.m27179a(findViewById, this.f28797g, CallappAnimationUtils.FlipDirection.LTR, (int) VastError.ERROR_CODE_GENERAL_WRAPPER);
            } else {
                CallappAnimationUtils.m27179a(this.f28797g, findViewById, CallappAnimationUtils.FlipDirection.RTL, (int) VastError.ERROR_CODE_GENERAL_WRAPPER);
            }
        } else if (z) {
            this.f28797g.setVisibility(0);
            findViewById.setVisibility(8);
        } else {
            this.f28797g.setVisibility(8);
            findViewById.setVisibility(0);
        }
    }

    /* renamed from: c */
    public final ProfilePictureView m26678c(int i) {
        getBadgeView().f28691b = i;
        return this;
    }

    /* renamed from: d */
    public final ProfilePictureView m26677d(int i) {
        ViewUtils.m27324a(getBadgeView(), (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, i, i);
        return this;
    }

    public DualCirclesCheckBox getBadgeView() {
        if (this.f28803m == null) {
            DualCirclesCheckBox dualCirclesCheckBox = (DualCirclesCheckBox) ((ViewStub) findViewById(2131362067)).inflate();
            this.f28803m = dualCirclesCheckBox;
            dualCirclesCheckBox.m26750a(ThemeUtils.getColor(2131099686));
            this.f28803m.setVisibility(0);
            setBadgeLayoutParams(this.f28803m);
        }
        return this.f28803m;
    }

    public ProgressWheel getProgressWheel() {
        if (this.f28796f == null) {
            ProgressWheel progressWheel = (ProgressWheel) ViewUtils.m27302b(findViewById(2131363590));
            this.f28796f = progressWheel;
            progressWheel.setCircleRadius(this.f28806p.f28814d);
            this.f28796f.setBarColor(this.f28806p.f28815e);
            this.f28796f.setBarWidth(this.f28806p.f28812b);
            this.f28796f.setRimWidth(this.f28806p.f28813c);
            this.f28796f.setRimColor(this.f28806p.f28816f);
        }
        return this.f28796f;
    }

    public boolean isBadgeInflated() {
        return ViewUtils.m27329a(this.f28803m);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int i3 = this.f28800j;
        setMeasuredDimension(i3, i3);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        super.requestLayout();
        if (ViewUtils.m27329a(this.f28803m)) {
            this.f28803m.requestLayout();
        }
    }

    public void setBadgeBorderWidth(int i) {
        getBadgeView().f28690a = Activities.m27699a(i);
    }

    public void setBorder(int i, int i2) {
        if (StringUtils.m26059a((CharSequence) this.f28791a)) {
            this.f28794d.setBorder(i2, i);
            return;
        }
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.f28795e, this.f28791a, getContext());
        glideRequestBuilder.f28242h = this.f28795e.getDrawable();
        GlideUtils.GlideRequestBuilder m27018b = glideRequestBuilder.m27018b(i2, i);
        m27018b.f28246l = true;
        m27018b.f28250p = true;
        m26684a(m27018b);
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        this.f28795e.setClickable(z);
    }

    public void setDefaultProfilePic() {
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(2131232143);
        glideRequestBuilder.f28241g = Integer.valueOf(ThemeUtils.m27386a(CallAppApplication.get(), 2131099786));
        GlideUtils.GlideRequestBuilder m27025a = glideRequestBuilder.m27025a(-1, PorterDuff.Mode.SRC_IN);
        m27025a.f28246l = true;
        m26684a(m27025a.m27018b(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165387), -1));
    }

    @Override // android.view.View
    public void setLongClickable(boolean z) {
        this.f28795e.setLongClickable(z);
    }

    public void setMargins(int i) {
        ViewUtils.m27324a(this, i, (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, i, (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f28795e.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public void setOnCreateContextMenuListener(View.OnCreateContextMenuListener onCreateContextMenuListener) {
        this.f28795e.setOnCreateContextMenuListener(onCreateContextMenuListener);
        this.f28794d.setOnCreateContextMenuListener(onCreateContextMenuListener);
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f28795e.setOnLongClickListener(onLongClickListener);
    }

    @Override // android.view.View
    public void setTag(Object obj) {
        super.setTag(obj);
        this.f28795e.setTag(obj);
    }

    public void setText(CharSequence charSequence) {
        this.f28794d.setLetterText(charSequence);
    }
}
