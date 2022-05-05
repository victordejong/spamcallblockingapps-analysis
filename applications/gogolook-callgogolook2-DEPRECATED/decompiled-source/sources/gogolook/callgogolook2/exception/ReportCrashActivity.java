package gogolook.callgogolook2.exception;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import gogolook.callgogolook2.R$string;
import kotlin.Metadata;
import p459j.p460a.p582w0.C13884a4;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14315y;
import p459j.p460a.p613z0.DialogC14618f;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018�� \u000b2\u00020\u0001:\u0001\u000bB\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014J\u001c\u0010\u0007\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002¨\u0006\f"}, m815d2 = {"Lgogolook/callgogolook2/exception/ReportCrashActivity;", "Landroid/app/Activity;", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "sendErrorMail", "subject", "", "errorContent", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/exception/ReportCrashActivity.class */
public final class ReportCrashActivity extends Activity {

    /* renamed from: a */
    public static final String[] f10784a = {"gogolookqa@gogolook.com"};

    /* renamed from: gogolook.callgogolook2.exception.ReportCrashActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/exception/ReportCrashActivity$a.class */
    public static final class C4470a {
        public C4470a() {
        }

        public /* synthetic */ C4470a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: gogolook.callgogolook2.exception.ReportCrashActivity$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/exception/ReportCrashActivity$b.class */
    public static final class DialogInterface$OnDismissListenerC4471b implements DialogInterface.OnDismissListener {
        public DialogInterface$OnDismissListenerC4471b() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public final void onDismiss(DialogInterface dialogInterface) {
            ReportCrashActivity.this.finish();
        }
    }

    /* renamed from: gogolook.callgogolook2.exception.ReportCrashActivity$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/exception/ReportCrashActivity$c.class */
    public static final class DialogInterface$OnClickListenerC4472c implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC4472c() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            ReportCrashActivity reportCrashActivity = ReportCrashActivity.this;
            reportCrashActivity.m28564a(reportCrashActivity.getIntent().getStringExtra("subject"), ReportCrashActivity.this.getIntent().getStringExtra("content"));
        }
    }

    static {
        new C4470a(null);
    }

    /* renamed from: a */
    public final void m28564a(String str, String str2) {
        Intent putExtra = new Intent("android.intent.action.SEND_MULTIPLE").setType("plain/text").putExtra("android.intent.extra.EMAIL", f10784a).putExtra("android.intent.extra.SUBJECT", str);
        StringBuilder sb = new StringBuilder();
        sb.append(C13884a4.m3172f());
        sb.append("\nBuild: ");
        sb.append(getString(R$string.build_version));
        sb.append("\n\n\n");
        if (str2 == null) {
            str2 = "";
        }
        sb.append(str2);
        Intent putExtra2 = putExtra.putExtra("android.intent.extra.TEXT", sb.toString());
        C15149k.m383a((Object) putExtra2, "emailIntent");
        C14191v.m2257a(this, putExtra2, null, 2, null);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(this);
        fVar.m979b("Unfortunately, Whoscall has stopped.\n\nPlease press \"Report\" and send Email to us");
        fVar.m978b("Report", new DialogInterface$OnClickListenerC4472c());
        DialogC14618f a = fVar.m989a();
        a.setOnDismissListener(new DialogInterface$OnDismissListenerC4471b());
        C15149k.m383a((Object) a, "MDialog.Builder(this)\n  …ssListener { finish() } }");
        C14315y.m1603b(a);
    }
}
