package p193e.p194a.p294b.p295a.p296a.p297a.p300k0;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.ComponentCallbacks2C22236i;
import p193e.p194a.p294b.p355m.C8049a1;
import s1.z.c.l;
/* renamed from: e.a.b.a.a.a.k0.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/k0/a.class */
public final class C7564a extends RecyclerView.AbstractC0317g<C7566c> {

    /* renamed from: a */
    public List<String> f23883a;

    /* renamed from: b */
    public final ComponentCallbacks2C22236i f23884b;

    public C7564a(List<String> list, ComponentCallbacks2C22236i componentCallbacks2C22236i) {
        l.e(list, "imageUrls");
        l.e(componentCallbacks2C22236i, "glideRequestManager");
        this.f23883a = list;
        this.f23884b = componentCallbacks2C22236i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f23883a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(C7566c c7566c, int i) {
        C7566c c7566c2 = c7566c;
        l.e(c7566c2, "holder");
        String str = this.f23883a.get(i);
        ComponentCallbacks2C22236i componentCallbacks2C22236i = this.f23884b;
        l.e(str, "imageUrl");
        l.e(componentCallbacks2C22236i, "glideRequestManager");
        componentCallbacks2C22236i.mo8407r(str).m8427O(((C8049a1) c7566c2.f23888a.m13418a(c7566c2, C7566c.f23887b[0])).f24785a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C7566c onCreateViewHolder(ViewGroup viewGroup, int i) {
        View inflate = C22128a.m8628e1(viewGroup, "parent").inflate(C3478R.layout.layout_biz_image, viewGroup, false);
        l.d(inflate, ViewAction.VIEW);
        return new C7566c(inflate);
    }
}
