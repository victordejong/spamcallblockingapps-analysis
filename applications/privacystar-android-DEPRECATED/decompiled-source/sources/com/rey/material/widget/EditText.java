package com.rey.material.widget;

import android.annotation.TargetApi;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.p001v4.internal.view.SupportMenu;
import android.support.p001v4.view.GravityCompat;
import android.support.p001v4.view.ViewCompat;
import android.support.p004v7.widget.AppCompatAutoCompleteTextView;
import android.support.p004v7.widget.AppCompatEditText;
import android.support.p004v7.widget.AppCompatMultiAutoCompleteTextView;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Layout;
import android.text.Spannable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.KeyListener;
import android.text.method.MovementMethod;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.text.style.URLSpan;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.CorrectionInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputConnection;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ListAdapter;
import android.widget.MultiAutoCompleteTextView;
import android.widget.Scroller;
import android.widget.TextView;
import com.rey.material.C1686R;
import com.rey.material.app.ThemeManager;
import com.rey.material.drawable.DividerDrawable;
import com.rey.material.util.ThemeUtil;
import com.rey.material.util.ViewUtil;
import com.rey.material.widget.TextView;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/EditText.class */
public class EditText extends FrameLayout implements ThemeManager.OnThemeChangedListener {
    public static final int AUTOCOMPLETE_MODE_MULTI = 2;
    public static final int AUTOCOMPLETE_MODE_NONE = 0;
    public static final int AUTOCOMPLETE_MODE_SINGLE = 1;
    public static final int SUPPORT_MODE_CHAR_COUNTER = 3;
    public static final int SUPPORT_MODE_HELPER = 1;
    public static final int SUPPORT_MODE_HELPER_WITH_ERROR = 2;
    public static final int SUPPORT_MODE_NONE = 0;
    protected int mAutoCompleteMode;
    private DividerDrawable mDivider;
    private ColorStateList mDividerColors;
    private boolean mDividerCompoundPadding;
    private ColorStateList mDividerErrorColors;
    private int mDividerPadding;
    protected android.widget.EditText mInputView;
    private boolean mIsRtl;
    private boolean mLabelEnable;
    private int mLabelInAnimId;
    private int mLabelOutAnimId;
    protected LabelView mLabelView;
    private boolean mLabelVisible;
    private TextView.OnSelectionChangedListener mOnSelectionChangedListener;
    private ColorStateList mSupportColors;
    private CharSequence mSupportError;
    private ColorStateList mSupportErrorColors;
    private CharSequence mSupportHelper;
    private int mSupportMaxChars;
    protected int mSupportMode;
    protected LabelView mSupportView;

    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/EditText$InputTextWatcher.class */
    private class InputTextWatcher implements TextWatcher {
        private InputTextWatcher() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            int length = editable.length();
            EditText.this.setLabelVisible(length != 0, true);
            if (EditText.this.mSupportMode == 3) {
                EditText.this.updateCharCounter(length);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/EditText$InternalAutoCompleteTextView.class */
    public class InternalAutoCompleteTextView extends AppCompatAutoCompleteTextView {
        public InternalAutoCompleteTextView(Context context) {
            super(context);
        }

        public InternalAutoCompleteTextView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public InternalAutoCompleteTextView(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
        }

        @Override // android.widget.AutoCompleteTextView
        protected CharSequence convertSelectionToString(Object obj) {
            return EditText.this.convertSelectionToString(obj);
        }

        @Override // android.widget.AutoCompleteTextView
        protected Filter getFilter() {
            return EditText.this.getFilter();
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView
        public void onCommitCompletion(CompletionInfo completionInfo) {
            EditText.this.onCommitCompletion(completionInfo);
        }

        @Override // android.widget.TextView
        public void onCommitCorrection(CorrectionInfo correctionInfo) {
            EditText.this.onCommitCorrection(correctionInfo);
        }

        @Override // android.support.p004v7.widget.AppCompatAutoCompleteTextView, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            return EditText.this.onCreateInputConnection(editorInfo);
        }

        @Override // android.widget.TextView
        public void onEditorAction(int i) {
            EditText.this.onEditorAction(i);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.Filter.FilterListener
        public void onFilterComplete(int i) {
            EditText.this.onFilterComplete(i);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i, KeyEvent keyEvent) {
            return EditText.this.onKeyDown(i, keyEvent);
        }

        @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyMultiple(int i, int i2, KeyEvent keyEvent) {
            return EditText.this.onKeyMultiple(i, i2, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            return EditText.this.onKeyPreIme(i, keyEvent);
        }

        @Override // android.widget.TextView, android.view.View
        public boolean onKeyShortcut(int i, KeyEvent keyEvent) {
            return EditText.this.onKeyShortcut(i, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyUp(int i, KeyEvent keyEvent) {
            return EditText.this.onKeyUp(i, keyEvent);
        }

        @Override // android.widget.TextView
        protected void onSelectionChanged(int i, int i2) {
            EditText.this.onSelectionChanged(i, i2);
        }

        @Override // android.widget.AutoCompleteTextView
        protected void performFiltering(CharSequence charSequence, int i) {
            EditText.this.performFiltering(charSequence, i);
        }

        @Override // android.view.View
        public void refreshDrawableState() {
            super.refreshDrawableState();
            if (EditText.this.mLabelView != null) {
                EditText.this.mLabelView.refreshDrawableState();
            }
            if (EditText.this.mSupportView != null) {
                EditText.this.mSupportView.refreshDrawableState();
            }
        }

        @Override // android.widget.AutoCompleteTextView
        protected void replaceText(CharSequence charSequence) {
            EditText.this.replaceText(charSequence);
        }

        @Override // android.widget.TextView
        public void setTextAppearance(int i) {
            ViewUtil.applyTextAppearance(this, i);
        }

        @Override // android.support.p004v7.widget.AppCompatAutoCompleteTextView, android.widget.TextView
        public void setTextAppearance(Context context, int i) {
            ViewUtil.applyTextAppearance(this, i);
        }

        CharSequence superConvertSelectionToString(Object obj) {
            return super.convertSelectionToString(obj);
        }

        Filter superGetFilter() {
            return super.getFilter();
        }

        void superOnCommitCompletion(CompletionInfo completionInfo) {
            super.onCommitCompletion(completionInfo);
        }

        void superOnCommitCorrection(CorrectionInfo correctionInfo) {
            if (Build.VERSION.SDK_INT >= 11) {
                super.onCommitCorrection(correctionInfo);
            }
        }

        InputConnection superOnCreateInputConnection(EditorInfo editorInfo) {
            return super.onCreateInputConnection(editorInfo);
        }

        void superOnEditorAction(int i) {
            super.onEditorAction(i);
        }

        void superOnFilterComplete(int i) {
            super.onFilterComplete(i);
        }

        boolean superOnKeyDown(int i, KeyEvent keyEvent) {
            return super.onKeyDown(i, keyEvent);
        }

        boolean superOnKeyMultiple(int i, int i2, KeyEvent keyEvent) {
            return super.onKeyMultiple(i, i2, keyEvent);
        }

        boolean superOnKeyPreIme(int i, KeyEvent keyEvent) {
            return super.onKeyPreIme(i, keyEvent);
        }

        boolean superOnKeyShortcut(int i, KeyEvent keyEvent) {
            return super.onKeyShortcut(i, keyEvent);
        }

        boolean superOnKeyUp(int i, KeyEvent keyEvent) {
            return super.onKeyUp(i, keyEvent);
        }

        void superOnSelectionChanged(int i, int i2) {
            super.onSelectionChanged(i, i2);
        }

        void superPerformFiltering(CharSequence charSequence, int i) {
            super.performFiltering(charSequence, i);
        }

        void superReplaceText(CharSequence charSequence) {
            super.replaceText(charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/EditText$InternalEditText.class */
    public class InternalEditText extends AppCompatEditText {
        public InternalEditText(Context context) {
            super(context);
        }

        public InternalEditText(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public InternalEditText(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
        }

        @Override // android.widget.TextView
        public void onCommitCompletion(CompletionInfo completionInfo) {
            EditText.this.onCommitCompletion(completionInfo);
        }

        @Override // android.widget.TextView
        public void onCommitCorrection(CorrectionInfo correctionInfo) {
            EditText.this.onCommitCorrection(correctionInfo);
        }

        @Override // android.support.p004v7.widget.AppCompatEditText, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            return EditText.this.onCreateInputConnection(editorInfo);
        }

        @Override // android.widget.TextView
        public void onEditorAction(int i) {
            EditText.this.onEditorAction(i);
        }

        @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i, KeyEvent keyEvent) {
            return EditText.this.onKeyDown(i, keyEvent);
        }

        @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyMultiple(int i, int i2, KeyEvent keyEvent) {
            return EditText.this.onKeyMultiple(i, i2, keyEvent);
        }

        @Override // android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            return EditText.this.onKeyPreIme(i, keyEvent);
        }

        @Override // android.widget.TextView, android.view.View
        public boolean onKeyShortcut(int i, KeyEvent keyEvent) {
            return EditText.this.onKeyShortcut(i, keyEvent);
        }

        @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyUp(int i, KeyEvent keyEvent) {
            return EditText.this.onKeyUp(i, keyEvent);
        }

        @Override // android.widget.TextView
        protected void onSelectionChanged(int i, int i2) {
            EditText.this.onSelectionChanged(i, i2);
        }

        @Override // android.view.View
        public void refreshDrawableState() {
            super.refreshDrawableState();
            if (EditText.this.mLabelView != null) {
                EditText.this.mLabelView.refreshDrawableState();
            }
            if (EditText.this.mSupportView != null) {
                EditText.this.mSupportView.refreshDrawableState();
            }
        }

        @Override // android.widget.TextView
        public void setTextAppearance(int i) {
            ViewUtil.applyTextAppearance(this, i);
        }

        @Override // android.support.p004v7.widget.AppCompatEditText, android.widget.TextView
        public void setTextAppearance(Context context, int i) {
            ViewUtil.applyTextAppearance(this, i);
        }

        void superOnCommitCompletion(CompletionInfo completionInfo) {
            super.onCommitCompletion(completionInfo);
        }

        void superOnCommitCorrection(CorrectionInfo correctionInfo) {
            if (Build.VERSION.SDK_INT >= 11) {
                super.onCommitCorrection(correctionInfo);
            }
        }

        InputConnection superOnCreateInputConnection(EditorInfo editorInfo) {
            return super.onCreateInputConnection(editorInfo);
        }

        void superOnEditorAction(int i) {
            super.onEditorAction(i);
        }

        boolean superOnKeyDown(int i, KeyEvent keyEvent) {
            return super.onKeyDown(i, keyEvent);
        }

        boolean superOnKeyMultiple(int i, int i2, KeyEvent keyEvent) {
            return super.onKeyMultiple(i, i2, keyEvent);
        }

        boolean superOnKeyPreIme(int i, KeyEvent keyEvent) {
            return super.onKeyPreIme(i, keyEvent);
        }

        boolean superOnKeyShortcut(int i, KeyEvent keyEvent) {
            return super.onKeyShortcut(i, keyEvent);
        }

        boolean superOnKeyUp(int i, KeyEvent keyEvent) {
            return super.onKeyUp(i, keyEvent);
        }

        void superOnSelectionChanged(int i, int i2) {
            super.onSelectionChanged(i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/EditText$InternalMultiAutoCompleteTextView.class */
    public class InternalMultiAutoCompleteTextView extends AppCompatMultiAutoCompleteTextView {
        public InternalMultiAutoCompleteTextView(Context context) {
            super(context);
        }

        public InternalMultiAutoCompleteTextView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public InternalMultiAutoCompleteTextView(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
        }

        @Override // android.widget.AutoCompleteTextView
        protected CharSequence convertSelectionToString(Object obj) {
            return EditText.this.convertSelectionToString(obj);
        }

        @Override // android.widget.AutoCompleteTextView
        protected Filter getFilter() {
            return EditText.this.getFilter();
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView
        public void onCommitCompletion(CompletionInfo completionInfo) {
            EditText.this.onCommitCompletion(completionInfo);
        }

        @Override // android.widget.TextView
        public void onCommitCorrection(CorrectionInfo correctionInfo) {
            EditText.this.onCommitCorrection(correctionInfo);
        }

        @Override // android.support.p004v7.widget.AppCompatMultiAutoCompleteTextView, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            return EditText.this.onCreateInputConnection(editorInfo);
        }

        @Override // android.widget.TextView
        public void onEditorAction(int i) {
            EditText.this.onEditorAction(i);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.Filter.FilterListener
        public void onFilterComplete(int i) {
            EditText.this.onFilterComplete(i);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i, KeyEvent keyEvent) {
            return EditText.this.onKeyDown(i, keyEvent);
        }

        @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyMultiple(int i, int i2, KeyEvent keyEvent) {
            return EditText.this.onKeyMultiple(i, i2, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            return EditText.this.onKeyPreIme(i, keyEvent);
        }

        @Override // android.widget.TextView, android.view.View
        public boolean onKeyShortcut(int i, KeyEvent keyEvent) {
            return EditText.this.onKeyShortcut(i, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyUp(int i, KeyEvent keyEvent) {
            return EditText.this.onKeyUp(i, keyEvent);
        }

        @Override // android.widget.TextView
        protected void onSelectionChanged(int i, int i2) {
            EditText.this.onSelectionChanged(i, i2);
        }

        @Override // android.widget.MultiAutoCompleteTextView, android.widget.AutoCompleteTextView
        protected void performFiltering(CharSequence charSequence, int i) {
            EditText.this.performFiltering(charSequence, i);
        }

        @Override // android.widget.MultiAutoCompleteTextView
        protected void performFiltering(CharSequence charSequence, int i, int i2, int i3) {
            EditText.this.performFiltering(charSequence, i, i2, i3);
        }

        @Override // android.view.View
        public void refreshDrawableState() {
            super.refreshDrawableState();
            if (EditText.this.mLabelView != null) {
                EditText.this.mLabelView.refreshDrawableState();
            }
            if (EditText.this.mSupportView != null) {
                EditText.this.mSupportView.refreshDrawableState();
            }
        }

        @Override // android.widget.MultiAutoCompleteTextView, android.widget.AutoCompleteTextView
        protected void replaceText(CharSequence charSequence) {
            EditText.this.replaceText(charSequence);
        }

        @Override // android.widget.TextView
        public void setTextAppearance(int i) {
            ViewUtil.applyTextAppearance(this, i);
        }

        @Override // android.support.p004v7.widget.AppCompatMultiAutoCompleteTextView, android.widget.TextView
        public void setTextAppearance(Context context, int i) {
            ViewUtil.applyTextAppearance(this, i);
        }

        CharSequence superConvertSelectionToString(Object obj) {
            return super.convertSelectionToString(obj);
        }

        Filter superGetFilter() {
            return super.getFilter();
        }

        void superOnCommitCompletion(CompletionInfo completionInfo) {
            super.onCommitCompletion(completionInfo);
        }

        void superOnCommitCorrection(CorrectionInfo correctionInfo) {
            if (Build.VERSION.SDK_INT >= 11) {
                super.onCommitCorrection(correctionInfo);
            }
        }

        InputConnection superOnCreateInputConnection(EditorInfo editorInfo) {
            return super.onCreateInputConnection(editorInfo);
        }

        void superOnEditorAction(int i) {
            super.onEditorAction(i);
        }

        void superOnFilterComplete(int i) {
            super.onFilterComplete(i);
        }

        boolean superOnKeyDown(int i, KeyEvent keyEvent) {
            return super.onKeyDown(i, keyEvent);
        }

        boolean superOnKeyMultiple(int i, int i2, KeyEvent keyEvent) {
            return super.onKeyMultiple(i, i2, keyEvent);
        }

        boolean superOnKeyPreIme(int i, KeyEvent keyEvent) {
            return super.onKeyPreIme(i, keyEvent);
        }

        boolean superOnKeyShortcut(int i, KeyEvent keyEvent) {
            return super.onKeyShortcut(i, keyEvent);
        }

        boolean superOnKeyUp(int i, KeyEvent keyEvent) {
            return super.onKeyUp(i, keyEvent);
        }

        void superOnSelectionChanged(int i, int i2) {
            super.onSelectionChanged(i, i2);
        }

        void superPerformFiltering(CharSequence charSequence, int i) {
            super.performFiltering(charSequence, i);
        }

        void superPerformFiltering(CharSequence charSequence, int i, int i2, int i3) {
            super.performFiltering(charSequence, i, i2, i3);
        }

        void superReplaceText(CharSequence charSequence) {
            super.replaceText(charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/EditText$LabelView.class */
    public class LabelView extends TextView {
        public LabelView(Context context) {
            super(context);
        }

        @Override // android.widget.TextView, android.view.View
        protected int[] onCreateDrawableState(int i) {
            return EditText.this.mInputView.getDrawableState();
        }

        @Override // com.rey.material.widget.TextView, android.widget.TextView
        public void setTextAppearance(int i) {
            ViewUtil.applyTextAppearance(this, i);
        }

        @Override // com.rey.material.widget.TextView, android.support.p004v7.widget.AppCompatTextView, android.widget.TextView
        public void setTextAppearance(Context context, int i) {
            ViewUtil.applyTextAppearance(this, i);
        }
    }

    public EditText(Context context) {
        super(context);
    }

    public EditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public EditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private LabelView getLabelView() {
        if (this.mLabelView == null) {
            this.mLabelView = new LabelView(getContext());
            if (Build.VERSION.SDK_INT >= 17) {
                this.mLabelView.setTextDirection(this.mIsRtl ? 4 : 3);
            }
            this.mLabelView.setGravity(GravityCompat.START);
            this.mLabelView.setSingleLine(true);
        }
        return this.mLabelView;
    }

    private LabelView getSupportView() {
        if (this.mSupportView == null) {
            this.mSupportView = new LabelView(getContext());
        }
        return this.mSupportView;
    }

    private boolean hasPasswordTransformationMethod() {
        return getTransformationMethod() != null && (getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    private boolean needCreateInputView(int i) {
        if (this.mInputView == null) {
            return true;
        }
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        switch (i) {
            case 0:
                if (!(this.mInputView instanceof InternalEditText)) {
                    z2 = true;
                }
                return z2;
            case 1:
                if (!(this.mInputView instanceof InternalAutoCompleteTextView)) {
                    z = true;
                }
                return z;
            case 2:
                if (!(this.mInputView instanceof InternalMultiAutoCompleteTextView)) {
                    z3 = true;
                }
                return z3;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLabelVisible(boolean z, boolean z2) {
        if (this.mLabelEnable && this.mLabelVisible != z) {
            this.mLabelVisible = z;
            int i = 4;
            if (!z2) {
                LabelView labelView = this.mLabelView;
                if (this.mLabelVisible) {
                    i = 0;
                }
                labelView.setVisibility(i);
            } else if (this.mLabelVisible) {
                if (this.mLabelInAnimId != 0) {
                    Animation loadAnimation = AnimationUtils.loadAnimation(getContext(), this.mLabelInAnimId);
                    loadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.rey.material.widget.EditText.1
                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationEnd(Animation animation) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationRepeat(Animation animation) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationStart(Animation animation) {
                            EditText.this.mLabelView.setVisibility(0);
                        }
                    });
                    this.mLabelView.clearAnimation();
                    this.mLabelView.startAnimation(loadAnimation);
                    return;
                }
                this.mLabelView.setVisibility(0);
            } else if (this.mLabelOutAnimId != 0) {
                Animation loadAnimation2 = AnimationUtils.loadAnimation(getContext(), this.mLabelOutAnimId);
                loadAnimation2.setAnimationListener(new Animation.AnimationListener() { // from class: com.rey.material.widget.EditText.2
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        EditText.this.mLabelView.setVisibility(4);
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                        EditText.this.mLabelView.setVisibility(0);
                    }
                });
                this.mLabelView.clearAnimation();
                this.mLabelView.startAnimation(loadAnimation2);
            } else {
                this.mLabelView.setVisibility(4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCharCounter(int i) {
        if (i == 0) {
            getSupportView().setTextColor(this.mSupportColors);
            this.mDivider.setColor(this.mDividerColors);
            getSupportView().setText((CharSequence) null);
        } else if (this.mSupportMaxChars > 0) {
            getSupportView().setTextColor(i > this.mSupportMaxChars ? this.mSupportErrorColors : this.mSupportColors);
            this.mDivider.setColor(i > this.mSupportMaxChars ? this.mDividerErrorColors : this.mDividerColors);
            LabelView supportView = getSupportView();
            supportView.setText(i + " / " + this.mSupportMaxChars);
        } else {
            getSupportView().setText(String.valueOf(i));
        }
    }

    public void addTextChangedListener(TextWatcher textWatcher) {
        this.mInputView.addTextChangedListener(textWatcher);
    }

    public final void append(CharSequence charSequence) {
        this.mInputView.append(charSequence);
    }

    public void append(CharSequence charSequence, int i, int i2) {
        this.mInputView.append(charSequence, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r3v20, types: [int[], int[][]] */
    @Override // com.rey.material.widget.FrameLayout
    public void applyStyle(Context context, AttributeSet attributeSet, int i, int i2) {
        super.applyStyle(context, attributeSet, i, i2);
        ColorStateList colorStateList = null;
        Editable text = this.mInputView == null ? null : this.mInputView.getText();
        removeAllViews();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1686R.styleable.EditText, i, i2);
        this.mAutoCompleteMode = obtainStyledAttributes.getInteger(C1686R.styleable.EditText_et_autoCompleteMode, this.mAutoCompleteMode);
        if (needCreateInputView(this.mAutoCompleteMode)) {
            switch (this.mAutoCompleteMode) {
                case 1:
                    this.mInputView = new InternalAutoCompleteTextView(context, attributeSet, i);
                    break;
                case 2:
                    this.mInputView = new InternalMultiAutoCompleteTextView(context, attributeSet, i);
                    break;
                default:
                    this.mInputView = new InternalEditText(context, attributeSet, i);
                    break;
            }
            ViewUtil.applyFont(this.mInputView, attributeSet, i, i2);
            if (text != null) {
                this.mInputView.setText(text);
            }
            this.mInputView.addTextChangedListener(new InputTextWatcher());
            if (this.mDivider != null) {
                this.mDivider.setAnimEnable(false);
                ViewUtil.setBackground(this.mInputView, this.mDivider);
                this.mDivider.setAnimEnable(true);
            }
        } else {
            ViewUtil.applyStyle((View) this.mInputView, attributeSet, i, i2);
        }
        this.mInputView.setVisibility(0);
        this.mInputView.setFocusableInTouchMode(true);
        int indexCount = obtainStyledAttributes.getIndexCount();
        ColorStateList colorStateList2 = null;
        ColorStateList colorStateList3 = null;
        ColorStateList colorStateList4 = null;
        ColorStateList colorStateList5 = null;
        String str = null;
        String str2 = null;
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int i7 = -1;
        int i8 = -1;
        int i9 = -1;
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = obtainStyledAttributes.getIndex(i10);
            if (index == C1686R.styleable.EditText_et_labelEnable) {
                this.mLabelEnable = obtainStyledAttributes.getBoolean(index, false);
                colorStateList2 = colorStateList2;
                colorStateList = colorStateList;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
                colorStateList3 = colorStateList3;
                i8 = i8;
                colorStateList4 = colorStateList4;
                colorStateList5 = colorStateList5;
                i9 = i9;
                str = str;
                str2 = str2;
            } else if (index == C1686R.styleable.EditText_et_labelPadding) {
                i6 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                colorStateList2 = colorStateList2;
                colorStateList = colorStateList;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i7 = i7;
                colorStateList3 = colorStateList3;
                i8 = i8;
                colorStateList4 = colorStateList4;
                colorStateList5 = colorStateList5;
                i9 = i9;
                str = str;
                str2 = str2;
            } else if (index == C1686R.styleable.EditText_et_labelTextSize) {
                i7 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                colorStateList2 = colorStateList2;
                colorStateList = colorStateList;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                colorStateList3 = colorStateList3;
                i8 = i8;
                colorStateList4 = colorStateList4;
                colorStateList5 = colorStateList5;
                i9 = i9;
                str = str;
                str2 = str2;
            } else if (index == C1686R.styleable.EditText_et_labelTextColor) {
                colorStateList3 = obtainStyledAttributes.getColorStateList(index);
                colorStateList2 = colorStateList2;
                colorStateList = colorStateList;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
                i8 = i8;
                colorStateList4 = colorStateList4;
                colorStateList5 = colorStateList5;
                i9 = i9;
                str = str;
                str2 = str2;
            } else if (index == C1686R.styleable.EditText_et_labelTextAppearance) {
                getLabelView().setTextAppearance(context, obtainStyledAttributes.getResourceId(index, 0));
                colorStateList2 = colorStateList2;
                colorStateList = colorStateList;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
                colorStateList3 = colorStateList3;
                i8 = i8;
                colorStateList4 = colorStateList4;
                colorStateList5 = colorStateList5;
                i9 = i9;
                str = str;
                str2 = str2;
            } else if (index == C1686R.styleable.EditText_et_labelEllipsize) {
                switch (obtainStyledAttributes.getInteger(index, 0)) {
                    case 1:
                        getLabelView().setEllipsize(TextUtils.TruncateAt.START);
                        colorStateList2 = colorStateList2;
                        colorStateList = colorStateList;
                        i3 = i3;
                        i4 = i4;
                        i5 = i5;
                        i6 = i6;
                        i7 = i7;
                        colorStateList3 = colorStateList3;
                        i8 = i8;
                        colorStateList4 = colorStateList4;
                        colorStateList5 = colorStateList5;
                        i9 = i9;
                        str = str;
                        str2 = str2;
                        continue;
                    case 2:
                        getLabelView().setEllipsize(TextUtils.TruncateAt.MIDDLE);
                        colorStateList2 = colorStateList2;
                        colorStateList = colorStateList;
                        i3 = i3;
                        i4 = i4;
                        i5 = i5;
                        i6 = i6;
                        i7 = i7;
                        colorStateList3 = colorStateList3;
                        i8 = i8;
                        colorStateList4 = colorStateList4;
                        colorStateList5 = colorStateList5;
                        i9 = i9;
                        str = str;
                        str2 = str2;
                        continue;
                    case 3:
                        getLabelView().setEllipsize(TextUtils.TruncateAt.END);
                        colorStateList2 = colorStateList2;
                        colorStateList = colorStateList;
                        i3 = i3;
                        i4 = i4;
                        i5 = i5;
                        i6 = i6;
                        i7 = i7;
                        colorStateList3 = colorStateList3;
                        i8 = i8;
                        colorStateList4 = colorStateList4;
                        colorStateList5 = colorStateList5;
                        i9 = i9;
                        str = str;
                        str2 = str2;
                        continue;
                    case 4:
                        getLabelView().setEllipsize(TextUtils.TruncateAt.MARQUEE);
                        colorStateList2 = colorStateList2;
                        colorStateList = colorStateList;
                        i3 = i3;
                        i4 = i4;
                        i5 = i5;
                        i6 = i6;
                        i7 = i7;
                        colorStateList3 = colorStateList3;
                        i8 = i8;
                        colorStateList4 = colorStateList4;
                        colorStateList5 = colorStateList5;
                        i9 = i9;
                        str = str;
                        str2 = str2;
                        continue;
                    default:
                        getLabelView().setEllipsize(TextUtils.TruncateAt.END);
                        colorStateList2 = colorStateList2;
                        colorStateList = colorStateList;
                        i3 = i3;
                        i4 = i4;
                        i5 = i5;
                        i6 = i6;
                        i7 = i7;
                        colorStateList3 = colorStateList3;
                        i8 = i8;
                        colorStateList4 = colorStateList4;
                        colorStateList5 = colorStateList5;
                        i9 = i9;
                        str = str;
                        str2 = str2;
                        continue;
                }
            } else if (index == C1686R.styleable.EditText_et_labelInAnim) {
                this.mLabelInAnimId = obtainStyledAttributes.getResourceId(index, 0);
                colorStateList2 = colorStateList2;
                colorStateList = colorStateList;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
                colorStateList3 = colorStateList3;
                i8 = i8;
                colorStateList4 = colorStateList4;
                colorStateList5 = colorStateList5;
                i9 = i9;
                str = str;
                str2 = str2;
            } else if (index == C1686R.styleable.EditText_et_labelOutAnim) {
                this.mLabelOutAnimId = obtainStyledAttributes.getResourceId(index, 0);
                colorStateList2 = colorStateList2;
                colorStateList = colorStateList;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
                colorStateList3 = colorStateList3;
                i8 = i8;
                colorStateList4 = colorStateList4;
                colorStateList5 = colorStateList5;
                i9 = i9;
                str = str;
                str2 = str2;
            } else if (index == C1686R.styleable.EditText_et_supportMode) {
                this.mSupportMode = obtainStyledAttributes.getInteger(index, 0);
                colorStateList2 = colorStateList2;
                colorStateList = colorStateList;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
                colorStateList3 = colorStateList3;
                i8 = i8;
                colorStateList4 = colorStateList4;
                colorStateList5 = colorStateList5;
                i9 = i9;
                str = str;
                str2 = str2;
            } else if (index == C1686R.styleable.EditText_et_supportPadding) {
                i9 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                colorStateList2 = colorStateList2;
                colorStateList = colorStateList;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
                colorStateList3 = colorStateList3;
                i8 = i8;
                colorStateList4 = colorStateList4;
                colorStateList5 = colorStateList5;
                str = str;
                str2 = str2;
            } else if (index == C1686R.styleable.EditText_et_supportTextSize) {
                i8 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                colorStateList2 = colorStateList2;
                colorStateList = colorStateList;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
                colorStateList3 = colorStateList3;
                colorStateList4 = colorStateList4;
                colorStateList5 = colorStateList5;
                i9 = i9;
                str = str;
                str2 = str2;
            } else if (index == C1686R.styleable.EditText_et_supportTextColor) {
                colorStateList4 = obtainStyledAttributes.getColorStateList(index);
                colorStateList2 = colorStateList2;
                colorStateList = colorStateList;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
                colorStateList3 = colorStateList3;
                i8 = i8;
                colorStateList5 = colorStateList5;
                i9 = i9;
                str = str;
                str2 = str2;
            } else if (index == C1686R.styleable.EditText_et_supportTextErrorColor) {
                colorStateList5 = obtainStyledAttributes.getColorStateList(index);
                colorStateList2 = colorStateList2;
                colorStateList = colorStateList;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
                colorStateList3 = colorStateList3;
                i8 = i8;
                colorStateList4 = colorStateList4;
                i9 = i9;
                str = str;
                str2 = str2;
            } else if (index == C1686R.styleable.EditText_et_supportTextAppearance) {
                getSupportView().setTextAppearance(context, obtainStyledAttributes.getResourceId(index, 0));
                colorStateList2 = colorStateList2;
                colorStateList = colorStateList;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
                colorStateList3 = colorStateList3;
                i8 = i8;
                colorStateList4 = colorStateList4;
                colorStateList5 = colorStateList5;
                i9 = i9;
                str = str;
                str2 = str2;
            } else if (index == C1686R.styleable.EditText_et_supportEllipsize) {
                switch (obtainStyledAttributes.getInteger(index, 0)) {
                    case 1:
                        getSupportView().setEllipsize(TextUtils.TruncateAt.START);
                        colorStateList2 = colorStateList2;
                        colorStateList = colorStateList;
                        i3 = i3;
                        i4 = i4;
                        i5 = i5;
                        i6 = i6;
                        i7 = i7;
                        colorStateList3 = colorStateList3;
                        i8 = i8;
                        colorStateList4 = colorStateList4;
                        colorStateList5 = colorStateList5;
                        i9 = i9;
                        str = str;
                        str2 = str2;
                        continue;
                    case 2:
                        getSupportView().setEllipsize(TextUtils.TruncateAt.MIDDLE);
                        colorStateList2 = colorStateList2;
                        colorStateList = colorStateList;
                        i3 = i3;
                        i4 = i4;
                        i5 = i5;
                        i6 = i6;
                        i7 = i7;
                        colorStateList3 = colorStateList3;
                        i8 = i8;
                        colorStateList4 = colorStateList4;
                        colorStateList5 = colorStateList5;
                        i9 = i9;
                        str = str;
                        str2 = str2;
                        continue;
                    case 3:
                        getSupportView().setEllipsize(TextUtils.TruncateAt.END);
                        colorStateList2 = colorStateList2;
                        colorStateList = colorStateList;
                        i3 = i3;
                        i4 = i4;
                        i5 = i5;
                        i6 = i6;
                        i7 = i7;
                        colorStateList3 = colorStateList3;
                        i8 = i8;
                        colorStateList4 = colorStateList4;
                        colorStateList5 = colorStateList5;
                        i9 = i9;
                        str = str;
                        str2 = str2;
                        continue;
                    case 4:
                        getSupportView().setEllipsize(TextUtils.TruncateAt.MARQUEE);
                        colorStateList2 = colorStateList2;
                        colorStateList = colorStateList;
                        i3 = i3;
                        i4 = i4;
                        i5 = i5;
                        i6 = i6;
                        i7 = i7;
                        colorStateList3 = colorStateList3;
                        i8 = i8;
                        colorStateList4 = colorStateList4;
                        colorStateList5 = colorStateList5;
                        i9 = i9;
                        str = str;
                        str2 = str2;
                        continue;
                    default:
                        getSupportView().setEllipsize(TextUtils.TruncateAt.END);
                        colorStateList2 = colorStateList2;
                        colorStateList = colorStateList;
                        i3 = i3;
                        i4 = i4;
                        i5 = i5;
                        i6 = i6;
                        i7 = i7;
                        colorStateList3 = colorStateList3;
                        i8 = i8;
                        colorStateList4 = colorStateList4;
                        colorStateList5 = colorStateList5;
                        i9 = i9;
                        str = str;
                        str2 = str2;
                        continue;
                }
            } else if (index == C1686R.styleable.EditText_et_supportMaxLines) {
                getSupportView().setMaxLines(obtainStyledAttributes.getInteger(index, 0));
                colorStateList2 = colorStateList2;
                colorStateList = colorStateList;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
                colorStateList3 = colorStateList3;
                i8 = i8;
                colorStateList4 = colorStateList4;
                colorStateList5 = colorStateList5;
                i9 = i9;
                str = str;
                str2 = str2;
            } else if (index == C1686R.styleable.EditText_et_supportLines) {
                getSupportView().setLines(obtainStyledAttributes.getInteger(index, 0));
                colorStateList2 = colorStateList2;
                colorStateList = colorStateList;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
                colorStateList3 = colorStateList3;
                i8 = i8;
                colorStateList4 = colorStateList4;
                colorStateList5 = colorStateList5;
                i9 = i9;
                str = str;
                str2 = str2;
            } else if (index == C1686R.styleable.EditText_et_supportSingleLine) {
                getSupportView().setSingleLine(obtainStyledAttributes.getBoolean(index, false));
                colorStateList2 = colorStateList2;
                colorStateList = colorStateList;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
                colorStateList3 = colorStateList3;
                i8 = i8;
                colorStateList4 = colorStateList4;
                colorStateList5 = colorStateList5;
                i9 = i9;
                str = str;
                str2 = str2;
            } else if (index == C1686R.styleable.EditText_et_supportMaxChars) {
                this.mSupportMaxChars = obtainStyledAttributes.getInteger(index, 0);
                colorStateList2 = colorStateList2;
                colorStateList = colorStateList;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
                colorStateList3 = colorStateList3;
                i8 = i8;
                colorStateList4 = colorStateList4;
                colorStateList5 = colorStateList5;
                i9 = i9;
                str = str;
                str2 = str2;
            } else if (index == C1686R.styleable.EditText_et_helper) {
                str = obtainStyledAttributes.getString(index);
                colorStateList2 = colorStateList2;
                colorStateList = colorStateList;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
                colorStateList3 = colorStateList3;
                i8 = i8;
                colorStateList4 = colorStateList4;
                colorStateList5 = colorStateList5;
                i9 = i9;
                str2 = str2;
            } else if (index == C1686R.styleable.EditText_et_error) {
                str2 = obtainStyledAttributes.getString(index);
                colorStateList2 = colorStateList2;
                colorStateList = colorStateList;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
                colorStateList3 = colorStateList3;
                i8 = i8;
                colorStateList4 = colorStateList4;
                colorStateList5 = colorStateList5;
                i9 = i9;
                str = str;
            } else if (index == C1686R.styleable.EditText_et_inputId) {
                this.mInputView.setId(obtainStyledAttributes.getResourceId(index, 0));
                colorStateList2 = colorStateList2;
                colorStateList = colorStateList;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
                colorStateList3 = colorStateList3;
                i8 = i8;
                colorStateList4 = colorStateList4;
                colorStateList5 = colorStateList5;
                i9 = i9;
                str = str;
                str2 = str2;
            } else if (index == C1686R.styleable.EditText_et_dividerColor) {
                colorStateList = obtainStyledAttributes.getColorStateList(index);
                colorStateList2 = colorStateList2;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
                colorStateList3 = colorStateList3;
                i8 = i8;
                colorStateList4 = colorStateList4;
                colorStateList5 = colorStateList5;
                i9 = i9;
                str = str;
                str2 = str2;
            } else if (index == C1686R.styleable.EditText_et_dividerErrorColor) {
                colorStateList2 = obtainStyledAttributes.getColorStateList(index);
                colorStateList = colorStateList;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
                colorStateList3 = colorStateList3;
                i8 = i8;
                colorStateList4 = colorStateList4;
                colorStateList5 = colorStateList5;
                i9 = i9;
                str = str;
                str2 = str2;
            } else if (index == C1686R.styleable.EditText_et_dividerHeight) {
                i3 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                colorStateList2 = colorStateList2;
                colorStateList = colorStateList;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
                colorStateList3 = colorStateList3;
                i8 = i8;
                colorStateList4 = colorStateList4;
                colorStateList5 = colorStateList5;
                i9 = i9;
                str = str;
                str2 = str2;
            } else if (index == C1686R.styleable.EditText_et_dividerPadding) {
                i4 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                colorStateList2 = colorStateList2;
                colorStateList = colorStateList;
                i3 = i3;
                i5 = i5;
                i6 = i6;
                i7 = i7;
                colorStateList3 = colorStateList3;
                i8 = i8;
                colorStateList4 = colorStateList4;
                colorStateList5 = colorStateList5;
                i9 = i9;
                str = str;
                str2 = str2;
            } else if (index == C1686R.styleable.EditText_et_dividerAnimDuration) {
                i5 = obtainStyledAttributes.getInteger(index, 0);
                colorStateList2 = colorStateList2;
                colorStateList = colorStateList;
                i3 = i3;
                i4 = i4;
                i6 = i6;
                i7 = i7;
                colorStateList3 = colorStateList3;
                i8 = i8;
                colorStateList4 = colorStateList4;
                colorStateList5 = colorStateList5;
                i9 = i9;
                str = str;
                str2 = str2;
            } else {
                colorStateList2 = colorStateList2;
                colorStateList = colorStateList;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
                colorStateList3 = colorStateList3;
                i8 = i8;
                colorStateList4 = colorStateList4;
                colorStateList5 = colorStateList5;
                i9 = i9;
                str = str;
                str2 = str2;
                if (index == C1686R.styleable.EditText_et_dividerCompoundPadding) {
                    this.mDividerCompoundPadding = obtainStyledAttributes.getBoolean(index, true);
                    str2 = str2;
                    str = str;
                    i9 = i9;
                    colorStateList5 = colorStateList5;
                    colorStateList4 = colorStateList4;
                    i8 = i8;
                    colorStateList3 = colorStateList3;
                    i7 = i7;
                    i6 = i6;
                    i5 = i5;
                    i4 = i4;
                    i3 = i3;
                    colorStateList = colorStateList;
                    colorStateList2 = colorStateList2;
                }
            }
        }
        obtainStyledAttributes.recycle();
        if (this.mInputView.getId() == 0) {
            this.mInputView.setId(ViewUtil.generateViewId());
        }
        if (this.mDivider == null) {
            this.mDividerColors = colorStateList;
            this.mDividerErrorColors = colorStateList2;
            if (this.mDividerColors == null) {
                this.mDividerColors = new ColorStateList(new int[]{new int[]{-16842908}, new int[]{16842908, 16842910}}, new int[]{ThemeUtil.colorControlNormal(context, ViewCompat.MEASURED_STATE_MASK), ThemeUtil.colorControlActivated(context, ViewCompat.MEASURED_STATE_MASK)});
            }
            if (this.mDividerErrorColors == null) {
                this.mDividerErrorColors = ColorStateList.valueOf(ThemeUtil.colorAccent(context, SupportMenu.CATEGORY_MASK));
            }
            if (i3 < 0) {
                i3 = 0;
            }
            int i11 = i4;
            if (i4 < 0) {
                i11 = 0;
            }
            int i12 = i5;
            if (i5 < 0) {
                i12 = context.getResources().getInteger(17694720);
            }
            this.mDividerPadding = i11;
            this.mInputView.setPadding(0, 0, 0, this.mDividerPadding + i3);
            this.mDivider = new DividerDrawable(i3, this.mDividerCompoundPadding ? this.mInputView.getTotalPaddingLeft() : 0, this.mDividerCompoundPadding ? this.mInputView.getTotalPaddingRight() : 0, this.mDividerColors, i12);
            this.mDivider.setInEditMode(isInEditMode());
            this.mDivider.setAnimEnable(false);
            ViewUtil.setBackground(this.mInputView, this.mDivider);
            this.mDivider.setAnimEnable(true);
        } else {
            if (i3 >= 0 || i4 >= 0) {
                int i13 = i3;
                if (i3 < 0) {
                    i13 = this.mDivider.getDividerHeight();
                }
                if (i4 >= 0) {
                    this.mDividerPadding = i4;
                }
                this.mInputView.setPadding(0, 0, 0, this.mDividerPadding + i13);
                this.mDivider.setDividerHeight(i13);
                this.mDivider.setPadding(this.mDividerCompoundPadding ? this.mInputView.getTotalPaddingLeft() : 0, this.mDividerCompoundPadding ? this.mInputView.getTotalPaddingRight() : 0);
            }
            if (colorStateList != null) {
                this.mDividerColors = colorStateList;
            }
            if (colorStateList2 != null) {
                this.mDividerErrorColors = colorStateList2;
            }
            this.mDivider.setColor(getError() == null ? this.mDividerColors : this.mDividerErrorColors);
            if (i5 >= 0) {
                this.mDivider.setAnimationDuration(i5);
            }
        }
        if (i6 >= 0) {
            getLabelView().setPadding(this.mDivider.getPaddingLeft(), 0, this.mDivider.getPaddingRight(), i6);
        }
        if (i7 >= 0) {
            getLabelView().setTextSize(0, i7);
        }
        if (colorStateList3 != null) {
            getLabelView().setTextColor(colorStateList3);
        }
        if (this.mLabelEnable) {
            this.mLabelVisible = true;
            getLabelView().setText(this.mInputView.getHint());
            addView(getLabelView(), 0, new ViewGroup.LayoutParams(-1, -2));
            setLabelVisible(!TextUtils.isEmpty(this.mInputView.getText().toString()), false);
        }
        if (i8 >= 0) {
            getSupportView().setTextSize(0, i8);
        }
        if (colorStateList4 != null) {
            this.mSupportColors = colorStateList4;
        } else if (this.mSupportColors == null) {
            this.mSupportColors = context.getResources().getColorStateList(C1686R.color.abc_secondary_text_material_light);
        }
        if (colorStateList5 != null) {
            this.mSupportErrorColors = colorStateList5;
        } else if (this.mSupportErrorColors == null) {
            this.mSupportErrorColors = ColorStateList.valueOf(ThemeUtil.colorAccent(context, SupportMenu.CATEGORY_MASK));
        }
        if (i9 >= 0) {
            getSupportView().setPadding(this.mDivider.getPaddingLeft(), i9, this.mDivider.getPaddingRight(), 0);
        }
        if (str == null && str2 == null) {
            getSupportView().setTextColor(getError() == null ? this.mSupportColors : this.mSupportErrorColors);
        } else if (str != null) {
            setHelper(str);
        } else {
            setError(str2);
        }
        if (this.mSupportMode != 0) {
            switch (this.mSupportMode) {
                case 1:
                case 2:
                    getSupportView().setGravity(GravityCompat.START);
                    break;
                case 3:
                    getSupportView().setGravity(GravityCompat.END);
                    updateCharCounter(this.mInputView.getText().length());
                    break;
            }
            addView(getSupportView(), new ViewGroup.LayoutParams(-1, -2));
        }
        addView(this.mInputView, new ViewGroup.LayoutParams(-1, -2));
        requestLayout();
    }

    public void beginBatchEdit() {
        this.mInputView.beginBatchEdit();
    }

    public boolean bringPointIntoView(int i) {
        return this.mInputView.bringPointIntoView(i);
    }

    public boolean canCopy() {
        return !hasPasswordTransformationMethod() && getText().length() > 0 && hasSelection();
    }

    public boolean canCut() {
        return !hasPasswordTransformationMethod() && getText().length() > 0 && hasSelection() && getKeyListener() != null;
    }

    public boolean canPaste() {
        return getKeyListener() != null && getSelectionStart() >= 0 && getSelectionEnd() >= 0 && ((ClipboardManager) getContext().getSystemService("clipboard")).hasPrimaryClip();
    }

    @Override // android.view.View
    public void cancelLongPress() {
        this.mInputView.cancelLongPress();
    }

    public void clearComposingText() {
        this.mInputView.clearComposingText();
    }

    public void clearError() {
        setError(null);
    }

    public void clearListSelection() {
        if (this.mAutoCompleteMode != 0) {
            ((AutoCompleteTextView) this.mInputView).clearListSelection();
        }
    }

    @Override // android.view.View
    public void computeScroll() {
        this.mInputView.computeScroll();
    }

    protected CharSequence convertSelectionToString(Object obj) {
        switch (this.mAutoCompleteMode) {
            case 1:
                return ((InternalAutoCompleteTextView) this.mInputView).superConvertSelectionToString(obj);
            case 2:
                return ((InternalMultiAutoCompleteTextView) this.mInputView).superConvertSelectionToString(obj);
            default:
                return null;
        }
    }

    protected float convertToLocalHorizontalCoordinate(float f) {
        return Math.min((getWidth() - getTotalPaddingRight()) - 1, Math.max(0.0f, f - getTotalPaddingLeft())) + getScrollX();
    }

    @Override // android.view.ViewGroup
    public void debug(int i) {
        this.mInputView.debug(i);
    }

    public boolean didTouchFocusSelect() {
        return this.mInputView.didTouchFocusSelect();
    }

    public void dismissDropDown() {
        if (this.mAutoCompleteMode != 0) {
            ((AutoCompleteTextView) this.mInputView).dismissDropDown();
        }
    }

    public void endBatchEdit() {
        this.mInputView.endBatchEdit();
    }

    public boolean enoughToFilter() {
        if (this.mAutoCompleteMode == 0) {
            return false;
        }
        return ((AutoCompleteTextView) this.mInputView).enoughToFilter();
    }

    public void extendSelection(int i) {
        this.mInputView.extendSelection(i);
    }

    public boolean extractText(ExtractedTextRequest extractedTextRequest, ExtractedText extractedText) {
        return this.mInputView.extractText(extractedTextRequest, extractedText);
    }

    @Override // android.view.ViewGroup, android.view.View
    @TargetApi(14)
    public void findViewsWithText(ArrayList<View> arrayList, CharSequence charSequence, int i) {
        if (Build.VERSION.SDK_INT >= 14) {
            this.mInputView.findViewsWithText(arrayList, charSequence, i);
        }
    }

    public ListAdapter getAdapter() {
        if (this.mAutoCompleteMode == 0) {
            return null;
        }
        return ((AutoCompleteTextView) this.mInputView).getAdapter();
    }

    public final int getAutoLinkMask() {
        return this.mInputView.getAutoLinkMask();
    }

    @Override // android.view.View
    public int getBaseline() {
        return this.mInputView.getBaseline();
    }

    @TargetApi(16)
    public CharSequence getCompletionHint() {
        if (this.mAutoCompleteMode == 0 || Build.VERSION.SDK_INT < 16) {
            return null;
        }
        return ((AutoCompleteTextView) this.mInputView).getCompletionHint();
    }

    public int getCompoundDrawablePadding() {
        return this.mInputView.getCompoundDrawablePadding();
    }

    public Drawable[] getCompoundDrawables() {
        return this.mInputView.getCompoundDrawables();
    }

    @TargetApi(17)
    public Drawable[] getCompoundDrawablesRelative() {
        return Build.VERSION.SDK_INT >= 17 ? this.mInputView.getCompoundDrawablesRelative() : this.mInputView.getCompoundDrawables();
    }

    public int getCompoundPaddingBottom() {
        return this.mInputView.getCompoundPaddingBottom();
    }

    @TargetApi(17)
    public int getCompoundPaddingEnd() {
        return Build.VERSION.SDK_INT >= 17 ? this.mInputView.getCompoundPaddingEnd() : this.mInputView.getCompoundPaddingRight();
    }

    public int getCompoundPaddingLeft() {
        return this.mInputView.getCompoundPaddingLeft();
    }

    public int getCompoundPaddingRight() {
        return this.mInputView.getCompoundPaddingRight();
    }

    @TargetApi(17)
    public int getCompoundPaddingStart() {
        return Build.VERSION.SDK_INT >= 17 ? this.mInputView.getCompoundPaddingStart() : this.mInputView.getCompoundPaddingLeft();
    }

    public int getCompoundPaddingTop() {
        return this.mInputView.getCompoundPaddingTop();
    }

    public final int getCurrentHintTextColor() {
        return this.mInputView.getCurrentHintTextColor();
    }

    public final int getCurrentTextColor() {
        return this.mInputView.getCurrentTextColor();
    }

    @TargetApi(11)
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        if (Build.VERSION.SDK_INT >= 11) {
            return this.mInputView.getCustomSelectionActionModeCallback();
        }
        return null;
    }

    public int getDropDownAnchor() {
        if (this.mAutoCompleteMode == 0) {
            return 0;
        }
        return ((AutoCompleteTextView) this.mInputView).getDropDownAnchor();
    }

    public Drawable getDropDownBackground() {
        if (this.mAutoCompleteMode == 0) {
            return null;
        }
        return ((AutoCompleteTextView) this.mInputView).getDropDownBackground();
    }

    public int getDropDownHeight() {
        if (this.mAutoCompleteMode == 0) {
            return 0;
        }
        return ((AutoCompleteTextView) this.mInputView).getDropDownHeight();
    }

    public int getDropDownHorizontalOffset() {
        if (this.mAutoCompleteMode == 0) {
            return 0;
        }
        return ((AutoCompleteTextView) this.mInputView).getDropDownHorizontalOffset();
    }

    public int getDropDownVerticalOffset() {
        if (this.mAutoCompleteMode == 0) {
            return 0;
        }
        return ((AutoCompleteTextView) this.mInputView).getDropDownVerticalOffset();
    }

    public int getDropDownWidth() {
        if (this.mAutoCompleteMode == 0) {
            return 0;
        }
        return ((AutoCompleteTextView) this.mInputView).getDropDownWidth();
    }

    public Editable getEditableText() {
        return this.mInputView.getEditableText();
    }

    public TextUtils.TruncateAt getEllipsize() {
        return this.mInputView.getEllipsize();
    }

    public CharSequence getError() {
        return this.mSupportError;
    }

    public int getExtendedPaddingBottom() {
        return this.mInputView.getExtendedPaddingBottom();
    }

    public int getExtendedPaddingTop() {
        return this.mInputView.getExtendedPaddingTop();
    }

    protected Filter getFilter() {
        switch (this.mAutoCompleteMode) {
            case 1:
                return ((InternalAutoCompleteTextView) this.mInputView).superGetFilter();
            case 2:
                return ((InternalMultiAutoCompleteTextView) this.mInputView).superGetFilter();
            default:
                return null;
        }
    }

    public InputFilter[] getFilters() {
        return this.mInputView.getFilters();
    }

    @Override // android.view.View
    public void getFocusedRect(@NonNull Rect rect) {
        this.mInputView.getFocusedRect(rect);
    }

    @TargetApi(21)
    public String getFontFeatureSettings() {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.mInputView.getFontFeatureSettings();
        }
        return null;
    }

    public boolean getFreezesText() {
        return this.mInputView.getFreezesText();
    }

    public int getGravity() {
        return this.mInputView.getGravity();
    }

    public CharSequence getHelper() {
        return this.mSupportHelper;
    }

    @TargetApi(16)
    public int getHighlightColor() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.mInputView.getHighlightColor();
        }
        return 0;
    }

    public CharSequence getHint() {
        return this.mInputView.getHint();
    }

    public final ColorStateList getHintTextColors() {
        return this.mInputView.getHintTextColors();
    }

    public int getImeActionId() {
        return this.mInputView.getImeActionId();
    }

    public CharSequence getImeActionLabel() {
        return this.mInputView.getImeActionLabel();
    }

    public int getImeOptions() {
        return this.mInputView.getImeOptions();
    }

    @TargetApi(16)
    public boolean getIncludeFontPadding() {
        return Build.VERSION.SDK_INT >= 16 && this.mInputView.getIncludeFontPadding();
    }

    public Bundle getInputExtras(boolean z) {
        return this.mInputView.getInputExtras(z);
    }

    public int getInputType() {
        return this.mInputView.getInputType();
    }

    public final KeyListener getKeyListener() {
        return this.mInputView.getKeyListener();
    }

    public final Layout getLayout() {
        return this.mInputView.getLayout();
    }

    @TargetApi(21)
    public float getLetterSpacing() {
        return Build.VERSION.SDK_INT >= 21 ? this.mInputView.getLetterSpacing() : 0.0f;
    }

    protected int getLineAtCoordinate(float f) {
        return getLayout().getLineForVertical((int) (Math.min((getHeight() - getTotalPaddingBottom()) - 1, Math.max(0.0f, f - getTotalPaddingTop())) + getScrollY()));
    }

    public int getLineBounds(int i, Rect rect) {
        return this.mInputView.getLineBounds(i, rect);
    }

    public int getLineCount() {
        return this.mInputView.getLineCount();
    }

    public int getLineHeight() {
        return this.mInputView.getLineHeight();
    }

    @TargetApi(16)
    public float getLineSpacingExtra() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.mInputView.getLineSpacingExtra();
        }
        return 0.0f;
    }

    @TargetApi(16)
    public float getLineSpacingMultiplier() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.mInputView.getLineSpacingMultiplier();
        }
        return 0.0f;
    }

    public final ColorStateList getLinkTextColors() {
        return this.mInputView.getLinkTextColors();
    }

    public final boolean getLinksClickable() {
        return this.mInputView.getLinksClickable();
    }

    public int getListSelection() {
        if (this.mAutoCompleteMode == 0) {
            return 0;
        }
        return ((AutoCompleteTextView) this.mInputView).getListSelection();
    }

    @TargetApi(16)
    public int getMarqueeRepeatLimit() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.mInputView.getMarqueeRepeatLimit();
        }
        return -1;
    }

    @TargetApi(16)
    public int getMaxEms() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.mInputView.getMaxEms();
        }
        return -1;
    }

    @TargetApi(16)
    public int getMaxHeight() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.mInputView.getMaxHeight();
        }
        return -1;
    }

    @TargetApi(16)
    public int getMaxLines() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.mInputView.getMaxLines();
        }
        return -1;
    }

    @TargetApi(16)
    public int getMaxWidth() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.mInputView.getMaxWidth();
        }
        return -1;
    }

    @TargetApi(16)
    public int getMinEms() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.mInputView.getMinEms();
        }
        return -1;
    }

    @TargetApi(16)
    public int getMinHeight() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.mInputView.getMinHeight();
        }
        return -1;
    }

    @TargetApi(16)
    public int getMinLines() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.mInputView.getMinLines();
        }
        return -1;
    }

    @TargetApi(16)
    public int getMinWidth() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.mInputView.getMinWidth();
        }
        return -1;
    }

    public final MovementMethod getMovementMethod() {
        return this.mInputView.getMovementMethod();
    }

    protected int getOffsetAtCoordinate(int i, float f) {
        return getLayout().getOffsetForHorizontal(i, convertToLocalHorizontalCoordinate(f));
    }

    @TargetApi(14)
    public int getOffsetForPosition(float f, float f2) {
        if (getLayout() == null) {
            return -1;
        }
        return getOffsetAtCoordinate(getLineAtCoordinate(f2), f);
    }

    public AdapterView.OnItemClickListener getOnItemClickListener() {
        if (this.mAutoCompleteMode == 0) {
            return null;
        }
        return ((AutoCompleteTextView) this.mInputView).getOnItemClickListener();
    }

    public AdapterView.OnItemSelectedListener getOnItemSelectedListener() {
        if (this.mAutoCompleteMode == 0) {
            return null;
        }
        return ((AutoCompleteTextView) this.mInputView).getOnItemSelectedListener();
    }

    public TextPaint getPaint() {
        return this.mInputView.getPaint();
    }

    public int getPaintFlags() {
        return this.mInputView.getPaintFlags();
    }

    public String getPrivateImeOptions() {
        return this.mInputView.getPrivateImeOptions();
    }

    public int getSelectionEnd() {
        return this.mInputView.getSelectionEnd();
    }

    public int getSelectionStart() {
        return this.mInputView.getSelectionStart();
    }

    @TargetApi(16)
    public int getShadowColor() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.mInputView.getShadowColor();
        }
        return 0;
    }

    @TargetApi(16)
    public float getShadowDx() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.mInputView.getShadowDx();
        }
        return 0.0f;
    }

    @TargetApi(16)
    public float getShadowDy() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.mInputView.getShadowDy();
        }
        return 0.0f;
    }

    @TargetApi(16)
    public float getShadowRadius() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.mInputView.getShadowRadius();
        }
        return 0.0f;
    }

    @TargetApi(21)
    public final boolean getShowSoftInputOnFocus() {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.mInputView.getShowSoftInputOnFocus();
        }
        return true;
    }

    public Editable getText() {
        return this.mInputView.getText();
    }

    public final ColorStateList getTextColors() {
        return this.mInputView.getTextColors();
    }

    @TargetApi(17)
    public Locale getTextLocale() {
        return Build.VERSION.SDK_INT >= 17 ? this.mInputView.getTextLocale() : Locale.getDefault();
    }

    public float getTextScaleX() {
        return this.mInputView.getTextScaleX();
    }

    public float getTextSize() {
        return this.mInputView.getTextSize();
    }

    public int getThreshold() {
        if (this.mAutoCompleteMode == 0) {
            return 0;
        }
        return ((AutoCompleteTextView) this.mInputView).getThreshold();
    }

    public int getTotalPaddingBottom() {
        return getPaddingBottom() + this.mInputView.getTotalPaddingBottom() + (this.mSupportMode != 0 ? this.mSupportView.getHeight() : 0);
    }

    @TargetApi(17)
    public int getTotalPaddingEnd() {
        return Build.VERSION.SDK_INT >= 17 ? getPaddingEnd() + this.mInputView.getTotalPaddingEnd() : getTotalPaddingRight();
    }

    public int getTotalPaddingLeft() {
        return getPaddingLeft() + this.mInputView.getTotalPaddingLeft();
    }

    public int getTotalPaddingRight() {
        return getPaddingRight() + this.mInputView.getTotalPaddingRight();
    }

    @TargetApi(17)
    public int getTotalPaddingStart() {
        return Build.VERSION.SDK_INT >= 17 ? getPaddingStart() + this.mInputView.getTotalPaddingStart() : getTotalPaddingLeft();
    }

    public int getTotalPaddingTop() {
        return getPaddingTop() + this.mInputView.getTotalPaddingTop() + (this.mLabelEnable ? this.mLabelView.getHeight() : 0);
    }

    public final TransformationMethod getTransformationMethod() {
        return this.mInputView.getTransformationMethod();
    }

    public Typeface getTypeface() {
        return this.mInputView.getTypeface();
    }

    public URLSpan[] getUrls() {
        return this.mInputView.getUrls();
    }

    public AutoCompleteTextView.Validator getValidator() {
        if (this.mAutoCompleteMode == 0) {
            return null;
        }
        return ((AutoCompleteTextView) this.mInputView).getValidator();
    }

    @Override // android.view.View
    @TargetApi(16)
    public boolean hasOverlappingRendering() {
        return Build.VERSION.SDK_INT >= 16 && this.mInputView.hasOverlappingRendering();
    }

    public boolean hasSelection() {
        return this.mInputView.hasSelection();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.rey.material.widget.FrameLayout
    @TargetApi(16)
    public void init(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mLabelEnable = false;
        this.mLabelVisible = false;
        this.mSupportMode = 0;
        this.mAutoCompleteMode = 0;
        this.mDividerCompoundPadding = true;
        this.mDividerPadding = -1;
        this.mIsRtl = false;
        super.init(context, attributeSet, i, i2);
        if (isInEditMode()) {
            applyStyle(C1686R.C1691style.Material_Widget_EditText);
        }
    }

    @TargetApi(16)
    public boolean isCursorVisible() {
        return Build.VERSION.SDK_INT < 16 || this.mInputView.isCursorVisible();
    }

    public boolean isInputMethodTarget() {
        return this.mInputView.isInputMethodTarget();
    }

    public boolean isPerformingCompletion() {
        if (this.mAutoCompleteMode == 0) {
            return false;
        }
        return ((AutoCompleteTextView) this.mInputView).isPerformingCompletion();
    }

    public boolean isPopupShowing() {
        if (this.mAutoCompleteMode == 0) {
            return false;
        }
        return ((AutoCompleteTextView) this.mInputView).isPopupShowing();
    }

    @TargetApi(14)
    public boolean isSuggestionsEnabled() {
        return Build.VERSION.SDK_INT >= 14 && this.mInputView.isSuggestionsEnabled();
    }

    @TargetApi(11)
    public boolean isTextSelectable() {
        return Build.VERSION.SDK_INT < 11 || this.mInputView.isTextSelectable();
    }

    public int length() {
        return this.mInputView.length();
    }

    public boolean moveCursorToVisibleOffset() {
        return this.mInputView.moveCursorToVisibleOffset();
    }

    public void onCommitCompletion(CompletionInfo completionInfo) {
        if (this.mAutoCompleteMode == 0) {
            ((InternalEditText) this.mInputView).superOnCommitCompletion(completionInfo);
        } else if (this.mAutoCompleteMode == 1) {
            ((InternalAutoCompleteTextView) this.mInputView).superOnCommitCompletion(completionInfo);
        } else {
            ((InternalMultiAutoCompleteTextView) this.mInputView).superOnCommitCompletion(completionInfo);
        }
    }

    public void onCommitCorrection(CorrectionInfo correctionInfo) {
        if (this.mAutoCompleteMode == 0) {
            ((InternalEditText) this.mInputView).superOnCommitCorrection(correctionInfo);
        } else if (this.mAutoCompleteMode == 1) {
            ((InternalAutoCompleteTextView) this.mInputView).superOnCommitCorrection(correctionInfo);
        } else {
            ((InternalMultiAutoCompleteTextView) this.mInputView).superOnCommitCorrection(correctionInfo);
        }
    }

    @Override // android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return this.mAutoCompleteMode == 0 ? ((InternalEditText) this.mInputView).superOnCreateInputConnection(editorInfo) : this.mAutoCompleteMode == 1 ? ((InternalAutoCompleteTextView) this.mInputView).superOnCreateInputConnection(editorInfo) : ((InternalMultiAutoCompleteTextView) this.mInputView).superOnCreateInputConnection(editorInfo);
    }

    public void onEditorAction(int i) {
        if (this.mAutoCompleteMode == 0) {
            ((InternalEditText) this.mInputView).superOnEditorAction(i);
        } else if (this.mAutoCompleteMode == 1) {
            ((InternalAutoCompleteTextView) this.mInputView).superOnEditorAction(i);
        } else {
            ((InternalMultiAutoCompleteTextView) this.mInputView).superOnEditorAction(i);
        }
    }

    public void onFilterComplete(int i) {
        if (this.mAutoCompleteMode == 1) {
            ((InternalAutoCompleteTextView) this.mInputView).superOnFilterComplete(i);
        } else if (this.mAutoCompleteMode == 2) {
            ((InternalMultiAutoCompleteTextView) this.mInputView).superOnFilterComplete(i);
        }
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return this.mAutoCompleteMode == 0 ? ((InternalEditText) this.mInputView).superOnKeyDown(i, keyEvent) : this.mAutoCompleteMode == 1 ? ((InternalAutoCompleteTextView) this.mInputView).superOnKeyDown(i, keyEvent) : ((InternalMultiAutoCompleteTextView) this.mInputView).superOnKeyDown(i, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyMultiple(int i, int i2, KeyEvent keyEvent) {
        return this.mAutoCompleteMode == 0 ? ((InternalEditText) this.mInputView).superOnKeyMultiple(i, i2, keyEvent) : this.mAutoCompleteMode == 1 ? ((InternalAutoCompleteTextView) this.mInputView).superOnKeyMultiple(i, i2, keyEvent) : ((InternalMultiAutoCompleteTextView) this.mInputView).superOnKeyMultiple(i, i2, keyEvent);
    }

    @Override // android.view.View
    public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
        return this.mAutoCompleteMode == 0 ? ((InternalEditText) this.mInputView).superOnKeyPreIme(i, keyEvent) : this.mAutoCompleteMode == 1 ? ((InternalAutoCompleteTextView) this.mInputView).superOnKeyPreIme(i, keyEvent) : ((InternalMultiAutoCompleteTextView) this.mInputView).superOnKeyPreIme(i, keyEvent);
    }

    @Override // android.view.View
    public boolean onKeyShortcut(int i, KeyEvent keyEvent) {
        return this.mAutoCompleteMode == 0 ? ((InternalEditText) this.mInputView).superOnKeyShortcut(i, keyEvent) : this.mAutoCompleteMode == 1 ? ((InternalAutoCompleteTextView) this.mInputView).superOnKeyShortcut(i, keyEvent) : ((InternalMultiAutoCompleteTextView) this.mInputView).superOnKeyShortcut(i, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return this.mAutoCompleteMode == 0 ? ((InternalEditText) this.mInputView).superOnKeyUp(i, keyEvent) : this.mAutoCompleteMode == 1 ? ((InternalAutoCompleteTextView) this.mInputView).superOnKeyUp(i, keyEvent) : ((InternalMultiAutoCompleteTextView) this.mInputView).superOnKeyUp(i, keyEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft = getPaddingLeft();
        int paddingRight = (i3 - i) - getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = (i4 - i2) - getPaddingBottom();
        int i5 = paddingTop;
        if (this.mLabelView != null) {
            this.mLabelView.layout(paddingLeft, paddingTop, paddingRight, this.mLabelView.getMeasuredHeight() + paddingTop);
            i5 = paddingTop + this.mLabelView.getMeasuredHeight();
        }
        int i6 = paddingBottom;
        if (this.mSupportView != null) {
            this.mSupportView.layout(paddingLeft, paddingBottom - this.mSupportView.getMeasuredHeight(), paddingRight, paddingBottom);
            i6 = paddingBottom - this.mSupportView.getMeasuredHeight();
        }
        this.mInputView.layout(paddingLeft, i5, paddingRight, i6);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode != 0) {
            i = View.MeasureSpec.makeMeasureSpec((size - getPaddingLeft()) - getPaddingRight(), mode);
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        boolean z = true;
        boolean z2 = (this.mLabelView == null || this.mLabelView.getLayoutParams() == null) ? false : true;
        if (this.mSupportView == null || this.mSupportView.getLayoutParams() == null) {
            z = false;
        }
        if (z2) {
            this.mLabelView.measure(i, makeMeasureSpec);
            i3 = this.mLabelView.getMeasuredWidth();
            i4 = this.mLabelView.getMeasuredHeight();
        } else {
            i3 = 0;
            i4 = 0;
        }
        this.mInputView.measure(i, makeMeasureSpec);
        int measuredWidth = this.mInputView.getMeasuredWidth();
        int measuredHeight = this.mInputView.getMeasuredHeight();
        if (z) {
            this.mSupportView.measure(i, makeMeasureSpec);
            i6 = this.mSupportView.getMeasuredWidth();
            i5 = this.mSupportView.getMeasuredHeight();
        } else {
            i6 = 0;
            i5 = 0;
        }
        if (mode == Integer.MIN_VALUE) {
            i7 = Math.min(size, Math.max(i3, Math.max(measuredWidth, i6)) + getPaddingLeft() + getPaddingRight());
        } else if (mode != 0) {
            i7 = size;
            if (mode != 1073741824) {
                i7 = 0;
            }
        } else {
            i7 = getPaddingRight() + Math.max(i3, Math.max(measuredWidth, i6)) + getPaddingLeft();
        }
        int paddingLeft = (i7 - getPaddingLeft()) - getPaddingRight();
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        int i9 = i4;
        if (z2) {
            i9 = i4;
            if (this.mLabelView.getWidth() != paddingLeft) {
                this.mLabelView.measure(makeMeasureSpec2, makeMeasureSpec);
                i9 = this.mLabelView.getMeasuredHeight();
            }
        }
        int i10 = i5;
        if (z) {
            i10 = i5;
            if (this.mSupportView.getWidth() != paddingLeft) {
                this.mSupportView.measure(makeMeasureSpec2, makeMeasureSpec);
                i10 = this.mSupportView.getMeasuredHeight();
            }
        }
        if (mode2 == Integer.MIN_VALUE) {
            i8 = Math.min(size2, measuredHeight + i9 + i10 + getPaddingTop() + getPaddingBottom());
        } else if (mode2 != 0) {
            i8 = size2;
            if (mode2 != 1073741824) {
                i8 = 0;
            }
        } else {
            i8 = measuredHeight + i9 + i10 + getPaddingTop() + getPaddingBottom();
        }
        setMeasuredDimension(i7, i8);
        int paddingTop = (((i8 - i9) - i10) - getPaddingTop()) - getPaddingBottom();
        if (this.mInputView.getMeasuredWidth() != paddingLeft || this.mInputView.getMeasuredHeight() != paddingTop) {
            this.mInputView.measure(makeMeasureSpec2, View.MeasureSpec.makeMeasureSpec(paddingTop, 1073741824));
        }
    }

    @Override // android.view.View
    @TargetApi(17)
    public void onRtlPropertiesChanged(int i) {
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        if (this.mIsRtl != z) {
            this.mIsRtl = z;
            if (Build.VERSION.SDK_INT >= 17) {
                int i2 = 3;
                if (this.mLabelView != null) {
                    this.mLabelView.setTextDirection(this.mIsRtl ? 4 : 3);
                }
                if (this.mSupportView != null) {
                    LabelView labelView = this.mSupportView;
                    if (this.mIsRtl) {
                        i2 = 4;
                    }
                    labelView.setTextDirection(i2);
                }
            }
            requestLayout();
        }
    }

    protected void onSelectionChanged(int i, int i2) {
        if (this.mInputView != null) {
            if (this.mInputView instanceof InternalEditText) {
                ((InternalEditText) this.mInputView).superOnSelectionChanged(i, i2);
            } else if (this.mInputView instanceof InternalAutoCompleteTextView) {
                ((InternalAutoCompleteTextView) this.mInputView).superOnSelectionChanged(i, i2);
            } else {
                ((InternalMultiAutoCompleteTextView) this.mInputView).superOnSelectionChanged(i, i2);
            }
            if (this.mOnSelectionChangedListener != null) {
                this.mOnSelectionChangedListener.onSelectionChanged(this, i, i2);
            }
        }
    }

    public void performCompletion() {
        if (this.mAutoCompleteMode != 0) {
            ((AutoCompleteTextView) this.mInputView).performCompletion();
        }
    }

    protected void performFiltering(CharSequence charSequence, int i) {
        switch (this.mAutoCompleteMode) {
            case 1:
                ((InternalAutoCompleteTextView) this.mInputView).superPerformFiltering(charSequence, i);
                return;
            case 2:
                ((InternalMultiAutoCompleteTextView) this.mInputView).superPerformFiltering(charSequence, i);
                return;
            default:
                return;
        }
    }

    protected void performFiltering(CharSequence charSequence, int i, int i2, int i3) {
        if (this.mAutoCompleteMode == 2) {
            ((InternalMultiAutoCompleteTextView) this.mInputView).superPerformFiltering(charSequence, i, i2, i3);
        }
    }

    public void performValidation() {
        if (this.mAutoCompleteMode != 0) {
            ((AutoCompleteTextView) this.mInputView).performValidation();
        }
    }

    public void removeTextChangedListener(TextWatcher textWatcher) {
        this.mInputView.removeTextChangedListener(textWatcher);
    }

    protected void replaceText(CharSequence charSequence) {
        switch (this.mAutoCompleteMode) {
            case 1:
                ((InternalAutoCompleteTextView) this.mInputView).superReplaceText(charSequence);
                return;
            case 2:
                ((InternalMultiAutoCompleteTextView) this.mInputView).superReplaceText(charSequence);
                return;
            default:
                return;
        }
    }

    public void selectAll() {
        this.mInputView.selectAll();
    }

    public <T extends ListAdapter & Filterable> void setAdapter(T t) {
        if (this.mAutoCompleteMode != 0) {
            ((AutoCompleteTextView) this.mInputView).setAdapter(t);
        }
    }

    @TargetApi(14)
    public void setAllCaps(boolean z) {
        if (Build.VERSION.SDK_INT >= 14) {
            this.mInputView.setAllCaps(z);
        }
    }

    public final void setAutoLinkMask(int i) {
        this.mInputView.setAutoLinkMask(i);
    }

    public void setCompletionHint(CharSequence charSequence) {
        if (this.mAutoCompleteMode != 0) {
            ((AutoCompleteTextView) this.mInputView).setCompletionHint(charSequence);
        }
    }

    public void setCompoundDrawablePadding(int i) {
        this.mInputView.setCompoundDrawablePadding(i);
        if (this.mDividerCompoundPadding) {
            this.mDivider.setPadding(this.mInputView.getTotalPaddingLeft(), this.mInputView.getTotalPaddingRight());
            if (this.mLabelEnable) {
                this.mLabelView.setPadding(this.mDivider.getPaddingLeft(), this.mLabelView.getPaddingTop(), this.mDivider.getPaddingRight(), this.mLabelView.getPaddingBottom());
            }
            if (this.mSupportMode != 0) {
                this.mSupportView.setPadding(this.mDivider.getPaddingLeft(), this.mSupportView.getPaddingTop(), this.mDivider.getPaddingRight(), this.mSupportView.getPaddingBottom());
            }
        }
    }

    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        this.mInputView.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        if (this.mDividerCompoundPadding) {
            this.mDivider.setPadding(this.mInputView.getTotalPaddingLeft(), this.mInputView.getTotalPaddingRight());
            if (this.mLabelEnable) {
                this.mLabelView.setPadding(this.mDivider.getPaddingLeft(), this.mLabelView.getPaddingTop(), this.mDivider.getPaddingRight(), this.mLabelView.getPaddingBottom());
            }
            if (this.mSupportMode != 0) {
                this.mSupportView.setPadding(this.mDivider.getPaddingLeft(), this.mSupportView.getPaddingTop(), this.mDivider.getPaddingRight(), this.mSupportView.getPaddingBottom());
            }
        }
    }

    @TargetApi(17)
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (Build.VERSION.SDK_INT >= 17) {
            this.mInputView.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        } else {
            this.mInputView.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        }
    }

    @TargetApi(17)
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 17) {
            this.mInputView.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
        } else {
            this.mInputView.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
        }
    }

    @TargetApi(17)
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (Build.VERSION.SDK_INT >= 17) {
            this.mInputView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            this.mInputView.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        }
    }

    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        this.mInputView.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
    }

    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        this.mInputView.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    public void setCursorVisible(boolean z) {
        this.mInputView.setCursorVisible(z);
    }

    @TargetApi(11)
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        if (Build.VERSION.SDK_INT >= 11) {
            this.mInputView.setCustomSelectionActionModeCallback(callback);
        }
    }

    public void setDropDownAnchor(int i) {
        if (this.mAutoCompleteMode != 0) {
            ((AutoCompleteTextView) this.mInputView).setDropDownAnchor(i);
        }
    }

    public void setDropDownBackgroundDrawable(Drawable drawable) {
        if (this.mAutoCompleteMode != 0) {
            ((AutoCompleteTextView) this.mInputView).setDropDownBackgroundDrawable(drawable);
        }
    }

    public void setDropDownBackgroundResource(int i) {
        if (this.mAutoCompleteMode != 0) {
            ((AutoCompleteTextView) this.mInputView).setDropDownBackgroundResource(i);
        }
    }

    public void setDropDownHeight(int i) {
        if (this.mAutoCompleteMode != 0) {
            ((AutoCompleteTextView) this.mInputView).setDropDownHeight(i);
        }
    }

    public void setDropDownHorizontalOffset(int i) {
        if (this.mAutoCompleteMode != 0) {
            ((AutoCompleteTextView) this.mInputView).setDropDownHorizontalOffset(i);
        }
    }

    public void setDropDownVerticalOffset(int i) {
        if (this.mAutoCompleteMode != 0) {
            ((AutoCompleteTextView) this.mInputView).setDropDownVerticalOffset(i);
        }
    }

    public void setDropDownWidth(int i) {
        if (this.mAutoCompleteMode != 0) {
            ((AutoCompleteTextView) this.mInputView).setDropDownWidth(i);
        }
    }

    public final void setEditableFactory(Editable.Factory factory) {
        this.mInputView.setEditableFactory(factory);
    }

    @TargetApi(21)
    public void setElegantTextHeight(boolean z) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.mInputView.setElegantTextHeight(z);
        }
    }

    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        this.mInputView.setEllipsize(truncateAt);
    }

    public void setEms(int i) {
        this.mInputView.setEms(i);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        this.mInputView.setEnabled(z);
    }

    public void setError(CharSequence charSequence) {
        this.mSupportError = charSequence;
        if (this.mSupportMode != 1 && this.mSupportMode != 2) {
            return;
        }
        if (this.mSupportError != null) {
            getSupportView().setTextColor(this.mSupportErrorColors);
            this.mDivider.setColor(this.mDividerErrorColors);
            getSupportView().setText(this.mSupportMode == 1 ? this.mSupportError : TextUtils.concat(this.mSupportHelper, ", ", this.mSupportError));
            return;
        }
        getSupportView().setTextColor(this.mSupportColors);
        this.mDivider.setColor(this.mDividerColors);
        getSupportView().setText(this.mSupportHelper);
    }

    public void setExtractedText(ExtractedText extractedText) {
        this.mInputView.setExtractedText(extractedText);
    }

    public void setFilters(InputFilter[] inputFilterArr) {
        this.mInputView.setFilters(inputFilterArr);
    }

    @TargetApi(21)
    public void setFontFeatureSettings(String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.mInputView.setFontFeatureSettings(str);
        }
    }

    public void setFreezesText(boolean z) {
        this.mInputView.setFreezesText(z);
    }

    public void setGravity(int i) {
        this.mInputView.setGravity(i);
    }

    public void setHelper(CharSequence charSequence) {
        this.mSupportHelper = charSequence;
        setError(this.mSupportError);
    }

    public void setHighlightColor(int i) {
        this.mInputView.setHighlightColor(i);
    }

    public final void setHint(int i) {
        this.mInputView.setHint(i);
        if (this.mLabelView != null) {
            this.mLabelView.setText(i);
        }
    }

    public final void setHint(CharSequence charSequence) {
        this.mInputView.setHint(charSequence);
        if (this.mLabelView != null) {
            this.mLabelView.setText(charSequence);
        }
    }

    public final void setHintTextColor(int i) {
        this.mInputView.setHintTextColor(i);
    }

    public final void setHintTextColor(ColorStateList colorStateList) {
        this.mInputView.setHintTextColor(colorStateList);
    }

    public void setHorizontallyScrolling(boolean z) {
        this.mInputView.setHorizontallyScrolling(z);
    }

    public void setImeActionLabel(CharSequence charSequence, int i) {
        this.mInputView.setImeActionLabel(charSequence, i);
    }

    public void setImeOptions(int i) {
        this.mInputView.setImeOptions(i);
    }

    public void setIncludeFontPadding(boolean z) {
        this.mInputView.setIncludeFontPadding(z);
    }

    public void setInputExtras(int i) throws XmlPullParserException, IOException {
        this.mInputView.setInputExtras(i);
    }

    public void setInputType(int i) {
        this.mInputView.setInputType(i);
    }

    public void setKeyListener(KeyListener keyListener) {
        this.mInputView.setKeyListener(keyListener);
    }

    public void setLetterSpacing(float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.mInputView.setLetterSpacing(f);
        }
    }

    public void setLineSpacing(float f, float f2) {
        this.mInputView.setLineSpacing(f, f2);
    }

    public void setLines(int i) {
        this.mInputView.setLines(i);
    }

    public final void setLinkTextColor(int i) {
        this.mInputView.setLinkTextColor(i);
    }

    public final void setLinkTextColor(ColorStateList colorStateList) {
        this.mInputView.setLinkTextColor(colorStateList);
    }

    public final void setLinksClickable(boolean z) {
        this.mInputView.setLinksClickable(z);
    }

    public void setListSelection(int i) {
        if (this.mAutoCompleteMode != 0) {
            ((AutoCompleteTextView) this.mInputView).setListSelection(i);
        }
    }

    public void setMarqueeRepeatLimit(int i) {
        this.mInputView.setMarqueeRepeatLimit(i);
    }

    public void setMaxEms(int i) {
        this.mInputView.setMaxEms(i);
    }

    public void setMaxHeight(int i) {
        this.mInputView.setMaxHeight(i);
    }

    public void setMaxLines(int i) {
        this.mInputView.setMaxLines(i);
    }

    public void setMaxWidth(int i) {
        this.mInputView.setMaxWidth(i);
    }

    public void setMinEms(int i) {
        this.mInputView.setMinEms(i);
    }

    public void setMinHeight(int i) {
        this.mInputView.setMinHeight(i);
    }

    public void setMinLines(int i) {
        this.mInputView.setMinLines(i);
    }

    public void setMinWidth(int i) {
        this.mInputView.setMinWidth(i);
    }

    public final void setMovementMethod(MovementMethod movementMethod) {
        this.mInputView.setMovementMethod(movementMethod);
    }

    public void setOnEditorActionListener(TextView.OnEditorActionListener onEditorActionListener) {
        this.mInputView.setOnEditorActionListener(onEditorActionListener);
    }

    @Override // android.view.View
    public void setOnFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.mInputView.setOnFocusChangeListener(onFocusChangeListener);
    }

    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        if (this.mAutoCompleteMode != 0) {
            ((AutoCompleteTextView) this.mInputView).setOnItemClickListener(onItemClickListener);
        }
    }

    public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        if (this.mAutoCompleteMode != 0) {
            ((AutoCompleteTextView) this.mInputView).setOnItemSelectedListener(onItemSelectedListener);
        }
    }

    @Override // android.view.View
    public void setOnKeyListener(View.OnKeyListener onKeyListener) {
        this.mInputView.setOnKeyListener(onKeyListener);
    }

    public void setOnSelectionChangedListener(TextView.OnSelectionChangedListener onSelectionChangedListener) {
        this.mOnSelectionChangedListener = onSelectionChangedListener;
    }

    public void setRawInputType(int i) {
        this.mInputView.setRawInputType(i);
    }

    public void setScroller(Scroller scroller) {
        this.mInputView.setScroller(scroller);
    }

    public void setSelectAllOnFocus(boolean z) {
        this.mInputView.setSelectAllOnFocus(z);
    }

    @Override // android.view.View
    public void setSelected(boolean z) {
        this.mInputView.setSelected(z);
    }

    public void setSelection(int i) {
        this.mInputView.setSelection(i);
    }

    public void setSelection(int i, int i2) {
        this.mInputView.setSelection(i, i2);
    }

    public void setShadowLayer(float f, float f2, float f3, int i) {
        this.mInputView.setShadowLayer(f, f2, f3, i);
    }

    public final void setShowSoftInputOnFocus(boolean z) {
        this.mInputView.setShowSoftInputOnFocus(z);
    }

    public void setSingleLine() {
        this.mInputView.setSingleLine();
    }

    public final void setSpannableFactory(Spannable.Factory factory) {
        this.mInputView.setSpannableFactory(factory);
    }

    public final void setText(int i) {
        this.mInputView.setText(i);
    }

    public final void setText(int i, TextView.BufferType bufferType) {
        this.mInputView.setText(i, bufferType);
    }

    public final void setText(CharSequence charSequence) {
        this.mInputView.setText(charSequence);
    }

    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        this.mInputView.setText(charSequence, bufferType);
    }

    public final void setText(char[] cArr, int i, int i2) {
        this.mInputView.setText(cArr, i, i2);
    }

    public void setTextAppearance(Context context, int i) {
        this.mInputView.setTextAppearance(context, i);
    }

    public void setTextColor(int i) {
        this.mInputView.setTextColor(i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.mInputView.setTextColor(colorStateList);
    }

    @TargetApi(11)
    public void setTextIsSelectable(boolean z) {
        if (Build.VERSION.SDK_INT >= 11) {
            this.mInputView.setTextIsSelectable(z);
        }
    }

    public final void setTextKeepState(CharSequence charSequence) {
        this.mInputView.setTextKeepState(charSequence);
    }

    public final void setTextKeepState(CharSequence charSequence, TextView.BufferType bufferType) {
        this.mInputView.setTextKeepState(charSequence, bufferType);
    }

    @TargetApi(17)
    public void setTextLocale(Locale locale) {
        if (Build.VERSION.SDK_INT >= 17) {
            this.mInputView.setTextLocale(locale);
        }
    }

    public void setTextScaleX(float f) {
        this.mInputView.setTextScaleX(f);
    }

    public void setTextSize(float f) {
        this.mInputView.setTextSize(f);
    }

    public void setTextSize(int i, float f) {
        this.mInputView.setTextSize(i, f);
    }

    public void setThreshold(int i) {
        if (this.mAutoCompleteMode != 0) {
            ((AutoCompleteTextView) this.mInputView).setThreshold(i);
        }
    }

    public void setTokenizer(MultiAutoCompleteTextView.Tokenizer tokenizer) {
        if (this.mAutoCompleteMode == 2) {
            ((MultiAutoCompleteTextView) this.mInputView).setTokenizer(tokenizer);
        }
    }

    public final void setTransformationMethod(TransformationMethod transformationMethod) {
        this.mInputView.setTransformationMethod(transformationMethod);
    }

    public void setTypeface(Typeface typeface) {
        this.mInputView.setTypeface(typeface);
    }

    public void setTypeface(Typeface typeface, int i) {
        this.mInputView.setTypeface(typeface, i);
    }

    public void setValidator(AutoCompleteTextView.Validator validator) {
        if (this.mAutoCompleteMode != 0) {
            ((AutoCompleteTextView) this.mInputView).setValidator(validator);
        }
    }

    public void showDropDown() {
        if (this.mAutoCompleteMode != 0) {
            ((AutoCompleteTextView) this.mInputView).showDropDown();
        }
    }
}
