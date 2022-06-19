package com.callapp.contacts.widget.tutorial;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/TutorialStepMarker.class */
public class TutorialStepMarker extends ConstraintLayout {

    /* renamed from: a */
    boolean f29524a;

    /* renamed from: b */
    ImageView f29525b;

    /* renamed from: c */
    private TextView f29526c;

    public TutorialStepMarker(Context context) {
        this(context, null);
    }

    public TutorialStepMarker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TutorialStepMarker(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(2131558782, this);
        setLayoutParams(new Constraints.LayoutParams(-2, -2));
        this.f29525b = (ImageView) findViewById(2131363049);
        this.f29526c = (TextView) findViewById(2131364467);
    }

    /* renamed from: a */
    public final void m26228a(float f, float f2, float f3) {
        this.f29525b.setScaleX(f);
        this.f29525b.setScaleY(f2);
        this.f29525b.setAlpha(f3);
    }

    public void setImageResource(int i) {
        this.f29525b.setImageResource(i);
    }

    public void setShouldResizeUponCurrentStep(boolean z) {
        this.f29524a = z;
    }

    public void setText(String str) {
        this.f29526c.setText(str);
    }
}
