package com.mopub.mobileads;

import android.view.GestureDetector;
import android.view.MotionEvent;
import com.mopub.common.VisibleForTesting;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/ViewGestureDetector.class */
public class ViewGestureDetector extends GestureDetector {

    /* renamed from: a */
    public C2677a f8969a;

    /* renamed from: com.mopub.mobileads.ViewGestureDetector$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/ViewGestureDetector$a.class */
    public static class C2677a extends GestureDetector.SimpleOnGestureListener {

        /* renamed from: a */
        public boolean f8970a = false;

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            this.f8970a = true;
            return super.onSingleTapUp(motionEvent);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ViewGestureDetector(android.content.Context r5) {
        /*
            r4 = this;
            com.mopub.mobileads.ViewGestureDetector$a r0 = new com.mopub.mobileads.ViewGestureDetector$a
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r4
            r1 = r5
            r2 = r6
            r0.<init>(r1, r2)
            r0 = r4
            r1 = r6
            r0.f8969a = r1
            r0 = r4
            r1 = 0
            r0.setIsLongpressEnabled(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.ViewGestureDetector.<init>(android.content.Context):void");
    }

    public boolean isClicked() {
        return this.f8969a.f8970a;
    }

    @VisibleForTesting
    public void setClicked(boolean z) {
        this.f8969a.f8970a = z;
    }
}
