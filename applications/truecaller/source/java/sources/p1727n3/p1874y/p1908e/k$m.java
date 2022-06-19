package p1727n3.p1874y.p1908e;

import android.content.Context;
import android.view.View;
import android.widget.ImageButton;
import androidx.media2.widget.C0285R;
import p1727n3.p1807k.p1809b.C26467a;
/* renamed from: n3.y.e.k$m */
/* loaded from: classes-dex2jar.jar:n3/y/e/k$m.class */
public class k$m implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ k f77549a;

    public k$m(k kVar) {
        this.f77549a = kVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        k kVar = this.f77549a;
        if (kVar.e == null) {
            return;
        }
        boolean z = !kVar.v;
        if (z) {
            ImageButton imageButton = kVar.m0;
            Context context = kVar.getContext();
            int i = C0285R.C0286drawable.media2_widget_ic_fullscreen_exit;
            Object obj = C26467a.f74235a;
            imageButton.setImageDrawable(C26467a.C26470c.m1789b(context, i));
            k kVar2 = this.f77549a;
            kVar2.O.setImageDrawable(C26467a.C26470c.m1789b(kVar2.getContext(), i));
        } else {
            ImageButton imageButton2 = kVar.m0;
            Context context2 = kVar.getContext();
            int i2 = C0285R.C0286drawable.media2_widget_ic_fullscreen;
            Object obj2 = C26467a.f74235a;
            imageButton2.setImageDrawable(C26467a.C26470c.m1789b(context2, i2));
            k kVar3 = this.f77549a;
            kVar3.O.setImageDrawable(C26467a.C26470c.m1789b(kVar3.getContext(), i2));
        }
        View view2 = this.f77549a;
        ((k) view2).v = z;
        ((k) view2).e.m153a(view2, z);
    }
}
