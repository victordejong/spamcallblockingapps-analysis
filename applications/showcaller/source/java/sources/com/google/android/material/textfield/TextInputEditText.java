package com.google.android.material.textfield;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.text.Editable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.appcompat.widget.AppCompatEditText;
import com.google.android.material.internal.C8178d;
import com.google.android.material.internal.C8203l;
import com.google.android.material.theme.p275a.C8328a;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1888d;
import p078c.p084c.p085a.p096b.C1890f;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.C1896l;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/TextInputEditText.class */
public class TextInputEditText extends AppCompatEditText {

    /* renamed from: h */
    private final Rect f37363h;

    /* renamed from: i */
    private boolean f37364i;

    public TextInputEditText(Context context) {
        this(context, null);
    }

    public TextInputEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1886b.editTextStyle);
    }

    public TextInputEditText(Context context, AttributeSet attributeSet, int i) {
        super(C8328a.m3881c(context, attributeSet, i, 0), attributeSet, i);
        this.f37363h = new Rect();
        TypedArray m4462h = C8203l.m4462h(context, attributeSet, C1896l.TextInputEditText, i, C1895k.Widget_Design_TextInputEditText, new int[0]);
        setTextInputLayoutFocusedRectEnabled(m4462h.getBoolean(C1896l.TextInputEditText_textInputLayoutFocusedRectEnabled, false));
        m4462h.recycle();
    }

    /* renamed from: b */
    private String m4080b(TextInputLayout textInputLayout) {
        Editable text = getText();
        CharSequence hint = textInputLayout.getHint();
        boolean isEmpty = TextUtils.isEmpty(text);
        boolean isEmpty2 = TextUtils.isEmpty(hint);
        if (Build.VERSION.SDK_INT >= 17) {
            setLabelFor(C1890f.textinput_helper_text);
        }
        String str = "";
        String charSequence = isEmpty2 ^ true ? hint.toString() : "";
        if (!(!isEmpty)) {
            return !TextUtils.isEmpty(charSequence) ? charSequence : "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append((Object) text);
        if (!TextUtils.isEmpty(charSequence)) {
            str = ", " + charSequence;
        }
        sb.append(str);
        return sb.toString();
    }

    private CharSequence getHintFromLayout() {
        TextInputLayout textInputLayout = getTextInputLayout();
        return textInputLayout != null ? textInputLayout.getHint() : null;
    }

    private TextInputLayout getTextInputLayout() {
        ViewParent parent = getParent();
        while (true) {
            ViewParent viewParent = parent;
            if (viewParent instanceof View) {
                if (viewParent instanceof TextInputLayout) {
                    return (TextInputLayout) viewParent;
                }
                parent = viewParent.getParent();
            } else {
                return null;
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(Rect rect) {
        super.getFocusedRect(rect);
        TextInputLayout textInputLayout = getTextInputLayout();
        if (textInputLayout == null || !this.f37364i || rect == null) {
            return;
        }
        textInputLayout.getFocusedRect(this.f37363h);
        rect.bottom = this.f37363h.bottom;
    }

    @Override // android.view.View
    public boolean getGlobalVisibleRect(Rect rect, Point point) {
        boolean globalVisibleRect = super.getGlobalVisibleRect(rect, point);
        TextInputLayout textInputLayout = getTextInputLayout();
        if (textInputLayout != null && this.f37364i && rect != null) {
            textInputLayout.getGlobalVisibleRect(this.f37363h, point);
            rect.bottom = this.f37363h.bottom;
        }
        return globalVisibleRect;
    }

    @Override // android.widget.TextView
    public CharSequence getHint() {
        TextInputLayout textInputLayout = getTextInputLayout();
        return (textInputLayout == null || !textInputLayout.m4060O()) ? super.getHint() : textInputLayout.getHint();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout textInputLayout = getTextInputLayout();
        if (textInputLayout == null || !textInputLayout.m4060O() || super.getHint() != null || !C8178d.m4551c()) {
            return;
        }
        setHint("");
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        if (onCreateInputConnection != null && editorInfo.hintText == null) {
            editorInfo.hintText = getHintFromLayout();
        }
        return onCreateInputConnection;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        TextInputLayout textInputLayout = getTextInputLayout();
        if (Build.VERSION.SDK_INT >= 23 || textInputLayout == null) {
            return;
        }
        accessibilityNodeInfo.setText(m4080b(textInputLayout));
    }

    @Override // android.view.View
    public boolean requestRectangleOnScreen(Rect rect) {
        boolean requestRectangleOnScreen = super.requestRectangleOnScreen(rect);
        TextInputLayout textInputLayout = getTextInputLayout();
        if (textInputLayout != null && this.f37364i) {
            this.f37363h.set(0, textInputLayout.getHeight() - getResources().getDimensionPixelOffset(C1888d.mtrl_edittext_rectangle_top_offset), textInputLayout.getWidth(), textInputLayout.getHeight());
            textInputLayout.requestRectangleOnScreen(this.f37363h, true);
        }
        return requestRectangleOnScreen;
    }

    public void setTextInputLayoutFocusedRectEnabled(boolean z) {
        this.f37364i = z;
    }
}
