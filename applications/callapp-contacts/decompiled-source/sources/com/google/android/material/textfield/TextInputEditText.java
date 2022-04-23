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
import com.google.android.material.a;
import com.google.android.material.internal.c;
import com.google.android.material.internal.l;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/textfield/TextInputEditText.class */
public class TextInputEditText extends AppCompatEditText {

    /* renamed from: a  reason: collision with root package name */
    private final Rect f30878a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f30879b;

    public TextInputEditText(Context context) {
        this(context, null);
    }

    public TextInputEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.editTextStyle);
    }

    public TextInputEditText(Context context, AttributeSet attributeSet, int i) {
        super(com.google.android.material.theme.a.a.a(context, attributeSet, i, 0), attributeSet, i);
        this.f30878a = new Rect();
        TypedArray a2 = l.a(context, attributeSet, a.l.TextInputEditText, i, a.k.Widget_Design_TextInputEditText, new int[0]);
        setTextInputLayoutFocusedRectEnabled(a2.getBoolean(a.l.TextInputEditText_textInputLayoutFocusedRectEnabled, false));
        a2.recycle();
    }

    private TextInputLayout a() {
        for (ViewParent parent = getParent(); parent instanceof View; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(Rect rect) {
        super.getFocusedRect(rect);
        TextInputLayout a2 = a();
        if (a2 != null && this.f30879b && rect != null) {
            a2.getFocusedRect(this.f30878a);
            rect.bottom = this.f30878a.bottom;
        }
    }

    @Override // android.view.View
    public boolean getGlobalVisibleRect(Rect rect, Point point) {
        boolean globalVisibleRect = super.getGlobalVisibleRect(rect, point);
        TextInputLayout a2 = a();
        if (!(a2 == null || !this.f30879b || rect == null)) {
            a2.getGlobalVisibleRect(this.f30878a, point);
            rect.bottom = this.f30878a.bottom;
        }
        return globalVisibleRect;
    }

    @Override // android.widget.TextView
    public CharSequence getHint() {
        TextInputLayout a2 = a();
        return (a2 == null || !a2.g) ? super.getHint() : a2.a();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout a2 = a();
        if (a2 != null && a2.g && super.getHint() == null && c.a()) {
            setHint("");
        }
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        if (onCreateInputConnection != null && editorInfo.hintText == null) {
            TextInputLayout a2 = a();
            editorInfo.hintText = a2 != null ? a2.a() : null;
        }
        return onCreateInputConnection;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        TextInputLayout a2 = a();
        if (Build.VERSION.SDK_INT < 23 && a2 != null) {
            Editable text = getText();
            CharSequence a3 = a2.a();
            boolean isEmpty = TextUtils.isEmpty(text);
            boolean isEmpty2 = TextUtils.isEmpty(a3);
            if (Build.VERSION.SDK_INT >= 17) {
                setLabelFor(a.f.textinput_helper_text);
            }
            String str = "";
            String charSequence = isEmpty2 ^ true ? a3.toString() : "";
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
    }

    @Override // android.view.View
    public boolean requestRectangleOnScreen(Rect rect) {
        boolean requestRectangleOnScreen = super.requestRectangleOnScreen(rect);
        TextInputLayout a2 = a();
        if (a2 != null && this.f30879b) {
            this.f30878a.set(0, a2.getHeight() - getResources().getDimensionPixelOffset(a.d.mtrl_edittext_rectangle_top_offset), a2.getWidth(), a2.getHeight());
            a2.requestRectangleOnScreen(this.f30878a, true);
        }
        return requestRectangleOnScreen;
    }

    public void setTextInputLayoutFocusedRectEnabled(boolean z) {
        this.f30879b = z;
    }
}
