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
import androidx.appcompat.widget.C0245k;
import com.google.android.gms.internal.ads.C1676a;
import java.util.Locale;
import me.zhanghai.android.materialprogressbar.C3681R;
import p102g4.C2811a;
import p134j4.C3260w0;
import p262v3.C4634p;
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputEditText.class */
public class TextInputEditText extends C0245k {

    /* renamed from: f */
    public final Rect f6748f = new Rect();

    /* renamed from: g */
    public boolean f6749g;

    public TextInputEditText(Context context, AttributeSet attributeSet) {
        super(C2811a.m2970a(context, attributeSet, C3681R.attr.editTextStyle, 0), attributeSet, C3681R.attr.editTextStyle);
        int[] iArr = C3260w0.f11014H;
        C4634p.m690a(context, attributeSet, C3681R.attr.editTextStyle, 2131886892);
        C4634p.m689b(context, attributeSet, iArr, C3681R.attr.editTextStyle, 2131886892, new int[0]);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, C3681R.attr.editTextStyle, 2131886892);
        setTextInputLayoutFocusedRectEnabled(obtainStyledAttributes.getBoolean(0, false));
        obtainStyledAttributes.recycle();
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
        if (textInputLayout == null || !this.f6749g || rect == null) {
            return;
        }
        textInputLayout.getFocusedRect(this.f6748f);
        rect.bottom = this.f6748f.bottom;
    }

    @Override // android.view.View
    public boolean getGlobalVisibleRect(Rect rect, Point point) {
        boolean globalVisibleRect = super.getGlobalVisibleRect(rect, point);
        TextInputLayout textInputLayout = getTextInputLayout();
        if (textInputLayout != null && this.f6749g && rect != null) {
            textInputLayout.getGlobalVisibleRect(this.f6748f, point);
            rect.bottom = this.f6748f.bottom;
        }
        return globalVisibleRect;
    }

    @Override // android.widget.TextView
    public CharSequence getHint() {
        TextInputLayout textInputLayout = getTextInputLayout();
        return (textInputLayout == null || !textInputLayout.f6758E) ? super.getHint() : textInputLayout.getHint();
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout textInputLayout = getTextInputLayout();
        if (textInputLayout == null || !textInputLayout.f6758E || super.getHint() != null || !Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals("meizu")) {
            return;
        }
        setHint("");
    }

    @Override // androidx.appcompat.widget.C0245k, android.widget.TextView, android.view.View
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
        Editable text = getText();
        CharSequence hint = textInputLayout.getHint();
        boolean isEmpty = TextUtils.isEmpty(text);
        boolean isEmpty2 = TextUtils.isEmpty(hint);
        setLabelFor(2131297145);
        String str = "";
        String charSequence = isEmpty2 ^ true ? hint.toString() : "";
        if (!isEmpty) {
            StringBuilder sb = new StringBuilder();
            sb.append((Object) text);
            if (!TextUtils.isEmpty(charSequence)) {
                str = C1676a.m4789h(", ", charSequence);
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
        TextInputLayout textInputLayout = getTextInputLayout();
        if (textInputLayout != null && this.f6749g) {
            this.f6748f.set(0, textInputLayout.getHeight() - getResources().getDimensionPixelOffset(2131165711), textInputLayout.getWidth(), textInputLayout.getHeight());
            textInputLayout.requestRectangleOnScreen(this.f6748f, true);
        }
        return requestRectangleOnScreen;
    }

    public void setTextInputLayoutFocusedRectEnabled(boolean z) {
        this.f6749g = z;
    }
}
