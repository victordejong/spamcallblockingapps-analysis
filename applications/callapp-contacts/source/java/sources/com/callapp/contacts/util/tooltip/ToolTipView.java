package com.callapp.contacts.util.tooltip;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewManager;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.callapp.contacts.util.tooltip.ToolTip;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/tooltip/ToolTipView.class */
public class ToolTipView extends LinearLayout implements View.OnClickListener, ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a */
    private ImageView f28398a = (ImageView) findViewById(2131364163);

    /* renamed from: b */
    private View f28399b = findViewById(2131364167);

    /* renamed from: c */
    private ViewGroup f28400c = (ViewGroup) findViewById(2131364159);

    /* renamed from: d */
    private TextView f28401d = (TextView) findViewById(2131364160);

    /* renamed from: e */
    private View f28402e = findViewById(2131364157);

    /* renamed from: f */
    private ImageView f28403f = (ImageView) findViewById(2131364162);

    /* renamed from: g */
    private View f28404g = findViewById(2131364164);

    /* renamed from: h */
    private ToolTip f28405h;

    /* renamed from: i */
    private View f28406i;

    /* renamed from: j */
    private boolean f28407j;

    /* renamed from: k */
    private int f28408k;

    /* renamed from: l */
    private int f28409l;

    /* renamed from: m */
    private int f28410m;

    /* renamed from: n */
    private ToolTip.Orientation f28411n;

    /* renamed from: o */
    private OnToolTipViewClickedListener f28412o;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/tooltip/ToolTipView$DisappearanceAnimatorListener.class */
    class DisappearanceAnimatorListener extends AnimatorListenerAdapter {
        private DisappearanceAnimatorListener() {
            ToolTipView.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (ToolTipView.this.getParent() != null) {
                ((ViewManager) ToolTipView.this.getParent()).removeView(ToolTipView.this);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/tooltip/ToolTipView$OnToolTipViewClickedListener.class */
    public interface OnToolTipViewClickedListener {
    }

    public ToolTipView(Context context) {
        super(context);
        setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        setOrientation(1);
        LayoutInflater.from(getContext()).inflate(2131559054, (ViewGroup) this, true);
        setOnClickListener(this);
        getViewTreeObserver().addOnPreDrawListener(this);
    }

    /* renamed from: a */
    private void m26900a() {
        int[] iArr = new int[2];
        this.f28406i.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        ((View) getParent()).getGlobalVisibleRect(rect);
        int[] iArr2 = new int[2];
        ((View) getParent()).getLocationOnScreen(iArr2);
        int width = this.f28406i.getWidth();
        int height = this.f28406i.getHeight();
        int i = iArr[0] - iArr2[0];
        this.f28409l = i;
        int i2 = iArr[1] - iArr2[1];
        this.f28408k = i2;
        int i3 = i + (width / 2);
        int height2 = i2 - getHeight();
        int max = Math.max(0, this.f28408k + height);
        int max2 = Math.max(0, i3 - (this.f28410m / 2));
        int i4 = max2;
        if (this.f28410m + max2 > rect.width()) {
            i4 = rect.width() - this.f28410m;
        }
        float f = i4;
        setX(f);
        setPointerCenterX(i3);
        boolean z = height2 < 0;
        if (this.f28411n == ToolTip.Orientation.TOP) {
            z = false;
        } else if (this.f28411n == ToolTip.Orientation.BOTTOM) {
            z = true;
        }
        this.f28398a.setVisibility(z ? 0 : 8);
        this.f28403f.setVisibility(z ? 8 : 0);
        int i5 = height2;
        if (z) {
            i5 = max;
        }
        if (this.f28405h.getAnimationType() == ToolTip.AnimationType.NONE) {
            setTranslationY(i5);
            setTranslationX(f);
            return;
        }
        ArrayList arrayList = new ArrayList(5);
        if (this.f28405h.getAnimationType() == ToolTip.AnimationType.FROM_MASTER_VIEW) {
            arrayList.add(ObjectAnimator.ofInt(this, "translationY", (this.f28408k + (this.f28406i.getHeight() / 2)) - (getHeight() / 2), i5));
            arrayList.add(ObjectAnimator.ofInt(this, "translationX", (this.f28409l + (this.f28406i.getWidth() / 2)) - (this.f28410m / 2), i4));
        } else if (this.f28405h.getAnimationType() == ToolTip.AnimationType.FROM_TOP) {
            arrayList.add(ObjectAnimator.ofFloat(this, "translationY", BitmapDescriptorFactory.HUE_RED, i5));
        }
        arrayList.add(ObjectAnimator.ofFloat(this, "scaleX", BitmapDescriptorFactory.HUE_RED, 1.0f));
        arrayList.add(ObjectAnimator.ofFloat(this, "scaleY", BitmapDescriptorFactory.HUE_RED, 1.0f));
        arrayList.add(ObjectAnimator.ofFloat(this, "alpha", BitmapDescriptorFactory.HUE_RED, 1.0f));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        animatorSet.start();
    }

    private void setContentView(View view) {
        this.f28400c.removeAllViews();
        this.f28400c.addView(view);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f28405h.getAnimationType() == ToolTip.AnimationType.NONE) {
            if (getParent() == null) {
                return;
            }
            ((ViewManager) getParent()).removeView(this);
            return;
        }
        ArrayList arrayList = new ArrayList(5);
        if (this.f28405h.getAnimationType() == ToolTip.AnimationType.FROM_MASTER_VIEW) {
            arrayList.add(ObjectAnimator.ofInt(this, "translationY", (int) getY(), (this.f28408k + (this.f28406i.getHeight() / 2)) - (getHeight() / 2)));
            arrayList.add(ObjectAnimator.ofInt(this, "translationX", (int) getX(), (this.f28409l + (this.f28406i.getWidth() / 2)) - (this.f28410m / 2)));
        } else {
            arrayList.add(ObjectAnimator.ofFloat(this, "translationY", getY(), BitmapDescriptorFactory.HUE_RED));
        }
        arrayList.add(ObjectAnimator.ofFloat(this, "scaleX", 1.0f, BitmapDescriptorFactory.HUE_RED));
        arrayList.add(ObjectAnimator.ofFloat(this, "scaleY", 1.0f, BitmapDescriptorFactory.HUE_RED));
        arrayList.add(ObjectAnimator.ofFloat(this, "alpha", 1.0f, BitmapDescriptorFactory.HUE_RED));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        animatorSet.addListener(new DisappearanceAnimatorListener());
        animatorSet.start();
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        getViewTreeObserver().removeOnPreDrawListener(this);
        this.f28407j = true;
        this.f28410m = this.f28400c.getWidth();
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) getLayoutParams();
        layoutParams.width = this.f28410m;
        setLayoutParams(layoutParams);
        if (this.f28405h != null) {
            m26900a();
            return true;
        }
        return true;
    }

    public void setColor(int i) {
        this.f28398a.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
        this.f28399b.getBackground().setColorFilter(i, PorterDuff.Mode.MULTIPLY);
        this.f28403f.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
        this.f28402e.getBackground().setColorFilter(i, PorterDuff.Mode.MULTIPLY);
        this.f28400c.setBackgroundColor(i);
    }

    public void setOnToolTipViewClickedListener(OnToolTipViewClickedListener onToolTipViewClickedListener) {
        this.f28412o = onToolTipViewClickedListener;
    }

    public void setPointerCenterX(int i) {
        int max = i - (Math.max(this.f28398a.getMeasuredWidth(), this.f28403f.getMeasuredWidth()) / 2);
        this.f28398a.setX(max - ((int) getX()));
        this.f28403f.setX(max - ((int) getX()));
    }

    public void setToolTip(ToolTip toolTip, View view) {
        this.f28405h = toolTip;
        this.f28406i = view;
        if (toolTip.getText() != null) {
            this.f28401d.setText(this.f28405h.getText());
        } else if (this.f28405h.getTextResId() != 0) {
            this.f28401d.setText(this.f28405h.getTextResId());
        }
        if (this.f28405h.getTypeface() != null) {
            this.f28401d.setTypeface(this.f28405h.getTypeface());
        }
        if (this.f28405h.getTextColor() != 0) {
            this.f28401d.setTextColor(this.f28405h.getTextColor());
        }
        if (this.f28405h.getColor() != 0) {
            setColor(this.f28405h.getColor());
        }
        if (this.f28405h.getContentView() != null) {
            setContentView(this.f28405h.getContentView());
        }
        if (!this.f28405h.f28389a) {
            this.f28404g.setVisibility(8);
        }
        this.f28411n = this.f28405h.getOrientation();
        if (this.f28407j) {
            m26900a();
        }
    }
}
