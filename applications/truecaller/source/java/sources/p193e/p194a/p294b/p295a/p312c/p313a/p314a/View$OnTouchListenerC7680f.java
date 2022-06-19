package p193e.p194a.p294b.p295a.p312c.p313a.p314a;

import android.view.MotionEvent;
import android.view.View;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7746s;
/* renamed from: e.a.b.a.c.a.a.f */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/a/f.class */
public final class View$OnTouchListenerC7680f implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ C7681g f24070a;

    public View$OnTouchListenerC7680f(C7681g c7681g) {
        this.f24070a = c7681g;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        AbstractC7746s abstractC7746s = this.f24070a.f24072c.f24065f;
        if (abstractC7746s != null) {
            abstractC7746s.mo29326i7(false);
        }
        this.f24070a.f24071b.f24835c.setOnTouchListener(null);
        return false;
    }
}
