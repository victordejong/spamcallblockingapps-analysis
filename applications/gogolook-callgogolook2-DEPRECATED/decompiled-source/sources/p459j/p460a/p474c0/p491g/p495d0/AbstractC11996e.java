package p459j.p460a.p474c0.p491g.p495d0;

import android.content.Context;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import kotlin.Metadata;
import p459j.p460a.p521j0.p529x.C12817p;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018�� \"2\u00020\u0001:\u0002!\"J\u0014\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\b\u0010\u0006\u001a\u00020\u0003H&J\b\u0010\u0007\u001a\u00020\u0003H&J\u0012\u0010\b\u001a\u00020\u00032\b\b\u0001\u0010\t\u001a\u00020\nH&J\b\u0010\u000b\u001a\u00020\u0003H&J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0005H&J\b\u0010\u000e\u001a\u00020\u0003H&J\b\u0010\u000f\u001a\u00020\u0010H&J\b\u0010\u0011\u001a\u00020\u0010H&J\b\u0010\u0012\u001a\u00020\u0003H&J\b\u0010\u0013\u001a\u00020\u0003H&J\b\u0010\u0014\u001a\u00020\u0003H&J\b\u0010\u0015\u001a\u00020\u0003H&J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0018H&J\b\u0010\u0019\u001a\u00020\u0003H&J\u0014\u0010\u001a\u001a\u00020\u00032\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0005H&J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u001eH&J\u0010\u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u0005H&¨\u0006#"}, m815d2 = {"Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogContract$Presenter;", "", MraidParser.MRAID_COMMAND_CLOSE, "", "from", "", "copyOtpToClipboard", "goSmsSetting", "launchConversationPage", "gfSource", "", "launchNumberDetailPage", "launchUrlScanPage", "fromSource", "launchVasScan", "needToShowAd", "", "performCallAction", "performMyReport", "performReport", "performReportNotSpam", "performReportSpam", "requestAd", "context", "Landroid/content/Context;", "scanMessage", "trackSmsDataBeforeClose", "action", "updateData", "newSmsData", "Lgogolook/callgogolook2/phone/sms/WhoscallSmsData;", "urlClicked", "url", "CallToAction", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.g.d0.e */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/d0/e.class */
public interface AbstractC11996e {

    /* renamed from: j.a.c0.g.d0.e$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/d0/e$a.class */
    public static final class C11997a {

        /* renamed from: a */
        public static final /* synthetic */ C11997a f26887a = new C11997a();
    }

    /* renamed from: j.a.c0.g.d0.e$b */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/d0/e$b.class */
    public static final class C11998b {
        /* renamed from: a */
        public static /* synthetic */ void m7615a(AbstractC11996e eVar, String str, int i, Object obj) {
            if (obj == null) {
                if ((i & 1) != 0) {
                    str = null;
                }
                eVar.mo7585a(str);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: close");
        }

        /* renamed from: b */
        public static /* synthetic */ void m7614b(AbstractC11996e eVar, String str, int i, Object obj) {
            if (obj == null) {
                if ((i & 1) != 0) {
                    str = null;
                }
                eVar.mo7575b(str);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: trackSmsDataBeforeClose");
        }
    }

    static {
        C11997a aVar = C11997a.f26887a;
    }

    /* renamed from: a */
    void mo7594a(int i);

    /* renamed from: a */
    void mo7593a(Context context);

    /* renamed from: a */
    void mo7586a(C12817p pVar);

    /* renamed from: a */
    void mo7585a(String str);

    /* renamed from: a */
    boolean mo7595a();

    /* renamed from: b */
    void mo7579b();

    /* renamed from: b */
    void mo7575b(String str);

    /* renamed from: c */
    void mo7574c();

    /* renamed from: c */
    void mo7572c(String str);

    /* renamed from: d */
    void mo7571d();

    /* renamed from: e */
    boolean mo7570e();

    /* renamed from: f */
    void mo7569f();

    /* renamed from: g */
    void mo7568g();

    /* renamed from: h */
    void mo7567h();

    /* renamed from: i */
    void mo7566i();

    /* renamed from: j */
    void mo7565j();
}
