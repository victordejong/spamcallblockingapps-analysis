package p459j.p460a.p613z0.p615n;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
/* renamed from: j.a.z0.n.a */
/* loaded from: classes3-dex2jar.jar:j/a/z0/n/a.class */
public class View$OnTouchListenerC14659a implements View.OnTouchListener {

    /* renamed from: a */
    public final GestureDetector f32741a;

    /* renamed from: j.a.z0.n.a$b */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/n/a$b.class */
    public final class C14661b extends GestureDetector.SimpleOnGestureListener {
        public C14661b() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            View$OnTouchListenerC14659a.this.mo916b();
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            float x = motionEvent2.getX() - motionEvent.getX();
            if (Math.abs(x) <= Math.abs(motionEvent2.getY() - motionEvent.getY()) || Math.abs(x) <= 100.0f || Math.abs(f) <= 100.0f) {
                View$OnTouchListenerC14659a.this.mo916b();
                return false;
            } else if (x > 0.0f) {
                View$OnTouchListenerC14659a.this.m915c();
                return true;
            } else {
                View$OnTouchListenerC14659a.this.m917a();
                return true;
            }
        }
    }

    public View$OnTouchListenerC14659a(Context context) {
        this.f32741a = new GestureDetector(context, new C14661b());
    }

    /* renamed from: a */
    public void m917a() {
    }

    /* renamed from: b */
    public void mo916b() {
        throw null;
    }

    /* renamed from: c */
    public void m915c() {
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f32741a.onTouchEvent(motionEvent);
    }
}
