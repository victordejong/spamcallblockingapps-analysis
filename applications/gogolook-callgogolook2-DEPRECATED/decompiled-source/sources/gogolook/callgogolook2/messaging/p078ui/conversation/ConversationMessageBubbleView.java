package gogolook.callgogolook2.messaging.p078ui.conversation;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import gogolook.callgogolook2.R$id;
import p459j.p460a.p474c0.p475c.p478y.C11609f;
import p459j.p460a.p474c0.p475c.p478y.C11610g;
import p459j.p460a.p474c0.p499h.C12212s0;
/* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationMessageBubbleView */
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationMessageBubbleView.class */
public class ConversationMessageBubbleView extends LinearLayout {

    /* renamed from: a */
    public int f11689a;

    /* renamed from: b */
    public int f11690b;

    /* renamed from: c */
    public ObjectAnimator f11691c;

    /* renamed from: d */
    public boolean f11692d;

    /* renamed from: e */
    public final C11609f f11693e = new C11609f();

    /* renamed from: f */
    public int f11694f;

    /* renamed from: g */
    public ViewGroup f11695g;

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationMessageBubbleView$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationMessageBubbleView$a.class */
    public class C4755a implements Animator.AnimatorListener {
        public C4755a() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ConversationMessageBubbleView.this.f11691c = null;
            ConversationMessageBubbleView.this.f11690b = 0;
            ConversationMessageBubbleView.this.f11695g.getLayoutParams().width = -2;
            ConversationMessageBubbleView.this.f11695g.requestLayout();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public ConversationMessageBubbleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public void m27132a(int i, int i2) {
        ObjectAnimator objectAnimator = this.f11691c;
        if (objectAnimator != null) {
            objectAnimator.setIntValues(this.f11694f, i2);
            return;
        }
        this.f11694f = i;
        this.f11691c = ObjectAnimator.ofInt(this, "morphWidth", i, i2);
        this.f11691c.setDuration(C12212s0.f27369a);
        this.f11691c.addListener(new C4755a());
        this.f11691c.start();
    }

    /* renamed from: a */
    public void m27128a(C11610g gVar) {
        this.f11692d = !this.f11693e.m8944a(gVar) && !gVar.m8928P();
        if (this.f11691c == null) {
            this.f11690b = 0;
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f11695g = (ViewGroup) findViewById(R$id.message_text_and_info);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int i3 = this.f11689a;
        if (i3 == 0 && measuredWidth != i3) {
            if (this.f11692d) {
                m27132a(i3, measuredWidth);
            }
            this.f11689a = measuredWidth;
        }
        if (this.f11690b > 0) {
            this.f11695g.getLayoutParams().width = this.f11690b;
        } else {
            this.f11695g.getLayoutParams().width = -2;
        }
        this.f11695g.requestLayout();
    }

    public void setMorphWidth(int i) {
        this.f11690b = i;
        requestLayout();
    }
}
