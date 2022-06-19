package p193e.p194a.p1365y.p1387e;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import com.truecaller.flashsdk.C3909R;
import java.util.Objects;
import p193e.p194a.p1365y.p1381b.AbstractC21629z;
import p193e.p194a.p1365y.p1387e.C21737k;
/* renamed from: e.a.y.e.k */
/* loaded from: classes9-dex2jar.jar:e/a/y/e/k.class */
public class C21737k {

    /* renamed from: a */
    public final View f60546a;

    /* renamed from: b */
    public final AbstractC21629z<C21733i> f60547b;

    /* renamed from: e.a.y.e.k$a */
    /* loaded from: classes9-dex2jar.jar:e/a/y/e/k$a.class */
    public interface AbstractC21738a {
        /* renamed from: s */
        void mo9141s(C21733i c21733i);
    }

    public C21737k(Context context, C21733i[] c21733iArr, final AbstractC21740m abstractC21740m, final AbstractC21738a abstractC21738a, AbstractC21629z<C21733i> abstractC21629z, final long j) {
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(C3909R.layout.layout_emoji_grid, (ViewGroup) null);
        this.f60546a = inflate;
        GridView gridView = (GridView) inflate.findViewById(C3909R.C3911id.grid_view);
        this.f60547b = abstractC21629z;
        C21734j c21734j = new C21734j(inflate.getContext(), c21733iArr == null ? C21741n.f60551c : c21733iArr);
        c21734j.f60542a = new AbstractC21738a() { // from class: e.a.y.e.e
            @Override // p193e.p194a.p1365y.p1387e.C21737k.AbstractC21738a
            /* renamed from: s */
            public final void mo9141s(C21733i c21733i) {
                C21737k c21737k = C21737k.this;
                C21737k.AbstractC21738a abstractC21738a2 = abstractC21738a;
                AbstractC21740m abstractC21740m2 = abstractC21740m;
                long j2 = j;
                Objects.requireNonNull(c21737k);
                abstractC21738a2.mo9141s(c21733i);
                if (abstractC21740m2 != null) {
                    abstractC21740m2.mo9140d(c21737k.f60546a.getContext(), c21733i, j2);
                }
            }
        };
        gridView.setAdapter((ListAdapter) c21734j);
    }
}
