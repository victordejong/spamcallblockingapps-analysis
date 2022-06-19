package p000;

import android.view.View;
import android.widget.ImageView;
/* renamed from: a61$b */
/* loaded from: classes-dex2jar.jar:a61$b.class */
public class a61$b implements View.OnLongClickListener {

    /* renamed from: a */
    public int f63a;

    /* renamed from: b */
    public final /* synthetic */ a61 f64b;

    public a61$b(a61 a61Var) {
        this.f64b = a61Var;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        ImageView imageView = ((a61$c) view.getTag()).f70f;
        if (a61.k(this.f64b) == null || imageView == null) {
            return true;
        }
        a61.k(this.f64b).onClick(imageView);
        return true;
    }
}
