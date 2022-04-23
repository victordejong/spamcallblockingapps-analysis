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

    /* renamed from: a  reason: collision with root package name */
    private ImageView f16308a = (ImageView) findViewById(2131364163);

    /* renamed from: b  reason: collision with root package name */
    private View f16309b = findViewById(2131364167);

    /* renamed from: c  reason: collision with root package name */
    private ViewGroup f16310c = (ViewGroup) findViewById(2131364159);

    /* renamed from: d  reason: collision with root package name */
    private TextView f16311d = (TextView) findViewById(2131364160);
    private View e = findViewById(2131364157);
    private ImageView f = (ImageView) findViewById(2131364162);
    private View g = findViewById(2131364164);
    private ToolTip h;
    private View i;
    private boolean j;
    private int k;
    private int l;
    private int m;
    private ToolTip.Orientation n;
    private OnToolTipViewClickedListener o;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/tooltip/ToolTipView$DisappearanceAnimatorListener.class */
    class DisappearanceAnimatorListener extends AnimatorListenerAdapter {
        private DisappearanceAnimatorListener() {
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

    private void a() {
        int[] iArr = new int[2];
        this.i.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        ((View) getParent()).getGlobalVisibleRect(rect);
        int[] iArr2 = new int[2];
        ((View) getParent()).getLocationOnScreen(iArr2);
        int width = this.i.getWidth();
        int height = this.i.getHeight();
        int i = iArr[0] - iArr2[0];
        this.l = i;
        int i2 = iArr[1] - iArr2[1];
        this.k = i2;
        int i3 = i + (width / 2);
        int height2 = i2 - getHeight();
        int i4 = Math.max(0, this.k + height);
        int max = Math.max(0, i3 - (this.m / 2));
        int i5 = max;
        if (this.m + max > rect.width()) {
            i5 = rect.width() - this.m;
        }
        float f = i5;
        setX(f);
        setPointerCenterX(i3);
        boolean z = height2 < 0;
        if (this.n == ToolTip.Orientation.TOP) {
            z = false;
        } else if (this.n == ToolTip.Orientation.BOTTOM) {
            z = true;
        }
        int i6 = 8;
        this.f16308a.setVisibility(z ? 0 : 8);
        ImageView imageView = this.f;
        if (!z) {
            i6 = 0;
        }
        imageView.setVisibility(i6);
        i4 = height2;
        if (z) {
        }
        if (this.h.getAnimationType() == ToolTip.AnimationType.NONE) {
            setTranslationY(i4);
            setTranslationX(f);
            return;
        }
        ArrayList arrayList = new ArrayList(5);
        if (this.h.getAnimationType() == ToolTip.AnimationType.FROM_MASTER_VIEW) {
            arrayList.add(ObjectAnimator.ofInt(this, "translationY", (this.k + (this.i.getHeight() / 2)) - (getHeight() / 2), i4));
            arrayList.add(ObjectAnimator.ofInt(this, "translationX", (this.l + (this.i.getWidth() / 2)) - (this.m / 2), i5));
        } else if (this.h.getAnimationType() == ToolTip.AnimationType.FROM_TOP) {
            arrayList.add(ObjectAnimator.ofFloat(this, "translationY", BitmapDescriptorFactory.HUE_RED, i4));
        }
        arrayList.add(ObjectAnimator.ofFloat(this, "scaleX", BitmapDescriptorFactory.HUE_RED, 1.0f));
        arrayList.add(ObjectAnimator.ofFloat(this, "scaleY", BitmapDescriptorFactory.HUE_RED, 1.0f));
        arrayList.add(ObjectAnimator.ofFloat(this, "alpha", BitmapDescriptorFactory.HUE_RED, 1.0f));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        animatorSet.start();
    }

    private void setContentView(View view) {
        this.f16310c.removeAllViews();
        this.f16310c.addView(view);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.h.getAnimationType() != ToolTip.AnimationType.NONE) {
            ArrayList arrayList = new ArrayList(5);
            if (this.h.getAnimationType() == ToolTip.AnimationType.FROM_MASTER_VIEW) {
                arrayList.add(ObjectAnimator.ofInt(this, "translationY", (int) getY(), (this.k + (this.i.getHeight() / 2)) - (getHeight() / 2)));
                arrayList.add(ObjectAnimator.ofInt(this, "translationX", (int) getX(), (this.l + (this.i.getWidth() / 2)) - (this.m / 2)));
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
        } else if (getParent() != null) {
            ((ViewManager) getParent()).removeView(this);
        }
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        getViewTreeObserver().removeOnPreDrawListener(this);
        this.j = true;
        this.m = this.f16310c.getWidth();
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) getLayoutParams();
        layoutParams.width = this.m;
        setLayoutParams(layoutParams);
        if (this.h == null) {
            return true;
        }
        a();
        return true;
    }

    public void setColor(int i) {
        this.f16308a.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
        this.f16309b.getBackground().setColorFilter(i, PorterDuff.Mode.MULTIPLY);
        this.f.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
        this.e.getBackground().setColorFilter(i, PorterDuff.Mode.MULTIPLY);
        this.f16310c.setBackgroundColor(i);
    }

    public void setOnToolTipViewClickedListener(OnToolTipViewClickedListener onToolTipViewClickedListener) {
        this.o = onToolTipViewClickedListener;
    }

    public void setPointerCenterX(int i) {
        int max = i - (Math.max(this.f16308a.getMeasuredWidth(), this.f.getMeasuredWidth()) / 2);
        this.f16308a.setX(max - ((int) getX()));
        this.f.setX(max - ((int) getX()));
    }

    public void setToolTip(ToolTip toolTip, View view) {
        this.h = toolTip;
        this.i = view;
        if (toolTip.getText() != null) {
            this.f16311d.setText(this.h.getText());
        } else if (this.h.getTextResId() != 0) {
            this.f16311d.setText(this.h.getTextResId());
        }
        if (this.h.getTypeface() != null) {
            this.f16311d.setTypeface(this.h.getTypeface());
        }
        if (this.h.getTextColor() != 0) {
            this.f16311d.setTextColor(this.h.getTextColor());
        }
        if (this.h.getColor() != 0) {
            setColor(this.h.getColor());
        }
        if (this.h.getContentView() != null) {
            setContentView(this.h.getContentView());
        }
        if (!this.h.f16304a) {
            this.g.setVisibility(8);
        }
        this.n = this.h.getOrientation();
        if (this.j) {
            a();
        }
    }
}
