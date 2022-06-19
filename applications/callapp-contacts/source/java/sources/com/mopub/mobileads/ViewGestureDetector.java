package com.mopub.mobileads;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/ViewGestureDetector.class */
public class ViewGestureDetector extends GestureDetector {

    /* renamed from: a */
    C16846a f59653a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.mobileads.ViewGestureDetector$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/ViewGestureDetector$a.class */
    public static final class C16846a extends GestureDetector.SimpleOnGestureListener {

        /* renamed from: a */
        boolean f59654a = false;

        C16846a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final boolean onSingleTapUp(MotionEvent motionEvent) {
            this.f59654a = true;
            return super.onSingleTapUp(motionEvent);
        }
    }

    public ViewGestureDetector(Context context) {
        this(context, new C16846a());
    }

    private ViewGestureDetector(Context context, C16846a c16846a) {
        super(context, c16846a);
        this.f59653a = c16846a;
        setIsLongpressEnabled(false);
    }

    public boolean isClicked() {
        return this.f59653a.f59654a;
    }

    public void setClicked(boolean z) {
        this.f59653a.f59654a = z;
    }
}
