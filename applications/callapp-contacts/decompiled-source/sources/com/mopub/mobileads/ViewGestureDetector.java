package com.mopub.mobileads;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/ViewGestureDetector.class */
public class ViewGestureDetector extends GestureDetector {

    /* renamed from: a  reason: collision with root package name */
    a f34369a;

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/ViewGestureDetector$a.class */
    static final class a extends GestureDetector.SimpleOnGestureListener {

        /* renamed from: a  reason: collision with root package name */
        boolean f34370a = false;

        a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final boolean onSingleTapUp(MotionEvent motionEvent) {
            this.f34370a = true;
            return super.onSingleTapUp(motionEvent);
        }
    }

    public ViewGestureDetector(Context context) {
        this(context, new a());
    }

    private ViewGestureDetector(Context context, a aVar) {
        super(context, aVar);
        this.f34369a = aVar;
        setIsLongpressEnabled(false);
    }

    public boolean isClicked() {
        return this.f34369a.f34370a;
    }

    public void setClicked(boolean z) {
        this.f34369a.f34370a = z;
    }
}
