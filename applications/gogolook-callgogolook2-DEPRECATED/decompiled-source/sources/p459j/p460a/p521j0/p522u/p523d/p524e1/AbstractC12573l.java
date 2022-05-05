package p459j.p460a.p521j0.p522u.p523d.p524e1;

import android.view.View;
import gogolook.callgogolook2.ReportDialogActivity;
import gogolook.callgogolook2.gson.DataUserReport;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import kotlin.Metadata;
import p459j.p460a.p582w0.C13877a2;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p590x4.p592b0.C14241a;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\u000bH&J\b\u0010\r\u001a\u00020\u000eH&J\b\u0010\u000f\u001a\u00020\u0010H&J\b\u0010\u0011\u001a\u00020\u0012H&¨\u0006\u0013"}, m815d2 = {"Lgogolook/callgogolook2/phone/call/dialog/data/IQuestion;", "", "cedViewTrackingType", "Lgogolook/callgogolook2/util/analytics/AnalyticsV2$CallEndDialogType;", "closeClickListener", "Landroid/view/View$OnClickListener;", "defaultUserReport", "Lgogolook/callgogolook2/gson/DataUserReport;", "rowInfo", "Lgogolook/callgogolook2/gson/RowInfo;", "number", "", "primary", "reportDialogType", "Lgogolook/callgogolook2/ReportDialogActivity$ReportDialogType;", "userReportEventType", "Lgogolook/callgogolook2/util/analytics/event/UserReportEvent$Type;", "userReportStepEvent", "Lgogolook/callgogolook2/util/Event$UserReportStep;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.j0.u.d.e1.l */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/l.class */
public interface AbstractC12573l {

    /* renamed from: j.a.j0.u.d.e1.l$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/l$a.class */
    public static final class C12574a {
        /* renamed from: a */
        public static DataUserReport m5887a(AbstractC12573l lVar, RowInfo rowInfo, String str) {
            C15149k.m377b(rowInfo, "rowInfo");
            C15149k.m377b(str, "number");
            String l = C14108o4.m2474l(str);
            NumberInfo g = rowInfo.m28226g();
            C15149k.m383a((Object) g, "rowInfo.numberInfo");
            String C = g.m28393C();
            NumberInfo g2 = rowInfo.m28226g();
            C15149k.m383a((Object) g2, "rowInfo.numberInfo");
            return new DataUserReport(str, l, C, g2.m28383M(), DataUserReport.Source.CALL);
        }
    }

    /* renamed from: a */
    DataUserReport mo5844a(RowInfo rowInfo, String str);

    /* renamed from: a */
    String mo5846a();

    /* renamed from: f */
    C13877a2 mo5836f();

    /* renamed from: g */
    C14241a.EnumC14244c mo5835g();

    /* renamed from: h */
    View.OnClickListener mo5834h();

    /* renamed from: i */
    C14261f.EnumC14263b mo5833i();

    /* renamed from: j */
    ReportDialogActivity.EnumC4379w mo5832j();
}
