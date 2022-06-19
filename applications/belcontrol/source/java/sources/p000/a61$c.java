package p000;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
/* renamed from: a61$c */
/* loaded from: classes-dex2jar.jar:a61$c.class */
public class a61$c {

    /* renamed from: a */
    public TextView f65a;

    /* renamed from: b */
    public TextView f66b;

    /* renamed from: c */
    public TextView f67c;

    /* renamed from: d */
    public TextView f68d;

    /* renamed from: e */
    public ImageView f69e;

    /* renamed from: f */
    public ImageView f70f;

    /* renamed from: g */
    public ImageView f71g;

    /* renamed from: h */
    public View f72h;

    /* renamed from: i */
    public a61$b f73i;

    /* renamed from: j */
    public Object f74j;

    public a61$c(a61 a61Var, View view) {
        this.f74j = view.getTag();
        this.f65a = (TextView) view.findViewById(2131362130);
        this.f66b = (TextView) view.findViewById(2131362303);
        this.f68d = (TextView) view.findViewById(2131362997);
        this.f67c = (TextView) view.findViewById(2131362796);
        this.f69e = (ImageView) view.findViewById(2131363397);
        this.f71g = (ImageView) view.findViewById(2131361961);
        this.f70f = (ImageView) view.findViewById(2131362968);
        LinearLayout linearLayout = (LinearLayout) view.findViewById(2131361879);
        ImageView imageView = (ImageView) view.findViewById(2131362302);
        if (imageView != null) {
            imageView.setColorFilter(fa1.m1840j().getResources().getColor(2131100163));
        }
        View findViewById = view.findViewById(2131361930);
        this.f72h = findViewById;
        if (findViewById != null) {
            findViewById.setOnClickListener(a61.k(a61Var));
        }
        view.setOnClickListener(a61.k(a61Var));
        this.f73i = new a61$b(a61Var);
        this.f70f.setOnClickListener(a61.k(a61Var));
        view.setOnLongClickListener(this.f73i);
        view.setTag(this);
    }
}
