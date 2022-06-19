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
import com.google.android.material.C14376a;
import com.google.android.material.internal.C14620c;
import com.google.android.material.internal.C14647l;
import com.google.android.material.theme.p376a.C14828a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/textfield/TextInputEditText.class */
public class TextInputEditText extends AppCompatEditText {

    /* renamed from: a */
    private final Rect f53979a;

    /* renamed from: b */
    private boolean f53980b;

    public TextInputEditText(Context context) {
        this(context, null);
    }

    public TextInputEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C14376a.C14378b.editTextStyle);
    }

    public TextInputEditText(Context context, AttributeSet attributeSet, int i) {
        super(C14828a.m9923a(context, attributeSet, i, 0), attributeSet, i);
        this.f53979a = new Rect();
        TypedArray m10508a = C14647l.m10508a(context, attributeSet, C14376a.C14388l.TextInputEditText, i, C14376a.C14387k.Widget_Design_TextInputEditText, new int[0]);
        setTextInputLayoutFocusedRectEnabled(m10508a.getBoolean(C14376a.C14388l.TextInputEditText_textInputLayoutFocusedRectEnabled, false));
        m10508a.recycle();
    }

    /* renamed from: a */
    private TextInputLayout m10068a() {
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
        TextInputLayout m10068a = m10068a();
        if (m10068a == null || !this.f53980b || rect == null) {
            return;
        }
        m10068a.getFocusedRect(this.f53979a);
        rect.bottom = this.f53979a.bottom;
    }

    @Override // android.view.View
    public boolean getGlobalVisibleRect(Rect rect, Point point) {
        boolean globalVisibleRect = super.getGlobalVisibleRect(rect, point);
        TextInputLayout m10068a = m10068a();
        if (m10068a != null && this.f53980b && rect != null) {
            m10068a.getGlobalVisibleRect(this.f53979a, point);
            rect.bottom = this.f53979a.bottom;
        }
        return globalVisibleRect;
    }

    @Override // android.widget.TextView
    public CharSequence getHint() {
        TextInputLayout m10068a = m10068a();
        return (m10068a == null || !m10068a.f54047g) ? super.getHint() : m10068a.m10045a();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout m10068a = m10068a();
        if (m10068a == null || !m10068a.f54047g || super.getHint() != null || !C14620c.m10555a()) {
            return;
        }
        setHint("");
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        if (onCreateInputConnection != null && editorInfo.hintText == null) {
            TextInputLayout m10068a = m10068a();
            editorInfo.hintText = m10068a != null ? m10068a.m10045a() : null;
        }
        return onCreateInputConnection;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        TextInputLayout m10068a = m10068a();
        if (Build.VERSION.SDK_INT >= 23 || m10068a == null) {
            return;
        }
        Editable text = getText();
        CharSequence m10045a = m10068a.m10045a();
        boolean isEmpty = TextUtils.isEmpty(text);
        boolean isEmpty2 = TextUtils.isEmpty(m10045a);
        if (Build.VERSION.SDK_INT >= 17) {
            setLabelFor(C14376a.C14382f.textinput_helper_text);
        }
        String str = "";
        String charSequence = isEmpty2 ^ true ? m10045a.toString() : "";
        if (!isEmpty) {
            StringBuilder sb = new StringBuilder();
            sb.append((Object) text);
            if (!TextUtils.isEmpty(charSequence)) {
                str = ", ".concat(String.valueOf(charSequence));
            }
            sb.append(str);
            str = sb.toString();
        } else if (!TextUtils.isEmpty(charSequence)) {
            str = charSequence;
        }
        accessibilityNodeInfo.setText(str);
    }

    @Override // android.view.View
    public boolean requestRectangleOnScreen(Rect rect) {
        boolean requestRectangleOnScreen = super.requestRectangleOnScreen(rect);
        TextInputLayout m10068a = m10068a();
        if (m10068a != null && this.f53980b) {
            this.f53979a.set(0, m10068a.getHeight() - getResources().getDimensionPixelOffset(C14376a.C14380d.mtrl_edittext_rectangle_top_offset), m10068a.getWidth(), m10068a.getHeight());
            m10068a.requestRectangleOnScreen(this.f53979a, true);
        }
        return requestRectangleOnScreen;
    }

    public void setTextInputLayoutFocusedRectEnabled(boolean z) {
        this.f53980b = z;
    }
}
