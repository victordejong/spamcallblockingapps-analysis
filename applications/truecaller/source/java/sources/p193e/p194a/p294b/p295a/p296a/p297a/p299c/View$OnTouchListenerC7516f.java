package p193e.p194a.p294b.p295a.p296a.p297a.p299c;

import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.widget.SearchView;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p294b.p295a.p296a.p297a.p299c.C7505c;
import s1.z.c.l;
/* renamed from: e.a.b.a.a.a.c.f */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/c/f.class */
public final class View$OnTouchListenerC7516f implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ C7505c.C7512g f23810a;

    public View$OnTouchListenerC7516f(C7505c.C7512g c7512g) {
        this.f23810a = c7512g;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        SearchView searchView = this.f23810a.f23805b.f25101f;
        l.d(searchView, "searchView");
        C19286f.m13679Y(searchView, false, 0L, 2);
        this.f23810a.f23805b.f25097b.setOnTouchListener(null);
        return false;
    }
}
