package com.victor.loading.book;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import p092e.p111h.p112a.C3128d;
import p092e.p111h.p112a.C3129e;
/* loaded from: classes2-dex2jar.jar:com/victor/loading/book/BookLoading.class */
public class BookLoading extends FrameLayout {

    /* renamed from: b */
    private ArrayList<PageView> f12553b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.victor.loading.book.BookLoading$a */
    /* loaded from: classes2-dex2jar.jar:com/victor/loading/book/BookLoading$a.class */
    public class C2985a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        boolean f12554a = false;

        /* renamed from: b */
        final /* synthetic */ View f12555b;

        C2985a(BookLoading bookLoading, View view) {
            this.f12555b = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (valueAnimator.getCurrentPlayTime() > 500 && !this.f12554a) {
                this.f12554a = true;
                this.f12555b.bringToFront();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.victor.loading.book.BookLoading$b */
    /* loaded from: classes2-dex2jar.jar:com/victor/loading/book/BookLoading$b.class */
    public class C2986b implements Animator.AnimatorListener {

        /* renamed from: a */
        final /* synthetic */ View f12556a;

        C2986b(BookLoading bookLoading, View view) {
            this.f12556a = view;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (((Integer) this.f12556a.getTag(C3129e.app_name)).intValue() == 4) {
                this.f12556a.bringToFront();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.victor.loading.book.BookLoading$c */
    /* loaded from: classes2-dex2jar.jar:com/victor/loading/book/BookLoading$c.class */
    public static class HandlerC2987c extends Handler {

        /* renamed from: a */
        private WeakReference<BookLoading> f12557a;

        public HandlerC2987c(BookLoading bookLoading) {
            this.f12557a = new WeakReference<>(bookLoading);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            BookLoading bookLoading = this.f12557a.get();
            if (bookLoading != null) {
                bookLoading.m616d();
                sendMessageDelayed(obtainMessage(), 5000L);
            }
        }
    }

    public BookLoading(Context context) {
        super(context);
        m617c(context);
    }

    public BookLoading(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m617c(context);
    }

    public BookLoading(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m617c(context);
    }

    /* renamed from: b */
    private void m618b() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        for (int i = 0; i < 5; i++) {
            PageView pageView = new PageView(getContext());
            addView(pageView, layoutParams);
            pageView.setTag(C3129e.app_name, Integer.valueOf(i));
            this.f12553b.add(pageView);
        }
    }

    /* renamed from: c */
    private void m617c(Context context) {
        LayoutInflater.from(context).inflate(C3128d.book_loading, (ViewGroup) this, true);
        this.f12553b = new ArrayList<>();
        new HandlerC2987c(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m616d() {
        m615e(this.f12553b.get(4), 200L);
        m615e(this.f12553b.get(4), 1200L);
        m615e(this.f12553b.get(3), 1400L);
        for (int i = 4; i >= 0; i--) {
            m615e(this.f12553b.get(i), (((4 - i) * 200) / 2) + 3000);
        }
    }

    /* renamed from: e */
    private void m615e(View view, long j) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "rotationY", 0.0f, -180.0f);
        ofFloat.setDuration(1000L);
        ofFloat.setStartDelay(j);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.addUpdateListener(new C2985a(this, view));
        ofFloat.addListener(new C2986b(this, view));
        ofFloat.start();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        m618b();
    }
}
