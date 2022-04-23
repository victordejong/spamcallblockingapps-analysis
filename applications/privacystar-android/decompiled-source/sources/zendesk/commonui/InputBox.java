package zendesk.commonui;

import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import android.support.p001v4.view.animation.FastOutSlowInInterpolator;
import android.support.p001v4.view.animation.LinearOutSlowInInterpolator;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.zendesk.util.StringUtils;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/commonui/InputBox.class */
public class InputBox extends FrameLayout {
    private AttachmentsIndicator attachmentsIndicator;
    private View.OnClickListener attachmentsIndicatorClickListener;
    private AnimatorSet attachmentsOffCollapseAnimatorSet;
    private AnimatorSet attachmentsOffExpandAnimatorSet;
    private AnimatorSet attachmentsOnCollapseAnimatorSet;
    private AnimatorSet attachmentsOnExpandAnimatorSet;
    private AnimatorSet currentCollapseAnimatorSet;
    private AnimatorSet currentExpandAnimatorSet;
    private InputTextConsumer inputTextConsumer;
    private EditText inputTextField;
    private TextWatcher inputTextWatcher;
    private ImageView sendButton;

    /* loaded from: classes3-dex2jar.jar:zendesk/commonui/InputBox$InputTextConsumer.class */
    public interface InputTextConsumer {
        boolean onConsumeText(@NonNull String str);
    }

    public InputBox(Context context) {
        super(context);
        viewInit(context);
    }

    public InputBox(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        viewInit(context);
    }

    public InputBox(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        viewInit(context);
    }

    @RequiresApi(api = 21)
    public InputBox(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        viewInit(context);
    }

    @VisibleForTesting
    InputBox(Context context, AttachmentsIndicator attachmentsIndicator, EditText editText, ImageView imageView, AnimatorSet animatorSet, AnimatorSet animatorSet2, AnimatorSet animatorSet3, AnimatorSet animatorSet4) {
        super(context);
        this.attachmentsIndicator = attachmentsIndicator;
        this.inputTextField = editText;
        this.sendButton = imageView;
        this.attachmentsOnExpandAnimatorSet = animatorSet;
        this.attachmentsOffExpandAnimatorSet = animatorSet3;
        this.attachmentsOnCollapseAnimatorSet = animatorSet2;
        this.attachmentsOffCollapseAnimatorSet = animatorSet4;
    }

    private void bindViews() {
        this.inputTextField = (EditText) findViewById(C2633R.C2636id.input_box_input_text);
        this.attachmentsIndicator = (AttachmentsIndicator) findViewById(C2633R.C2636id.input_box_attachments_indicator);
        this.sendButton = (ImageView) findViewById(C2633R.C2636id.input_box_send_btn);
    }

    private void initAnimationsAndAdjustLeftMargin() {
        Resources resources = getResources();
        int integer = resources.getInteger(C2633R.integer.zui_input_box_transform_animation_duration);
        int dimensionPixelSize = resources.getDimensionPixelSize(C2633R.dimen.zui_input_box_collapsed_height);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(C2633R.dimen.zui_input_box_expanded_min_height);
        int dimensionPixelSize3 = resources.getDimensionPixelSize(C2633R.dimen.zui_input_box_expanded_side_margin);
        int dimensionPixelSize4 = resources.getDimensionPixelSize(C2633R.dimen.zui_input_box_collapsed_side_margin);
        int dimensionPixelSize5 = resources.getDimensionPixelSize(C2633R.dimen.zui_input_box_expanded_top_padding);
        int dimensionPixelSize6 = resources.getDimensionPixelSize(C2633R.dimen.zui_input_box_collapsed_top_padding);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(C2633R.dimen.zui_input_box_expanded_bottom_padding);
        this.attachmentsOnExpandAnimatorSet = new AnimatorSet();
        this.attachmentsOffExpandAnimatorSet = new AnimatorSet();
        this.attachmentsOnCollapseAnimatorSet = new AnimatorSet();
        this.attachmentsOffCollapseAnimatorSet = new AnimatorSet();
        LinearOutSlowInInterpolator linearOutSlowInInterpolator = new LinearOutSlowInInterpolator();
        FastOutSlowInInterpolator fastOutSlowInInterpolator = new FastOutSlowInInterpolator();
        this.attachmentsOnExpandAnimatorSet.setInterpolator(linearOutSlowInInterpolator);
        this.attachmentsOffExpandAnimatorSet.setInterpolator(linearOutSlowInInterpolator);
        this.attachmentsOnCollapseAnimatorSet.setInterpolator(fastOutSlowInInterpolator);
        this.attachmentsOffCollapseAnimatorSet.setInterpolator(fastOutSlowInInterpolator);
        this.attachmentsOnExpandAnimatorSet.play(ValueAnimators.minHeightAnimator(this.inputTextField, dimensionPixelSize, dimensionPixelSize2, integer)).with(ValueAnimators.sideMarginsAnimator(this.inputTextField, dimensionPixelSize4, dimensionPixelSize3, integer)).with(ValueAnimators.topPaddingAnimator(this.inputTextField, dimensionPixelSize6, dimensionPixelSize5, integer)).with(ValueAnimators.bottomPaddingAnimator(this.inputTextField, 0, dimensionPixelOffset, integer));
        this.attachmentsOnCollapseAnimatorSet.play(ValueAnimators.sideMarginsAnimator(this.inputTextField, dimensionPixelSize3, dimensionPixelSize4, integer)).with(ValueAnimators.topPaddingAnimator(this.inputTextField, dimensionPixelSize5, dimensionPixelSize6, integer)).with(ValueAnimators.minHeightAnimator(this.inputTextField, dimensionPixelSize2, dimensionPixelSize, integer)).with(ValueAnimators.bottomPaddingAnimator(this.inputTextField, dimensionPixelOffset, 0, integer));
        this.attachmentsOffExpandAnimatorSet.play(ValueAnimators.minHeightAnimator(this.inputTextField, dimensionPixelSize, dimensionPixelSize2, integer)).with(ValueAnimators.sideMarginsAnimator(this.inputTextField, dimensionPixelSize3, dimensionPixelSize3, integer)).with(ValueAnimators.topPaddingAnimator(this.inputTextField, dimensionPixelSize6, dimensionPixelSize5, integer)).with(ValueAnimators.bottomPaddingAnimator(this.inputTextField, 0, dimensionPixelOffset, integer));
        this.attachmentsOffCollapseAnimatorSet.play(ValueAnimators.sideMarginsAnimator(this.inputTextField, dimensionPixelSize3, dimensionPixelSize3, integer)).with(ValueAnimators.topPaddingAnimator(this.inputTextField, dimensionPixelSize5, dimensionPixelSize6, integer)).with(ValueAnimators.minHeightAnimator(this.inputTextField, dimensionPixelSize2, dimensionPixelSize, integer)).with(ValueAnimators.bottomPaddingAnimator(this.inputTextField, dimensionPixelOffset, 0, integer));
    }

    private void initListeners() {
        this.attachmentsIndicator.setOnClickListener(new View.OnClickListener() { // from class: zendesk.commonui.InputBox.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (InputBox.this.attachmentsIndicatorClickListener != null) {
                    InputBox.this.attachmentsIndicatorClickListener.onClick(view);
                }
            }
        });
        this.sendButton.setOnClickListener(new View.OnClickListener() { // from class: zendesk.commonui.InputBox.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (InputBox.this.inputTextConsumer != null && InputBox.this.inputTextConsumer.onConsumeText(InputBox.this.inputTextField.getText().toString())) {
                    InputBox.this.attachmentsIndicator.reset();
                    InputBox.this.inputTextField.setText((CharSequence) null);
                }
            }
        });
        this.inputTextField.addTextChangedListener(new TextWatcherAdapter() { // from class: zendesk.commonui.InputBox.3
            @Override // zendesk.commonui.TextWatcherAdapter, android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                boolean hasLength = StringUtils.hasLength(editable.toString());
                boolean z = false;
                boolean z2 = InputBox.this.attachmentsIndicator.getAttachmentsCount() > 0;
                InputBox inputBox = InputBox.this;
                boolean z3 = hasLength || z2;
                if (hasLength || z2) {
                    z = true;
                }
                inputBox.updateSendBtn(z3, z);
                if (InputBox.this.inputTextWatcher != null) {
                    InputBox.this.inputTextWatcher.afterTextChanged(editable);
                }
            }
        });
        this.inputTextField.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: zendesk.commonui.InputBox.4
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    InputBox.this.currentExpandAnimatorSet.start();
                } else {
                    InputBox.this.currentCollapseAnimatorSet.start();
                }
            }
        });
    }

    private void showAttachmentsIndicator(boolean z) {
        if (z) {
            this.currentExpandAnimatorSet = this.attachmentsOnExpandAnimatorSet;
            this.currentCollapseAnimatorSet = this.attachmentsOnCollapseAnimatorSet;
            this.attachmentsIndicator.setEnabled(true);
            updateInputFieldPosition(true);
            this.attachmentsIndicator.setVisibility(0);
            return;
        }
        this.currentExpandAnimatorSet = this.attachmentsOffExpandAnimatorSet;
        this.currentCollapseAnimatorSet = this.attachmentsOffCollapseAnimatorSet;
        this.attachmentsIndicator.setEnabled(false);
        this.attachmentsIndicator.setVisibility(8);
        updateInputFieldPosition(false);
    }

    private void updateInputFieldPosition(boolean z) {
        Resources resources = getResources();
        r7 = resources.getDimensionPixelSize(C2633R.dimen.zui_input_box_expanded_side_margin);
        int dimensionPixelSize = resources.getDimensionPixelSize(C2633R.dimen.zui_input_box_collapsed_side_margin);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.inputTextField.getLayoutParams();
        if (!z) {
        }
        layoutParams.leftMargin = dimensionPixelSize;
        this.inputTextField.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSendBtn(boolean z, boolean z2) {
        Context context = getContext();
        int themeAttributeToColor = z2 ? UiUtils.themeAttributeToColor(C2633R.C2634attr.colorPrimary, context, C2633R.color.zui_color_primary) : UiUtils.resolveColor(C2633R.color.zui_input_box_send_btn_color_inactive, context);
        int i = 0;
        this.sendButton.setEnabled(z && z2);
        ImageView imageView = this.sendButton;
        if (!z) {
            i = 4;
        }
        imageView.setVisibility(i);
        UiUtils.setTint(themeAttributeToColor, this.sendButton.getDrawable(), this.sendButton);
    }

    private void viewInit(Context context) {
        inflate(context, C2633R.C2637layout.zui_view_input_box, this);
        if (!isInEditMode()) {
            bindViews();
            initListeners();
            initAnimationsAndAdjustLeftMargin();
            showAttachmentsIndicator(false);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4) {
            this.inputTextField.clearFocus();
        }
        return super.dispatchKeyEventPreIme(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return !isEnabled() || super.dispatchTouchEvent(motionEvent);
    }

    public void focusInputTextField() {
        this.inputTextField.requestFocus();
    }

    public void setAttachmentsCount(int i) {
        this.attachmentsIndicator.setAttachmentsCount(i);
    }

    public void setAttachmentsIndicatorClickListener(@Nullable View.OnClickListener onClickListener) {
        this.attachmentsIndicatorClickListener = onClickListener;
        showAttachmentsIndicator(onClickListener != null);
    }

    public void setInputTextConsumer(InputTextConsumer inputTextConsumer) {
        this.inputTextConsumer = inputTextConsumer;
    }

    public void setInputTextWatcher(TextWatcher textWatcher) {
        this.inputTextWatcher = textWatcher;
    }
}
