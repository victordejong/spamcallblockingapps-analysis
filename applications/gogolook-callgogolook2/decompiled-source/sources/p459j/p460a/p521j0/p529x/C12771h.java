package p459j.p460a.p521j0.p529x;

import android.content.Context;
import android.view.View;
import androidx.annotation.UiThread;
import gogolook.callgogolook2.gson.NumberInfo;
import java.util.ArrayList;
import kotlin.Metadata;
import p459j.p460a.p474c0.p491g.p495d0.AbstractView$OnClickListenerC11995d;
import p459j.p460a.p474c0.p491g.p495d0.C11993b;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14197v4;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p590x4.C14282k;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15013i;
import p626l.p632u.C15029u;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010$\u001a\u00020\b2\u0006\u0010%\u001a\u00020&H\u0002J\u0010\u0010'\u001a\u00020(2\u0006\u0010%\u001a\u00020&H\u0007J\u001c\u0010)\u001a\u00020(2\u0006\u0010%\u001a\u00020&2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u0005H\u0007J\u000e\u0010+\u001a\u00020(2\u0006\u0010*\u001a\u00020\u0005J\u001d\u0010,\u001a\u00020(2\u0010\u0010-\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010.0\u0004¢\u0006\u0002\u0010/J\u000e\u00100\u001a\u00020(2\u0006\u00101\u001a\u00020\u001eJ\u0010\u00102\u001a\u00020(2\b\u00103\u001a\u0004\u0018\u000104R\u0018\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001e\u0010\u000e\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\u000f\u0010\n\"\u0004\b\u0010\u0010\fR\u001e\u0010\u0011\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\u0012\u0010\n\"\u0004\b\u0013\u0010\fR\u001e\u0010\u0014\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\u0014\u0010\n\"\u0004\b\u0015\u0010\fR\u000e\u0010\u0016\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010\u0017\u001a\u00020\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u0019\u0010\u001aR\u001e\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e¢\u0006\u0010\n\u0002\u0010#\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u00065"}, m815d2 = {"Lgogolook/callgogolook2/phone/sms/SmsDialogEventHelper$EventHelper;", "Lgogolook/callgogolook2/util/analytics/EventTrackingHelper;", "()V", "ctaButtonArray", "", "", "[Ljava/lang/String;", "hasApk", "", "getHasApk", "()Ljava/lang/Boolean;", "setHasApk", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "hasOtp", "getHasOtp", "setHasOtp", "hasUrl", "getHasUrl", "setHasUrl", "isContact", "setContact", "isInteractiveAtStart", "timeProbe", "Lgogolook/callgogolook2/util/debug/TimeProbe;", "getTimeProbe", "()Lgogolook/callgogolook2/util/debug/TimeProbe;", "timeProbe$delegate", "Lkotlin/Lazy;", "vasStatus", "", "getVasStatus", "()Ljava/lang/Integer;", "setVasStatus", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "isInteractive", "context", "Landroid/content/Context;", "start", "", "stop", "ctaName", "trackAction", "trackActionButtonDisplay", "buttonArray", "Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogContract$DialogButton;", "([Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogContract$DialogButton;)V", "trackContentVisibility", "visibilityType", "trackNumInfo", "numberInfo", "Lgogolook/callgogolook2/gson/NumberInfo;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.j0.x.h */
/* loaded from: classes3-dex2jar.jar:j/a/j0/x/h.class */
public final class C12771h extends C14282k {

    /* renamed from: n */
    public static final /* synthetic */ AbstractC14906i[] f28809n;

    /* renamed from: f */
    public final AbstractC14974f f28810f = C14975g.m662a(C12772a.f28818a);

    /* renamed from: g */
    public String[] f28811g;

    /* renamed from: h */
    public Boolean f28812h;

    /* renamed from: i */
    public Boolean f28813i;

    /* renamed from: j */
    public Boolean f28814j;

    /* renamed from: k */
    public Integer f28815k;

    /* renamed from: l */
    public Boolean f28816l;

    /* renamed from: m */
    public boolean f28817m;

    /* renamed from: j.a.j0.x.h$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/h$a.class */
    public static final class C12772a extends AbstractC15150l implements AbstractC15107a<C13930d> {

        /* renamed from: a */
        public static final C12772a f28818a = new C12772a();

        public C12772a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C13930d invoke() {
            return new C13930d();
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C12771h.class), "timeProbe", "getTimeProbe()Lgogolook/callgogolook2/util/debug/TimeProbe;");
        C15131a0.m412a(sVar);
        f28809n = new AbstractC14906i[]{sVar};
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C12771h() {
        /*
            r8 = this;
            j.a.w0.x4.a0.a r0 = new j.a.w0.x4.a0.a
            r1 = r0
            r1.<init>()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "version"
            r2 = 1
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            j.a.w0.x4.a0.a r0 = r0.m2100a(r1, r2)
            r0 = -1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r10 = r0
            r0 = r9
            java.lang.String r1 = "duration"
            r2 = r10
            j.a.w0.x4.a0.a r0 = r0.m2100a(r1, r2)
            r0 = r9
            java.lang.String r1 = "content_visibility"
            r2 = r10
            j.a.w0.x4.a0.a r0 = r0.m2100a(r1, r2)
            r0 = r9
            java.lang.String r1 = "is_contact"
            r2 = r10
            j.a.w0.x4.a0.a r0 = r0.m2100a(r1, r2)
            r0 = r9
            java.lang.String r1 = "cta_item_list"
            java.lang.String r2 = "null"
            j.a.w0.x4.a0.a r0 = r0.m2100a(r1, r2)
            r0 = r9
            java.lang.String r1 = "reason"
            java.lang.String r2 = "dismiss"
            j.a.w0.x4.a0.a r0 = r0.m2100a(r1, r2)
            r0 = r9
            java.lang.String r1 = "biz_cat"
            java.lang.String r2 = "null"
            j.a.w0.x4.a0.a r0 = r0.m2100a(r1, r2)
            r0 = r9
            java.lang.String r1 = "num_spam_type"
            java.lang.String r2 = "null"
            j.a.w0.x4.a0.a r0 = r0.m2100a(r1, r2)
            r0 = r9
            java.lang.String r1 = "content_type"
            java.lang.String r2 = "null"
            j.a.w0.x4.a0.a r0 = r0.m2100a(r1, r2)
            r0 = r8
            r1 = 1
            j.a.w0.x4.a0.e[] r1 = new p459j.p460a.p582w0.p590x4.p591a0.AbstractC14238e[r1]
            r2 = r1
            r3 = 0
            j.a.w0.x4.a0.d r4 = new j.a.w0.x4.a0.d
            r5 = r4
            java.lang.String r6 = "whoscall_sms_dialog_v2"
            r5.<init>(r6)
            r2[r3] = r4
            r2 = r9
            r0.<init>(r1, r2)
            r0 = r8
            j.a.j0.x.h$a r1 = p459j.p460a.p521j0.p529x.C12771h.C12772a.f28818a
            l.f r1 = p626l.C14975g.m662a(r1)
            r0.f28810f = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p521j0.p529x.C12771h.<init>():void");
    }

    @UiThread
    /* renamed from: a */
    public static /* synthetic */ void m5383a(C12771h hVar, Context context, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        hVar.m5385a(context, str);
    }

    /* renamed from: a */
    public final void m5387a(int i) {
        m1920a("content_visibility", (String) Integer.valueOf(i));
    }

    @UiThread
    /* renamed from: a */
    public final void m5385a(Context context, String str) {
        C15149k.m377b(context, "context");
        if (m5375d().m3019d()) {
            m5375d().m3017f();
            m1920a("duration", (String) Integer.valueOf((int) m5375d().m3025a()));
            Boolean bool = this.f28816l;
            boolean z = true;
            m1920a("is_contact", (String) Integer.valueOf(C15149k.m384a((Object) bool, (Object) true) ? 1 : C15149k.m384a((Object) bool, (Object) false) ? 0 : -1));
            ArrayList arrayList = new ArrayList();
            if (C15149k.m384a((Object) this.f28812h, (Object) true)) {
                arrayList.add("url");
            }
            if (C15149k.m384a((Object) this.f28813i, (Object) true)) {
                arrayList.add("apk");
            }
            Integer num = this.f28815k;
            if (num != null && num.intValue() == 2) {
                arrayList.add("vas_subscription");
            } else if (num != null && num.intValue() == 1) {
                arrayList.add("vas_promotion");
            }
            if (C15149k.m384a((Object) this.f28814j, (Object) true)) {
                arrayList.add("otp");
            }
            m1920a("content_type", C15029u.m545a(arrayList, null, null, null, 0, null, null, 63, null));
            if (str != null) {
                m1920a("reason", str);
            }
            Object a = m1921a("reason");
            if (!C15149k.m384a((Object) ((String) a), (Object) "dismiss") || m5386a(context)) {
                z = false;
            }
            String str2 = null;
            if ((z ? a : null) != null) {
                m1920a("reason", this.f28817m ? "screen_off_manual" : "screen_off_system");
            }
            String[] strArr = this.f28811g;
            if (strArr != null) {
                str2 = C15013i.m582a(strArr, null, null, null, 0, null, null, 63, null);
            }
            if (str2 == null) {
                str2 = "";
            }
            m1920a("cta_item_list", str2);
            m1923a();
        }
    }

    /* renamed from: a */
    public final void m5384a(NumberInfo numberInfo) {
        String str = null;
        String j = numberInfo != null ? numberInfo.m28316j() : null;
        if (j == null) {
            j = "";
        }
        m1920a("biz_cat", j);
        if (numberInfo != null) {
            str = numberInfo.m28383M();
        }
        if (str == null) {
            str = "";
        }
        m1920a("num_spam_type", str);
    }

    /* renamed from: a */
    public final void m5382a(Boolean bool) {
        this.f28816l = bool;
    }

    /* renamed from: a */
    public final void m5381a(Integer num) {
        this.f28815k = num;
    }

    /* renamed from: a */
    public final void m5380a(C11993b[] bVarArr) {
        C15149k.m377b(bVarArr, "buttonArray");
        ArrayList arrayList = new ArrayList(bVarArr.length);
        int length = bVarArr.length;
        for (int i = 0; i < length; i++) {
            C11993b bVar = bVarArr[i];
            StringBuilder sb = new StringBuilder();
            sb.append("trackActionButtonDisplay action name: ");
            String str = null;
            View.OnClickListener a = bVar != null ? bVar.m7622a() : null;
            View.OnClickListener onClickListener = a;
            if (!(a instanceof AbstractView$OnClickListenerC11995d)) {
                onClickListener = null;
            }
            sb.append((AbstractView$OnClickListenerC11995d) onClickListener);
            C14080m2.m2616a(sb.toString());
            View.OnClickListener a2 = bVar != null ? bVar.m7622a() : null;
            View.OnClickListener onClickListener2 = a2;
            if (!(a2 instanceof AbstractView$OnClickListenerC11995d)) {
                onClickListener2 = null;
            }
            AbstractView$OnClickListenerC11995d dVar = (AbstractView$OnClickListenerC11995d) onClickListener2;
            if (dVar != null) {
                str = dVar.m7617a();
            }
            if (str == null) {
                str = "";
            }
            arrayList.add(str);
        }
        Object[] array = arrayList.toArray(new String[0]);
        if (array != null) {
            this.f28811g = (String[]) array;
            return;
        }
        throw new C14986p("null cannot be cast to non-null type kotlin.Array<T>");
    }

    /* renamed from: a */
    public final boolean m5386a(Context context) {
        return !C14197v4.m2249b(context) && C14197v4.m2251a(context);
    }

    @UiThread
    /* renamed from: b */
    public final void m5379b(Context context) {
        C15149k.m377b(context, "context");
        this.f28817m = m5386a(context);
        m5375d().m3018e();
    }

    /* renamed from: b */
    public final void m5378b(Boolean bool) {
        this.f28813i = bool;
    }

    /* renamed from: b */
    public final void m5377b(String str) {
        C15149k.m377b(str, "ctaName");
        m1920a("reason", str);
    }

    /* renamed from: c */
    public final void m5376c(Boolean bool) {
        this.f28814j = bool;
    }

    /* renamed from: d */
    public final C13930d m5375d() {
        AbstractC14974f fVar = this.f28810f;
        AbstractC14906i iVar = f28809n[0];
        return (C13930d) fVar.getValue();
    }

    /* renamed from: d */
    public final void m5374d(Boolean bool) {
        this.f28812h = bool;
    }
}
