package p459j.p460a.p474c0.p483e.p486c;

import android.content.Context;
import androidx.annotation.UiThread;
import kotlin.Metadata;
import p459j.p460a.p582w0.C14197v4;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p590x4.C14282k;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\rH\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\rH\u0007J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\rH\u0007J\u000e\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\u0015"}, m815d2 = {"Lgogolook/callgogolook2/messaging/scan/tracking/ScanResultPageEventHelper$EventHelper;", "Lgogolook/callgogolook2/util/analytics/EventTrackingHelper;", "()V", "isInteractiveAtStart", "", "timeProbe", "Lgogolook/callgogolook2/util/debug/TimeProbe;", "getTimeProbe", "()Lgogolook/callgogolook2/util/debug/TimeProbe;", "timeProbe$delegate", "Lkotlin/Lazy;", "isInteractive", "context", "Landroid/content/Context;", "start", "", "stop", "trackAction", "action", "", "trackClickedMaliciousUrl", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.e.c.a */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/c/a.class */
public final class C11746a extends C14282k {

    /* renamed from: g */
    public static final /* synthetic */ AbstractC14906i[] f26357g;

    /* renamed from: f */
    public final AbstractC14974f f26358f = C14975g.m662a(C11747a.f26359a);

    /* renamed from: j.a.c0.e.c.a$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/c/a$a.class */
    public static final class C11747a extends AbstractC15150l implements AbstractC15107a<C13930d> {

        /* renamed from: a */
        public static final C11747a f26359a = new C11747a();

        public C11747a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C13930d invoke() {
            return new C13930d();
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C11746a.class), "timeProbe", "getTimeProbe()Lgogolook/callgogolook2/util/debug/TimeProbe;");
        C15131a0.m412a(sVar);
        f26357g = new AbstractC14906i[]{sVar};
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C11746a() {
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
            java.lang.String r1 = "is_click_malicious_url"
            r2 = r10
            j.a.w0.x4.a0.a r0 = r0.m2100a(r1, r2)
            r0 = r9
            java.lang.String r1 = "action"
            java.lang.String r2 = "null"
            j.a.w0.x4.a0.a r0 = r0.m2100a(r1, r2)
            r0 = r8
            r1 = 1
            j.a.w0.x4.a0.e[] r1 = new p459j.p460a.p582w0.p590x4.p591a0.AbstractC14238e[r1]
            r2 = r1
            r3 = 0
            j.a.w0.x4.a0.d r4 = new j.a.w0.x4.a0.d
            r5 = r4
            java.lang.String r6 = "whoscall_scan_result_page"
            r5.<init>(r6)
            r2[r3] = r4
            r2 = r9
            r0.<init>(r1, r2)
            r0 = r8
            j.a.c0.e.c.a$a r1 = p459j.p460a.p474c0.p483e.p486c.C11746a.C11747a.f26359a
            l.f r1 = p626l.C14975g.m662a(r1)
            r0.f26358f = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p483e.p486c.C11746a.<init>():void");
    }

    /* renamed from: a */
    public final boolean m8389a(Context context) {
        return !C14197v4.m2249b(context) && C14197v4.m2251a(context);
    }

    @UiThread
    /* renamed from: b */
    public final void m8388b(Context context) {
        C15149k.m377b(context, "context");
        m8389a(context);
        m8385d().m3018e();
    }

    /* renamed from: b */
    public final void m8387b(String str) {
        C15149k.m377b(str, "action");
        m1920a("action", str);
    }

    @UiThread
    /* renamed from: c */
    public final void m8386c(Context context) {
        C15149k.m377b(context, "context");
        if (m8385d().m3019d()) {
            m8385d().m3017f();
            m1920a("duration", Integer.valueOf((int) m8385d().m3025a()));
            if (!m8389a(context)) {
                m8387b("screen_off");
            }
            m1923a();
        }
    }

    /* renamed from: d */
    public final C13930d m8385d() {
        AbstractC14974f fVar = this.f26358f;
        AbstractC14906i iVar = f26357g[0];
        return (C13930d) fVar.getValue();
    }

    /* renamed from: e */
    public final void m8384e() {
        m1920a("is_click_malicious_url", 1);
    }
}
