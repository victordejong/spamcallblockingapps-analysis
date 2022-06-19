package org.mistergroup.shouldianswer.p101ui.report_issue;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Patterns;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.app.DialogInterfaceC0090d;
import androidx.appcompat.widget.Toolbar;
import androidx.customview.p026a.AbstractC0610a;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import com.p061b.p062a.p063a.AbstractC1184b;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1632d;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1890e;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.p097a.AbstractC2174ci;
import org.mistergroup.shouldianswer.p101ui.AbstractC2510b;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
import org.mistergroup.shouldianswer.utils.BetterEditText;
import org.mistergroup.shouldianswer.utils.C3078ac;
import org.mistergroup.shouldianswer.utils.C3079ad;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.ui.report_issue.ReportIssueFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment.class */
public final class ReportIssueFragment extends AbstractC2510b {

    /* renamed from: b */
    private AbstractC2174ci f8304b;

    /* renamed from: c */
    private EnumC2789a f8305c = EnumC2789a.NONE;

    /* renamed from: d */
    private boolean f8306d = true;

    /* renamed from: e */
    private boolean f8307e = true;

    /* renamed from: f */
    private boolean f8308f;

    /* renamed from: org.mistergroup.shouldianswer.ui.report_issue.ReportIssueFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a.class */
    public enum EnumC2789a {
        NONE,
        BLOCKING,
        INVALID_NUMBER_INFO,
        OTHER
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.report_issue.ReportIssueFragment$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$b.class */
    public static final class C2790b {

        /* renamed from: a */
        private String f8314a;

        /* renamed from: b */
        private String f8315b;

        public C2790b(String str, String str2) {
            C1694h.m3117b(str, "logs");
            C1694h.m3117b(str2, "info");
            this.f8314a = str;
            this.f8315b = str2;
        }

        /* renamed from: a */
        public final String m479a() {
            return this.f8314a;
        }

        /* renamed from: b */
        public final String m478b() {
            return this.f8315b;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C2790b)) {
                    return false;
                }
                C2790b c2790b = (C2790b) obj;
                return C1694h.m3123a((Object) this.f8314a, (Object) c2790b.f8314a) && C1694h.m3123a((Object) this.f8315b, (Object) c2790b.f8315b);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f8314a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f8315b;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            return "UploadLogData(logs=" + this.f8314a + ", info=" + this.f8315b + ")";
        }
    }

    @AbstractC1634f(m3162b = "ReportIssueFragment.kt", m3161c = {238}, m3160d = "getUploadLogData", m3159e = "org.mistergroup.shouldianswer.ui.report_issue.ReportIssueFragment")
    /* renamed from: org.mistergroup.shouldianswer.ui.report_issue.ReportIssueFragment$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c.class */
    public static final class C2791c extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f8316a;

        /* renamed from: b */
        int f8317b;

        /* renamed from: d */
        Object f8319d;

        /* renamed from: e */
        Object f8320e;

        /* renamed from: f */
        Object f8321f;

        /* renamed from: g */
        Object f8322g;

        /* renamed from: h */
        Object f8323h;

        /* renamed from: i */
        Object f8324i;

        /* renamed from: j */
        Object f8325j;

        /* renamed from: k */
        Object f8326k;

        /* renamed from: l */
        int f8327l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2791c(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            ReportIssueFragment.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f8316a = obj;
            this.f8317b |= AbstractC0610a.INVALID_ID;
            return ReportIssueFragment.this.m490a(this);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.report_issue.ReportIssueFragment$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$d.class */
    public static final class C2792d extends AbstractC1184b {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2792d(String str) {
            super(str);
            ReportIssueFragment.this = r4;
        }

        @Override // com.p061b.p062a.p063a.AbstractC1184b
        /* renamed from: a */
        public boolean mo477a(CharSequence charSequence, boolean z) {
            C1694h.m3117b(charSequence, "text");
            return Patterns.EMAIL_ADDRESS.matcher(charSequence).matches();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.report_issue.ReportIssueFragment$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$e.class */
    static final class View$OnClickListenerC2793e implements View.OnClickListener {
        View$OnClickListenerC2793e() {
            ReportIssueFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ReportIssueFragment.this.f8305c = EnumC2789a.NONE;
            ReportIssueFragment.this.m484d();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.report_issue.ReportIssueFragment$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$f.class */
    static final class View$OnClickListenerC2794f implements View.OnClickListener {
        View$OnClickListenerC2794f() {
            ReportIssueFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ReportIssueFragment.this.f8305c = EnumC2789a.BLOCKING;
            ReportIssueFragment.this.m484d();
            ReportIssueFragment.m485c(ReportIssueFragment.this).f5839k.requestFocusFromTouch();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.report_issue.ReportIssueFragment$g */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$g.class */
    static final class View$OnClickListenerC2795g implements View.OnClickListener {
        View$OnClickListenerC2795g() {
            ReportIssueFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ReportIssueFragment.this.f8305c = EnumC2789a.INVALID_NUMBER_INFO;
            ReportIssueFragment.this.m484d();
            ReportIssueFragment.m485c(ReportIssueFragment.this).f5839k.requestFocusFromTouch();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.report_issue.ReportIssueFragment$h */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$h.class */
    static final class View$OnClickListenerC2796h implements View.OnClickListener {
        View$OnClickListenerC2796h() {
            ReportIssueFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ReportIssueFragment.this.f8305c = EnumC2789a.OTHER;
            ReportIssueFragment.this.m484d();
            ReportIssueFragment.m485c(ReportIssueFragment.this).f5837i.requestFocusFromTouch();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.report_issue.ReportIssueFragment$i */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$i.class */
    static final class View$OnClickListenerC2797i implements View.OnClickListener {
        View$OnClickListenerC2797i() {
            ReportIssueFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (!ReportIssueFragment.this.f8308f) {
                C2398ai c2398ai = C2398ai.f6930a;
                BetterEditText betterEditText = ReportIssueFragment.m485c(ReportIssueFragment.this).f5838j;
                C1694h.m3122a((Object) betterEditText, "binding.editEmail");
                c2398ai.m1277d(String.valueOf(betterEditText.getText()));
                ReportIssueFragment.this.f8308f = true;
                LinearLayout linearLayout = ReportIssueFragment.m485c(ReportIssueFragment.this).f5842n;
                C1694h.m3122a((Object) linearLayout, "binding.llProgress");
                linearLayout.setVisibility(0);
                ReportIssueFragment.this.m482e();
                ReportIssueFragment.this.m484d();
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.report_issue.ReportIssueFragment$j */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$j.class */
    public static final class C2798j implements TextWatcher {
        C2798j() {
            ReportIssueFragment.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (!ReportIssueFragment.this.f8307e) {
                ReportIssueFragment.this.m484d();
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    @AbstractC1634f(m3162b = "ReportIssueFragment.kt", m3161c = {147, 158, 181}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.report_issue.ReportIssueFragment$sendTicket$1")
    /* renamed from: org.mistergroup.shouldianswer.ui.report_issue.ReportIssueFragment$k */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k.class */
    public static final class C2799k extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f8335a;

        /* renamed from: b */
        Object f8336b;

        /* renamed from: c */
        Object f8337c;

        /* renamed from: d */
        Object f8338d;

        /* renamed from: e */
        Object f8339e;

        /* renamed from: f */
        int f8340f;

        /* renamed from: h */
        private AbstractC1786ad f8342h;

        @AbstractC1634f(m3162b = "ReportIssueFragment.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.report_issue.ReportIssueFragment$sendTicket$1$2")
        /* renamed from: org.mistergroup.shouldianswer.ui.report_issue.ReportIssueFragment$k$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$1.class */
        public static final class C28001 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f8343a;

            /* renamed from: c */
            private AbstractC1786ad f8345c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C28001(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2799k.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C28001) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C28001 c28001 = new C28001(abstractC1641c);
                c28001.f8345c = (AbstractC1786ad) obj;
                return c28001;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f8343a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8345c;
                    LinearLayout linearLayout = ReportIssueFragment.m485c(ReportIssueFragment.this).f5842n;
                    C1694h.m3122a((Object) linearLayout, "binding.llProgress");
                    linearLayout.setVisibility(8);
                    ReportIssueFragment.this.f8308f = false;
                    ReportIssueFragment.this.m484d();
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* renamed from: org.mistergroup.shouldianswer.ui.report_issue.ReportIssueFragment$k$a */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a.class */
        public static final class C2801a extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super DialogInterfaceC0090d>, Object> {

            /* renamed from: a */
            Object f8346a;

            /* renamed from: b */
            int f8347b;

            /* renamed from: c */
            final /* synthetic */ C3079ad.C3080a f8348c;

            /* renamed from: d */
            final /* synthetic */ C2799k f8349d;

            /* renamed from: e */
            private AbstractC1786ad f8350e;

            /* renamed from: org.mistergroup.shouldianswer.ui.report_issue.ReportIssueFragment$k$a$2 */
            /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a$2.class */
            public static final class C28032 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super DialogInterfaceC0090d>, Object> {

                /* renamed from: a */
                int f8352a;

                /* renamed from: c */
                private AbstractC1786ad f8354c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C28032(AbstractC1641c abstractC1641c) {
                    super(2, abstractC1641c);
                    C2801a.this = r5;
                }

                @Override // kotlin.p081e.p082a.AbstractC1674m
                /* renamed from: a */
                public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super DialogInterfaceC0090d> abstractC1641c) {
                    return ((C28032) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: a */
                public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                    C1694h.m3117b(abstractC1641c, "completion");
                    C28032 c28032 = new C28032(abstractC1641c);
                    c28032.f8354c = (AbstractC1786ad) obj;
                    return c28032;
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: b */
                public final Object mo42b(Object obj) {
                    C1622b.m3174a();
                    if (this.f8352a == 0) {
                        C1771k.m2979a(obj);
                        AbstractC1786ad abstractC1786ad = this.f8354c;
                        return new DialogInterfaceC0090d.C0091a(ReportIssueFragment.this.m859a()).m7920a(ReportIssueFragment.this.getString(2131755239)).m7913b(ReportIssueFragment.this.getString(2131755295)).m7919a(ReportIssueFragment.this.getString(2131755219), (DialogInterface.OnClickListener) null).m7911c();
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C2801a(C3079ad.C3080a c3080a, AbstractC1641c abstractC1641c, C2799k c2799k) {
                super(2, abstractC1641c);
                this.f8348c = c3080a;
                this.f8349d = c2799k;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super DialogInterfaceC0090d> abstractC1641c) {
                return ((C2801a) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C2801a c2801a = new C2801a(this.f8348c, abstractC1641c, this.f8349d);
                c2801a.f8350e = (AbstractC1786ad) obj;
                return c2801a;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                DialogInterfaceC0090d dialogInterfaceC0090d;
                Object a = C1622b.m3174a();
                int i = this.f8347b;
                if (i == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8350e;
                    if (this.f8348c.m207a()) {
                        C3104j.m157a(C3104j.f9124a, "ReportIssueFragment.sendTicket ticket sent", (String) null, 2, (Object) null);
                        dialogInterfaceC0090d = new DialogInterfaceC0090d.C0091a(ReportIssueFragment.this.m859a()).m7920a(ReportIssueFragment.this.getString(2131755538)).m7913b(ReportIssueFragment.this.getString(2131755528)).m7919a(ReportIssueFragment.this.getString(2131755219), new DialogInterface.OnClickListener() { // from class: org.mistergroup.shouldianswer.ui.report_issue.ReportIssueFragment.k.a.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i2) {
                                C1694h.m3117b(dialogInterface, "dialogInterface");
                                ReportIssueFragment.this.m859a().finish();
                            }
                        }).m7911c();
                        return dialogInterfaceC0090d;
                    }
                    C3104j.m152c(C3104j.f9124a, "ReportIssueFragment.sendTicket failed!", null, 2, null);
                    this.f8346a = abstractC1786ad;
                    this.f8347b = 1;
                    Object m2686a = C1890e.m2686a(C3084c.m192b(), new C28032(null), this);
                    obj = m2686a;
                    if (m2686a == a) {
                        return a;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f8346a;
                    C1771k.m2979a(obj);
                }
                dialogInterfaceC0090d = (DialogInterfaceC0090d) obj;
                return dialogInterfaceC0090d;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2799k(AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            ReportIssueFragment.this = r5;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2799k) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2799k c2799k = new C2799k(abstractC1641c);
            c2799k.f8342h = (AbstractC1786ad) obj;
            return c2799k;
        }

        /* JADX WARN: Removed duplicated region for block: B:104:0x02ca  */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo42b(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 720
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.report_issue.ReportIssueFragment.C2799k.mo42b(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: c */
    public static final /* synthetic */ AbstractC2174ci m485c(ReportIssueFragment reportIssueFragment) {
        AbstractC2174ci abstractC2174ci = reportIssueFragment.f8304b;
        if (abstractC2174ci == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2174ci;
    }

    /* renamed from: e */
    public final void m482e() {
        C3104j.m157a(C3104j.f9124a, "ReportIssueFragment.sendTicket", (String) null, 2, (Object) null);
        C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2799k(null), 2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00a9  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final /* synthetic */ java.lang.Object m490a(kotlin.p075c.AbstractC1641c<? super org.mistergroup.shouldianswer.p101ui.report_issue.ReportIssueFragment.C2790b> r7) {
        /*
            Method dump skipped, instructions count: 1589
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.report_issue.ReportIssueFragment.m490a(kotlin.c.c):java.lang.Object");
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: a */
    public void mo240a(ActivityC2499a activityC2499a, Bundle bundle) {
        C1694h.m3117b(activityC2499a, "activity");
        C3104j.m157a(C3104j.f9124a, "ReportIssueFragment.initWithActivity", (String) null, 2, (Object) null);
        C2798j c2798j = new C2798j();
        AbstractC2174ci abstractC2174ci = this.f8304b;
        if (abstractC2174ci == null) {
            C1694h.m3116b("binding");
        }
        BetterEditText betterEditText = abstractC2174ci.f5839k;
        C2798j c2798j2 = c2798j;
        betterEditText.addTextChangedListener(c2798j2);
        AbstractC2174ci abstractC2174ci2 = this.f8304b;
        if (abstractC2174ci2 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2174ci2.f5837i.addTextChangedListener(c2798j2);
        AbstractC2174ci abstractC2174ci3 = this.f8304b;
        if (abstractC2174ci3 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2174ci3.f5838j.setText(C2398ai.f6930a.m1304G());
        AbstractC2174ci abstractC2174ci4 = this.f8304b;
        if (abstractC2174ci4 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2174ci4.f5838j.addTextChangedListener(c2798j2);
        AbstractC2174ci abstractC2174ci5 = this.f8304b;
        if (abstractC2174ci5 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2174ci5.f5838j.m3832a(new C2792d(getString(2131755343)));
        AbstractC2174ci abstractC2174ci6 = this.f8304b;
        if (abstractC2174ci6 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2174ci6.f5832d.setOnClickListener(new View$OnClickListenerC2793e());
        AbstractC2174ci abstractC2174ci7 = this.f8304b;
        if (abstractC2174ci7 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2174ci7.f5833e.setOnClickListener(new View$OnClickListenerC2794f());
        AbstractC2174ci abstractC2174ci8 = this.f8304b;
        if (abstractC2174ci8 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2174ci8.f5834f.setOnClickListener(new View$OnClickListenerC2795g());
        AbstractC2174ci abstractC2174ci9 = this.f8304b;
        if (abstractC2174ci9 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2174ci9.f5835g.setOnClickListener(new View$OnClickListenerC2796h());
        AbstractC2174ci abstractC2174ci10 = this.f8304b;
        if (abstractC2174ci10 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2174ci10.f5836h.setOnClickListener(new View$OnClickListenerC2797i());
        m484d();
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: c */
    public Toolbar mo238c() {
        AbstractC2174ci abstractC2174ci = this.f8304b;
        if (abstractC2174ci == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2174ci.f5831c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x0292, code lost:
        if (r0.m3823c() != false) goto L108;
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02a7 A[Catch: all -> 0x02d8, TRY_ENTER, TryCatch #0 {all -> 0x02d8, blocks: (B:2:0x0000, B:4:0x0013, B:6:0x0019, B:11:0x0047, B:13:0x005d, B:15:0x0063, B:20:0x0087, B:22:0x0098, B:24:0x009e, B:33:0x00d0, B:34:0x00de, B:35:0x00e7, B:37:0x00e9, B:38:0x00f6, B:39:0x0104, B:41:0x0110, B:43:0x0122, B:45:0x0128, B:50:0x014c, B:52:0x0162, B:54:0x0168, B:56:0x0182, B:61:0x0199, B:63:0x01af, B:65:0x01b5, B:67:0x01cf, B:72:0x01e6, B:74:0x01f7, B:76:0x01fd, B:78:0x020b, B:80:0x0215, B:82:0x021e, B:84:0x0224, B:86:0x022d, B:88:0x0236, B:90:0x023c, B:94:0x0252, B:96:0x025c, B:98:0x0265, B:100:0x026b, B:102:0x0274, B:104:0x027d, B:106:0x0283, B:111:0x029e, B:113:0x02a7, B:115:0x02ad, B:118:0x02c5), top: B:124:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01af A[Catch: all -> 0x02d8, TRY_ENTER, TryCatch #0 {all -> 0x02d8, blocks: (B:2:0x0000, B:4:0x0013, B:6:0x0019, B:11:0x0047, B:13:0x005d, B:15:0x0063, B:20:0x0087, B:22:0x0098, B:24:0x009e, B:33:0x00d0, B:34:0x00de, B:35:0x00e7, B:37:0x00e9, B:38:0x00f6, B:39:0x0104, B:41:0x0110, B:43:0x0122, B:45:0x0128, B:50:0x014c, B:52:0x0162, B:54:0x0168, B:56:0x0182, B:61:0x0199, B:63:0x01af, B:65:0x01b5, B:67:0x01cf, B:72:0x01e6, B:74:0x01f7, B:76:0x01fd, B:78:0x020b, B:80:0x0215, B:82:0x021e, B:84:0x0224, B:86:0x022d, B:88:0x0236, B:90:0x023c, B:94:0x0252, B:96:0x025c, B:98:0x0265, B:100:0x026b, B:102:0x0274, B:104:0x027d, B:106:0x0283, B:111:0x029e, B:113:0x02a7, B:115:0x02ad, B:118:0x02c5), top: B:124:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01f7 A[Catch: all -> 0x02d8, TRY_ENTER, TryCatch #0 {all -> 0x02d8, blocks: (B:2:0x0000, B:4:0x0013, B:6:0x0019, B:11:0x0047, B:13:0x005d, B:15:0x0063, B:20:0x0087, B:22:0x0098, B:24:0x009e, B:33:0x00d0, B:34:0x00de, B:35:0x00e7, B:37:0x00e9, B:38:0x00f6, B:39:0x0104, B:41:0x0110, B:43:0x0122, B:45:0x0128, B:50:0x014c, B:52:0x0162, B:54:0x0168, B:56:0x0182, B:61:0x0199, B:63:0x01af, B:65:0x01b5, B:67:0x01cf, B:72:0x01e6, B:74:0x01f7, B:76:0x01fd, B:78:0x020b, B:80:0x0215, B:82:0x021e, B:84:0x0224, B:86:0x022d, B:88:0x0236, B:90:0x023c, B:94:0x0252, B:96:0x025c, B:98:0x0265, B:100:0x026b, B:102:0x0274, B:104:0x027d, B:106:0x0283, B:111:0x029e, B:113:0x02a7, B:115:0x02ad, B:118:0x02c5), top: B:124:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x020b A[Catch: all -> 0x02d8, TryCatch #0 {all -> 0x02d8, blocks: (B:2:0x0000, B:4:0x0013, B:6:0x0019, B:11:0x0047, B:13:0x005d, B:15:0x0063, B:20:0x0087, B:22:0x0098, B:24:0x009e, B:33:0x00d0, B:34:0x00de, B:35:0x00e7, B:37:0x00e9, B:38:0x00f6, B:39:0x0104, B:41:0x0110, B:43:0x0122, B:45:0x0128, B:50:0x014c, B:52:0x0162, B:54:0x0168, B:56:0x0182, B:61:0x0199, B:63:0x01af, B:65:0x01b5, B:67:0x01cf, B:72:0x01e6, B:74:0x01f7, B:76:0x01fd, B:78:0x020b, B:80:0x0215, B:82:0x021e, B:84:0x0224, B:86:0x022d, B:88:0x0236, B:90:0x023c, B:94:0x0252, B:96:0x025c, B:98:0x0265, B:100:0x026b, B:102:0x0274, B:104:0x027d, B:106:0x0283, B:111:0x029e, B:113:0x02a7, B:115:0x02ad, B:118:0x02c5), top: B:124:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x021e A[Catch: all -> 0x02d8, TRY_ENTER, TryCatch #0 {all -> 0x02d8, blocks: (B:2:0x0000, B:4:0x0013, B:6:0x0019, B:11:0x0047, B:13:0x005d, B:15:0x0063, B:20:0x0087, B:22:0x0098, B:24:0x009e, B:33:0x00d0, B:34:0x00de, B:35:0x00e7, B:37:0x00e9, B:38:0x00f6, B:39:0x0104, B:41:0x0110, B:43:0x0122, B:45:0x0128, B:50:0x014c, B:52:0x0162, B:54:0x0168, B:56:0x0182, B:61:0x0199, B:63:0x01af, B:65:0x01b5, B:67:0x01cf, B:72:0x01e6, B:74:0x01f7, B:76:0x01fd, B:78:0x020b, B:80:0x0215, B:82:0x021e, B:84:0x0224, B:86:0x022d, B:88:0x0236, B:90:0x023c, B:94:0x0252, B:96:0x025c, B:98:0x0265, B:100:0x026b, B:102:0x0274, B:104:0x027d, B:106:0x0283, B:111:0x029e, B:113:0x02a7, B:115:0x02ad, B:118:0x02c5), top: B:124:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x022d A[Catch: all -> 0x02d8, TRY_LEAVE, TryCatch #0 {all -> 0x02d8, blocks: (B:2:0x0000, B:4:0x0013, B:6:0x0019, B:11:0x0047, B:13:0x005d, B:15:0x0063, B:20:0x0087, B:22:0x0098, B:24:0x009e, B:33:0x00d0, B:34:0x00de, B:35:0x00e7, B:37:0x00e9, B:38:0x00f6, B:39:0x0104, B:41:0x0110, B:43:0x0122, B:45:0x0128, B:50:0x014c, B:52:0x0162, B:54:0x0168, B:56:0x0182, B:61:0x0199, B:63:0x01af, B:65:0x01b5, B:67:0x01cf, B:72:0x01e6, B:74:0x01f7, B:76:0x01fd, B:78:0x020b, B:80:0x0215, B:82:0x021e, B:84:0x0224, B:86:0x022d, B:88:0x0236, B:90:0x023c, B:94:0x0252, B:96:0x025c, B:98:0x0265, B:100:0x026b, B:102:0x0274, B:104:0x027d, B:106:0x0283, B:111:0x029e, B:113:0x02a7, B:115:0x02ad, B:118:0x02c5), top: B:124:0x0000 }] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m484d() {
        /*
            Method dump skipped, instructions count: 736
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.report_issue.ReportIssueFragment.m484d():void");
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
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater, 2131558494, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f8304b = (AbstractC2174ci) m5843a;
        AbstractC2174ci abstractC2174ci = this.f8304b;
        if (abstractC2174ci == null) {
            C1694h.m3116b("binding");
        }
        View d = abstractC2174ci.m5863d();
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
            String string = getString(2131755322);
            C1694h.m3122a((Object) string, "getString(R.string.help_…_to_report_the_app_issue)");
            c3078ac.m220a(context, string);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }
}
