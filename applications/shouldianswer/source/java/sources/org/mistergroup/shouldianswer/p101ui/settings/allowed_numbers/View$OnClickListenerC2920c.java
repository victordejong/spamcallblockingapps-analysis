package org.mistergroup.shouldianswer.p101ui.settings.allowed_numbers;

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
/* renamed from: org.mistergroup.shouldianswer.ui.settings.allowed_numbers.c */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/allowed_numbers/c.class */
public final class View$OnClickListenerC2920c extends RecyclerView.AbstractC0977w implements View.OnClickListener {

    /* renamed from: a */
    private C2918b f8658a;

    /* renamed from: b */
    private final AbstractC2230ek f8659b;

    /* renamed from: c */
    private final C2916a f8660c;

    @AbstractC1634f(m3162b = "ExceptionsViewHolder.kt", m3161c = {33}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.settings.allowed_numbers.ExceptionsViewHolder$bindItem$1")
    /* renamed from: org.mistergroup.shouldianswer.ui.settings.allowed_numbers.c$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/allowed_numbers/c$a.class */
    public static final class C2921a extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f8661a;

        /* renamed from: b */
        Object f8662b;

        /* renamed from: c */
        int f8663c;

        /* renamed from: e */
        final /* synthetic */ C2918b f8665e;

        /* renamed from: f */
        private AbstractC1786ad f8666f;

        /* renamed from: org.mistergroup.shouldianswer.ui.settings.allowed_numbers.c$a$a */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/allowed_numbers/c$a$a.class */
        public static final class C2922a extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f8667a;

            /* renamed from: b */
            final /* synthetic */ C2418d f8668b;

            /* renamed from: c */
            final /* synthetic */ C2921a f8669c;

            /* renamed from: d */
            private AbstractC1786ad f8670d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C2922a(C2418d c2418d, AbstractC1641c abstractC1641c, C2921a c2921a) {
                super(2, abstractC1641c);
                this.f8668b = c2418d;
                this.f8669c = c2921a;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C2922a) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C2922a c2922a = new C2922a(this.f8668b, abstractC1641c, this.f8669c);
                c2922a.f8670d = (AbstractC1786ad) obj;
                return c2922a;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f8667a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8670d;
                    AppCompatTextView appCompatTextView = View$OnClickListenerC2920c.this.f8659b.f6170f;
                    C1694h.m3122a((Object) appCompatTextView, "binding.tvNumber");
                    appCompatTextView.setText(this.f8668b.m1087b());
                    ImageView imageView = View$OnClickListenerC2920c.this.f8659b.f6167c;
                    C1694h.m3122a((Object) imageView, "binding.imgRating");
                    imageView.setVisibility(0);
                    C3134x c3134x = C3134x.f9269a;
                    View d = View$OnClickListenerC2920c.this.f8659b.m5863d();
                    C1694h.m3122a((Object) d, "binding.root");
                    Context context = d.getContext();
                    C1694h.m3122a((Object) context, "binding.root.context");
                    ImageView imageView2 = View$OnClickListenerC2920c.this.f8659b.f6167c;
                    C1694h.m3122a((Object) imageView2, "binding.imgRating");
                    c3134x.m24b(context, imageView2, EnumC2395ag.POSITIVE);
                    AppCompatTextView appCompatTextView2 = View$OnClickListenerC2920c.this.f8659b.f6168d;
                    C1694h.m3122a((Object) appCompatTextView2, "binding.tvCategory");
                    appCompatTextView2.setVisibility(8);
                    AppCompatTextView appCompatTextView3 = View$OnClickListenerC2920c.this.f8659b.f6169e;
                    C1694h.m3122a((Object) appCompatTextView3, "binding.tvComment");
                    appCompatTextView3.setVisibility(8);
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2921a(C2918b c2918b, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            View$OnClickListenerC2920c.this = r5;
            this.f8665e = c2918b;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2921a) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2921a c2921a = new C2921a(this.f8665e, abstractC1641c);
            c2921a.f8666f = (AbstractC1786ad) obj;
            return c2921a;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            Object a = C1622b.m3174a();
            int i = this.f8663c;
            if (i == 0) {
                C1771k.m2979a(obj);
                AbstractC1786ad abstractC1786ad = this.f8666f;
                C2418d m338a = this.f8665e.m338a();
                if (m338a != null) {
                    this.f8661a = abstractC1786ad;
                    this.f8662b = m338a;
                    this.f8663c = 1;
                    if (C1890e.m2686a(C3084c.m192b(), new C2922a(m338a, null, this), this) == a) {
                        return a;
                    }
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C2418d c2418d = (C2418d) this.f8662b;
                AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f8661a;
                C1771k.m2979a(obj);
            }
            return C1775o.f4450a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public View$OnClickListenerC2920c(AbstractC2230ek abstractC2230ek, C2916a c2916a) {
        super(abstractC2230ek.m5863d());
        C1694h.m3117b(abstractC2230ek, "binding");
        C1694h.m3117b(c2916a, "adapter");
        this.f8659b = abstractC2230ek;
        this.f8660c = c2916a;
        View d = this.f8659b.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        d.setOnClickListener(this);
    }

    /* renamed from: a */
    public final void m336a(C2918b c2918b) {
        C1694h.m3117b(c2918b, "item");
        this.f8658a = c2918b;
        if (C2923d.f8671a[c2918b.m337b().ordinal()] != 1) {
            return;
        }
        C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2921a(c2918b, null), 2, null);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C1694h.m3117b(view, "view");
        AbstractC1663b<C2918b, C1775o> m342a = this.f8660c.m342a();
        if (m342a != null) {
            C2918b c2918b = this.f8658a;
            if (c2918b == null) {
                C1694h.m3124a();
            }
            m342a.mo138a(c2918b);
        }
    }
}
