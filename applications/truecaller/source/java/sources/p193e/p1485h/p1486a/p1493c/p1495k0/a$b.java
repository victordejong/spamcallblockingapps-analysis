package p193e.p1485h.p1486a.p1493c.p1495k0;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.SimpleExoPlayer;
import p193e.p1485h.p1486a.p1493c.p1502r0.C22816e;
/* renamed from: e.h.a.c.k0.a$b */
/* loaded from: classes-dex2jar.jar:e/h/a/c/k0/a$b.class */
public class a$b implements RecyclerView.AbstractC0335q {

    /* renamed from: a */
    public final /* synthetic */ a f62979a;

    public a$b(a aVar) {
        this.f62979a = aVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0335q
    public void onChildViewAttachedToWindow(View view) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0335q
    public void onChildViewDetachedFromWindow(View view) {
        C22816e c22816e = this.f62979a.c;
        if (c22816e == null || !c22816e.itemView.equals(view)) {
            return;
        }
        a aVar = this.f62979a;
        SimpleExoPlayer simpleExoPlayer = aVar.a;
        if (simpleExoPlayer != null) {
            simpleExoPlayer.stop();
        }
        aVar.c = null;
    }
}
