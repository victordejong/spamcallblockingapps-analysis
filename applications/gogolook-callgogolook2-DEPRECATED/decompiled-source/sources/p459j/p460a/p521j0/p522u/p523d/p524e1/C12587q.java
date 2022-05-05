package p459j.p460a.p521j0.p522u.p523d.p524e1;

import android.content.Context;
import android.view.View;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.ReportDialogActivity;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.DataUserReport;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import kotlin.Metadata;
import p459j.p460a.p521j0.p522u.p523d.C12640p0;
import p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k;
import p459j.p460a.p533l.HandlerC12947l;
import p459j.p460a.p582w0.C13877a2;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14147s;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p590x4.p592b0.C14241a;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u00060\u0005R\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\n\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\b\u0010\u0016\u001a\u00020\bH\u0016J\"\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\b\u0010 \u001a\u00020\bH\u0016J\"\u0010!\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0002J\b\u0010&\u001a\u00020\bH\u0016J\b\u0010'\u001a\u00020(H\u0016J\b\u0010)\u001a\u00020\bH\u0016J\b\u0010*\u001a\u00020+H\u0016J\b\u0010,\u001a\u00020-H\u0016R\u0015\u0010\u0004\u001a\u00060\u0005R\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\b¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011¨\u0006."}, m815d2 = {"Lgogolook/callgogolook2/phone/call/dialog/data/SpamQuestion;", "Lgogolook/callgogolook2/phone/call/dialog/data/ICommonQuestion;", "rowInfo", "Lgogolook/callgogolook2/gson/RowInfo;", "callStats", "Lgogolook/callgogolook2/gson/CallStats$Call;", "Lgogolook/callgogolook2/gson/CallStats;", "number", "", "(Lgogolook/callgogolook2/gson/RowInfo;Lgogolook/callgogolook2/gson/CallStats$Call;Ljava/lang/String;)V", "getCallStats", "()Lgogolook/callgogolook2/gson/CallStats$Call;", "e164", "getE164", "()Ljava/lang/String;", "getNumber", "getRowInfo", "()Lgogolook/callgogolook2/gson/RowInfo;", "cedViewTrackingType", "Lgogolook/callgogolook2/util/analytics/AnalyticsV2$CallEndDialogType;", "closeClickListener", "Landroid/view/View$OnClickListener;", "cta1", "cta1CLickListener", "context", "Landroid/content/Context;", "callViewWrapperCallback", "Lgogolook/callgogolook2/phone/call/dialog/CallEndAdapter$CallViewWrapperCallback;", "dialogActivityListener", "Lgogolook/callgogolook2/block/DialogActivityListener;", "cta1Color", "", "cta2", "cta2CLickListener", "onClickAction", "", "isCta1", "", "primary", "reportDialogType", "Lgogolook/callgogolook2/ReportDialogActivity$ReportDialogType;", "secondary", "userReportEventType", "Lgogolook/callgogolook2/util/analytics/event/UserReportEvent$Type;", "userReportStepEvent", "Lgogolook/callgogolook2/util/Event$UserReportStep;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.j0.u.d.e1.q */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/q.class */
public final class C12587q implements AbstractC12571k {

    /* renamed from: a */
    public final String f28359a;

    /* renamed from: b */
    public final RowInfo f28360b;

    /* renamed from: c */
    public final CallStats.Call f28361c;

    /* renamed from: d */
    public final String f28362d;

    /* renamed from: j.a.j0.u.d.e1.q$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/q$a.class */
    public static final class View$OnClickListenerC12588a implements View.OnClickListener {
        public View$OnClickListenerC12588a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            new C13877a2(C12587q.this.mo5835g(), C14241a.EnumC14243b.Close).m3267a(C14037j3.m2731a());
            C14261f.EnumC14264c cVar = C14261f.EnumC14264c.a_CED_Close;
            C14261f.EnumC14263b i = C12587q.this.mo5833i();
            CallStats h = CallStats.m28534h();
            C15149k.m383a((Object) h, "CallStats.getInstance()");
            C14261f.m1982a(cVar, i, null, h.m28539c(), C14108o4.m2474l(C12587q.this.m5865l()));
        }
    }

    /* renamed from: j.a.j0.u.d.e1.q$b */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/q$b.class */
    public static final class View$OnClickListenerC12589b implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ Context f28365b;

        /* renamed from: c */
        public final /* synthetic */ C12640p0.AbstractC12652l f28366c;

        /* renamed from: d */
        public final /* synthetic */ HandlerC12947l f28367d;

        public View$OnClickListenerC12589b(Context context, C12640p0.AbstractC12652l lVar, HandlerC12947l lVar2) {
            this.f28365b = context;
            this.f28366c = lVar;
            this.f28367d = lVar2;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C12587q.this.m5867a(true);
            C12587q qVar = C12587q.this;
            DataUserReport a = qVar.mo5844a(qVar.m5864m(), C12587q.this.m5865l()).m28472a(C12587q.this.m5866k());
            NumberInfo g = C12587q.this.m5864m().m28226g();
            C15149k.m383a((Object) g, "rowInfo.numberInfo");
            DataUserReport b = a.m28466b(1, g.m28383M());
            Context context = this.f28365b;
            C12640p0.AbstractC12652l lVar = this.f28366c;
            HandlerC12947l lVar2 = this.f28367d;
            C15149k.m383a((Object) b, "dataUserReport");
            C14147s.m2361a(context, lVar, false, false, false, lVar2, b, C12587q.this.mo5835g(), C12587q.this.mo5832j());
        }
    }

    /* renamed from: j.a.j0.u.d.e1.q$c */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/q$c.class */
    public static final class View$OnClickListenerC12590c implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ Context f28369b;

        /* renamed from: c */
        public final /* synthetic */ C12640p0.AbstractC12652l f28370c;

        /* renamed from: d */
        public final /* synthetic */ HandlerC12947l f28371d;

        public View$OnClickListenerC12590c(Context context, C12640p0.AbstractC12652l lVar, HandlerC12947l lVar2) {
            this.f28369b = context;
            this.f28370c = lVar;
            this.f28371d = lVar2;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C12587q.this.m5867a(false);
            C12587q qVar = C12587q.this;
            DataUserReport a = qVar.mo5844a(qVar.m5864m(), C12587q.this.m5865l()).m28472a(C12587q.this.m5866k());
            NumberInfo g = C12587q.this.m5864m().m28226g();
            C15149k.m383a((Object) g, "rowInfo.numberInfo");
            DataUserReport b = a.m28466b(0, g.m28383M());
            Context context = this.f28369b;
            C12640p0.AbstractC12652l lVar = this.f28370c;
            RowInfo m = C12587q.this.m5864m();
            String l = C12587q.this.m5865l();
            HandlerC12947l lVar2 = this.f28371d;
            C15149k.m383a((Object) b, "dataUserReport");
            C14147s.m2362a(context, lVar, m, l, true, lVar2, false, false, false, b, C12587q.this);
        }
    }

    public C12587q(RowInfo rowInfo, CallStats.Call call, String str) {
        C15149k.m377b(rowInfo, "rowInfo");
        C15149k.m377b(call, "callStats");
        C15149k.m377b(str, "number");
        this.f28360b = rowInfo;
        this.f28361c = call;
        this.f28362d = str;
        String l = C14108o4.m2474l(this.f28362d);
        C15149k.m383a((Object) l, "UtilsTelephony.parseE164Number(number)");
        this.f28359a = l;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k
    /* renamed from: a */
    public View.OnClickListener mo5845a(Context context, C12640p0.AbstractC12652l lVar, HandlerC12947l lVar2) {
        C15149k.m377b(context, "context");
        C15149k.m377b(lVar, "callViewWrapperCallback");
        return new View$OnClickListenerC12590c(context, lVar, lVar2);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: a */
    public DataUserReport mo5844a(RowInfo rowInfo, String str) {
        C15149k.m377b(rowInfo, "rowInfo");
        C15149k.m377b(str, "number");
        return AbstractC12571k.C12572a.m5888a(this, rowInfo, str);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: a */
    public String mo5846a() {
        String str = this.f28360b.m28224h().name;
        C15149k.m383a((Object) str, "rowInfo.primary.name");
        return str;
    }

    /* renamed from: a */
    public final void m5867a(boolean z) {
        if (!this.f28361c.m28529B()) {
            this.f28360b.m28226g().m28332f();
        }
        new C13877a2(mo5835g(), z ? C14241a.EnumC14243b.Spam : C14241a.EnumC14243b.NotSpam).m3267a(C14037j3.m2731a());
        C14261f.EnumC14264c cVar = C14261f.EnumC14264c.a_CED_Action;
        C14261f.EnumC14263b i = mo5833i();
        C14261f.EnumC14262a aVar = z ? C14261f.EnumC14262a.yes : C14261f.EnumC14262a.no;
        CallStats h = CallStats.m28534h();
        C15149k.m383a((Object) h, "CallStats.getInstance()");
        C14261f.m1982a(cVar, i, aVar, h.m28539c(), this.f28359a);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k
    /* renamed from: b */
    public View.OnClickListener mo5840b(Context context, C12640p0.AbstractC12652l lVar, HandlerC12947l lVar2) {
        C15149k.m377b(context, "context");
        C15149k.m377b(lVar, "callViewWrapperCallback");
        return new View$OnClickListenerC12589b(context, lVar, lVar2);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k
    /* renamed from: b */
    public String mo5841b() {
        return C14206w4.m2225a((int) R$string.callend_question_spam_title);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k
    /* renamed from: c */
    public int mo5839c() {
        return C14167t.m2315a(2131100119);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k
    /* renamed from: d */
    public String mo5838d() {
        return C14206w4.m2225a((int) R$string.callend_question_spam_no);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k
    /* renamed from: e */
    public String mo5837e() {
        return C14206w4.m2225a((int) R$string.callend_question_spam_yes);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: f */
    public C13877a2 mo5836f() {
        return new C13877a2(mo5835g(), C14241a.EnumC14243b.View);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: g */
    public C14241a.EnumC14244c mo5835g() {
        return C14241a.EnumC14244c.QuestionSpam;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: h */
    public View.OnClickListener mo5834h() {
        return new View$OnClickListenerC12588a();
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: i */
    public C14261f.EnumC14263b mo5833i() {
        return C14261f.EnumC14263b.question_spam;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: j */
    public ReportDialogActivity.EnumC4379w mo5832j() {
        return ReportDialogActivity.EnumC4379w.QUESTION_SPAM;
    }

    /* renamed from: k */
    public final CallStats.Call m5866k() {
        return this.f28361c;
    }

    /* renamed from: l */
    public final String m5865l() {
        return this.f28362d;
    }

    /* renamed from: m */
    public final RowInfo m5864m() {
        return this.f28360b;
    }
}
