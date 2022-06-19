package p193e.p194a.p1275v.p1276a.p1302y;

import android.view.View;
import com.truecaller.common.p156ui.ShimmerLoadingView;
import com.truecaller.details_view.C3857R;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.v.a.y.e */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/y/e.class */
public final class C20871e extends m implements a<ShimmerLoadingView> {

    /* renamed from: b */
    public final /* synthetic */ C20873g f58653b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20871e(C20873g c20873g) {
        super(0);
        this.f58653b = c20873g;
    }

    public Object invoke() {
        View findViewById = this.f58653b.findViewById(C3857R.C3859id.adShimmerLoadingView);
        l.d(findViewById, "findViewById(R.id.adShimmerLoadingView)");
        return (ShimmerLoadingView) findViewById;
    }
}
