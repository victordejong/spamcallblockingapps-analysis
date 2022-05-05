package p459j.p460a.p564s;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.widget.LinearLayout;
import gogolook.callgogolook2.gson.CallAction;
import gogolook.callgogolook2.view.widget.LabeledEditText;
import kotlin.Metadata;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p587d5.C13975b;
import p459j.p460a.p613z0.DialogC14618f;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, m815d2 = {"Lgogolook/callgogolook2/developmode/CallLogDevelopTool;", "", "()V", "modifyCallLogType", "", "context", "Landroid/content/Context;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.s.s */
/* loaded from: classes2-dex2jar.jar:j/a/s/s.class */
public final class C13468s {

    /* renamed from: j.a.s.s$a */
    /* loaded from: classes2-dex2jar.jar:j/a/s/s$a.class */
    public static final class DialogInterface$OnClickListenerC13469a implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ LabeledEditText f30268a;

        /* renamed from: b */
        public final /* synthetic */ LabeledEditText f30269b;

        /* renamed from: c */
        public final /* synthetic */ LabeledEditText f30270c;

        /* renamed from: d */
        public final /* synthetic */ LabeledEditText f30271d;

        public DialogInterface$OnClickListenerC13469a(LabeledEditText labeledEditText, LabeledEditText labeledEditText2, LabeledEditText labeledEditText3, LabeledEditText labeledEditText4) {
            this.f30268a = labeledEditText;
            this.f30269b = labeledEditText2;
            this.f30270c = labeledEditText3;
            this.f30271d = labeledEditText4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C13975b.f31383a.m9459a("call_log_manufacturer", this.f30268a.m25695c());
            C13975b.f31383a.m9459a("call_log_type_incoming", (String) Integer.valueOf(Integer.parseInt(this.f30269b.m25695c())));
            C13975b.f31383a.m9459a("call_log_type_outgoing", (String) Integer.valueOf(Integer.parseInt(this.f30270c.m25695c())));
            C13975b.f31383a.m9459a("call_log_type_missed", (String) Integer.valueOf(Integer.parseInt(this.f30271d.m25695c())));
        }
    }

    static {
        new C13468s();
    }

    /* renamed from: a */
    public static final void m3995a(Context context) {
        C15149k.m377b(context, "context");
        DialogC14618f fVar = new DialogC14618f(context);
        fVar.setTitle("Customized Call Log Type");
        LabeledEditText labeledEditText = new LabeledEditText(context);
        labeledEditText.setPadding(0, C14217x3.m2201a(16.0f), 0, 0);
        labeledEditText.m25692d(1);
        labeledEditText.m25697b("Manufacturer");
        String a = C13975b.f31383a.m9458a("call_log_manufacturer", (String) null);
        if (a == null) {
            a = Build.MANUFACTURER;
            C15149k.m383a((Object) a, "Build.MANUFACTURER");
        }
        labeledEditText.m25693c(a);
        LabeledEditText labeledEditText2 = new LabeledEditText(context);
        labeledEditText2.setPadding(0, C14217x3.m2201a(16.0f), 0, 0);
        labeledEditText2.m25692d(2);
        labeledEditText2.m25697b(CallAction.INCOMING);
        labeledEditText2.m25693c(String.valueOf(C13975b.f31383a.m9461a("call_log_type_incoming", (Integer) 1)));
        LabeledEditText labeledEditText3 = new LabeledEditText(context);
        labeledEditText3.setPadding(0, C14217x3.m2201a(16.0f), 0, 0);
        labeledEditText3.m25692d(2);
        labeledEditText3.m25697b(CallAction.OUTGOING);
        labeledEditText3.m25693c(String.valueOf(C13975b.f31383a.m9461a("call_log_type_outgoing", (Integer) 2)));
        LabeledEditText labeledEditText4 = new LabeledEditText(context);
        labeledEditText4.setPadding(0, C14217x3.m2201a(16.0f), 0, 0);
        labeledEditText4.m25692d(2);
        labeledEditText4.m25697b("Missed");
        labeledEditText4.m25693c(String.valueOf(C13975b.f31383a.m9461a("call_log_type_missed", (Integer) 3)));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.addView(labeledEditText);
        linearLayout.addView(labeledEditText2);
        linearLayout.addView(labeledEditText3);
        linearLayout.addView(labeledEditText4);
        fVar.m1005a(linearLayout);
        fVar.m997b("Save", new DialogInterface$OnClickListenerC13469a(labeledEditText, labeledEditText2, labeledEditText3, labeledEditText4));
        fVar.show();
    }
}
