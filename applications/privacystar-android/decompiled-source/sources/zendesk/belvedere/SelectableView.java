package zendesk.belvedere;

import android.animation.ValueAnimator;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.p001v4.content.ContextCompat;
import android.support.p001v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import zendesk.belvedere.p041ui.C2612R;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/SelectableView.class */
public class SelectableView extends FrameLayout implements View.OnClickListener {
    private static final long ANIMATION_DURATION = 75;
    private static final float SELECTED_ALPHA = 0.8f;
    private static final float SELECTED_SCALE = 0.9f;
    private View checkbox;
    private View child;
    private String descSelected;
    private String descUnselected;
    private SelectionListener selectionListener;

    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/SelectableView$SelectionListener.class */
    interface SelectionListener {
        boolean onSelectionChanged(boolean z);
    }

    public SelectableView(@NonNull Context context) {
        super(context);
        init();
    }

    public SelectableView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public SelectableView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void alpha(float f) {
        getChild().setAlpha(f);
    }

    private void checkbox(boolean z) {
        if (z) {
            this.checkbox.setVisibility(0);
            this.checkbox.bringToFront();
            ViewCompat.setElevation(this.checkbox, ViewCompat.getElevation(this.child) + 1.0f);
            return;
        }
        this.checkbox.setVisibility(8);
    }

    private ImageView getCheckBox(int i) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        ImageView imageView = new ImageView(getContext());
        imageView.setId(C2612R.C2615id.belvedere_selectable_view_checkbox);
        imageView.setImageDrawable(ContextCompat.getDrawable(getContext(), C2612R.C2614drawable.belvedere_ic_check_circle));
        ViewCompat.setBackground(imageView, ContextCompat.getDrawable(getContext(), C2612R.C2614drawable.belvedere_ic_check_bg));
        imageView.setLayoutParams(layoutParams);
        imageView.setVisibility(8);
        Utils.internalSetTint(imageView, i);
        return imageView;
    }

    private View getChild() {
        if (this.child != null) {
            return this.child;
        }
        if (getChildCount() != 2) {
            throw new RuntimeException("More then one child added to SelectableView");
        }
        int i = 0;
        while (true) {
            if (i >= getChildCount()) {
                break;
            }
            View childAt = getChildAt(i);
            if (childAt.getId() != C2612R.C2615id.belvedere_selectable_view_checkbox) {
                this.child = childAt;
                break;
            }
            i++;
        }
        return this.child;
    }

    private void init() {
        setClickable(true);
        setFocusable(true);
        setOnClickListener(this);
        this.checkbox = getCheckBox(Utils.getThemeColor(getContext(), C2612R.C2613attr.colorPrimary));
        addView(this.checkbox);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scale(float f) {
        getChild().setScaleX(f);
        getChild().setScaleY(f);
    }

    private void setContentDesc(boolean z) {
        if (z) {
            setContentDescription(this.descSelected);
        } else {
            setContentDescription(this.descUnselected);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ValueAnimator valueAnimator;
        ValueAnimator valueAnimator2;
        boolean z = true;
        boolean z2 = !isSelected();
        if (this.selectionListener != null) {
            z = this.selectionListener.onSelectionChanged(z2);
        }
        if (z) {
            setSelected(z2);
            if (z2) {
                valueAnimator2 = ValueAnimator.ofFloat(1.0f, SELECTED_SCALE);
                valueAnimator = ValueAnimator.ofFloat(1.0f, SELECTED_ALPHA);
            } else {
                valueAnimator2 = ValueAnimator.ofFloat(SELECTED_SCALE, 1.0f);
                valueAnimator = ValueAnimator.ofFloat(SELECTED_ALPHA, 1.0f);
            }
            valueAnimator2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: zendesk.belvedere.SelectableView.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    SelectableView.this.scale(((Float) valueAnimator3.getAnimatedValue()).floatValue());
                }
            });
            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: zendesk.belvedere.SelectableView.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    SelectableView.this.alpha(((Float) valueAnimator3.getAnimatedValue()).floatValue());
                }
            });
            valueAnimator.setDuration(75L);
            valueAnimator2.setDuration(75L);
            valueAnimator2.start();
            valueAnimator.start();
        }
    }

    public void setContentDescriptionStrings(String str, String str2) {
        this.descSelected = str;
        this.descUnselected = str2;
        setContentDesc(isSelected());
    }

    @Override // android.view.View
    public void setSelected(boolean z) {
        super.setSelected(z);
        if (z) {
            scale(SELECTED_SCALE);
            alpha(SELECTED_ALPHA);
            checkbox(true);
            setContentDesc(true);
            return;
        }
        scale(1.0f);
        alpha(1.0f);
        checkbox(false);
        setContentDesc(false);
    }

    public void setSelectionListener(SelectionListener selectionListener) {
        this.selectionListener = selectionListener;
    }
}
