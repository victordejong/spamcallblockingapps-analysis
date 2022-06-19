package p193e.p194a.p294b.p295a.p296a.p297a.p299c;

import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.tagger.tagPicker.adapter.TagSearchType;
import java.util.List;
import java.util.Objects;
import p1727n3.p1744b0.p1745a.C25570b;
import p1727n3.p1744b0.p1745a.C25586h;
import p1727n3.p1868v.AbstractC27012l0;
import p193e.p1451f.p1452a.ComponentCallbacks2C22236i;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p294b.p295a.p312c.p313a.p315c0.C7699b;
import p193e.p194a.p294b.p355m.C8101s0;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p798g5.p802e0.p803u.C14504a;
import p193e.p194a.p798g5.p802e0.p803u.C14512g;
import s1.a.l;
import s1.f0.r;
import s1.k;
/* renamed from: e.a.b.a.a.a.c.g */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/c/g.class */
public final class C7517g<T> implements AbstractC27012l0<k<? extends String, ? extends List<? extends C8551c>>> {

    /* renamed from: a */
    public final /* synthetic */ C7505c f23811a;

    public C7517g(C7505c c7505c) {
        this.f23811a = c7505c;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(k<? extends String, ? extends List<? extends C8551c>> kVar) {
        k<? extends String, ? extends List<? extends C8551c>> kVar2 = kVar;
        CharSequence charSequence = (CharSequence) kVar2.a;
        if (!(charSequence == null || r.p(charSequence))) {
            C7505c c7505c = this.f23811a;
            List<C8551c> list = (List) kVar2.b;
            l[] lVarArr = C7505c.f23792i;
            Objects.requireNonNull(c7505c);
            boolean isEmpty = list.isEmpty();
            C8101s0 m29547OA = c7505c.m29547OA();
            ImageView imageView = m29547OA.f25099d;
            s1.z.c.l.d(imageView, "noResultIcon");
            C19286f.m13683U(imageView, isEmpty);
            TextView textView = m29547OA.f25098c;
            s1.z.c.l.d(textView, "noResult");
            C19286f.m13683U(textView, isEmpty);
            RecyclerView recyclerView = m29547OA.f25096a;
            s1.z.c.l.d(recyclerView, "categoryGrid");
            C19286f.m13689O(recyclerView);
            RecyclerView recyclerView2 = m29547OA.f25097b;
            s1.z.c.l.d(recyclerView2, "categoryList");
            C19286f.m13683U(recyclerView2, !isEmpty);
            if (isEmpty) {
                return;
            }
            C14512g c14512g = c7505c.f23798e;
            if (c14512g != null) {
                c14512g.m20044e(null, list);
                return;
            }
            c7505c.f23798e = new C14512g(TagSearchType.BIZMON, null, list, (ComponentCallbacks2C22236i) c7505c.f23796c.getValue(), new C7515e(c7505c), 2);
            RecyclerView recyclerView3 = c7505c.m29547OA().f25097b;
            s1.z.c.l.d(recyclerView3, "binding.categoryList");
            recyclerView3.setAdapter(c7505c.f23798e);
            return;
        }
        C7505c c7505c2 = this.f23811a;
        List<C8551c> list2 = (List) kVar2.b;
        l[] lVarArr2 = C7505c.f23792i;
        Objects.requireNonNull(c7505c2);
        boolean isEmpty2 = list2.isEmpty();
        C8101s0 m29547OA2 = c7505c2.m29547OA();
        ImageView imageView2 = m29547OA2.f25099d;
        s1.z.c.l.d(imageView2, "noResultIcon");
        C19286f.m13683U(imageView2, isEmpty2);
        TextView textView2 = m29547OA2.f25098c;
        s1.z.c.l.d(textView2, "noResult");
        C19286f.m13683U(textView2, isEmpty2);
        RecyclerView recyclerView4 = m29547OA2.f25096a;
        s1.z.c.l.d(recyclerView4, "categoryGrid");
        C19286f.m13683U(recyclerView4, !isEmpty2);
        RecyclerView recyclerView5 = m29547OA2.f25097b;
        s1.z.c.l.d(recyclerView5, "categoryList");
        C19286f.m13689O(recyclerView5);
        if (isEmpty2) {
            return;
        }
        C7699b c7699b = c7505c2.f23797d;
        if (c7699b == null) {
            c7505c2.f23797d = new C7699b(list2, new C7514d(c7505c2));
            RecyclerView recyclerView6 = c7505c2.m29547OA().f25096a;
            s1.z.c.l.d(recyclerView6, "binding.categoryGrid");
            recyclerView6.setAdapter(c7505c2.f23797d);
            return;
        }
        s1.z.c.l.e(list2, "filteredCategories");
        C25586h.C25590d m3181a = C25586h.m3181a(new C14504a(c7699b.f24095b, list2), true);
        s1.z.c.l.d(m3181a, "DiffUtil.calculateDiff(C…ies, filteredCategories))");
        c7699b.f24095b = list2;
        m3181a.m3179b(new C25570b(c7699b));
    }
}
