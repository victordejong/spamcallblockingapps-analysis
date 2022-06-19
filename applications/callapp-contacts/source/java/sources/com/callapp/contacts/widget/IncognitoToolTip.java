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

    /* renamed from: a */
    private ValueAnimator f28739a;

    /* renamed from: com.callapp.contacts.widget.IncognitoToolTip$1 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/IncognitoToolTip$1.class */
    public class View$OnClickListenerC80651 implements View.OnClickListener {
        View$OnClickListenerC80651() {
            IncognitoToolTip.this = r4;
        }

        /* renamed from: a */
        public /* synthetic */ void m26721a(ValueAnimator valueAnimator) {
            IncognitoToolTip.this.setAlpha(((double) valueAnimator.getAnimatedFraction()) <= 0.9d ? 1.0f - valueAnimator.getAnimatedFraction() : 0.0f);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IncognitoToolTip.this.f28739a = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            IncognitoToolTip.this.f28739a.setDuration(500L);
            IncognitoToolTip.this.f28739a.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget._$$Lambda$IncognitoToolTip$1$eM9Bx0rYn2whmJWOFOeT_AOkJjQ
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    IncognitoToolTip.View$OnClickListenerC80651.this.m26721a(valueAnimator);
                }
            });
            IncognitoToolTip.this.f28739a.start();
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
        ((ImageView) findViewById(2131364161)).setColorFilter(new PorterDuffColorFilter(ThemeUtils.m27386a(context, 2131100140), PorterDuff.Mode.SRC_IN));
        ((TextView) findViewById(2131364166)).setTextColor(ThemeUtils.m27386a(context, 2131100140));
        ((TextView) findViewById(2131364166)).setText(Activities.getString(2131887043));
        ((TextView) findViewById(2131364165)).setTextColor(ThemeUtils.m27386a(context, 2131100140));
        ((TextView) findViewById(2131364165)).setText(Activities.getString(2131887042));
        ((TextView) findViewById(2131362165)).setTextColor(ThemeUtils.m27386a(context, 2131099784));
        ((TextView) findViewById(2131362165)).setText(Activities.getString(2131887105));
        findViewById(2131364166).setOnClickListener(new View$OnClickListenerC80651());
        setBackgroundResource(2131232170);
        ((GradientDrawable) getBackground()).setColor(ThemeUtils.m27386a(context, 2131099686));
        ((GradientDrawable) getBackground()).setStroke(getResources().getDimensionPixelOffset(2131165556), ThemeUtils.m27386a(context, 2131099784));
        if (Build.VERSION.SDK_INT >= 21) {
            setElevation(8.0f);
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m26726a(ValueAnimator valueAnimator) {
        setAlpha(((double) valueAnimator.getAnimatedFraction()) <= 0.9d ? valueAnimator.getAnimatedFraction() : 1.0f);
    }

    /* renamed from: d */
    public /* synthetic */ void m26722d() {
        setVisibility(0);
        setAlpha(BitmapDescriptorFactory.HUE_RED);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.f28739a = ofFloat;
        ofFloat.setDuration(500L);
        this.f28739a.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget._$$Lambda$IncognitoToolTip$5LmKaAK865bQnsLyZN_MLhl5gZw
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                IncognitoToolTip.this.m26726a(valueAnimator);
            }
        });
        this.f28739a.start();
    }

    /* renamed from: a */
    public final boolean m26727a() {
        Integer num = Prefs.f26327by.get();
        boolean z = !Prefs.f26505fQ.get().booleanValue() && (num.intValue() == 30 || num.intValue() == 130 || num.intValue() == 430);
        if (z) {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.widget._$$Lambda$IncognitoToolTip$uWcXMpy1dfju4UjvmsPAhcndB9g
                @Override // java.lang.Runnable
                public final void run() {
                    IncognitoToolTip.this.m26722d();
                }
            });
        }
        return z;
    }

    /* renamed from: b */
    public final void m26723b() {
        ValueAnimator valueAnimator = this.f28739a;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        this.f28739a.cancel();
    }

    public void setLearnMoreOnClickListener(View.OnClickListener onClickListener) {
        setOnClickListener(onClickListener);
    }
}
