package p193e.p194a.p294b.p295a.p308b.p310j;

import android.view.View;
import android.widget.ImageView;
import java.util.Objects;
import p193e.p1451f.p1452a.ComponentCallbacks2C22236i;
import p193e.p194a.p294b.p355m.C8061e1;
import s1.z.b.l;
/* renamed from: e.a.b.a.b.j.f */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/b/j/f.class */
public final class View$OnClickListenerC7662f implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C8061e1 f24042a;

    /* renamed from: b */
    public final /* synthetic */ l f24043b;

    public View$OnClickListenerC7662f(C8061e1 c8061e1, ComponentCallbacks2C22236i componentCallbacks2C22236i, String str, l lVar, int i, int i2) {
        this.f24042a = c8061e1;
        this.f24043b = lVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        l lVar = this.f24043b;
        ImageView imageView = this.f24042a.f24854b;
        s1.z.c.l.d(imageView, "image");
        Object tag = imageView.getTag();
        Objects.requireNonNull(tag, "null cannot be cast to non-null type kotlin.String");
        lVar.d((String) tag);
    }
}
