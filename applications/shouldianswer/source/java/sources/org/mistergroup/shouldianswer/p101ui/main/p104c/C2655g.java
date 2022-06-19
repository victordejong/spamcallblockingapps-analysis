package org.mistergroup.shouldianswer.p101ui.main.p104c;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.makeramen.roundedimageview.RoundedImageView;
import java.util.Arrays;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlin.p081e.p083b.C1705p;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.AbstractC1841bb;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1882ch;
import kotlinx.coroutines.C1890e;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.components.stickyheaders.C2334a;
import org.mistergroup.shouldianswer.model.EnumC2395ag;
import org.mistergroup.shouldianswer.model.EnumC2429h;
import org.mistergroup.shouldianswer.model.EnumC2436k;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.p097a.AbstractC2118ag;
import org.mistergroup.shouldianswer.p101ui.main.p104c.C2646c;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3116p;
import org.mistergroup.shouldianswer.utils.C3117q;
import org.mistergroup.shouldianswer.utils.C3131u;
import org.mistergroup.shouldianswer.utils.C3134x;
/* renamed from: org.mistergroup.shouldianswer.ui.main.c.g */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/g.class */
public final class C2655g extends C2334a.C2339e {

    /* renamed from: a */
    public static final C2660a f7793a = new C2660a(null);

    /* renamed from: d */
    private static final AbstractC1841bb f7794d = C1882ch.m2704a("LogItemsLoader");

    /* renamed from: e */
    private static final AbstractC1841bb f7795e = C1882ch.m2704a("LogItemsPhotoLoader");

    /* renamed from: b */
    private C2646c f7796b;

    /* renamed from: c */
    private final AbstractC2118ag f7797c;

    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.g$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/g$a.class */
    public static final class C2660a {
        private C2660a() {
        }

        public /* synthetic */ C2660a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final AbstractC1841bb m628a() {
            return C2655g.f7795e;
        }
    }

    @AbstractC1634f(m3162b = "LogViewNumberHolder.kt", m3161c = {77, 95}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.logs.LogViewNumberHolder$bindItem$1")
    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.g$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/g$b.class */
    public static final class C2661b extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f7805a;

        /* renamed from: b */
        Object f7806b;

        /* renamed from: c */
        int f7807c;

        /* renamed from: e */
        final /* synthetic */ C2646c f7809e;

        /* renamed from: f */
        private AbstractC1786ad f7810f;

        @AbstractC1634f(m3162b = "LogViewNumberHolder.kt", m3161c = {87}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.logs.LogViewNumberHolder$bindItem$1$1")
        /* renamed from: org.mistergroup.shouldianswer.ui.main.c.g$b$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/g$b$1.class */
        public static final class C26621 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            Object f7811a;

            /* renamed from: b */
            long f7812b;

            /* renamed from: c */
            int f7813c;

            /* renamed from: e */
            final /* synthetic */ C2646c.C2647a f7815e;

            /* renamed from: f */
            private AbstractC1786ad f7816f;

            @AbstractC1634f(m3162b = "LogViewNumberHolder.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.logs.LogViewNumberHolder$bindItem$1$1$1")
            /* renamed from: org.mistergroup.shouldianswer.ui.main.c.g$b$1$1 */
            /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/g$b$1$1.class */
            public static final class C26631 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

                /* renamed from: a */
                int f7817a;

                /* renamed from: c */
                private AbstractC1786ad f7819c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C26631(AbstractC1641c abstractC1641c) {
                    super(2, abstractC1641c);
                    C26621.this = r5;
                }

                @Override // kotlin.p081e.p082a.AbstractC1674m
                /* renamed from: a */
                public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                    return ((C26631) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: a */
                public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                    C1694h.m3117b(abstractC1641c, "completion");
                    C26631 c26631 = new C26631(abstractC1641c);
                    c26631.f7819c = (AbstractC1786ad) obj;
                    return c26631;
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: b */
                public final Object mo42b(Object obj) {
                    C1622b.m3174a();
                    if (this.f7817a == 0) {
                        C1771k.m2979a(obj);
                        AbstractC1786ad abstractC1786ad = this.f7819c;
                        C2655g.this.m629d();
                        return C1775o.f4450a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C26621(C2646c.C2647a c2647a, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2661b.this = r5;
                this.f7815e = c2647a;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C26621) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C26621 c26621 = new C26621(this.f7815e, abstractC1641c);
                c26621.f7816f = (AbstractC1786ad) obj;
                return c26621;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                Object a = C1622b.m3174a();
                int i = this.f7813c;
                if (i == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f7816f;
                    long m41a = C3131u.f9265a.m41a();
                    this.f7815e.m655a(C3117q.f9185a.m101b(this.f7815e.m641h()));
                    if (C1694h.m3123a(C2655g.m633a(C2655g.this), C2661b.this.f7809e)) {
                        this.f7811a = abstractC1786ad;
                        this.f7812b = m41a;
                        this.f7813c = 1;
                        if (C1890e.m2686a(C3084c.m192b(), new C26631(null), this) == a) {
                            return a;
                        }
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    long j = this.f7812b;
                    AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f7811a;
                    C1771k.m2979a(obj);
                }
                return C1775o.f4450a;
            }
        }

        @AbstractC1634f(m3162b = "LogViewNumberHolder.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.logs.LogViewNumberHolder$bindItem$1$2")
        /* renamed from: org.mistergroup.shouldianswer.ui.main.c.g$b$2 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/g$b$2.class */
        public static final class C26642 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f7820a;

            /* renamed from: c */
            private AbstractC1786ad f7822c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C26642(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2661b.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C26642) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C26642 c26642 = new C26642(abstractC1641c);
                c26642.f7822c = (AbstractC1786ad) obj;
                return c26642;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f7820a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f7822c;
                    C2655g.this.m629d();
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2661b(C2646c c2646c, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            C2655g.this = r5;
            this.f7809e = c2646c;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2661b) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2661b c2661b = new C2661b(this.f7809e, abstractC1641c);
            c2661b.f7810f = (AbstractC1786ad) obj;
            return c2661b;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            AbstractC1786ad abstractC1786ad;
            C2646c.C2647a c2647a;
            Object a = C1622b.m3174a();
            int i = this.f7807c;
            if (i == 0) {
                C1771k.m2979a(obj);
                abstractC1786ad = this.f7810f;
                c2647a = this.f7809e.m663c();
                C2646c c2646c = this.f7809e;
                this.f7805a = abstractC1786ad;
                this.f7806b = c2647a;
                this.f7807c = 1;
                if (c2646c.m666a(this) == a) {
                    return a;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C2646c.C2647a c2647a2 = (C2646c.C2647a) this.f7806b;
                AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f7805a;
                C1771k.m2979a(obj);
                return C1775o.f4450a;
            } else {
                C2646c.C2647a c2647a3 = (C2646c.C2647a) this.f7806b;
                abstractC1786ad = (AbstractC1786ad) this.f7805a;
                C1771k.m2979a(obj);
                c2647a = c2647a3;
            }
            if (C1694h.m3123a(C2655g.m633a(C2655g.this), this.f7809e) && c2647a != null && c2647a.m641h() > 0) {
                c2647a.m655a(C3117q.f9185a.m102a(c2647a.m641h()));
                if (c2647a.m640i() == null) {
                    C1892g.m2677a(C1843bd.f4587a, C2655g.f7793a.m628a(), null, new C26621(c2647a, null), 2, null);
                }
            }
            if (C1694h.m3123a(C2655g.m633a(C2655g.this), this.f7809e)) {
                this.f7805a = abstractC1786ad;
                this.f7806b = c2647a;
                this.f7807c = 2;
                if (C1890e.m2686a(C3084c.m192b(), new C26642(null), this) == a) {
                    return a;
                }
            }
            return C1775o.f4450a;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C2655g(org.mistergroup.shouldianswer.p097a.AbstractC2118ag r8, final org.mistergroup.shouldianswer.p101ui.main.p104c.C2665h r9) {
        /*
            r7 = this;
            r0 = r8
            java.lang.String r1 = "binding"
            kotlin.p081e.p083b.C1694h.m3117b(r0, r1)
            r0 = r9
            java.lang.String r1 = "adapter"
            kotlin.p081e.p083b.C1694h.m3117b(r0, r1)
            r0 = r8
            android.view.View r0 = r0.m5863d()
            r10 = r0
            r0 = r10
            java.lang.String r1 = "binding.root"
            kotlin.p081e.p083b.C1694h.m3122a(r0, r1)
            r0 = r7
            r1 = r10
            r0.<init>(r1)
            r0 = r7
            r1 = r8
            r0.f7797c = r1
            r0 = r7
            org.mistergroup.shouldianswer.a.ag r0 = r0.f7797c
            android.view.View r0 = r0.m5863d()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "binding.root"
            kotlin.p081e.p083b.C1694h.m3122a(r0, r1)
            r0 = r8
            org.mistergroup.shouldianswer.ui.main.c.g$1 r1 = new org.mistergroup.shouldianswer.ui.main.c.g$1
            r2 = r1
            r3 = r7
            r4 = r9
            r2.<init>()
            android.view.View$OnClickListener r1 = (android.view.View.OnClickListener) r1
            r0.setOnClickListener(r1)
            r0 = r8
            org.mistergroup.shouldianswer.ui.main.c.g$2 r1 = new org.mistergroup.shouldianswer.ui.main.c.g$2
            r2 = r1
            r3 = r7
            r4 = r8
            r5 = r9
            r2.<init>()
            android.view.View$OnCreateContextMenuListener r1 = (android.view.View.OnCreateContextMenuListener) r1
            r0.setOnCreateContextMenuListener(r1)
            r0 = r7
            org.mistergroup.shouldianswer.a.ag r0 = r0.f7797c
            android.widget.ImageButton r0 = r0.f5513c
            org.mistergroup.shouldianswer.ui.main.c.g$3 r1 = new org.mistergroup.shouldianswer.ui.main.c.g$3
            r2 = r1
            r3 = r7
            r2.<init>()
            android.view.View$OnClickListener r1 = (android.view.View.OnClickListener) r1
            r0.setOnClickListener(r1)
            r0 = r7
            org.mistergroup.shouldianswer.a.ag r0 = r0.f7797c
            android.widget.FrameLayout r0 = r0.f5515e
            org.mistergroup.shouldianswer.ui.main.c.g$4 r1 = new org.mistergroup.shouldianswer.ui.main.c.g$4
            r2 = r1
            r3 = r7
            r2.<init>()
            android.view.View$OnClickListener r1 = (android.view.View.OnClickListener) r1
            r0.setOnClickListener(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.main.p104c.C2655g.<init>(org.mistergroup.shouldianswer.a.ag, org.mistergroup.shouldianswer.ui.main.c.h):void");
    }

    /* renamed from: a */
    public static final /* synthetic */ C2646c m633a(C2655g c2655g) {
        C2646c c2646c = c2655g.f7796b;
        if (c2646c == null) {
            C1694h.m3116b("item");
        }
        return c2646c;
    }

    /* renamed from: d */
    public final void m629d() {
        try {
            C2646c c2646c = this.f7796b;
            if (c2646c == null) {
                C1694h.m3116b("item");
            }
            View d = this.f7797c.m5863d();
            C1694h.m3122a((Object) d, "binding.root");
            Context context = d.getContext();
            C2646c.C2647a m663c = c2646c.m663c();
            if (m663c == null) {
                return;
            }
            AppCompatTextView appCompatTextView = this.f7797c.f5525o;
            C1694h.m3122a((Object) appCompatTextView, "binding.tvCaption");
            appCompatTextView.setText(m663c.m657a());
            EnumC2436k m1473d = c2646c.m660f().m1473d();
            int m1020b = EnumC2436k.f7111i.m1020b(m1473d);
            EnumC2436k.C2437a c2437a = EnumC2436k.f7111i;
            View d2 = this.f7797c.m5863d();
            C1694h.m3122a((Object) d2, "binding.root");
            Context context2 = d2.getContext();
            C1694h.m3122a((Object) context2, "binding.root.context");
            int m1023a = c2437a.m1023a(context2, m1473d);
            if (m663c.m643f() != EnumC2429h.NONE) {
                m1020b = 2131230883;
                C3134x c3134x = C3134x.f9269a;
                View d3 = this.f7797c.m5863d();
                C1694h.m3122a((Object) d3, "binding.root");
                Context context3 = d3.getContext();
                C1694h.m3122a((Object) context3, "binding.root.context");
                m1023a = c3134x.m26a(context3, 2130969064);
            }
            ImageView imageView = this.f7797c.f5520j;
            C1694h.m3122a((Object) imageView, "binding.imgCallType");
            imageView.setVisibility(m1020b > 0 ? 0 : 8);
            if (m1020b > 0) {
                this.f7797c.f5520j.setImageResource(m1020b);
                this.f7797c.f5520j.setColorFilter(m1023a, PorterDuff.Mode.MULTIPLY);
            }
            ImageView imageView2 = this.f7797c.f5518h;
            C1694h.m3122a((Object) imageView2, "binding.imgCallHistory1");
            imageView2.setVisibility((c2646c.m664b().size() <= 1 || m663c.m643f() != EnumC2429h.NONE) ? 8 : 0);
            ImageView imageView3 = this.f7797c.f5519i;
            C1694h.m3122a((Object) imageView3, "binding.imgCallHistory2");
            imageView3.setVisibility((c2646c.m664b().size() <= 2 || m663c.m643f() != EnumC2429h.NONE) ? 8 : 0);
            if (c2646c.m664b().size() > 1 && m663c.m643f() == EnumC2429h.NONE) {
                EnumC2436k m1032d = c2646c.m664b().get(1).m1032d();
                this.f7797c.f5518h.setImageResource(EnumC2436k.f7111i.m1020b(m1032d));
                ImageView imageView4 = this.f7797c.f5518h;
                EnumC2436k.C2437a c2437a2 = EnumC2436k.f7111i;
                View d4 = this.f7797c.m5863d();
                C1694h.m3122a((Object) d4, "binding.root");
                Context context4 = d4.getContext();
                C1694h.m3122a((Object) context4, "binding.root.context");
                imageView4.setColorFilter(c2437a2.m1023a(context4, m1032d), PorterDuff.Mode.MULTIPLY);
            }
            if (c2646c.m664b().size() > 2 && m663c.m643f() == EnumC2429h.NONE) {
                EnumC2436k m1032d2 = c2646c.m664b().get(2).m1032d();
                this.f7797c.f5519i.setImageResource(EnumC2436k.f7111i.m1020b(m1032d2));
                ImageView imageView5 = this.f7797c.f5519i;
                EnumC2436k.C2437a c2437a3 = EnumC2436k.f7111i;
                View d5 = this.f7797c.m5863d();
                C1694h.m3122a((Object) d5, "binding.root");
                Context context5 = d5.getContext();
                C1694h.m3122a((Object) context5, "binding.root.context");
                imageView5.setColorFilter(c2437a3.m1023a(context5, m1032d2), PorterDuff.Mode.MULTIPLY);
            }
            ImageButton imageButton = this.f7797c.f5513c;
            C1694h.m3122a((Object) imageButton, "binding.butCall");
            C1705p c1705p = C1705p.f4394a;
            String string = context.getString(2131755364);
            C1694h.m3122a((Object) string, "context.getString(R.stri…r_but_call_accessibility)");
            Object[] objArr = {m663c.m646d()};
            String format = String.format(string, Arrays.copyOf(objArr, objArr.length));
            C1694h.m3122a((Object) format, "java.lang.String.format(format, *args)");
            imageButton.setContentDescription(format);
            AppCompatTextView appCompatTextView2 = this.f7797c.f5525o;
            C1694h.m3122a((Object) appCompatTextView2, "binding.tvCaption");
            appCompatTextView2.setText(m663c.m646d());
            ImageView imageView6 = this.f7797c.f5516f;
            C1694h.m3122a((Object) imageView6, "binding.imgAllowSmall");
            imageView6.setVisibility(C1694h.m3123a((Object) m663c.m642g(), (Object) false) ? 0 : 8);
            ImageView imageView7 = this.f7797c.f5517g;
            C1694h.m3122a((Object) imageView7, "binding.imgBlockSmall");
            imageView7.setVisibility(m663c.m643f() != EnumC2429h.NONE ? 0 : 8);
            AppCompatTextView appCompatTextView3 = this.f7797c.f5527q;
            C1694h.m3122a((Object) appCompatTextView3, "binding.tvDescription");
            appCompatTextView3.setText(m663c.m648c());
            AppCompatTextView appCompatTextView4 = this.f7797c.f5527q;
            C1694h.m3122a((Object) appCompatTextView4, "binding.tvDescription");
            AppCompatTextView appCompatTextView5 = this.f7797c.f5527q;
            C1694h.m3122a((Object) appCompatTextView5, "binding.tvDescription");
            CharSequence text = appCompatTextView5.getText();
            C1694h.m3122a((Object) text, "binding.tvDescription.text");
            appCompatTextView4.setVisibility(text.length() == 0 ? 8 : 0);
            AppCompatTextView appCompatTextView6 = this.f7797c.f5528r;
            C1694h.m3122a((Object) appCompatTextView6, "binding.tvTime");
            appCompatTextView6.setText(c2646c.m658h());
            AppCompatTextView appCompatTextView7 = this.f7797c.f5528r;
            C1694h.m3122a((Object) appCompatTextView7, "binding.tvTime");
            appCompatTextView7.setVisibility(m1020b > 0 ? 0 : 8);
            if (m663c.m650b() != null) {
                RoundedImageView roundedImageView = this.f7797c.f5521k;
                C1694h.m3122a((Object) roundedImageView, "binding.imgContactPhoto");
                roundedImageView.setVisibility(0);
                RoundedImageView roundedImageView2 = this.f7797c.f5521k;
                C1694h.m3122a((Object) roundedImageView2, "binding.imgContactPhoto");
                C1705p c1705p2 = C1705p.f4394a;
                String string2 = context.getString(2131755365);
                C1694h.m3122a((Object) string2, "context.getString(R.stri…er_contact_accessibility)");
                Object[] objArr2 = {m663c.m650b()};
                String format2 = String.format(string2, Arrays.copyOf(objArr2, objArr2.length));
                C1694h.m3122a((Object) format2, "java.lang.String.format(format, *args)");
                roundedImageView2.setContentDescription(format2);
                ImageView imageView8 = this.f7797c.f5522l;
                C1694h.m3122a((Object) imageView8, "binding.imgRatingBig");
                imageView8.setVisibility(8);
                ImageView imageView9 = this.f7797c.f5523m;
                C1694h.m3122a((Object) imageView9, "binding.imgRatingSmall");
                imageView9.setVisibility(8);
                if (m663c.m644e() == EnumC2395ag.NEGATIVE) {
                    ImageView imageView10 = this.f7797c.f5523m;
                    C1694h.m3122a((Object) imageView10, "binding.imgRatingSmall");
                    imageView10.setVisibility(0);
                    C3134x c3134x2 = C3134x.f9269a;
                    View d6 = this.f7797c.m5863d();
                    C1694h.m3122a((Object) d6, "binding.root");
                    Context context6 = d6.getContext();
                    C1694h.m3122a((Object) context6, "binding.root.context");
                    ImageView imageView11 = this.f7797c.f5523m;
                    C1694h.m3122a((Object) imageView11, "binding.imgRatingSmall");
                    c3134x2.m24b(context6, imageView11, m663c.m644e());
                }
            } else {
                RoundedImageView roundedImageView3 = this.f7797c.f5521k;
                C1694h.m3122a((Object) roundedImageView3, "binding.imgContactPhoto");
                roundedImageView3.setVisibility(8);
                ImageView imageView12 = this.f7797c.f5522l;
                C1694h.m3122a((Object) imageView12, "binding.imgRatingBig");
                imageView12.setVisibility(0);
                ImageView imageView13 = this.f7797c.f5523m;
                C1694h.m3122a((Object) imageView13, "binding.imgRatingSmall");
                imageView13.setVisibility(8);
                C3134x c3134x3 = C3134x.f9269a;
                View d7 = this.f7797c.m5863d();
                C1694h.m3122a((Object) d7, "binding.root");
                Context context7 = d7.getContext();
                C1694h.m3122a((Object) context7, "binding.root.context");
                ImageView imageView14 = this.f7797c.f5522l;
                C1694h.m3122a((Object) imageView14, "binding.imgRatingBig");
                c3134x3.m25a(context7, imageView14, m663c.m644e());
            }
            if (m663c.m650b() == null && m663c.m640i() == null) {
                return;
            }
            C3131u.f9265a.m41a();
            C3116p c3116p = C3116p.f9183a;
            Bitmap m640i = m663c.m640i();
            String m650b = m663c.m650b();
            RoundedImageView roundedImageView4 = this.f7797c.f5521k;
            C1694h.m3122a((Object) roundedImageView4, "binding.imgContactPhoto");
            AppCompatTextView appCompatTextView8 = this.f7797c.f5526p;
            C1694h.m3122a((Object) appCompatTextView8, "binding.tvContactPhoto");
            c3116p.m108a(m640i, m650b, roundedImageView4, appCompatTextView8);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: a */
    public final void m634a(C2646c c2646c) {
        C1694h.m3117b(c2646c, "item");
        View d = this.f7797c.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        Context context = d.getContext();
        this.f7796b = c2646c;
        if (c2646c.m663c() == null) {
            C2646c.C2647a c2647a = new C2646c.C2647a();
            NumberInfo m660f = c2646c.m660f();
            C1694h.m3122a((Object) context, "context");
            c2647a.m653a(m660f.m1477b(context));
            c2647a.m645d(c2647a.m657a());
            c2646c.m665a(c2647a);
            ImageView imageView = this.f7797c.f5518h;
            C1694h.m3122a((Object) imageView, "binding.imgCallHistory1");
            imageView.setVisibility(4);
            ImageView imageView2 = this.f7797c.f5519i;
            C1694h.m3122a((Object) imageView2, "binding.imgCallHistory2");
            imageView2.setVisibility(4);
            ImageView imageView3 = this.f7797c.f5522l;
            C1694h.m3122a((Object) imageView3, "binding.imgRatingBig");
            imageView3.setVisibility(0);
            ImageView imageView4 = this.f7797c.f5523m;
            C1694h.m3122a((Object) imageView4, "binding.imgRatingSmall");
            imageView4.setVisibility(8);
            RoundedImageView roundedImageView = this.f7797c.f5521k;
            C1694h.m3122a((Object) roundedImageView, "binding.imgContactPhoto");
            roundedImageView.setVisibility(8);
            AppCompatTextView appCompatTextView = this.f7797c.f5528r;
            C1694h.m3122a((Object) appCompatTextView, "binding.tvTime");
            appCompatTextView.setVisibility(4);
            AppCompatTextView appCompatTextView2 = this.f7797c.f5527q;
            C1694h.m3122a((Object) appCompatTextView2, "binding.tvDescription");
            appCompatTextView2.setVisibility(4);
            ImageView imageView5 = this.f7797c.f5520j;
            C1694h.m3122a((Object) imageView5, "binding.imgCallType");
            imageView5.setVisibility(4);
            AppCompatTextView appCompatTextView3 = this.f7797c.f5526p;
            C1694h.m3122a((Object) appCompatTextView3, "binding.tvContactPhoto");
            appCompatTextView3.setVisibility(8);
        }
        m629d();
        if (!c2646c.m661e()) {
            C1892g.m2677a(C1843bd.f4587a, f7794d, null, new C2661b(c2646c, null), 2, null);
        }
    }
}
