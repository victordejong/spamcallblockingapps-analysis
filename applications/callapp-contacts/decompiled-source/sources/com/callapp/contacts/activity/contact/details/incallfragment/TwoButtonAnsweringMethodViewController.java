package com.callapp.contacts.activity.contact.details.incallfragment;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment;
import com.callapp.contacts.activity.marketplace.ButtonSet;
import com.callapp.contacts.api.ContextRunnable;
import com.callapp.contacts.model.widget.CallIncomingIndicatorView;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.DrawingViewWithCallback;
import com.callapp.contacts.widget.SingleAndMultiOnTouchListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController.class */
public class TwoButtonAnsweringMethodViewController extends BaseAnsweringMethodViewController {

    /* renamed from: a  reason: collision with root package name */
    private final View f12210a;

    /* renamed from: b  reason: collision with root package name */
    private final View f12211b;

    /* renamed from: c  reason: collision with root package name */
    private final CallIncomingIndicatorView f12212c;

    /* renamed from: d  reason: collision with root package name */
    private final CallIncomingIndicatorView f12213d;
    private final DrawingViewWithCallback e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.details.incallfragment.TwoButtonAnsweringMethodViewController$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1.class */
    public class AnonymousClass1 extends SingleAndMultiOnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f12214a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Runnable f12215b;

        /* renamed from: d  reason: collision with root package name */
        private final int f12217d;
        private final int e;
        private int f = -1;
        private int g = -1;
        private float h;
        private float i;
        private int j;

        AnonymousClass1(int i, Runnable runnable) {
            this.f12214a = i;
            this.f12215b = runnable;
            int dimensionPixelOffset = TwoButtonAnsweringMethodViewController.this.getResources().getDimensionPixelOffset(2131165691);
            this.f12217d = dimensionPixelOffset;
            this.e = dimensionPixelOffset;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(double d2) {
            TwoButtonAnsweringMethodViewController.this.e.b(this.f, this.g, d2, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v57, types: [com.callapp.contacts.widget.DrawingViewWithCallback] */
        /* JADX WARN: Type inference failed for: r0v61, types: [com.callapp.contacts.widget.DrawingViewWithCallback] */
        /* JADX WARN: Type inference failed for: r0v9, types: [double] */
        /* JADX WARN: Type inference failed for: r17v0 */
        /* JADX WARN: Type inference failed for: r17v1, types: [double] */
        /* JADX WARN: Type inference failed for: r17v3 */
        /* JADX WARN: Unknown variable types count: 2 */
        @Override // com.callapp.contacts.widget.SingleAndMultiOnTouchListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean a(android.view.View r9, android.view.MotionEvent r10, boolean r11) {
            /*
                Method dump skipped, instructions count: 460
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.details.incallfragment.TwoButtonAnsweringMethodViewController.AnonymousClass1.a(android.view.View, android.view.MotionEvent, boolean):boolean");
        }

        @Override // com.callapp.contacts.widget.SingleAndMultiOnTouchListener
        public final boolean a(boolean z) {
            return false;
        }
    }

    public TwoButtonAnsweringMethodViewController(ViewGroup viewGroup, ButtonSet buttonSet, final DrawingViewWithCallback drawingViewWithCallback, InCallActionFragment.InCallActionFragmentInterface inCallActionFragmentInterface) {
        super(viewGroup, inCallActionFragmentInterface);
        this.e = drawingViewWithCallback;
        CallIncomingIndicatorView callIncomingIndicatorView = (CallIncomingIndicatorView) a(2131362015);
        this.f12212c = callIncomingIndicatorView;
        CallIncomingIndicatorView callIncomingIndicatorView2 = (CallIncomingIndicatorView) a(2131362538);
        this.f12213d = callIncomingIndicatorView2;
        callIncomingIndicatorView.startAnimation();
        callIncomingIndicatorView2.startAnimation();
        View a2 = a(2131362154);
        this.f12210a = a2;
        View a3 = a(2131362158);
        this.f12211b = a3;
        if (buttonSet.isGif()) {
            ImageView imageView = (ImageView) a(2131363032);
            ImageView imageView2 = (ImageView) a(2131363034);
            new GlideUtils.GifPlayer(imageView.getContext(), imageView, buttonSet.getAnswerResourceUrl(), buttonSet.getAnswerCallDrawableRes(), -1, true);
            new GlideUtils.GifPlayer(imageView2.getContext(), imageView2, buttonSet.getDeclineResourceUrl(), buttonSet.getDeclineCallDrawableRes(), -1, true);
        } else {
            a2.startAnimation(AnimationUtils.loadAnimation(getContext(), 2130772005));
            new GlideUtils.GlideRequestBuilder((ImageView) a(2131363032), buttonSet.getAnswerCallDrawableRes(), getContext()).d();
            new GlideUtils.GlideRequestBuilder((ImageView) a(2131363034), buttonSet.getDeclineCallDrawableRes(), getContext()).d();
        }
        a2.setOnTouchListener(a(ThemeUtils.getColor(2131099920), new Runnable() { // from class: com.callapp.contacts.activity.contact.details.incallfragment._$$Lambda$TwoButtonAnsweringMethodViewController$pw4HhKULdVJCV4pZCl_A8jK6FE4
            @Override // java.lang.Runnable
            public final void run() {
                TwoButtonAnsweringMethodViewController.this.d();
            }
        }));
        a3.setOnTouchListener(a(ThemeUtils.getColor(2131099920), new Runnable() { // from class: com.callapp.contacts.activity.contact.details.incallfragment._$$Lambda$TwoButtonAnsweringMethodViewController$pfoYpqa4pKuetYeuPO2WWA_Xem4
            @Override // java.lang.Runnable
            public final void run() {
                TwoButtonAnsweringMethodViewController.this.c();
            }
        }));
        ViewUtils.a(a2, new ContextRunnable() { // from class: com.callapp.contacts.activity.contact.details.incallfragment._$$Lambda$TwoButtonAnsweringMethodViewController$0dWyElrSu_nPzFuN_h_wQmBS7Xg
            @Override // com.callapp.contacts.api.ContextRunnable
            public final void run(Object obj) {
                TwoButtonAnsweringMethodViewController.a(DrawingViewWithCallback.this, (View) obj);
            }
        });
    }

    private View.OnTouchListener a(int i, Runnable runnable) {
        return new AnonymousClass1(i, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(DrawingViewWithCallback drawingViewWithCallback, View view) {
        drawingViewWithCallback.f16478b = view;
        for (int i = 0; i < 3; i++) {
            drawingViewWithCallback.f16477a[i].start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        InCallActionFragment.InCallActionFragmentInterface callback = getCallback();
        if (callback != null) {
            callback.onActionSelected(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        InCallActionFragment.InCallActionFragmentInterface callback = getCallback();
        if (callback != null) {
            callback.onActionSelected(1);
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.incallfragment.BaseAnsweringMethodViewController
    public final void a() {
        this.f12211b.clearAnimation();
        this.f12210a.clearAnimation();
        this.f12213d.stopAnimation();
        this.f12212c.stopAnimation();
        super.a();
    }

    @Override // com.callapp.contacts.activity.contact.details.incallfragment.BaseAnsweringMethodViewController
    protected int getLayoutResource() {
        return 2131558786;
    }
}
