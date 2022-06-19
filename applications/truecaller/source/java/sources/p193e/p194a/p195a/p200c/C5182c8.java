package p193e.p194a.p195a.p200c;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.a.c.c8 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/c8.class */
public final class C5182c8 extends RecyclerView.AbstractC0313c0 implements AbstractC5838z7 {

    /* renamed from: a */
    public final g f17780a;

    /* renamed from: b */
    public final View f17781b;

    /* renamed from: e.a.a.c.c8$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/c8$a.class */
    public static final class View$OnClickListenerC5183a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ a f17782a;

        public View$OnClickListenerC5183a(a aVar) {
            this.f17782a = aVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f17782a.invoke();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5182c8(View view) {
        super(view);
        l.e(view, ViewAction.VIEW);
        this.f17781b = view;
        this.f17780a = C19286f.m13660s(view, 2131366265);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5838z7
    public void setOnClickListener(a<s> aVar) {
        l.e(aVar, "listener");
        this.f17781b.setOnClickListener(new View$OnClickListenerC5183a(aVar));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5838z7
    public void setText(String str) {
        l.e(str, "text");
        TextView textView = (TextView) this.f17780a.getValue();
        l.d(textView, "textView");
        textView.setText(str);
    }
}
