package org.mistergroup.shouldianswer.p101ui.settings.blocked_numbers;

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
import java.util.Iterator;
import java.util.List;
import java.util.Observable;
import java.util.Observer;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.TypeCastException;
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
import kotlinx.coroutines.C1890e;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.model.C2380aa;
import org.mistergroup.shouldianswer.model.C2424g;
import org.mistergroup.shouldianswer.model.C2464x;
import org.mistergroup.shouldianswer.model.EnumC2436k;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.p097a.AbstractC2197de;
import org.mistergroup.shouldianswer.p097a.AbstractC2203dk;
import org.mistergroup.shouldianswer.p101ui.AbstractC2510b;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
import org.mistergroup.shouldianswer.p101ui.number_detail.NumberDetailFragment;
import org.mistergroup.shouldianswer.utils.BetterEditText;
import org.mistergroup.shouldianswer.utils.C3078ac;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3099f;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.ui.settings.blocked_numbers.SettingsBlockedNumbersFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocked_numbers/SettingsBlockedNumbersFragment.class */
public final class SettingsBlockedNumbersFragment extends AbstractC2510b {

    /* renamed from: b */
    public static final C2925a f8674b = new C2925a(null);

    /* renamed from: c */
    private AbstractC2203dk f8675c;

    /* renamed from: d */
    private C2935a f8676d;

    /* renamed from: e */
    private Observer f8677e;

    /* renamed from: f */
    private boolean f8678f;

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocked_numbers.SettingsBlockedNumbersFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocked_numbers/SettingsBlockedNumbersFragment$a.class */
    public static final class C2925a {
        private C2925a() {
        }

        public /* synthetic */ C2925a(C1691e c1691e) {
            this();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocked_numbers.SettingsBlockedNumbersFragment$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocked_numbers/SettingsBlockedNumbersFragment$b.class */
    static final class C2926b extends AbstractC1695i implements AbstractC1663b<C2937b, C1775o> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2926b() {
            super(1);
            SettingsBlockedNumbersFragment.this = r4;
        }

        @Override // kotlin.p081e.p082a.AbstractC1663b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ C1775o mo138a(C2937b c2937b) {
            m328a(c2937b);
            return C1775o.f4450a;
        }

        /* renamed from: a */
        public final void m328a(C2937b c2937b) {
            C1694h.m3117b(c2937b, "item");
            NumberDetailFragment.C2713b c2713b = NumberDetailFragment.f8028b;
            Context context = SettingsBlockedNumbersFragment.this.getContext();
            if (context == null) {
                C1694h.m3124a();
            }
            C1694h.m3122a((Object) context, "context!!");
            c2713b.m553b(context, c2937b.m323a().m1079g());
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocked_numbers.SettingsBlockedNumbersFragment$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocked_numbers/SettingsBlockedNumbersFragment$c.class */
    static final class C2927c implements Observer {
        C2927c() {
            SettingsBlockedNumbersFragment.this = r4;
        }

        @Override // java.util.Observer
        public final void update(Observable observable, Object obj) {
            SettingsBlockedNumbersFragment.this.m329d();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocked_numbers.SettingsBlockedNumbersFragment$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocked_numbers/SettingsBlockedNumbersFragment$d.class */
    public static final class View$OnClickListenerC2928d implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ ActivityC2499a f8682b;

        /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocked_numbers.SettingsBlockedNumbersFragment$d$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocked_numbers/SettingsBlockedNumbersFragment$d$1.class */
        public static final class DialogInterface$OnClickListenerC29291 implements DialogInterface.OnClickListener {

            /* renamed from: b */
            final /* synthetic */ AbstractC2197de f8684b;

            /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocked_numbers.SettingsBlockedNumbersFragment$d$1$a */
            /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocked_numbers/SettingsBlockedNumbersFragment$d$1$a.class */
            public static final class C2930a extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

                /* renamed from: a */
                Object f8685a;

                /* renamed from: b */
                Object f8686b;

                /* renamed from: c */
                Object f8687c;

                /* renamed from: d */
                Object f8688d;

                /* renamed from: e */
                Object f8689e;

                /* renamed from: f */
                Object f8690f;

                /* renamed from: g */
                Object f8691g;

                /* renamed from: h */
                int f8692h;

                /* renamed from: i */
                final /* synthetic */ List f8693i;

                /* renamed from: j */
                final /* synthetic */ DialogInterface$OnClickListenerC29291 f8694j;

                /* renamed from: k */
                private AbstractC1786ad f8695k;

                /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocked_numbers.SettingsBlockedNumbersFragment$d$1$a$1 */
                /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocked_numbers/SettingsBlockedNumbersFragment$d$1$a$1.class */
                public static final class C29311 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

                    /* renamed from: a */
                    int f8696a;

                    /* renamed from: c */
                    private AbstractC1786ad f8698c;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C29311(AbstractC1641c abstractC1641c) {
                        super(2, abstractC1641c);
                        C2930a.this = r5;
                    }

                    @Override // kotlin.p081e.p082a.AbstractC1674m
                    /* renamed from: a */
                    public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                        return ((C29311) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                    }

                    @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                    /* renamed from: a */
                    public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                        C1694h.m3117b(abstractC1641c, "completion");
                        C29311 c29311 = new C29311(abstractC1641c);
                        c29311.f8698c = (AbstractC1786ad) obj;
                        return c29311;
                    }

                    @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                    /* renamed from: b */
                    public final Object mo42b(Object obj) {
                        C1622b.m3174a();
                        if (this.f8696a == 0) {
                            C1771k.m2979a(obj);
                            AbstractC1786ad abstractC1786ad = this.f8698c;
                            SettingsBlockedNumbersFragment.this.m329d();
                            return C1775o.f4450a;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C2930a(List list, AbstractC1641c abstractC1641c, DialogInterface$OnClickListenerC29291 dialogInterface$OnClickListenerC29291) {
                    super(2, abstractC1641c);
                    this.f8693i = list;
                    this.f8694j = dialogInterface$OnClickListenerC29291;
                }

                @Override // kotlin.p081e.p082a.AbstractC1674m
                /* renamed from: a */
                public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                    return ((C2930a) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: a */
                public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                    C1694h.m3117b(abstractC1641c, "completion");
                    C2930a c2930a = new C2930a(this.f8693i, abstractC1641c, this.f8694j);
                    c2930a.f8695k = (AbstractC1786ad) obj;
                    return c2930a;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r0v81, types: [java.lang.Iterable] */
                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: b */
                public final Object mo42b(Object obj) {
                    Iterator it;
                    List list;
                    AbstractC1786ad abstractC1786ad;
                    Object a = C1622b.m3174a();
                    int i = this.f8692h;
                    try {
                    } catch (Exception e) {
                        C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                    }
                    if (i == 0) {
                        C1771k.m2979a(obj);
                        abstractC1786ad = this.f8695k;
                        list = this.f8693i;
                        it = list.iterator();
                    } else if (i != 1) {
                        if (i != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f8685a;
                        C1771k.m2979a(obj);
                        return C1775o.f4450a;
                    } else {
                        String str = (String) this.f8691g;
                        NumberInfo numberInfo = (NumberInfo) this.f8690f;
                        String str2 = (String) this.f8689e;
                        Object obj2 = this.f8688d;
                        it = (Iterator) this.f8687c;
                        list = (Iterable) this.f8686b;
                        AbstractC1786ad abstractC1786ad3 = (AbstractC1786ad) this.f8685a;
                        C1771k.m2979a(obj);
                        abstractC1786ad = abstractC1786ad3;
                    }
                    while (it.hasNext()) {
                        Object next = it.next();
                        String str3 = (String) next;
                        if (str3 == null) {
                            throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
                        }
                        String obj3 = C1747g.m3029a((CharSequence) str3).toString();
                        if (obj3.length() > 0) {
                            NumberInfo numberInfo2 = new NumberInfo(obj3, C3099f.f9116a.m177a(), EnumC2436k.UNKNOWN, false, 8, null);
                            if (!C2464x.m964e(numberInfo2)) {
                                C2424g c2424g = C2424g.f7030a;
                                this.f8685a = abstractC1786ad;
                                this.f8686b = list;
                                this.f8687c = it;
                                this.f8688d = next;
                                this.f8689e = str3;
                                this.f8690f = numberInfo2;
                                this.f8691g = obj3;
                                this.f8692h = 1;
                                if (c2424g.m1061a(numberInfo2, true, (AbstractC1641c<? super C1775o>) this) == a) {
                                    return a;
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                    this.f8685a = abstractC1786ad;
                    this.f8692h = 2;
                    if (C1890e.m2686a(C3084c.m192b(), new C29311(null), this) == a) {
                        return a;
                    }
                    return C1775o.f4450a;
                }
            }

            DialogInterface$OnClickListenerC29291(AbstractC2197de abstractC2197de) {
                View$OnClickListenerC2928d.this = r4;
                this.f8684b = abstractC2197de;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                BetterEditText betterEditText = this.f8684b.f5958c;
                C1694h.m3122a((Object) betterEditText, "binding.editCaption");
                Editable text = betterEditText.getText();
                if (text != null) {
                    C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2930a(C1747g.m3000b((CharSequence) text.toString(), new String[]{","}, false, 0, 6, (Object) null), null, this), 2, null);
                }
                dialogInterface.dismiss();
            }
        }

        View$OnClickListenerC2928d(ActivityC2499a activityC2499a) {
            SettingsBlockedNumbersFragment.this = r4;
            this.f8682b = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC2197de abstractC2197de = (AbstractC2197de) C0651f.m5843a(SettingsBlockedNumbersFragment.this.getLayoutInflater(), 2131558508, (ViewGroup) null, false);
            DialogInterfaceC0090d.C0091a c0091a = new DialogInterfaceC0090d.C0091a(this.f8682b);
            c0091a.m7920a(SettingsBlockedNumbersFragment.this.getString(2131755121));
            C1694h.m3122a((Object) abstractC2197de, "binding");
            c0091a.m7914b(abstractC2197de.m5863d());
            c0091a.m7919a(SettingsBlockedNumbersFragment.this.getString(2131755119), new DialogInterface$OnClickListenerC29291(abstractC2197de));
            c0091a.m7911c();
        }
    }

    @AbstractC1634f(m3162b = "SettingsBlockedNumbersFragment.kt", m3161c = {101, 102, 110, 110, 110}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.settings.blocked_numbers.SettingsBlockedNumbersFragment$readData$1")
    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocked_numbers.SettingsBlockedNumbersFragment$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocked_numbers/SettingsBlockedNumbersFragment$e.class */
    public static final class C2932e extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f8699a;

        /* renamed from: b */
        Object f8700b;

        /* renamed from: c */
        int f8701c;

        /* renamed from: e */
        private AbstractC1786ad f8703e;

        @AbstractC1634f(m3162b = "SettingsBlockedNumbersFragment.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.settings.blocked_numbers.SettingsBlockedNumbersFragment$readData$1$1")
        /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocked_numbers.SettingsBlockedNumbersFragment$e$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocked_numbers/SettingsBlockedNumbersFragment$e$1.class */
        public static final class C29331 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f8704a;

            /* renamed from: c */
            final /* synthetic */ List f8706c;

            /* renamed from: d */
            private AbstractC1786ad f8707d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C29331(List list, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2932e.this = r5;
                this.f8706c = list;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C29331) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C29331 c29331 = new C29331(this.f8706c, abstractC1641c);
                c29331.f8707d = (AbstractC1786ad) obj;
                return c29331;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f8704a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8707d;
                    LinearLayout linearLayout = SettingsBlockedNumbersFragment.m330c(SettingsBlockedNumbersFragment.this).f5983g;
                    C1694h.m3122a((Object) linearLayout, "binding.llNoItems");
                    linearLayout.setVisibility(this.f8706c.isEmpty() ? 0 : 8);
                    C2935a c2935a = SettingsBlockedNumbersFragment.this.f8676d;
                    if (c2935a == null) {
                        C1694h.m3124a();
                    }
                    c2935a.m326a(this.f8706c);
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @AbstractC1634f(m3162b = "SettingsBlockedNumbersFragment.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.settings.blocked_numbers.SettingsBlockedNumbersFragment$readData$1$2")
        /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocked_numbers.SettingsBlockedNumbersFragment$e$2 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocked_numbers/SettingsBlockedNumbersFragment$e$2.class */
        public static final class C29342 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f8708a;

            /* renamed from: c */
            private AbstractC1786ad f8710c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C29342(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2932e.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C29342) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C29342 c29342 = new C29342(abstractC1641c);
                c29342.f8710c = (AbstractC1786ad) obj;
                return c29342;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f8708a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8710c;
                    LinearLayout linearLayout = SettingsBlockedNumbersFragment.m330c(SettingsBlockedNumbersFragment.this).f5985i;
                    C1694h.m3122a((Object) linearLayout, "binding.panelSyncing");
                    linearLayout.setVisibility(8);
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2932e(AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            SettingsBlockedNumbersFragment.this = r5;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2932e) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2932e c2932e = new C2932e(abstractC1641c);
            c2932e.f8703e = (AbstractC1786ad) obj;
            return c2932e;
        }

        /* JADX WARN: Not initialized variable reg: 10, insn: 0x022e: MOVE  (r1 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:76:0x020f */
        /* JADX WARN: Not initialized variable reg: 11, insn: 0x01c8: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r11 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:68:0x01c8 */
        /* JADX WARN: Removed duplicated region for block: B:64:0x01c1  */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo42b(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 589
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.settings.blocked_numbers.SettingsBlockedNumbersFragment.C2932e.mo42b(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: c */
    public static final /* synthetic */ AbstractC2203dk m330c(SettingsBlockedNumbersFragment settingsBlockedNumbersFragment) {
        AbstractC2203dk abstractC2203dk = settingsBlockedNumbersFragment.f8675c;
        if (abstractC2203dk == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2203dk;
    }

    /* renamed from: d */
    public final void m329d() {
        if (this.f8678f) {
            return;
        }
        AbstractC2203dk abstractC2203dk = this.f8675c;
        if (abstractC2203dk == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout = abstractC2203dk.f5985i;
        C1694h.m3122a((Object) linearLayout, "binding.panelSyncing");
        linearLayout.setVisibility(0);
        C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2932e(null), 2, null);
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
            this.f8676d = new C2935a(context);
            C2935a c2935a = this.f8676d;
            if (c2935a != null) {
                c2935a.m325a(new C2926b());
            }
            AbstractC2203dk abstractC2203dk = this.f8675c;
            if (abstractC2203dk == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout = abstractC2203dk.f5983g;
            C1694h.m3122a((Object) linearLayout, "binding.llNoItems");
            linearLayout.setVisibility(8);
            AbstractC2203dk abstractC2203dk2 = this.f8675c;
            if (abstractC2203dk2 == null) {
                C1694h.m3116b("binding");
            }
            RecyclerView recyclerView = abstractC2203dk2.f5982f;
            C1694h.m3122a((Object) recyclerView, "binding.lisReviews");
            recyclerView.setAdapter(this.f8676d);
            AbstractC2203dk abstractC2203dk3 = this.f8675c;
            if (abstractC2203dk3 == null) {
                C1694h.m3116b("binding");
            }
            RecyclerView recyclerView2 = abstractC2203dk3.f5982f;
            C1694h.m3122a((Object) recyclerView2, "binding.lisReviews");
            recyclerView2.setLayoutManager(new LinearLayoutManager(getContext()));
            this.f8677e = new C2927c();
            C2380aa.f6848a.addObserver(this.f8677e);
            m329d();
            AbstractC2203dk abstractC2203dk4 = this.f8675c;
            if (abstractC2203dk4 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2203dk4.f5981e.setOnClickListener(new View$OnClickListenerC2928d(activityC2499a));
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: c */
    public Toolbar mo238c() {
        AbstractC2203dk abstractC2203dk = this.f8675c;
        if (abstractC2203dk == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2203dk.f5979c;
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
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater, 2131558511, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f8675c = (AbstractC2203dk) m5843a;
        AbstractC2203dk abstractC2203dk = this.f8675c;
        if (abstractC2203dk == null) {
            C1694h.m3116b("binding");
        }
        View d = abstractC2203dk.m5863d();
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
        m329d();
        C2380aa.f6848a.addObserver(this.f8677e);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        C2380aa.f6848a.deleteObserver(this.f8677e);
    }
}
