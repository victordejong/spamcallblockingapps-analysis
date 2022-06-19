package org.mistergroup.shouldianswer.p101ui.settings.reported_numbers;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.customview.p026a.AbstractC0610a;
import androidx.databinding.C0651f;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p077b.p078a.AbstractC1632d;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.model.NumberReport;
import org.mistergroup.shouldianswer.p097a.AbstractC2230ek;
/* renamed from: org.mistergroup.shouldianswer.ui.settings.reported_numbers.a */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/reported_numbers/a.class */
public final class C3024a extends RecyclerView.AbstractC0945a<RecyclerView.AbstractC0977w> {

    /* renamed from: a */
    private AbstractC1663b<? super NumberReport, C1775o> f8862a;

    /* renamed from: b */
    private List<C3026b> f8863b;

    /* renamed from: c */
    private final Context f8864c;

    @AbstractC1634f(m3162b = "ReportsAdapter.kt", m3161c = {19, 45}, m3160d = "getItems", m3159e = "org.mistergroup.shouldianswer.ui.settings.reported_numbers.ReportsAdapter")
    /* renamed from: org.mistergroup.shouldianswer.ui.settings.reported_numbers.a$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/reported_numbers/a$a.class */
    public static final class C3025a extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f8865a;

        /* renamed from: b */
        int f8866b;

        /* renamed from: d */
        Object f8868d;

        /* renamed from: e */
        Object f8869e;

        /* renamed from: f */
        Object f8870f;

        /* renamed from: g */
        Object f8871g;

        /* renamed from: h */
        Object f8872h;

        /* renamed from: i */
        Object f8873i;

        /* renamed from: j */
        Object f8874j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C3025a(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            C3024a.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f8865a = obj;
            this.f8866b |= AbstractC0610a.INVALID_ID;
            return C3024a.this.m279a(null, this);
        }
    }

    public C3024a(Context context) {
        C1694h.m3117b(context, "context");
        this.f8864c = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0132  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x02cb -> B:68:0x02d1). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m279a(java.lang.String r9, kotlin.p075c.AbstractC1641c<? super java.util.List<org.mistergroup.shouldianswer.p101ui.settings.reported_numbers.C3026b>> r10) {
        /*
            Method dump skipped, instructions count: 738
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.settings.reported_numbers.C3024a.m279a(java.lang.String, kotlin.c.c):java.lang.Object");
    }

    /* renamed from: a */
    public final AbstractC1663b<NumberReport, C1775o> m280a() {
        return this.f8862a;
    }

    /* renamed from: a */
    public final void m278a(List<C3026b> list) {
        C1694h.m3117b(list, "items");
        this.f8863b = list;
        notifyDataSetChanged();
    }

    /* renamed from: a */
    public final void m277a(AbstractC1663b<? super NumberReport, C1775o> abstractC1663b) {
        C1694h.m3117b(abstractC1663b, "onItemClickCallback");
        this.f8862a = abstractC1663b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public int getItemCount() {
        List<C3026b> list = this.f8863b;
        return list != null ? list.size() : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public int getItemViewType(int i) {
        int i2;
        List<C3026b> list = this.f8863b;
        if (list != null) {
            if (list == null) {
                C1694h.m3124a();
            }
            i2 = list.get(i).m276a();
        } else {
            i2 = 0;
        }
        return i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public void onBindViewHolder(RecyclerView.AbstractC0977w abstractC0977w, int i) {
        C3026b c3026b;
        C1694h.m3117b(abstractC0977w, "holder");
        List<C3026b> list = this.f8863b;
        if (list != null) {
            if (list == null) {
                C1694h.m3124a();
            }
            c3026b = list.get(i);
        } else {
            c3026b = null;
        }
        if (c3026b == null || !(abstractC0977w instanceof View$OnClickListenerC3028c)) {
            return;
        }
        ((View$OnClickListenerC3028c) abstractC0977w).m262a(c3026b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public RecyclerView.AbstractC0977w onCreateViewHolder(ViewGroup viewGroup, int i) {
        C1694h.m3117b(viewGroup, "parent");
        AbstractC2230ek abstractC2230ek = (AbstractC2230ek) C0651f.m5843a(LayoutInflater.from(viewGroup.getContext()), 2131558524, viewGroup, false);
        C1694h.m3122a((Object) abstractC2230ek, "binding");
        return new View$OnClickListenerC3028c(abstractC2230ek, this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public void onViewRecycled(RecyclerView.AbstractC0977w abstractC0977w) {
        C1694h.m3117b(abstractC0977w, "holder");
        super.onViewRecycled(abstractC0977w);
    }
}
