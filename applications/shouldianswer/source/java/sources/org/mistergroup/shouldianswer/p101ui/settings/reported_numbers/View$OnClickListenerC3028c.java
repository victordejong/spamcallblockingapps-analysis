package org.mistergroup.shouldianswer.p101ui.settings.reported_numbers;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import kotlin.p081e.p083b.C1705p;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.model.C2385ac;
import org.mistergroup.shouldianswer.model.EnumC2395ag;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.model.NumberReport;
import org.mistergroup.shouldianswer.p097a.AbstractC2230ek;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3134x;
/* renamed from: org.mistergroup.shouldianswer.ui.settings.reported_numbers.c */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/reported_numbers/c.class */
public final class View$OnClickListenerC3028c extends RecyclerView.AbstractC0977w implements View.OnClickListener {

    /* renamed from: a */
    private C3026b f8884a;

    /* renamed from: b */
    private final AbstractC2230ek f8885b;

    /* renamed from: c */
    private final C3024a f8886c;

    @AbstractC1634f(m3162b = "ReportsViewHolder.kt", m3161c = {31, 32}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.settings.reported_numbers.ReportsViewHolder$bindItem$1")
    /* renamed from: org.mistergroup.shouldianswer.ui.settings.reported_numbers.c$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a.class */
    public static final class C3029a extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f8887a;

        /* renamed from: b */
        Object f8888b;

        /* renamed from: c */
        Object f8889c;

        /* renamed from: d */
        int f8890d;

        /* renamed from: f */
        final /* synthetic */ C3026b f8892f;

        /* renamed from: g */
        private AbstractC1786ad f8893g;

        /* renamed from: org.mistergroup.shouldianswer.ui.settings.reported_numbers.c$a$a */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/reported_numbers/c$a$a.class */
        public static final class C3030a extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f8894a;

            /* renamed from: b */
            final /* synthetic */ NumberInfo f8895b;

            /* renamed from: c */
            final /* synthetic */ EnumC2395ag f8896c;

            /* renamed from: d */
            final /* synthetic */ C3029a f8897d;

            /* renamed from: e */
            private AbstractC1786ad f8898e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C3030a(NumberInfo numberInfo, EnumC2395ag enumC2395ag, AbstractC1641c abstractC1641c, C3029a c3029a) {
                super(2, abstractC1641c);
                this.f8895b = numberInfo;
                this.f8896c = enumC2395ag;
                this.f8897d = c3029a;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C3030a) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C3030a c3030a = new C3030a(this.f8895b, this.f8896c, abstractC1641c, this.f8897d);
                c3030a.f8898e = (AbstractC1786ad) obj;
                return c3030a;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f8894a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8898e;
                    AppCompatTextView appCompatTextView = View$OnClickListenerC3028c.this.f8885b.f6170f;
                    C1694h.m3122a((Object) appCompatTextView, "binding.tvNumber");
                    appCompatTextView.setText(this.f8895b.m1479b());
                    C2385ac m1451o = this.f8895b.m1451o();
                    if (m1451o != null) {
                        AppCompatTextView appCompatTextView2 = View$OnClickListenerC3028c.this.f8885b.f6170f;
                        C1694h.m3122a((Object) appCompatTextView2, "binding.tvNumber");
                        C1705p c1705p = C1705p.f4394a;
                        Object[] objArr = {m1451o.m1360b(), this.f8895b.m1479b()};
                        String format = String.format("%s %s", Arrays.copyOf(objArr, objArr.length));
                        C1694h.m3122a((Object) format, "java.lang.String.format(format, *args)");
                        appCompatTextView2.setText(format);
                    }
                    ImageView imageView = View$OnClickListenerC3028c.this.f8885b.f6167c;
                    C1694h.m3122a((Object) imageView, "binding.imgRating");
                    imageView.setVisibility(0);
                    C3134x c3134x = C3134x.f9269a;
                    View d = View$OnClickListenerC3028c.this.f8885b.m5863d();
                    C1694h.m3122a((Object) d, "binding.root");
                    Context context = d.getContext();
                    C1694h.m3122a((Object) context, "binding.root.context");
                    ImageView imageView2 = View$OnClickListenerC3028c.this.f8885b.f6167c;
                    C1694h.m3122a((Object) imageView2, "binding.imgRating");
                    c3134x.m24b(context, imageView2, this.f8896c);
                    if (this.f8897d.f8892f.m268e() != null) {
                        AppCompatTextView appCompatTextView3 = View$OnClickListenerC3028c.this.f8885b.f6168d;
                        C1694h.m3122a((Object) appCompatTextView3, "binding.tvCategory");
                        appCompatTextView3.setText(this.f8897d.f8892f.m268e());
                        AppCompatTextView appCompatTextView4 = View$OnClickListenerC3028c.this.f8885b.f6168d;
                        C1694h.m3122a((Object) appCompatTextView4, "binding.tvCategory");
                        appCompatTextView4.setVisibility(0);
                    } else {
                        AppCompatTextView appCompatTextView5 = View$OnClickListenerC3028c.this.f8885b.f6168d;
                        C1694h.m3122a((Object) appCompatTextView5, "binding.tvCategory");
                        appCompatTextView5.setVisibility(8);
                    }
                    if (this.f8897d.f8892f.m267f() != null) {
                        AppCompatTextView appCompatTextView6 = View$OnClickListenerC3028c.this.f8885b.f6169e;
                        C1694h.m3122a((Object) appCompatTextView6, "binding.tvComment");
                        appCompatTextView6.setText(this.f8897d.f8892f.m267f());
                        AppCompatTextView appCompatTextView7 = View$OnClickListenerC3028c.this.f8885b.f6169e;
                        C1694h.m3122a((Object) appCompatTextView7, "binding.tvComment");
                        appCompatTextView7.setVisibility(0);
                    } else {
                        AppCompatTextView appCompatTextView8 = View$OnClickListenerC3028c.this.f8885b.f6169e;
                        C1694h.m3122a((Object) appCompatTextView8, "binding.tvComment");
                        appCompatTextView8.setVisibility(8);
                    }
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C3029a(C3026b c3026b, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            View$OnClickListenerC3028c.this = r5;
            this.f8892f = c3026b;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C3029a) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C3029a c3029a = new C3029a(this.f8892f, abstractC1641c);
            c3029a.f8893g = (AbstractC1786ad) obj;
            return c3029a;
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x00d4  */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo42b(java.lang.Object r8) {
            /*
                Method dump skipped, instructions count: 218
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.settings.reported_numbers.View$OnClickListenerC3028c.C3029a.mo42b(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public View$OnClickListenerC3028c(AbstractC2230ek abstractC2230ek, C3024a c3024a) {
        super(abstractC2230ek.m5863d());
        C1694h.m3117b(abstractC2230ek, "binding");
        C1694h.m3117b(c3024a, "adapter");
        this.f8885b = abstractC2230ek;
        this.f8886c = c3024a;
        View d = this.f8885b.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        d.setOnClickListener(this);
    }

    /* renamed from: a */
    public final void m262a(C3026b c3026b) {
        C1694h.m3117b(c3026b, "item");
        this.f8884a = c3026b;
        if (c3026b.m276a() == C3026b.f8875a.m264a()) {
            C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C3029a(c3026b, null), 2, null);
        }
        if (c3026b.m276a() == C3026b.f8875a.m263b()) {
            AppCompatTextView appCompatTextView = this.f8885b.f6170f;
            C1694h.m3122a((Object) appCompatTextView, "binding.tvNumber");
            appCompatTextView.setText(c3026b.m269d());
            AppCompatTextView appCompatTextView2 = this.f8885b.f6168d;
            C1694h.m3122a((Object) appCompatTextView2, "binding.tvCategory");
            appCompatTextView2.setVisibility(8);
            AppCompatTextView appCompatTextView3 = this.f8885b.f6169e;
            C1694h.m3122a((Object) appCompatTextView3, "binding.tvComment");
            appCompatTextView3.setVisibility(8);
            ImageView imageView = this.f8885b.f6167c;
            C1694h.m3122a((Object) imageView, "binding.imgRating");
            imageView.setVisibility(8);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AbstractC1663b<NumberReport, C1775o> m280a;
        C1694h.m3117b(view, "view");
        C3026b c3026b = this.f8884a;
        if (c3026b == null) {
            C1694h.m3124a();
        }
        if (c3026b.m276a() != C3026b.f8875a.m264a() || (m280a = this.f8886c.m280a()) == null) {
            return;
        }
        C3026b c3026b2 = this.f8884a;
        if (c3026b2 == null) {
            C1694h.m3124a();
        }
        NumberReport m272b = c3026b2.m272b();
        if (m272b == null) {
            C1694h.m3124a();
        }
        m280a.mo138a(m272b);
    }
}
