package com.truecaller.messaging.conversation;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.LinearInterpolator;
import androidx.appcompat.widget.AppCompatImageView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\u0006R\u0016\u0010\u000b\u001a\u00020\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/truecaller/messaging/conversation/EmojiPokeButton;", "Landroidx/appcompat/widget/AppCompatImageView;", "", "visible", "Ls1/s;", "setVisibleWithoutAnimation", "(Z)V", "setVisible", "Landroid/animation/TimeInterpolator;", AbstractC2405c.f7629a, "Landroid/animation/TimeInterpolator;", "animatorInterpolator", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/EmojiPokeButton.class */
public final class EmojiPokeButton extends AppCompatImageView {

    /* renamed from: c */
    public final TimeInterpolator f13020c = new LinearInterpolator();

    /* renamed from: com.truecaller.messaging.conversation.EmojiPokeButton$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/EmojiPokeButton$a.class */
    public static final class RunnableC4168a implements Runnable {
        public RunnableC4168a() {
            EmojiPokeButton.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            EmojiPokeButton.this.setVisibility(8);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmojiPokeButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    public final void setVisible(boolean z) {
        if (!z) {
            animate().scaleX(0.5f).scaleY(0.5f).setDuration(150L).alpha(0.0f).setInterpolator(this.f13020c).withEndAction(new RunnableC4168a()).start();
            return;
        }
        setVisibility(0);
        animate().scaleX(1.0f).scaleY(1.0f).setDuration(150L).alpha(1.0f).setInterpolator(this.f13020c).start();
    }

    public final void setVisibleWithoutAnimation(boolean z) {
        setScaleX(1.0f);
        setScaleY(1.0f);
        setAlpha(1.0f);
        setVisibility(z ? 0 : 8);
    }
}
