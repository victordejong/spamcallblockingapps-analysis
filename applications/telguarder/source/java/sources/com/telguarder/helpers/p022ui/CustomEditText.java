package com.telguarder.helpers.p022ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
/* renamed from: com.telguarder.helpers.ui.CustomEditText */
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/CustomEditText.class */
public class CustomEditText extends AppCompatEditText {
    public SoftInputVisibilityCallbacks softInputVisibilityCallbacks;
    private final View.OnFocusChangeListener onFocusChangeListenernew = new View.OnFocusChangeListener() { // from class: com.telguarder.helpers.ui.CustomEditText.1
        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (CustomEditText.this.softInputVisibilityCallbacks == null || !z) {
                return;
            }
            CustomEditText.this.softInputVisibilityCallbacks.onShowInput();
        }
    };
    private final TextView.OnEditorActionListener onEditorActionListener = new TextView.OnEditorActionListener() { // from class: com.telguarder.helpers.ui.CustomEditText.2
        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            if (i == 6) {
                CustomEditText.this.hideKeypad();
                if (CustomEditText.this.softInputVisibilityCallbacks == null) {
                    return true;
                }
                CustomEditText.this.softInputVisibilityCallbacks.onHideInput();
                CustomEditText.this.softInputVisibilityCallbacks.onDone();
                return true;
            }
            return false;
        }
    };

    /* renamed from: com.telguarder.helpers.ui.CustomEditText$SoftInputVisibilityCallbacks */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/CustomEditText$SoftInputVisibilityCallbacks.class */
    public interface SoftInputVisibilityCallbacks {
        void onDone();

        void onHideInput();

        void onShowInput();
    }

    public CustomEditText(Context context) {
        super(context);
        initEditor();
    }

    public CustomEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initEditor();
    }

    public CustomEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initEditor();
    }

    public void hideKeypad() {
        InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            clearFocus();
        }
    }

    private void initEditor() {
        setOnEditorActionListener(this.onEditorActionListener);
        setOnFocusChangeListener(this.onFocusChangeListenernew);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
        if (i == 4) {
            hideKeypad();
            SoftInputVisibilityCallbacks softInputVisibilityCallbacks = this.softInputVisibilityCallbacks;
            if (softInputVisibilityCallbacks == null) {
                return true;
            }
            softInputVisibilityCallbacks.onHideInput();
            return true;
        }
        return false;
    }
}
