package org.mistergroup.shouldianswer.p101ui.settings.reported_numbers;

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
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.model.C2380aa;
import org.mistergroup.shouldianswer.model.EnumC2436k;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.model.NumberReport;
import org.mistergroup.shouldianswer.p097a.AbstractC2226eg;
import org.mistergroup.shouldianswer.p097a.AbstractC2228ei;
import org.mistergroup.shouldianswer.p101ui.AbstractC2510b;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
import org.mistergroup.shouldianswer.p101ui.number_detail.NumberDetailFragment;
import org.mistergroup.shouldianswer.utils.BetterEditText;
import org.mistergroup.shouldianswer.utils.C3078ac;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3099f;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.ui.settings.reported_numbers.SettingsReportedNumbersFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment.class */
public final class SettingsReportedNumbersFragment extends AbstractC2510b {

    /* renamed from: b */
    public static final C3016a f8839b = new C3016a(null);

    /* renamed from: c */
    private AbstractC2228ei f8840c;

    /* renamed from: d */
    private C3024a f8841d;

    /* renamed from: e */
    private Observer f8842e;

    /* renamed from: f */
    private boolean f8843f;

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.reported_numbers.SettingsReportedNumbersFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$a.class */
    public static final class C3016a {
        private C3016a() {
        }

        public /* synthetic */ C3016a(C1691e c1691e) {
            this();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.reported_numbers.SettingsReportedNumbersFragment$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$b.class */
    static final class C3017b extends AbstractC1695i implements AbstractC1663b<NumberReport, C1775o> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C3017b() {
            super(1);
            SettingsReportedNumbersFragment.this = r4;
        }

        @Override // kotlin.p081e.p082a.AbstractC1663b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ C1775o mo138a(NumberReport numberReport) {
            m281a(numberReport);
            return C1775o.f4450a;
        }

        /* renamed from: a */
        public final void m281a(NumberReport numberReport) {
            C1694h.m3117b(numberReport, "report");
            NumberDetailFragment.C2713b c2713b = NumberDetailFragment.f8028b;
            Context context = SettingsReportedNumbersFragment.this.getContext();
            if (context == null) {
                C1694h.m3124a();
            }
            C1694h.m3122a((Object) context, "context!!");
            c2713b.m553b(context, numberReport.m1400q());
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.reported_numbers.SettingsReportedNumbersFragment$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$c.class */
    static final class C3018c implements Observer {
        C3018c() {
            SettingsReportedNumbersFragment.this = r4;
        }

        @Override // java.util.Observer
        public final void update(Observable observable, Object obj) {
            SettingsReportedNumbersFragment.this.m282d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.mistergroup.shouldianswer.ui.settings.reported_numbers.SettingsReportedNumbersFragment$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$d.class */
    public static final class View$OnClickListenerC3019d implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ ActivityC2499a f8847b;

        View$OnClickListenerC3019d(ActivityC2499a activityC2499a) {
            SettingsReportedNumbersFragment.this = r4;
            this.f8847b = activityC2499a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            final AbstractC2226eg abstractC2226eg = (AbstractC2226eg) C0651f.m5843a(SettingsReportedNumbersFragment.this.getLayoutInflater(), 2131558522, (ViewGroup) null, false);
            DialogInterfaceC0090d.C0091a c0091a = new DialogInterfaceC0090d.C0091a(this.f8847b);
            c0091a.m7920a(SettingsReportedNumbersFragment.this.getString(2131755461));
            C1694h.m3122a((Object) abstractC2226eg, "binding");
            c0091a.m7914b(abstractC2226eg.m5863d());
            c0091a.m7919a(SettingsReportedNumbersFragment.this.getString(2131755019), new DialogInterface.OnClickListener() { // from class: org.mistergroup.shouldianswer.ui.settings.reported_numbers.SettingsReportedNumbersFragment.d.1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    BetterEditText betterEditText = abstractC2226eg.f6152c;
                    C1694h.m3122a((Object) betterEditText, "binding.editCaption");
                    Editable text = betterEditText.getText();
                    if (text != null) {
                        C1694h.m3122a((Object) text, "text");
                        if (text.length() > 0) {
                            NumberDetailFragment.C2713b c2713b = NumberDetailFragment.f8028b;
                            Context context = SettingsReportedNumbersFragment.this.getContext();
                            if (context == null) {
                                C1694h.m3124a();
                            }
                            C1694h.m3122a((Object) context, "context!!");
                            c2713b.m553b(context, new NumberInfo(text.toString(), C3099f.f9116a.m177a(), EnumC2436k.UNKNOWN, false, 8, null));
                        }
                    }
                    dialogInterface.dismiss();
                }
            });
            c0091a.m7911c();
        }
    }

    @AbstractC1634f(m3162b = "SettingsReportedNumbersFragment.kt", m3161c = {88, 89, 97, 97, 97}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.settings.reported_numbers.SettingsReportedNumbersFragment$readData$1")
    /* renamed from: org.mistergroup.shouldianswer.ui.settings.reported_numbers.SettingsReportedNumbersFragment$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$e.class */
    public static final class C3021e extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f8850a;

        /* renamed from: b */
        Object f8851b;

        /* renamed from: c */
        int f8852c;

        /* renamed from: e */
        private AbstractC1786ad f8854e;

        @AbstractC1634f(m3162b = "SettingsReportedNumbersFragment.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.settings.reported_numbers.SettingsReportedNumbersFragment$readData$1$1")
        /* renamed from: org.mistergroup.shouldianswer.ui.settings.reported_numbers.SettingsReportedNumbersFragment$e$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$e$1.class */
        public static final class C30221 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f8855a;

            /* renamed from: c */
            final /* synthetic */ List f8857c;

            /* renamed from: d */
            private AbstractC1786ad f8858d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C30221(List list, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C3021e.this = r5;
                this.f8857c = list;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C30221) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C30221 c30221 = new C30221(this.f8857c, abstractC1641c);
                c30221.f8858d = (AbstractC1786ad) obj;
                return c30221;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f8855a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8858d;
                    LinearLayout linearLayout = SettingsReportedNumbersFragment.m283c(SettingsReportedNumbersFragment.this).f6160f;
                    C1694h.m3122a((Object) linearLayout, "binding.llNoItems");
                    linearLayout.setVisibility(this.f8857c.isEmpty() ? 0 : 8);
                    C3024a c3024a = SettingsReportedNumbersFragment.this.f8841d;
                    if (c3024a == null) {
                        C1694h.m3124a();
                    }
                    c3024a.m278a(this.f8857c);
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @AbstractC1634f(m3162b = "SettingsReportedNumbersFragment.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.settings.reported_numbers.SettingsReportedNumbersFragment$readData$1$2")
        /* renamed from: org.mistergroup.shouldianswer.ui.settings.reported_numbers.SettingsReportedNumbersFragment$e$2 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/reported_numbers/SettingsReportedNumbersFragment$e$2.class */
        public static final class C30232 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f8859a;

            /* renamed from: c */
            private AbstractC1786ad f8861c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C30232(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C3021e.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C30232) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C30232 c30232 = new C30232(abstractC1641c);
                c30232.f8861c = (AbstractC1786ad) obj;
                return c30232;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f8859a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8861c;
                    LinearLayout linearLayout = SettingsReportedNumbersFragment.m283c(SettingsReportedNumbersFragment.this).f6161g;
                    C1694h.m3122a((Object) linearLayout, "binding.panelSyncing");
                    linearLayout.setVisibility(8);
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C3021e(AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            SettingsReportedNumbersFragment.this = r5;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C3021e) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C3021e c3021e = new C3021e(abstractC1641c);
            c3021e.f8854e = (AbstractC1786ad) obj;
            return c3021e;
        }

        /* JADX WARN: Not initialized variable reg: 10, insn: 0x022f: MOVE  (r1 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:76:0x0210 */
        /* JADX WARN: Not initialized variable reg: 11, insn: 0x01c9: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r11 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:68:0x01c9 */
        /* JADX WARN: Removed duplicated region for block: B:64:0x01c2  */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo42b(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 590
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.settings.reported_numbers.SettingsReportedNumbersFragment.C3021e.mo42b(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: c */
    public static final /* synthetic */ AbstractC2228ei m283c(SettingsReportedNumbersFragment settingsReportedNumbersFragment) {
        AbstractC2228ei abstractC2228ei = settingsReportedNumbersFragment.f8840c;
        if (abstractC2228ei == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2228ei;
    }

    /* renamed from: d */
    public final void m282d() {
        if (this.f8843f) {
            return;
        }
        AbstractC2228ei abstractC2228ei = this.f8840c;
        if (abstractC2228ei == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout = abstractC2228ei.f6161g;
        C1694h.m3122a((Object) linearLayout, "binding.panelSyncing");
        linearLayout.setVisibility(0);
        C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C3021e(null), 2, null);
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
            this.f8841d = new C3024a(context);
            C3024a c3024a = this.f8841d;
            if (c3024a != null) {
                c3024a.m277a(new C3017b());
            }
            AbstractC2228ei abstractC2228ei = this.f8840c;
            if (abstractC2228ei == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout = abstractC2228ei.f6160f;
            C1694h.m3122a((Object) linearLayout, "binding.llNoItems");
            linearLayout.setVisibility(8);
            AbstractC2228ei abstractC2228ei2 = this.f8840c;
            if (abstractC2228ei2 == null) {
                C1694h.m3116b("binding");
            }
            RecyclerView recyclerView = abstractC2228ei2.f6159e;
            C1694h.m3122a((Object) recyclerView, "binding.lisReviews");
            recyclerView.setAdapter(this.f8841d);
            AbstractC2228ei abstractC2228ei3 = this.f8840c;
            if (abstractC2228ei3 == null) {
                C1694h.m3116b("binding");
            }
            RecyclerView recyclerView2 = abstractC2228ei3.f6159e;
            C1694h.m3122a((Object) recyclerView2, "binding.lisReviews");
            recyclerView2.setLayoutManager(new LinearLayoutManager(getContext()));
            this.f8842e = new C3018c();
            C2380aa.f6848a.addObserver(this.f8842e);
            m282d();
            AbstractC2228ei abstractC2228ei4 = this.f8840c;
            if (abstractC2228ei4 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2228ei4.f6158d.setOnClickListener(new View$OnClickListenerC3019d(activityC2499a));
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: c */
    public Toolbar mo238c() {
        AbstractC2228ei abstractC2228ei = this.f8840c;
        if (abstractC2228ei == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2228ei.f6157c;
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
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater, 2131558523, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f8840c = (AbstractC2228ei) m5843a;
        AbstractC2228ei abstractC2228ei = this.f8840c;
        if (abstractC2228ei == null) {
            C1694h.m3116b("binding");
        }
        View d = abstractC2228ei.m5863d();
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
        m282d();
        C2380aa.f6848a.addObserver(this.f8842e);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        C2380aa.f6848a.deleteObserver(this.f8842e);
    }
}
