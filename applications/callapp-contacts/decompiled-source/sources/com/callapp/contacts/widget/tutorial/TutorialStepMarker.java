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

    /* renamed from: a  reason: collision with root package name */
    boolean f16992a;

    /* renamed from: b  reason: collision with root package name */
    ImageView f16993b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f16994c;

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
        this.f16993b = (ImageView) findViewById(2131363049);
        this.f16994c = (TextView) findViewById(2131364467);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(float f, float f2, float f3) {
        this.f16993b.setScaleX(f);
        this.f16993b.setScaleY(f2);
        this.f16993b.setAlpha(f3);
    }

    public void setImageResource(int i) {
        this.f16993b.setImageResource(i);
    }

    public void setShouldResizeUponCurrentStep(boolean z) {
        this.f16992a = z;
    }

    public void setText(String str) {
        this.f16994c.setText(str);
    }
}
