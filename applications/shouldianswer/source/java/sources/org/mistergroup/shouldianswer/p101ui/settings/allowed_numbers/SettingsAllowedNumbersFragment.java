package org.mistergroup.shouldianswer.p101ui.settings.allowed_numbers;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.app.DialogInterfaceC0090d;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import java.util.Observable;
import java.util.Observer;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.AbstractC1695i;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlin.p087i.C1747g;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.model.C2380aa;
import org.mistergroup.shouldianswer.p097a.AbstractC2197de;
import org.mistergroup.shouldianswer.p097a.AbstractC2199dg;
import org.mistergroup.shouldianswer.p101ui.AbstractC2510b;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
import org.mistergroup.shouldianswer.p101ui.number_detail.NumberDetailFragment;
import org.mistergroup.shouldianswer.utils.BetterEditText;
import org.mistergroup.shouldianswer.utils.C3078ac;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.ui.settings.allowed_numbers.SettingsAllowedNumbersFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment.class */
public final class SettingsAllowedNumbersFragment extends AbstractC2510b {

    /* renamed from: b */
    public static final C2906a f8608b = new C2906a(null);

    /* renamed from: c */
    private AbstractC2199dg f8609c;

    /* renamed from: d */
    private C2916a f8610d;

    /* renamed from: e */
    private Observer f8611e;

    /* renamed from: f */
    private boolean f8612f;

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.allowed_numbers.SettingsAllowedNumbersFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$a.class */
    public static final class C2906a {
        private C2906a() {
        }

        public /* synthetic */ C2906a(C1691e c1691e) {
            this();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.allowed_numbers.SettingsAllowedNumbersFragment$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$b.class */
    static final class C2907b extends AbstractC1695i implements AbstractC1663b<C2918b, C1775o> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2907b() {
            super(1);
            SettingsAllowedNumbersFragment.this = r4;
        }

        @Override // kotlin.p081e.p082a.AbstractC1663b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ C1775o mo138a(C2918b c2918b) {
            m343a(c2918b);
            return C1775o.f4450a;
        }

        /* renamed from: a */
        public final void m343a(C2918b c2918b) {
            C1694h.m3117b(c2918b, "item");
            NumberDetailFragment.C2713b c2713b = NumberDetailFragment.f8028b;
            Context context = SettingsAllowedNumbersFragment.this.getContext();
            if (context == null) {
                C1694h.m3124a();
            }
            C1694h.m3122a((Object) context, "context!!");
            c2713b.m553b(context, c2918b.m338a().m1079g());
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.allowed_numbers.SettingsAllowedNumbersFragment$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$c.class */
    static final class C2908c implements Observer {
        C2908c() {
            SettingsAllowedNumbersFragment.this = r4;
        }

        @Override // java.util.Observer
        public final void update(Observable observable, Object obj) {
            SettingsAllowedNumbersFragment.this.m344d();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.allowed_numbers.SettingsAllowedNumbersFragment$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d.class */
    public static final class View$OnClickListenerC2909d implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ ActivityC2499a f8616b;

        /* renamed from: org.mistergroup.shouldianswer.ui.settings.allowed_numbers.SettingsAllowedNumbersFragment$d$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1.class */
        public static final class DialogInterface$OnClickListenerC29101 implements DialogInterface.OnClickListener {

            /* renamed from: b */
            final /* synthetic */ AbstractC2197de f8618b;

            /* renamed from: org.mistergroup.shouldianswer.ui.settings.allowed_numbers.SettingsAllowedNumbersFragment$d$1$a */
            /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a.class */
            public static final class C2911a extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

                /* renamed from: a */
                Object f8619a;

                /* renamed from: b */
                Object f8620b;

                /* renamed from: c */
                Object f8621c;

                /* renamed from: d */
                Object f8622d;

                /* renamed from: e */
                Object f8623e;

                /* renamed from: f */
                Object f8624f;

                /* renamed from: g */
                Object f8625g;

                /* renamed from: h */
                int f8626h;

                /* renamed from: i */
                final /* synthetic */ List f8627i;

                /* renamed from: j */
                final /* synthetic */ DialogInterface$OnClickListenerC29101 f8628j;

                /* renamed from: k */
                private AbstractC1786ad f8629k;

                /* renamed from: org.mistergroup.shouldianswer.ui.settings.allowed_numbers.SettingsAllowedNumbersFragment$d$1$a$1 */
                /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$d$1$a$1.class */
                public static final class C29121 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

                    /* renamed from: a */
                    int f8630a;

                    /* renamed from: c */
                    private AbstractC1786ad f8632c;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C29121(AbstractC1641c abstractC1641c) {
                        super(2, abstractC1641c);
                        C2911a.this = r5;
                    }

                    @Override // kotlin.p081e.p082a.AbstractC1674m
                    /* renamed from: a */
                    public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                        return ((C29121) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                    }

                    @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                    /* renamed from: a */
                    public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                        C1694h.m3117b(abstractC1641c, "completion");
                        C29121 c29121 = new C29121(abstractC1641c);
                        c29121.f8632c = (AbstractC1786ad) obj;
                        return c29121;
                    }

                    @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                    /* renamed from: b */
                    public final Object mo42b(Object obj) {
                        C1622b.m3174a();
                        if (this.f8630a == 0) {
                            C1771k.m2979a(obj);
                            AbstractC1786ad abstractC1786ad = this.f8632c;
                            SettingsAllowedNumbersFragment.this.m344d();
                            return C1775o.f4450a;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C2911a(List list, AbstractC1641c abstractC1641c, DialogInterface$OnClickListenerC29101 dialogInterface$OnClickListenerC29101) {
                    super(2, abstractC1641c);
                    this.f8627i = list;
                    this.f8628j = dialogInterface$OnClickListenerC29101;
                }

                @Override // kotlin.p081e.p082a.AbstractC1674m
                /* renamed from: a */
                public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                    return ((C2911a) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: a */
                public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                    C1694h.m3117b(abstractC1641c, "completion");
                    C2911a c2911a = new C2911a(this.f8627i, abstractC1641c, this.f8628j);
                    c2911a.f8629k = (AbstractC1786ad) obj;
                    return c2911a;
                }

                /* JADX WARN: Removed duplicated region for block: B:20:0x00a7 A[Catch: Exception -> 0x01dd, TRY_LEAVE, TryCatch #0 {Exception -> 0x01dd, blocks: (B:9:0x001f, B:13:0x006c, B:16:0x0083, B:18:0x009d, B:20:0x00a7, B:22:0x00bc, B:29:0x00f3, B:31:0x011e, B:33:0x0126, B:35:0x0173, B:40:0x0198, B:41:0x01a3, B:42:0x01a4, B:42:0x01a4, B:43:0x01a7), top: B:52:0x000a }] */
                /* JADX WARN: Removed duplicated region for block: B:42:0x01a4 A[Catch: Exception -> 0x01dd, Exception -> 0x01dd, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x01dd, blocks: (B:9:0x001f, B:13:0x006c, B:16:0x0083, B:18:0x009d, B:20:0x00a7, B:22:0x00bc, B:29:0x00f3, B:31:0x011e, B:33:0x0126, B:35:0x0173, B:40:0x0198, B:41:0x01a3, B:42:0x01a4, B:42:0x01a4, B:43:0x01a7), top: B:52:0x000a }] */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00f0 -> B:39:0x0183). Please submit an issue!!! */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x0123 -> B:39:0x0183). Please submit an issue!!! */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x017e -> B:39:0x0183). Please submit an issue!!! */
                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: b */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object mo42b(java.lang.Object r9) {
                    /*
                        Method dump skipped, instructions count: 492
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.settings.allowed_numbers.SettingsAllowedNumbersFragment.View$OnClickListenerC2909d.DialogInterface$OnClickListenerC29101.C2911a.mo42b(java.lang.Object):java.lang.Object");
                }
            }

            DialogInterface$OnClickListenerC29101(AbstractC2197de abstractC2197de) {
                View$OnClickListenerC2909d.this = r4;
                this.f8618b = abstractC2197de;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                BetterEditText betterEditText = this.f8618b.f5958c;
                C1694h.m3122a((Object) betterEditText, "binding.editCaption");
                Editable text = betterEditText.getText();
                if (text != null) {
                    C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2911a(C1747g.m3000b((CharSequence) text.toString(), new String[]{","}, false, 0, 6, (Object) null), null, this), 2, null);
                }
                dialogInterface.dismiss();
            }
        }

        View$OnClickListenerC2909d(ActivityC2499a activityC2499a) {
            SettingsAllowedNumbersFragment.this = r4;
            this.f8616b = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC2197de abstractC2197de = (AbstractC2197de) C0651f.m5843a(SettingsAllowedNumbersFragment.this.getLayoutInflater(), 2131558508, (ViewGroup) null, false);
            DialogInterfaceC0090d.C0091a c0091a = new DialogInterfaceC0090d.C0091a(this.f8616b);
            c0091a.m7920a(SettingsAllowedNumbersFragment.this.getString(2131755120));
            C1694h.m3122a((Object) abstractC2197de, "binding");
            c0091a.m7914b(abstractC2197de.m5863d());
            c0091a.m7919a(SettingsAllowedNumbersFragment.this.getString(2131755119), new DialogInterface$OnClickListenerC29101(abstractC2197de));
            c0091a.m7911c();
        }
    }

    @AbstractC1634f(m3162b = "SettingsAllowedNumbersFragment.kt", m3161c = {99, 100, 108, 108, 108}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.settings.allowed_numbers.SettingsAllowedNumbersFragment$readData$1")
    /* renamed from: org.mistergroup.shouldianswer.ui.settings.allowed_numbers.SettingsAllowedNumbersFragment$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e.class */
    public static final class C2913e extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f8633a;

        /* renamed from: b */
        Object f8634b;

        /* renamed from: c */
        int f8635c;

        /* renamed from: e */
        private AbstractC1786ad f8637e;

        @AbstractC1634f(m3162b = "SettingsAllowedNumbersFragment.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.settings.allowed_numbers.SettingsAllowedNumbersFragment$readData$1$1")
        /* renamed from: org.mistergroup.shouldianswer.ui.settings.allowed_numbers.SettingsAllowedNumbersFragment$e$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e$1.class */
        public static final class C29141 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f8638a;

            /* renamed from: c */
            final /* synthetic */ List f8640c;

            /* renamed from: d */
            private AbstractC1786ad f8641d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C29141(List list, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2913e.this = r5;
                this.f8640c = list;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C29141) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C29141 c29141 = new C29141(this.f8640c, abstractC1641c);
                c29141.f8641d = (AbstractC1786ad) obj;
                return c29141;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f8638a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8641d;
                    LinearLayout linearLayout = SettingsAllowedNumbersFragment.m345c(SettingsAllowedNumbersFragment.this).f5967g;
                    C1694h.m3122a((Object) linearLayout, "binding.llNoItems");
                    linearLayout.setVisibility(this.f8640c.isEmpty() ? 0 : 8);
                    C2916a c2916a = SettingsAllowedNumbersFragment.this.f8610d;
                    if (c2916a == null) {
                        C1694h.m3124a();
                    }
                    c2916a.m341a(this.f8640c);
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @AbstractC1634f(m3162b = "SettingsAllowedNumbersFragment.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.settings.allowed_numbers.SettingsAllowedNumbersFragment$readData$1$2")
        /* renamed from: org.mistergroup.shouldianswer.ui.settings.allowed_numbers.SettingsAllowedNumbersFragment$e$2 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e$2.class */
        public static final class C29152 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f8642a;

            /* renamed from: c */
            private AbstractC1786ad f8644c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C29152(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2913e.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C29152) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C29152 c29152 = new C29152(abstractC1641c);
                c29152.f8644c = (AbstractC1786ad) obj;
                return c29152;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f8642a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8644c;
                    LinearLayout linearLayout = SettingsAllowedNumbersFragment.m345c(SettingsAllowedNumbersFragment.this).f5969i;
                    C1694h.m3122a((Object) linearLayout, "binding.panelSyncing");
                    linearLayout.setVisibility(8);
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2913e(AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            SettingsAllowedNumbersFragment.this = r5;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2913e) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2913e c2913e = new C2913e(abstractC1641c);
            c2913e.f8637e = (AbstractC1786ad) obj;
            return c2913e;
        }

        /* JADX WARN: Not initialized variable reg: 10, insn: 0x021e: MOVE  (r1 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:74:0x01ff */
        /* JADX WARN: Not initialized variable reg: 11, insn: 0x01b8: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r11 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:66:0x01b8 */
        /* JADX WARN: Removed duplicated region for block: B:62:0x01b1  */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo42b(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 573
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.settings.allowed_numbers.SettingsAllowedNumbersFragment.C2913e.mo42b(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: c */
    public static final /* synthetic */ AbstractC2199dg m345c(SettingsAllowedNumbersFragment settingsAllowedNumbersFragment) {
        AbstractC2199dg abstractC2199dg = settingsAllowedNumbersFragment.f8609c;
        if (abstractC2199dg == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2199dg;
    }

    /* renamed from: d */
    public final void m344d() {
        if (this.f8612f) {
            return;
        }
        AbstractC2199dg abstractC2199dg = this.f8609c;
        if (abstractC2199dg == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout = abstractC2199dg.f5969i;
        C1694h.m3122a((Object) linearLayout, "binding.panelSyncing");
        linearLayout.setVisibility(0);
        C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2913e(null), 2, null);
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: a */
    public void mo240a(ActivityC2499a activityC2499a, Bundle bundle) {
        C1694h.m3117b(activityC2499a, "activity");
        try {
            Context context = getContext();
            if (context == null) {
                C1694h.m3124a();
            }
            C1694h.m3122a((Object) context, "context!!");
            this.f8610d = new C2916a(context);
            C2916a c2916a = this.f8610d;
            if (c2916a != null) {
                c2916a.m340a(new C2907b());
            }
            AbstractC2199dg abstractC2199dg = this.f8609c;
            if (abstractC2199dg == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout = abstractC2199dg.f5967g;
            C1694h.m3122a((Object) linearLayout, "binding.llNoItems");
            linearLayout.setVisibility(8);
            AbstractC2199dg abstractC2199dg2 = this.f8609c;
            if (abstractC2199dg2 == null) {
                C1694h.m3116b("binding");
            }
            RecyclerView recyclerView = abstractC2199dg2.f5966f;
            C1694h.m3122a((Object) recyclerView, "binding.lisReviews");
            recyclerView.setAdapter(this.f8610d);
            AbstractC2199dg abstractC2199dg3 = this.f8609c;
            if (abstractC2199dg3 == null) {
                C1694h.m3116b("binding");
            }
            RecyclerView recyclerView2 = abstractC2199dg3.f5966f;
            C1694h.m3122a((Object) recyclerView2, "binding.lisReviews");
            recyclerView2.setLayoutManager(new LinearLayoutManager(getContext()));
            this.f8611e = new C2908c();
            C2380aa.f6848a.addObserver(this.f8611e);
            m344d();
            AbstractC2199dg abstractC2199dg4 = this.f8609c;
            if (abstractC2199dg4 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2199dg4.f5965e.setOnClickListener(new View$OnClickListenerC2909d(activityC2499a));
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: c */
    public Toolbar mo238c() {
        AbstractC2199dg abstractC2199dg = this.f8609c;
        if (abstractC2199dg == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2199dg.f5963c;
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        C1694h.m3117b(menu, "menu");
        C1694h.m3117b(menuInflater, "inflater");
        menuInflater.inflate(2131623938, menu);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater, 2131558509, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f8609c = (AbstractC2199dg) m5843a;
        AbstractC2199dg abstractC2199dg = this.f8609c;
        if (abstractC2199dg == null) {
            C1694h.m3116b("binding");
        }
        View d = abstractC2199dg.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        return d;
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        Context context;
        C1694h.m3117b(menuItem, "item");
        if (menuItem.getItemId() == 2131361841 && (context = getContext()) != null) {
            C3078ac c3078ac = C3078ac.f8981a;
            C1694h.m3122a((Object) context, "it");
            String string = getString(2131755324);
            C1694h.m3122a((Object) string, "getString(R.string.help_url_settings_lists)");
            c3078ac.m220a(context, string);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        m344d();
        C2380aa.f6848a.addObserver(this.f8611e);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        C2380aa.f6848a.deleteObserver(this.f8611e);
    }
}
