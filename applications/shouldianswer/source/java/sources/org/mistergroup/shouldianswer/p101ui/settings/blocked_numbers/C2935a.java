package org.mistergroup.shouldianswer.p101ui.settings.blocked_numbers;

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
import org.mistergroup.shouldianswer.p097a.AbstractC2230ek;
/* renamed from: org.mistergroup.shouldianswer.ui.settings.blocked_numbers.a */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocked_numbers/a.class */
public final class C2935a extends RecyclerView.AbstractC0945a<RecyclerView.AbstractC0977w> {

    /* renamed from: a */
    private AbstractC1663b<? super C2937b, C1775o> f8711a;

    /* renamed from: b */
    private List<C2937b> f8712b;

    /* renamed from: c */
    private final Context f8713c;

    @AbstractC1634f(m3162b = "ExceptionsAdapter.kt", m3161c = {21, 21}, m3160d = "getItems", m3159e = "org.mistergroup.shouldianswer.ui.settings.blocked_numbers.ExceptionsAdapter")
    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocked_numbers.a$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocked_numbers/a$a.class */
    public static final class C2936a extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f8714a;

        /* renamed from: b */
        int f8715b;

        /* renamed from: d */
        Object f8717d;

        /* renamed from: e */
        Object f8718e;

        /* renamed from: f */
        boolean f8719f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2936a(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            C2935a.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f8714a = obj;
            this.f8715b |= AbstractC0610a.INVALID_ID;
            return C2935a.this.m324a(false, this);
        }
    }

    public C2935a(Context context) {
        C1694h.m3117b(context, "context");
        this.f8713c = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0104 A[LOOP:0: B:29:0x00fb->B:31:0x0104, LOOP_END] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m324a(boolean r7, kotlin.p075c.AbstractC1641c<? super java.util.List<org.mistergroup.shouldianswer.p101ui.settings.blocked_numbers.C2937b>> r8) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.settings.blocked_numbers.C2935a.m324a(boolean, kotlin.c.c):java.lang.Object");
    }

    /* renamed from: a */
    public final AbstractC1663b<C2937b, C1775o> m327a() {
        return this.f8711a;
    }

    /* renamed from: a */
    public final void m326a(List<C2937b> list) {
        C1694h.m3117b(list, "items");
        this.f8712b = list;
        notifyDataSetChanged();
    }

    /* renamed from: a */
    public final void m325a(AbstractC1663b<? super C2937b, C1775o> abstractC1663b) {
        C1694h.m3117b(abstractC1663b, "onItemClickCallback");
        this.f8711a = abstractC1663b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public int getItemCount() {
        List<C2937b> list = this.f8712b;
        return list != null ? list.size() : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public int getItemViewType(int i) {
        int i2;
        List<C2937b> list = this.f8712b;
        if (list != null) {
            if (list == null) {
                C1694h.m3124a();
            }
            i2 = list.get(i).m322b().ordinal();
        } else {
            i2 = 0;
        }
        return i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public void onBindViewHolder(RecyclerView.AbstractC0977w abstractC0977w, int i) {
        C2937b c2937b;
        C1694h.m3117b(abstractC0977w, "holder");
        List<C2937b> list = this.f8712b;
        if (list != null) {
            if (list == null) {
                C1694h.m3124a();
            }
            c2937b = list.get(i);
        } else {
            c2937b = null;
        }
        if (c2937b == null || !(abstractC0977w instanceof View$OnClickListenerC2939c)) {
            return;
        }
        ((View$OnClickListenerC2939c) abstractC0977w).m321a(c2937b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public RecyclerView.AbstractC0977w onCreateViewHolder(ViewGroup viewGroup, int i) {
        C1694h.m3117b(viewGroup, "parent");
        AbstractC2230ek abstractC2230ek = (AbstractC2230ek) C0651f.m5843a(LayoutInflater.from(viewGroup.getContext()), 2131558524, viewGroup, false);
        C1694h.m3122a((Object) abstractC2230ek, "binding");
        return new View$OnClickListenerC2939c(abstractC2230ek, this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public void onViewRecycled(RecyclerView.AbstractC0977w abstractC0977w) {
        C1694h.m3117b(abstractC0977w, "holder");
        super.onViewRecycled(abstractC0977w);
    }
}
