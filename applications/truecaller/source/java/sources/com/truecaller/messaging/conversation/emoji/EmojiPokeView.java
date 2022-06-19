package com.truecaller.messaging.conversation.emoji;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import java.util.Arrays;
import kotlin.Metadata;
import nl.dionsegijn.konfetti.KonfettiView;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p195a.p200c.p214m8.C5529c;
import p193e.p194a.p195a.p200c.p214m8.ViewTreeObserver$OnGlobalLayoutListenerC5530d;
import p193e.p194a.p372b0.p430q.C8605o;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u0001J'\u0010\u0007\u001a\u00020\u00052\b\b\u0001\u0010\u0003\u001a\u00020\u00022\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bR%\u0010\u0012\u001a\n \r*\u0004\u0018\u00010\f0\f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R%\u0010\u0016\u001a\n \r*\u0004\u0018\u00010\u00130\u00138B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\u000f\u001a\u0004\b\u0014\u0010\u0015R\u001d\u0010\u001a\u001a\u00020\u00178B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000f\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR%\u0010\"\u001a\n \r*\u0004\u0018\u00010\u001e0\u001e8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010\u000f\u001a\u0004\b \u0010!R\u0016\u0010$\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010\u001c¨\u0006%"}, d2 = {"Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;", "Landroid/widget/FrameLayout;", "", "res", "Lkotlin/Function0;", "Ls1/s;", "onAnimationEndListener", "e", "(ILs1/z/b/a;)V", "", "f", "()F", "Landroid/view/View;", "kotlin.jvm.PlatformType", AbstractC2405c.f7629a, "Ls1/g;", "getEmojiView", "()Landroid/view/View;", "emojiView", "Lnl/dionsegijn/konfetti/KonfettiView;", "getKonfetti", "()Lnl/dionsegijn/konfetti/KonfettiView;", "konfetti", "", "getConfettiColors", "()[I", "confettiColors", C22021b.f61237c, "F", "spacing", "Landroid/widget/ImageView;", "d", "getImageView", "()Landroid/widget/ImageView;", "imageView", "a", "bottomMargin", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/emoji/EmojiPokeView.class */
public final class EmojiPokeView extends FrameLayout {

    /* renamed from: b */
    public final float f13088b;

    /* renamed from: f */
    public final g f13092f;

    /* renamed from: a */
    public final float f13087a = getResources().getDimensionPixelSize(C2752R.dimen.poke_emoji_margin);

    /* renamed from: c */
    public final g f13089c = C19286f.m13660s(this, 2131363483);

    /* renamed from: d */
    public final g f13090d = C19286f.m13660s(this, 2131364277);

    /* renamed from: e */
    public final g f13091e = C19286f.m13660s(this, C2752R.C2754id.konfetti);

    /* renamed from: com.truecaller.messaging.conversation.emoji.EmojiPokeView$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/emoji/EmojiPokeView$a.class */
    public static final class C4178a extends AnimatorListenerAdapter {
        public C4178a() {
            EmojiPokeView.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            View emojiView = EmojiPokeView.this.getEmojiView();
            l.d(emojiView, "emojiView");
            emojiView.setVisibility(4);
        }
    }

    /* renamed from: com.truecaller.messaging.conversation.emoji.EmojiPokeView$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/emoji/EmojiPokeView$b.class */
    public static final class C4179b extends AnimatorListenerAdapter {

        /* renamed from: b */
        public final /* synthetic */ a f13095b;

        public C4179b(a aVar) {
            EmojiPokeView.this = r4;
            this.f13095b = aVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            EmojiPokeView.this.setVisibility(4);
            a aVar = this.f13095b;
            if (aVar != null) {
                s sVar = (s) aVar.invoke();
            }
        }
    }

    /* renamed from: com.truecaller.messaging.conversation.emoji.EmojiPokeView$c */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/emoji/EmojiPokeView$c.class */
    public static final class RunnableC4180c implements Runnable {
        public RunnableC4180c() {
            EmojiPokeView.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            EmojiPokeView.m35103d(EmojiPokeView.this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmojiPokeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f13088b = C8605o.m28238b(context, 50.0f);
        this.f13092f = C25225a.m3978P1(new C5529c(context));
        FrameLayout.inflate(context, C2752R.layout.view_emoji_poke_new, this);
        setVisibility(4);
        Drawable background = getBackground();
        setBackground(background != null ? background.mutate() : null);
    }

    /* renamed from: d */
    public static final void m35103d(EmojiPokeView emojiPokeView) {
        KonfettiView konfetti = emojiPokeView.getKonfetti();
        l.d(konfetti, "konfetti");
        konfetti.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC5530d(konfetti, emojiPokeView));
    }

    public final int[] getConfettiColors() {
        return (int[]) this.f13092f.getValue();
    }

    public final View getEmojiView() {
        return (View) this.f13089c.getValue();
    }

    private final ImageView getImageView() {
        return (ImageView) this.f13090d.getValue();
    }

    public final KonfettiView getKonfetti() {
        return (KonfettiView) this.f13091e.getValue();
    }

    /* renamed from: e */
    public final void m35102e(int i, a<s> aVar) {
        getImageView().setImageResource(i);
        View emojiView = getEmojiView();
        l.d(emojiView, "emojiView");
        emojiView.setTranslationY(m35101f());
        Drawable background = getBackground();
        l.d(background, "background");
        background.setAlpha(0);
        setVisibility(0);
        View emojiView2 = getEmojiView();
        l.d(emojiView2, "emojiView");
        emojiView2.setVisibility(0);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(getEmojiView(), "translationY", 0.0f);
        l.d(ofFloat, "enterAnimation()");
        ObjectAnimator ofInt = ObjectAnimator.ofInt(getBackground(), "alpha", 76);
        l.d(ofInt, "ofInt(background, \"alpha\", BACKGROUND_ALPHA_MAX)");
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether((Animator[]) Arrays.copyOf(new Animator[]{ofFloat, ofInt}, 2));
        animatorSet.setDuration(175L);
        ValueAnimator ofInt2 = ValueAnimator.ofInt(0);
        l.d(ofInt2, "this");
        ofInt2.setDuration(800L);
        l.d(ofInt2, "animateDelay(800)");
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(getEmojiView(), "translationY", m35101f());
        l.d(ofFloat2, "exitAnimation()");
        ObjectAnimator ofInt3 = ObjectAnimator.ofInt(getBackground(), "alpha", 0);
        l.d(ofInt3, "ofInt(background, \"alpha\", BACKGROUND_ALPHA_MIN)");
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.playTogether((Animator[]) Arrays.copyOf(new Animator[]{ofFloat2, ofInt3}, 2));
        animatorSet2.setDuration(150L);
        animatorSet2.addListener(new C4178a());
        ValueAnimator ofInt4 = ValueAnimator.ofInt(0);
        l.d(ofInt4, "this");
        ofInt4.setDuration(300L);
        l.d(ofInt4, "animateDelay(300)");
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.playSequentially((Animator[]) Arrays.copyOf(new Animator[]{animatorSet, ofInt2, animatorSet2, ofInt4}, 4));
        animatorSet3.addListener(new C4179b(aVar));
        animatorSet3.start();
        new Handler().post(new RunnableC4180c());
    }

    /* renamed from: f */
    public final float m35101f() {
        return this.f13087a + this.f13088b;
    }
}
