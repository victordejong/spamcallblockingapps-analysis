package com.explorestack.iab.mraid;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
/* renamed from: com.explorestack.iab.mraid.k */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/k.class */
public final class C9578k extends GestureDetector {

    /* renamed from: a */
    final C9579a f32538a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.explorestack.iab.mraid.k$a */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/k$a.class */
    public static final class C9579a extends GestureDetector.SimpleOnGestureListener {

        /* renamed from: a */
        boolean f32539a = false;

        C9579a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final boolean onSingleTapUp(MotionEvent motionEvent) {
            this.f32539a = true;
            return super.onSingleTapUp(motionEvent);
        }
    }

    public C9578k(Context context) {
        this(context, new C9579a());
    }

    private C9578k(Context context, C9579a c9579a) {
        super(context, c9579a);
        this.f32538a = c9579a;
        setIsLongpressEnabled(false);
    }
}
