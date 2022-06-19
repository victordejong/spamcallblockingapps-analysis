package p193e.p194a.p1138q.p1139a.p1140b;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.truecaller.contactfeedback.C3744R;
import s1.z.c.l;
/* renamed from: e.a.q.a.b.m */
/* loaded from: classes4-dex2jar.jar:e/a/q/a/b/m.class */
public final class C19376m {

    /* renamed from: a */
    public final TextView f53873a;

    /* renamed from: b */
    public final ImageView f53874b;

    public C19376m(View view) {
        l.e(view, "itemView");
        View findViewById = view.findViewById(C3744R.C3746id.name);
        l.d(findViewById, "itemView.findViewById(R.id.name)");
        this.f53873a = (TextView) findViewById;
        View findViewById2 = view.findViewById(C3744R.C3746id.avatar);
        l.d(findViewById2, "itemView.findViewById(R.id.avatar)");
        this.f53874b = (ImageView) findViewById2;
    }
}
