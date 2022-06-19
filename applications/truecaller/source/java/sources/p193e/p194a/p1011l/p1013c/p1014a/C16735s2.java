package p193e.p194a.p1011l.p1013c.p1014a;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import java.util.List;
import java.util.Objects;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.s2 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/s2.class */
public final class C16735s2 extends RecyclerView.AbstractC0313c0 implements AbstractC16729r1 {

    /* renamed from: a */
    public final RecyclerView f46932a;

    /* renamed from: b */
    public final C16720p2 f46933b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16735s2(View view) {
        super(view);
        l.e(view, ViewAction.VIEW);
        View findViewById = view.findViewById(2131364633);
        l.d(findViewById, "view.findViewById(R.id.list)");
        RecyclerView recyclerView = (RecyclerView) findViewById;
        this.f46932a = recyclerView;
        C16720p2 c16720p2 = new C16720p2();
        this.f46933b = c16720p2;
        recyclerView.setLayoutManager(new LinearLayoutManager(view.getContext(), 0, false));
        recyclerView.setAdapter(c16720p2);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16729r1
    /* renamed from: F0 */
    public void mo17067F0(List<C16716o2> list) {
        l.e(list, "reviews");
        C16720p2 c16720p2 = this.f46933b;
        Objects.requireNonNull(c16720p2);
        l.e(list, "<set-?>");
        c16720p2.f46887a.a(c16720p2, C16720p2.f46886b[0], list);
    }
}
