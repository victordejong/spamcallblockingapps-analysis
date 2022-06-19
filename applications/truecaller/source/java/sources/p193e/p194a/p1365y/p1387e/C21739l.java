package p193e.p194a.p1365y.p1387e;

import android.content.Context;
import android.widget.GridView;
import android.widget.ListAdapter;
import com.truecaller.flashsdk.C3909R;
import java.util.Objects;
import p193e.p194a.p1365y.p1381b.AbstractC21629z;
import p193e.p194a.p1365y.p1387e.C21737k;
/* renamed from: e.a.y.e.l */
/* loaded from: classes9-dex2jar.jar:e/a/y/e/l.class */
public class C21739l extends C21737k implements AbstractC21740m {

    /* renamed from: c */
    public final C21734j f60548c;

    public C21739l(Context context, C21733i[] c21733iArr, AbstractC21740m abstractC21740m, final C21737k.AbstractC21738a abstractC21738a, AbstractC21629z<C21733i> abstractC21629z, final long j) {
        super(context, null, null, abstractC21738a, abstractC21629z, j);
        C21734j c21734j = new C21734j(context, this.f60547b.getAll());
        this.f60548c = c21734j;
        c21734j.f60542a = new C21737k.AbstractC21738a() { // from class: e.a.y.e.f
            @Override // p193e.p194a.p1365y.p1387e.C21737k.AbstractC21738a
            /* renamed from: s */
            public final void mo9141s(C21733i c21733i) {
                C21739l c21739l = C21739l.this;
                C21737k.AbstractC21738a abstractC21738a2 = abstractC21738a;
                AbstractC21740m abstractC21740m2 = r7;
                long j2 = j;
                Objects.requireNonNull(c21739l);
                abstractC21738a2.mo9141s(c21733i);
                if (abstractC21740m2 != null) {
                    abstractC21740m2.mo9140d(c21739l.f60546a.getContext(), c21733i, j2);
                }
            }
        };
        ((GridView) this.f60546a.findViewById(C3909R.C3911id.grid_view)).setAdapter((ListAdapter) c21734j);
    }

    @Override // p193e.p194a.p1365y.p1387e.AbstractC21740m
    /* renamed from: d */
    public void mo9140d(Context context, C21733i c21733i, long j) {
        this.f60547b.push(c21733i);
        C21734j c21734j = this.f60548c;
        if (c21734j != null) {
            c21734j.notifyDataSetChanged();
        }
        this.f60547b.mo9332d(j);
    }
}
