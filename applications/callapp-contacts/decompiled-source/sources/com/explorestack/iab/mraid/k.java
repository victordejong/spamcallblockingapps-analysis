package com.explorestack.iab.mraid;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/k.class */
public final class k extends GestureDetector {

    /* renamed from: a  reason: collision with root package name */
    final a f19157a;

    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/k$a.class */
    static final class a extends GestureDetector.SimpleOnGestureListener {

        /* renamed from: a  reason: collision with root package name */
        boolean f19158a = false;

        a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final boolean onSingleTapUp(MotionEvent motionEvent) {
            this.f19158a = true;
            return super.onSingleTapUp(motionEvent);
        }
    }

    public k(Context context) {
        this(context, new a());
    }

    private k(Context context, a aVar) {
        super(context, aVar);
        this.f19157a = aVar;
        setIsLongpressEnabled(false);
    }
}
