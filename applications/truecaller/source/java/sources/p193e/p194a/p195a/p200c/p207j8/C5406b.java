package p193e.p194a.p195a.p200c.p207j8;

import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.a.c.j8.b */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/j8/b.class */
public final class C5406b extends RecyclerView.AbstractC0313c0 implements AbstractC5408c {

    /* renamed from: a */
    public final g f18493a;

    /* renamed from: e.a.a.c.j8.b$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/j8/b$a.class */
    public static final class View$OnClickListenerC5407a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ a f18494a;

        public View$OnClickListenerC5407a(a aVar) {
            this.f18494a = aVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f18494a.invoke();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5406b(View view) {
        super(view);
        l.e(view, ViewAction.VIEW);
        this.f18493a = C19286f.m13660s(view, 2131364231);
    }

    /* renamed from: N4 */
    public final ImageView m33174N4() {
        return (ImageView) this.f18493a.getValue();
    }

    @Override // p193e.p194a.p195a.p200c.p207j8.AbstractC5408c
    /* renamed from: P1 */
    public void mo33173P1(int i) {
        ImageView m33174N4 = m33174N4();
        l.d(m33174N4, "imageView");
        C17891a1.C17902k.m15664K1(m33174N4.getContext()).m8965A(Integer.valueOf(i)).m8427O(m33174N4());
    }

    @Override // p193e.p194a.p195a.p200c.p207j8.AbstractC5408c
    public void setOnClickListener(a<s> aVar) {
        l.e(aVar, "listener");
        m33174N4().setOnClickListener(new View$OnClickListenerC5407a(aVar));
    }
}
