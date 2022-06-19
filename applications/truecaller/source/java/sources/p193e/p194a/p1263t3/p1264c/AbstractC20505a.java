package p193e.p194a.p1263t3.p1264c;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import s1.z.c.l;
/* renamed from: e.a.t3.c.a */
/* loaded from: classes9-dex2jar.jar:e/a/t3/c/a.class */
public abstract class AbstractC20505a extends RecyclerView.AbstractC0313c0 implements AbstractC20518f {

    /* renamed from: a */
    public String f57559a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC20505a(View view) {
        super(view);
        l.e(view, ViewAction.VIEW);
    }

    @Override // p193e.p194a.p682e.C13338z0.AbstractC13339a
    /* renamed from: B */
    public boolean mo9976B() {
        return false;
    }

    @Override // p193e.p194a.p682e.C13338z0.AbstractC13339a
    /* renamed from: F */
    public String mo9975F() {
        return this.f57559a;
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20518f
    /* renamed from: Y */
    public void mo11047Y() {
        this.f57559a = null;
    }

    @Override // p193e.p194a.p682e.C13338z0.AbstractC13339a
    /* renamed from: n */
    public void mo9973n(String str) {
        this.f57559a = str;
    }
}
