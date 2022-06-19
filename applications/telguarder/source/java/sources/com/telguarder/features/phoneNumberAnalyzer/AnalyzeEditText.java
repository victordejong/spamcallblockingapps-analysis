package com.telguarder.features.phoneNumberAnalyzer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import androidx.appcompat.widget.AppCompatEditText;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText.class */
public class AnalyzeEditText extends AppCompatEditText {
    public AnalyzeEditText(Context context) {
        super(context);
    }

    public AnalyzeEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AnalyzeEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }
}
