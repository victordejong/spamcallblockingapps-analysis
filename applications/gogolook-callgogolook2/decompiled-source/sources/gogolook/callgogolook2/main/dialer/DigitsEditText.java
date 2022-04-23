package gogolook.callgogolook2.main.dialer;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import p459j.p460a.p582w0.C14017g4;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/dialer/DigitsEditText.class */
public class DigitsEditText extends EditText {

    /* renamed from: a */
    public final int f11157a = (int) getTextSize();

    /* renamed from: b */
    public final int f11158b = (int) getTextSize();

    public DigitsEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setInputType(getInputType() | 524288);
        if (C14017g4.m2805s()) {
            setShowSoftInputOnFocus(false);
        }
    }

    /* renamed from: a */
    public static void m27798a(TextView textView, int i, int i2) {
        TextPaint paint = textView.getPaint();
        int width = textView.getWidth();
        if (width != 0) {
            float f = i;
            textView.setTextSize(0, f);
            float measureText = width / paint.measureText(textView.getText().toString());
            if (measureText <= 1.0f) {
                textView.setTextSize(0, Math.max(i2, f * measureText));
            }
        }
    }

    /* renamed from: a */
    public final void m27799a() {
        InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
        if (inputMethodManager != null && inputMethodManager.isActive(this)) {
            inputMethodManager.hideSoftInputFromWindow(getApplicationWindowToken(), 0);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        m27799a();
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m27798a(this, this.f11157a, this.f11158b);
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        m27798a(this, this.f11157a, this.f11158b);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean onTouchEvent = super.onTouchEvent(motionEvent);
        m27799a();
        return onTouchEvent;
    }
}
