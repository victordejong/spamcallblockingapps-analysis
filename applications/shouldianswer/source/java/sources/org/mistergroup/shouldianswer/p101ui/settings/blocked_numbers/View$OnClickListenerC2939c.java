package org.mistergroup.shouldianswer.p101ui.settings.blocked_numbers;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1890e;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.model.C2418d;
import org.mistergroup.shouldianswer.model.EnumC2395ag;
import org.mistergroup.shouldianswer.p097a.AbstractC2230ek;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3134x;
/* renamed from: org.mistergroup.shouldianswer.ui.settings.blocked_numbers.c */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocked_numbers/c.class */
public final class View$OnClickListenerC2939c extends RecyclerView.AbstractC0977w implements View.OnClickListener {

    /* renamed from: a */
    private C2937b f8724a;

    /* renamed from: b */
    private final AbstractC2230ek f8725b;

    /* renamed from: c */
    private final C2935a f8726c;

    @AbstractC1634f(m3162b = "ExceptionsViewHolder.kt", m3161c = {33}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.settings.blocked_numbers.ExceptionsViewHolder$bindItem$1")
    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocked_numbers.c$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a.class */
    public static final class C2940a extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f8727a;

        /* renamed from: b */
        Object f8728b;

        /* renamed from: c */
        int f8729c;

        /* renamed from: e */
        final /* synthetic */ C2937b f8731e;

        /* renamed from: f */
        private AbstractC1786ad f8732f;

        /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocked_numbers.c$a$a */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocked_numbers/c$a$a.class */
        public static final class C2941a extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f8733a;

            /* renamed from: b */
            final /* synthetic */ C2418d f8734b;

            /* renamed from: c */
            final /* synthetic */ C2940a f8735c;

            /* renamed from: d */
            private AbstractC1786ad f8736d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C2941a(C2418d c2418d, AbstractC1641c abstractC1641c, C2940a c2940a) {
                super(2, abstractC1641c);
                this.f8734b = c2418d;
                this.f8735c = c2940a;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C2941a) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C2941a c2941a = new C2941a(this.f8734b, abstractC1641c, this.f8735c);
                c2941a.f8736d = (AbstractC1786ad) obj;
                return c2941a;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f8733a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8736d;
                    AppCompatTextView appCompatTextView = View$OnClickListenerC2939c.this.f8725b.f6170f;
                    C1694h.m3122a((Object) appCompatTextView, "binding.tvNumber");
                    appCompatTextView.setText(this.f8734b.m1087b());
                    ImageView imageView = View$OnClickListenerC2939c.this.f8725b.f6167c;
                    C1694h.m3122a((Object) imageView, "binding.imgRating");
                    imageView.setVisibility(0);
                    C3134x c3134x = C3134x.f9269a;
                    View d = View$OnClickListenerC2939c.this.f8725b.m5863d();
                    C1694h.m3122a((Object) d, "binding.root");
                    Context context = d.getContext();
                    C1694h.m3122a((Object) context, "binding.root.context");
                    ImageView imageView2 = View$OnClickListenerC2939c.this.f8725b.f6167c;
                    C1694h.m3122a((Object) imageView2, "binding.imgRating");
                    c3134x.m24b(context, imageView2, EnumC2395ag.NEGATIVE);
                    AppCompatTextView appCompatTextView2 = View$OnClickListenerC2939c.this.f8725b.f6168d;
                    C1694h.m3122a((Object) appCompatTextView2, "binding.tvCategory");
                    appCompatTextView2.setVisibility(8);
                    AppCompatTextView appCompatTextView3 = View$OnClickListenerC2939c.this.f8725b.f6169e;
                    C1694h.m3122a((Object) appCompatTextView3, "binding.tvComment");
                    appCompatTextView3.setVisibility(8);
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2940a(C2937b c2937b, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            View$OnClickListenerC2939c.this = r5;
            this.f8731e = c2937b;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2940a) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2940a c2940a = new C2940a(this.f8731e, abstractC1641c);
            c2940a.f8732f = (AbstractC1786ad) obj;
            return c2940a;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            Object a = C1622b.m3174a();
            int i = this.f8729c;
            if (i == 0) {
                C1771k.m2979a(obj);
                AbstractC1786ad abstractC1786ad = this.f8732f;
                C2418d m323a = this.f8731e.m323a();
                this.f8727a = abstractC1786ad;
                this.f8728b = m323a;
                this.f8729c = 1;
                if (C1890e.m2686a(C3084c.m192b(), new C2941a(m323a, null, this), this) == a) {
                    return a;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C2418d c2418d = (C2418d) this.f8728b;
                AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f8727a;
                C1771k.m2979a(obj);
            }
            return C1775o.f4450a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public View$OnClickListenerC2939c(AbstractC2230ek abstractC2230ek, C2935a c2935a) {
        super(abstractC2230ek.m5863d());
        C1694h.m3117b(abstractC2230ek, "binding");
        C1694h.m3117b(c2935a, "adapter");
        this.f8725b = abstractC2230ek;
        this.f8726c = c2935a;
        View d = this.f8725b.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        d.setOnClickListener(this);
    }

    /* renamed from: a */
    public final void m321a(C2937b c2937b) {
        C1694h.m3117b(c2937b, "item");
        this.f8724a = c2937b;
        if (C2942d.f8737a[c2937b.m322b().ordinal()] != 1) {
            return;
        }
        C1892g.m2677a(C1843bd.f4587a, null, null, new C2940a(c2937b, null), 3, null);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C1694h.m3117b(view, "view");
        AbstractC1663b<C2937b, C1775o> m327a = this.f8726c.m327a();
        if (m327a != null) {
            C2937b c2937b = this.f8724a;
            if (c2937b == null) {
                C1694h.m3124a();
            }
            m327a.mo138a(c2937b);
        }
    }
}
