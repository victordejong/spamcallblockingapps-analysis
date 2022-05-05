package p459j.p460a.p463b0.p470w;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import kotlin.Metadata;
import p459j.p460a.p582w0.C14123p4;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m815d2 = {"Lgogolook/callgogolook2/main/smslog/SmsFilterTrialDetailDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.w.g */
/* loaded from: classes2-dex2jar.jar:j/a/b0/w/g.class */
public final class DialogC11425g extends Dialog {

    /* renamed from: j.a.b0.w.g$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/g$a.class */
    public static final class View$OnClickListenerC11426a implements View.OnClickListener {
        public View$OnClickListenerC11426a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogC11425g.this.dismiss();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogC11425g(Context context) {
        super(context, 16974121);
        C15149k.m377b(context, "context");
        Window window = getWindow();
        if (window != null) {
            C14123p4.m2442a(window, ResourcesCompat.getColor(context.getResources(), 2131100101, null));
        }
        setContentView(R$layout.dialog_sms_mgr_trail_detail);
        View$OnClickListenerC11426a aVar = new View$OnClickListenerC11426a();
        ((ImageView) findViewById(R$id.iv_close_btn)).setOnClickListener(aVar);
        ((TextView) findViewById(R$id.tv_got_it)).setOnClickListener(aVar);
    }
}
