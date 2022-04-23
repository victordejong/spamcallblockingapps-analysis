package com.callapp.contacts.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.IncognitoToolTip;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/IncognitoToolTip.class */
public class IncognitoToolTip extends ConstraintLayout {

    /* renamed from: a  reason: collision with root package name */
    private ValueAnimator f16524a;

    /* renamed from: com.callapp.contacts.widget.IncognitoToolTip$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/IncognitoToolTip$1.class */
    class AnonymousClass1 implements View.OnClickListener {
        AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(ValueAnimator valueAnimator) {
            IncognitoToolTip.this.setAlpha(((double) valueAnimator.getAnimatedFraction()) <= 0.9d ? 1.0f - valueAnimator.getAnimatedFraction() : BitmapDescriptorFactory.HUE_RED);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IncognitoToolTip.this.f16524a = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            IncognitoToolTip.this.f16524a.setDuration(500L);
            IncognitoToolTip.this.f16524a.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget._$$Lambda$IncognitoToolTip$1$eM9Bx0rYn2whmJWOFOeT_AOkJjQ
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    IncognitoToolTip.AnonymousClass1.this.a(valueAnimator);
                }
            });
            IncognitoToolTip.this.f16524a.start();
        }
    }

    public IncognitoToolTip(Context context) {
        this(context, null);
    }

    public IncognitoToolTip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public IncognitoToolTip(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(2131558742, (ViewGroup) this, true);
        ((ImageView) findViewById(2131364161)).setColorFilter(new PorterDuffColorFilter(ThemeUtils.a(context, 2131100140), PorterDuff.Mode.SRC_IN));
        ((TextView) findViewById(2131364166)).setTextColor(ThemeUtils.a(context, 2131100140));
        ((TextView) findViewById(2131364166)).setText(Activities.getString(2131887043));
        ((TextView) findViewById(2131364165)).setTextColor(ThemeUtils.a(context, 2131100140));
        ((TextView) findViewById(2131364165)).setText(Activities.getString(2131887042));
        ((TextView) findViewById(2131362165)).setTextColor(ThemeUtils.a(context, 2131099784));
        ((TextView) findViewById(2131362165)).setText(Activities.getString(2131887105));
        findViewById(2131364166).setOnClickListener(new AnonymousClass1());
        setBackgroundResource(2131232170);
        ((GradientDrawable) getBackground()).setColor(ThemeUtils.a(context, 2131099686));
        ((GradientDrawable) getBackground()).setStroke(getResources().getDimensionPixelOffset(2131165556), ThemeUtils.a(context, 2131099784));
        if (Build.VERSION.SDK_INT >= 21) {
            setElevation(8.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        setAlpha(((double) valueAnimator.getAnimatedFraction()) <= 0.9d ? valueAnimator.getAnimatedFraction() : 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        setVisibility(0);
        setAlpha(BitmapDescriptorFactory.HUE_RED);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.f16524a = ofFloat;
        ofFloat.setDuration(500L);
        this.f16524a.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget._$$Lambda$IncognitoToolTip$5LmKaAK865bQnsLyZN_MLhl5gZw
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                IncognitoToolTip.this.a(valueAnimator);
            }
        });
        this.f16524a.start();
    }

    public final boolean a() {
        Integer num = Prefs.by.get();
        boolean z = !Prefs.fQ.get().booleanValue() && (num.intValue() == 30 || num.intValue() == 130 || num.intValue() == 430);
        if (z) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.widget._$$Lambda$IncognitoToolTip$uWcXMpy1dfju4UjvmsPAhcndB9g
                @Override // java.lang.Runnable
                public final void run() {
                    IncognitoToolTip.this.d();
                }
            });
        }
        return z;
    }

    public final void b() {
        ValueAnimator valueAnimator = this.f16524a;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f16524a.cancel();
        }
    }

    public void setLearnMoreOnClickListener(View.OnClickListener onClickListener) {
        setOnClickListener(onClickListener);
    }
}
