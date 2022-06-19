package p193e.p194a.p195a.p200c;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.chip.SimpleChipXView;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.a.c.p7 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/p7.class */
public final class C5657p7 extends RecyclerView.AbstractC0313c0 implements AbstractC5681q7 {

    /* renamed from: a */
    public final g f19013a;

    /* renamed from: e.a.a.c.p7$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/p7$a.class */
    public static final class View$OnClickListenerC5658a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ a f19014a;

        public View$OnClickListenerC5658a(a aVar) {
            this.f19014a = aVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f19014a.invoke();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5657p7(View view) {
        super(view);
        l.e(view, ViewAction.VIEW);
        this.f19013a = C19286f.m13660s(view, 2131362760);
    }

    /* renamed from: N4 */
    public final SimpleChipXView m32797N4() {
        return (SimpleChipXView) this.f19013a.getValue();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5681q7
    public void setIcon(int i) {
        SimpleChipXView.m35695f1(m32797N4(), i, 0, 2);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5681q7
    public void setOnClickListener(a<s> aVar) {
        l.e(aVar, "listener");
        m32797N4().setOnClickListener(new View$OnClickListenerC5658a(aVar));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5681q7
    /* renamed from: y0 */
    public void mo32786y0(int i) {
        m32797N4().setTitle(i);
    }
}
