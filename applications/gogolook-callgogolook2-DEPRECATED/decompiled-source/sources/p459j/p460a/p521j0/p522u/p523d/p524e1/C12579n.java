package p459j.p460a.p521j0.p522u.p523d.p524e1;

import android.content.Context;
import android.view.View;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.ReportDialogActivity;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.DataUserReport;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import kotlin.Metadata;
import p459j.p460a.p521j0.p522u.p523d.C12640p0;
import p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k;
import p459j.p460a.p533l.C12928g;
import p459j.p460a.p533l.HandlerC12947l;
import p459j.p460a.p567t0.C13625a;
import p459j.p460a.p582w0.C13877a2;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14147s;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p590x4.p592b0.C14241a;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u00060\u0005R\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\n\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\n\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\b\u0010\u001d\u001a\u00020\bH\u0016J\"\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J\b\u0010%\u001a\u00020&H\u0016J\b\u0010'\u001a\u00020\bH\u0016J\"\u0010(\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J\b\u0010)\u001a\u00020\bH\u0016J\b\u0010*\u001a\u00020+H\u0016J\b\u0010,\u001a\u00020\bH\u0016J\b\u0010-\u001a\u00020.H\u0016J\b\u0010/\u001a\u000200H\u0016R\u0015\u0010\u0004\u001a\u00060\u0005R\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\b¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0018¨\u00061"}, m815d2 = {"Lgogolook/callgogolook2/phone/call/dialog/data/MySpamOrTagExpiredQuestion;", "Lgogolook/callgogolook2/phone/call/dialog/data/ICommonQuestion;", "rowInfo", "Lgogolook/callgogolook2/gson/RowInfo;", "callStats", "Lgogolook/callgogolook2/gson/CallStats$Call;", "Lgogolook/callgogolook2/gson/CallStats;", "number", "", "(Lgogolook/callgogolook2/gson/RowInfo;Lgogolook/callgogolook2/gson/CallStats$Call;Ljava/lang/String;)V", "getCallStats", "()Lgogolook/callgogolook2/gson/CallStats$Call;", "e164", "getE164", "()Ljava/lang/String;", "isMySpamExpired", "", "isMyTagExpired", "mySpam", "Lgogolook/callgogolook2/gson/NumberInfo$Whoscall$Spam;", "myTag", "Lgogolook/callgogolook2/gson/NumberInfo$Whoscall$Tag;", "getNumber", "getRowInfo", "()Lgogolook/callgogolook2/gson/RowInfo;", "cedViewTrackingType", "Lgogolook/callgogolook2/util/analytics/AnalyticsV2$CallEndDialogType;", "closeClickListener", "Landroid/view/View$OnClickListener;", "cta1", "cta1CLickListener", "context", "Landroid/content/Context;", "callViewWrapperCallback", "Lgogolook/callgogolook2/phone/call/dialog/CallEndAdapter$CallViewWrapperCallback;", "dialogActivityListener", "Lgogolook/callgogolook2/block/DialogActivityListener;", "cta1Color", "", "cta2", "cta2CLickListener", "primary", "reportDialogType", "Lgogolook/callgogolook2/ReportDialogActivity$ReportDialogType;", "secondary", "userReportEventType", "Lgogolook/callgogolook2/util/analytics/event/UserReportEvent$Type;", "userReportStepEvent", "Lgogolook/callgogolook2/util/Event$UserReportStep;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.j0.u.d.e1.n */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/n.class */
public final class C12579n implements AbstractC12571k {

    /* renamed from: a */
    public final String f28329a;

    /* renamed from: b */
    public final NumberInfo.Whoscall.Tag f28330b;

    /* renamed from: c */
    public final NumberInfo.Whoscall.Spam f28331c;

    /* renamed from: d */
    public final boolean f28332d;

    /* renamed from: e */
    public final boolean f28333e;

    /* renamed from: f */
    public final RowInfo f28334f;

    /* renamed from: g */
    public final CallStats.Call f28335g;

    /* renamed from: h */
    public final String f28336h;

    /* renamed from: j.a.j0.u.d.e1.n$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/n$a.class */
    public static final class View$OnClickListenerC12580a implements View.OnClickListener {
        public View$OnClickListenerC12580a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C13877a2 f = C12579n.this.mo5836f();
            f.m3266a(C14241a.EnumC14243b.Close);
            f.m3267a(C14037j3.m2731a());
        }
    }

    /* renamed from: j.a.j0.u.d.e1.n$b */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/n$b.class */
    public static final class View$OnClickListenerC12581b implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ Context f28339b;

        /* renamed from: c */
        public final /* synthetic */ C12640p0.AbstractC12652l f28340c;

        public View$OnClickListenerC12581b(Context context, C12640p0.AbstractC12652l lVar) {
            this.f28339b = context;
            this.f28340c = lVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (C12579n.this.m5874n().m28226g().m28353a0()) {
                Context context = this.f28339b;
                String l = C12579n.this.m5876l();
                NumberInfo.Whoscall.Tag tag = C12579n.this.f28330b;
                if (tag != null) {
                    C13625a.m3783e(context, l, tag.name);
                    C12579n.this.mo5836f().m3262b(C12579n.this.f28330b.name);
                } else {
                    C15149k.m378b();
                    throw null;
                }
            }
            if (C12579n.this.m5874n().m28226g().m28370Z()) {
                Context applicationContext = this.f28339b.getApplicationContext();
                String m = C12579n.this.m5875m();
                String l2 = C12579n.this.m5876l();
                NumberInfo.Whoscall.Spam spam = C12579n.this.f28331c;
                if (spam != null) {
                    C12928g.m4999a(applicationContext, 0, m, l2, spam.reason, C12579n.this.f28331c.ccat);
                    C12579n.this.mo5836f().m3264a(C12579n.this.f28331c.reason);
                } else {
                    C15149k.m378b();
                    throw null;
                }
            }
            C13877a2 f = C12579n.this.mo5836f();
            f.m3266a(C14241a.EnumC14243b.Confirm);
            f.m3267a(C14037j3.m2731a());
            C12579n nVar = C12579n.this;
            DataUserReport a = nVar.mo5844a(nVar.m5874n(), C12579n.this.m5875m());
            a.m28472a(C12579n.this.m5877k());
            if (C12579n.this.m5874n().m28226g().m28353a0()) {
                NumberInfo.Whoscall.Tag tag2 = C12579n.this.f28330b;
                if (tag2 != null) {
                    a.m28470a(tag2.name);
                } else {
                    C15149k.m378b();
                    throw null;
                }
            }
            if (C12579n.this.m5874n().m28226g().m28370Z()) {
                NumberInfo.Whoscall.Spam spam2 = C12579n.this.f28331c;
                if (spam2 != null) {
                    a.m28469a(spam2.reason, C12579n.this.f28331c.ccat);
                } else {
                    C15149k.m378b();
                    throw null;
                }
            }
            a.m28457f();
            C14241a.EnumC14243b bVar = (!C12579n.this.m5874n().m28226g().m28353a0() || !C12579n.this.m5874n().m28226g().m28370Z()) ? C12579n.this.m5874n().m28226g().m28353a0() ? C14241a.EnumC14243b.ReportTagDone : C14241a.EnumC14243b.ReportSpamDone : C14241a.EnumC14243b.ReportTagAndSpamDone;
            C13877a2 f2 = C12579n.this.mo5836f();
            f2.m3266a(bVar);
            f2.m3267a(C14037j3.m2731a());
            this.f28340c.onStop();
            CallUtils.m26549c(this.f28339b, 4);
        }
    }

    /* renamed from: j.a.j0.u.d.e1.n$c */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/n$c.class */
    public static final class View$OnClickListenerC12582c implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ Context f28342b;

        /* renamed from: c */
        public final /* synthetic */ C12640p0.AbstractC12652l f28343c;

        /* renamed from: d */
        public final /* synthetic */ HandlerC12947l f28344d;

        public View$OnClickListenerC12582c(Context context, C12640p0.AbstractC12652l lVar, HandlerC12947l lVar2) {
            this.f28342b = context;
            this.f28343c = lVar;
            this.f28344d = lVar2;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C13877a2 f = C12579n.this.mo5836f();
            f.m3266a(C14241a.EnumC14243b.Revise);
            f.m3267a(C14037j3.m2731a());
            C12579n nVar = C12579n.this;
            DataUserReport a = nVar.mo5844a(nVar.m5874n(), C12579n.this.m5875m()).m28472a(C12579n.this.m5877k());
            Context context = this.f28342b;
            C12640p0.AbstractC12652l lVar = this.f28343c;
            RowInfo n = C12579n.this.m5874n();
            String m = C12579n.this.m5875m();
            HandlerC12947l lVar2 = this.f28344d;
            boolean Z = C12579n.this.m5874n().m28226g().m28370Z();
            C15149k.m383a((Object) a, "dataUserReport");
            C14147s.m2362a(context, lVar, n, m, true, lVar2, false, false, Z, a, C12579n.this);
        }
    }

    public C12579n(RowInfo rowInfo, CallStats.Call call, String str) {
        C15149k.m377b(rowInfo, "rowInfo");
        C15149k.m377b(call, "callStats");
        C15149k.m377b(str, "number");
        this.f28334f = rowInfo;
        this.f28335g = call;
        this.f28336h = str;
        String l = C14108o4.m2474l(this.f28336h);
        C15149k.m383a((Object) l, "UtilsTelephony.parseE164Number(number)");
        this.f28329a = l;
        NumberInfo g = this.f28334f.m28226g();
        C15149k.m383a((Object) g, "rowInfo.numberInfo");
        this.f28330b = g.m28394B();
        NumberInfo g2 = this.f28334f.m28226g();
        C15149k.m383a((Object) g2, "rowInfo.numberInfo");
        this.f28331c = g2.m28395A();
        NumberInfo.Whoscall.Tag tag = this.f28330b;
        boolean z = false;
        this.f28332d = tag != null ? tag.m28276a() : false;
        NumberInfo.Whoscall.Spam spam = this.f28331c;
        this.f28333e = spam != null ? spam.m28277a() : z;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k
    /* renamed from: a */
    public View.OnClickListener mo5845a(Context context, C12640p0.AbstractC12652l lVar, HandlerC12947l lVar2) {
        C15149k.m377b(context, "context");
        C15149k.m377b(lVar, "callViewWrapperCallback");
        return new View$OnClickListenerC12582c(context, lVar, lVar2);
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
        String str = this.f28334f.m28224h().name;
        C15149k.m383a((Object) str, "rowInfo.primary.name");
        return str;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k
    /* renamed from: b */
    public View.OnClickListener mo5840b(Context context, C12640p0.AbstractC12652l lVar, HandlerC12947l lVar2) {
        C15149k.m377b(context, "context");
        C15149k.m377b(lVar, "callViewWrapperCallback");
        return new View$OnClickListenerC12581b(context, lVar);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k
    /* renamed from: b */
    public String mo5841b() {
        return C14206w4.m2225a((int) R$string.callend_question_verifyoldreport_title);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k
    /* renamed from: c */
    public int mo5839c() {
        return C14167t.m2315a(2131100068);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k
    /* renamed from: d */
    public String mo5838d() {
        return C14206w4.m2225a((int) R$string.callend_question_verifyoldreport_incorrect);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k
    /* renamed from: e */
    public String mo5837e() {
        return C14206w4.m2225a((int) R$string.callend_question_verifyoldreport_correct);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: f */
    public C13877a2 mo5836f() {
        C13877a2 a2Var = new C13877a2(mo5835g(), C14241a.EnumC14243b.View);
        NumberInfo.Whoscall.Tag tag = this.f28330b;
        String str = null;
        a2Var.f31157d = tag != null ? tag.name : null;
        NumberInfo.Whoscall.Spam spam = this.f28331c;
        if (spam != null) {
            str = spam.reason;
        }
        a2Var.f31159f = str;
        return a2Var;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: g */
    public C14241a.EnumC14244c mo5835g() {
        return (!this.f28333e || !this.f28332d) ? this.f28332d ? C14241a.EnumC14244c.ConfirmTag : C14241a.EnumC14244c.ConfirmSpam : C14241a.EnumC14244c.ConfirmTagAndSpam;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: h */
    public View.OnClickListener mo5834h() {
        return new View$OnClickListenerC12580a();
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: i */
    public C14261f.EnumC14263b mo5833i() {
        return null;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: j */
    public ReportDialogActivity.EnumC4379w mo5832j() {
        return ReportDialogActivity.EnumC4379w.EXPIRE_CONFIRMATION;
    }

    /* renamed from: k */
    public final CallStats.Call m5877k() {
        return this.f28335g;
    }

    /* renamed from: l */
    public final String m5876l() {
        return this.f28329a;
    }

    /* renamed from: m */
    public final String m5875m() {
        return this.f28336h;
    }

    /* renamed from: n */
    public final RowInfo m5874n() {
        return this.f28334f;
    }
}
