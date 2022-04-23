package com.explorestack.iab.vast.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.explorestack.iab.utils.g;
import com.explorestack.iab.utils.h;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/view/TextCountdownView.class */
public class TextCountdownView extends IabTextView implements g {

    /* renamed from: a  reason: collision with root package name */
    private String f19339a = "%1.0fs";

    public TextCountdownView(Context context) {
        super(context);
    }

    public TextCountdownView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.iab.vast.view.IabTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        if (TextUtils.isEmpty(getText())) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(0, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 1073741824));
        } else {
            super.onMeasure(i, i2);
        }
    }

    public void setProgress(int i) {
        setText(this.f19339a.replace("%1.0f", String.valueOf(i)));
    }

    public void setProgress(int i, int i2) {
        setProgress(Math.round((i / i2) * 100.0f));
    }

    public void setRemaining(int i) {
        setText(this.f19339a.replace("%1.0f", String.valueOf(i)));
    }

    @Override // com.explorestack.iab.vast.view.IabTextView, com.explorestack.iab.utils.g
    public void setStyle(h hVar) {
        super.setStyle(hVar);
        String str = hVar.j;
        if (str != null) {
            this.f19339a = str;
        }
    }
}
