package com.callapp.contacts.activity.contact.details.incallfragment;

import android.graphics.Bitmap;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment;
import com.callapp.contacts.activity.contact.details.incallfragment.TwoButtonAnsweringMethodViewController;
import com.callapp.contacts.activity.marketplace.ButtonSet;
import com.callapp.contacts.api.ContextRunnable;
import com.callapp.contacts.model.widget.CallIncomingIndicatorView;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.DrawingViewWithCallback;
import com.callapp.contacts.widget.SingleAndMultiOnTouchListener;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController.class */
public class TwoButtonAnsweringMethodViewController extends BaseAnsweringMethodViewController {

    /* renamed from: a */
    private final View f21984a;

    /* renamed from: b */
    private final View f21985b;

    /* renamed from: c */
    private final CallIncomingIndicatorView f21986c;

    /* renamed from: d */
    private final CallIncomingIndicatorView f21987d;

    /* renamed from: e */
    private final DrawingViewWithCallback f21988e;

    /* renamed from: com.callapp.contacts.activity.contact.details.incallfragment.TwoButtonAnsweringMethodViewController$1 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1.class */
    public class C62671 extends SingleAndMultiOnTouchListener {

        /* renamed from: a */
        final /* synthetic */ int f21989a;

        /* renamed from: b */
        final /* synthetic */ Runnable f21990b;

        /* renamed from: d */
        private final int f21992d;

        /* renamed from: e */
        private final int f21993e;

        /* renamed from: f */
        private int f21994f = -1;

        /* renamed from: g */
        private int f21995g = -1;

        /* renamed from: h */
        private float f21996h;

        /* renamed from: i */
        private float f21997i;

        /* renamed from: j */
        private int f21998j;

        C62671(int i, Runnable runnable) {
            TwoButtonAnsweringMethodViewController.this = r4;
            this.f21989a = i;
            this.f21990b = runnable;
            int dimensionPixelOffset = r4.getResources().getDimensionPixelOffset(2131165691);
            this.f21992d = dimensionPixelOffset;
            this.f21993e = dimensionPixelOffset;
        }

        /* renamed from: a */
        public /* synthetic */ void m30862a(double d) {
            TwoButtonAnsweringMethodViewController.this.f21988e.m26753b(this.f21994f, this.f21995g, d, null);
        }

        /* JADX WARN: Type inference failed for: r0v82, types: [double] */
        /* JADX WARN: Type inference failed for: r0v9, types: [double] */
        @Override // com.callapp.contacts.widget.SingleAndMultiOnTouchListener
        /* renamed from: a */
        public final boolean mo26614a(View view, MotionEvent motionEvent, boolean z) {
            if (this.f21994f == -1 && this.f21995g == -1) {
                int[] iArr = new int[2];
                view.getLocationOnScreen(iArr);
                this.f21994f = iArr[0] + (view.getWidth() / 2);
                this.f21995g = iArr[1] + (view.getHeight() / 4);
                this.f21998j = ViewConfiguration.get(TwoButtonAnsweringMethodViewController.this.getContext()).getScaledTouchSlop();
            }
            ?? hypot = Math.hypot(this.f21994f - motionEvent.getRawX(), this.f21995g - motionEvent.getRawY());
            int i = this.f21992d;
            char c = hypot;
            if (hypot >= i) {
                c = i;
            }
            CLog.m27611a(TwoButtonAnsweringMethodViewController.class, String.valueOf(motionEvent.getAction()));
            int action = motionEvent.getAction();
            if (action == 0) {
                AndroidUtils.m27630a(view, 1);
                TwoButtonAnsweringMethodViewController.this.f21988e.setCoverImageView(null);
                TwoButtonAnsweringMethodViewController.this.f21988e.setPaintColor(this.f21989a);
                TwoButtonAnsweringMethodViewController.this.f21988e.m26761a(this.f21994f, this.f21995g, this.f21993e, (Bitmap) null);
                this.f21996h = motionEvent.getRawX();
                this.f21997i = motionEvent.getRawY();
                return true;
            } else if (action != 1) {
                if (action != 2) {
                    return true;
                }
                if (c >= this.f21992d) {
                    AndroidUtils.m27630a(view, 1);
                }
                TwoButtonAnsweringMethodViewController.this.f21988e.m26759a(this.f21994f, this.f21995g, Math.abs(c), (Bitmap) null);
                return true;
            } else {
                float f = this.f21996h;
                float rawX = motionEvent.getRawX();
                float f2 = this.f21997i;
                float rawY = motionEvent.getRawY();
                float abs = Math.abs(f - rawX);
                float abs2 = Math.abs(f2 - rawY);
                int i2 = this.f21998j;
                boolean z2 = false;
                if (abs <= i2) {
                    z2 = false;
                    if (abs2 <= i2) {
                        z2 = true;
                    }
                }
                if (z2) {
                    final char c2 = c;
                    TwoButtonAnsweringMethodViewController.this.f21988e.postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.incallfragment._$$Lambda$TwoButtonAnsweringMethodViewController$1$WBdJIC_57mKQocV3uZM2kMl0eK0
                        @Override // java.lang.Runnable
                        public final void run() {
                            TwoButtonAnsweringMethodViewController.C62671.this.m30862a(c2);
                        }
                    }, 300L);
                    return true;
                } else if (c >= this.f21992d) {
                    TwoButtonAnsweringMethodViewController.this.f21988e.m26760a(this.f21994f, this.f21995g, c, null, this.f21990b);
                    return true;
                } else {
                    TwoButtonAnsweringMethodViewController.this.f21988e.m26753b(this.f21994f, this.f21995g, c, null);
                    return true;
                }
            }
        }

        @Override // com.callapp.contacts.widget.SingleAndMultiOnTouchListener
        /* renamed from: a */
        public final boolean mo26613a(boolean z) {
            return false;
        }
    }

    public TwoButtonAnsweringMethodViewController(ViewGroup viewGroup, ButtonSet buttonSet, final DrawingViewWithCallback drawingViewWithCallback, InCallActionFragment.InCallActionFragmentInterface inCallActionFragmentInterface) {
        super(viewGroup, inCallActionFragmentInterface);
        this.f21988e = drawingViewWithCallback;
        CallIncomingIndicatorView callIncomingIndicatorView = (CallIncomingIndicatorView) mo26540a(2131362015);
        this.f21986c = callIncomingIndicatorView;
        CallIncomingIndicatorView callIncomingIndicatorView2 = (CallIncomingIndicatorView) mo26540a(2131362538);
        this.f21987d = callIncomingIndicatorView2;
        callIncomingIndicatorView.startAnimation();
        callIncomingIndicatorView2.startAnimation();
        View a = mo26540a(2131362154);
        this.f21984a = a;
        View a2 = mo26540a(2131362158);
        this.f21985b = a2;
        if (buttonSet.isGif()) {
            ImageView imageView = (ImageView) mo26540a(2131363032);
            ImageView imageView2 = (ImageView) mo26540a(2131363034);
            new GlideUtils.GifPlayer(imageView.getContext(), imageView, buttonSet.getAnswerResourceUrl(), buttonSet.getAnswerCallDrawableRes(), -1, true);
            new GlideUtils.GifPlayer(imageView2.getContext(), imageView2, buttonSet.getDeclineResourceUrl(), buttonSet.getDeclineCallDrawableRes(), -1, true);
        } else {
            a.startAnimation(AnimationUtils.loadAnimation(getContext(), 2130772005));
            new GlideUtils.GlideRequestBuilder((ImageView) mo26540a(2131363032), buttonSet.getAnswerCallDrawableRes(), getContext()).m27013d();
            new GlideUtils.GlideRequestBuilder((ImageView) mo26540a(2131363034), buttonSet.getDeclineCallDrawableRes(), getContext()).m27013d();
        }
        a.setOnTouchListener(m30867a(ThemeUtils.getColor(2131099920), new Runnable() { // from class: com.callapp.contacts.activity.contact.details.incallfragment._$$Lambda$TwoButtonAnsweringMethodViewController$pw4HhKULdVJCV4pZCl_A8jK6FE4
            @Override // java.lang.Runnable
            public final void run() {
                TwoButtonAnsweringMethodViewController.this.m30863d();
            }
        }));
        a2.setOnTouchListener(m30867a(ThemeUtils.getColor(2131099920), new Runnable() { // from class: com.callapp.contacts.activity.contact.details.incallfragment._$$Lambda$TwoButtonAnsweringMethodViewController$pfoYpqa4pKuetYeuPO2WWA_Xem4
            @Override // java.lang.Runnable
            public final void run() {
                TwoButtonAnsweringMethodViewController.this.m30864c();
            }
        }));
        ViewUtils.m27317a(a, new ContextRunnable() { // from class: com.callapp.contacts.activity.contact.details.incallfragment._$$Lambda$TwoButtonAnsweringMethodViewController$0dWyElrSu_nPzFuN_h_wQmBS7Xg
            @Override // com.callapp.contacts.api.ContextRunnable
            public final void run(Object obj) {
                TwoButtonAnsweringMethodViewController.m30865a(DrawingViewWithCallback.this, (View) obj);
            }
        });
    }

    /* renamed from: a */
    private View.OnTouchListener m30867a(int i, Runnable runnable) {
        return new C62671(i, runnable);
    }

    /* renamed from: a */
    public static /* synthetic */ void m30865a(DrawingViewWithCallback drawingViewWithCallback, View view) {
        drawingViewWithCallback.f28676b = view;
        for (int i = 0; i < 3; i++) {
            drawingViewWithCallback.f28675a[i].start();
        }
    }

    /* renamed from: c */
    public /* synthetic */ void m30864c() {
        InCallActionFragment.InCallActionFragmentInterface callback = getCallback();
        if (callback != null) {
            callback.onActionSelected(0);
        }
    }

    /* renamed from: d */
    public /* synthetic */ void m30863d() {
        InCallActionFragment.InCallActionFragmentInterface callback = getCallback();
        if (callback != null) {
            callback.onActionSelected(1);
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.incallfragment.BaseAnsweringMethodViewController
    /* renamed from: a */
    public final void mo30868a() {
        this.f21985b.clearAnimation();
        this.f21984a.clearAnimation();
        this.f21987d.stopAnimation();
        this.f21986c.stopAnimation();
        super.mo30868a();
    }

    @Override // com.callapp.contacts.activity.contact.details.incallfragment.BaseAnsweringMethodViewController
    protected int getLayoutResource() {
        return 2131558786;
    }
}
