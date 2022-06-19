package com.mopub.mobileads;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import com.mopub.common.VisibleForTesting;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/ViewGestureDetector.class */
public class ViewGestureDetector extends GestureDetector {

    /* renamed from: a */
    public C1120a f4983a;

    /* renamed from: com.mopub.mobileads.ViewGestureDetector$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/ViewGestureDetector$a.class */
    public static class C1120a extends GestureDetector.SimpleOnGestureListener {

        /* renamed from: a */
        public boolean f4984a = false;

        /* renamed from: a */
        public boolean m3505a() {
            return this.f4984a;
        }

        /* renamed from: b */
        public void m3504b() {
            this.f4984a = false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            this.f4984a = true;
            return super.onSingleTapUp(motionEvent);
        }
    }

    public ViewGestureDetector(Context context) {
        this(context, new C1120a());
    }

    public ViewGestureDetector(Context context, C1120a c1120a) {
        super(context, c1120a);
        this.f4983a = c1120a;
        setIsLongpressEnabled(false);
    }

    /* renamed from: a */
    public void m3506a() {
        this.f4983a.m3504b();
    }

    public boolean isClicked() {
        return this.f4983a.m3505a();
    }

    @VisibleForTesting
    public void setClicked(boolean z) {
        this.f4983a.f4984a = z;
    }
}
