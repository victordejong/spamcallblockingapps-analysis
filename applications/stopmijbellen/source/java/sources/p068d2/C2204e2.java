package p068d2;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.support.p012v4.media.C0082b;
import androidx.recyclerview.widget.C0608b;
/* renamed from: d2.e2 */
/* loaded from: classes-dex2jar.jar:d2/e2.class */
public class C2204e2 {

    /* renamed from: a */
    public C2410t0 f8031a;

    /* renamed from: b */
    public AlertDialog f8032b;

    /* renamed from: c */
    public boolean f8033c;

    /* renamed from: d2.e2$a */
    /* loaded from: classes-dex2jar.jar:d2/e2$a.class */
    public class C2205a implements AbstractC2458y0 {
        public C2205a() {
            C2204e2.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            if (!C2408t.m3590e() || !(C2408t.f8531a instanceof Activity)) {
                C0082b.m8750l(0, 0, C0608b.m7626i("Missing Activity reference, can't build AlertDialog."), true);
            } else if (C2227e4.m3741l(c2410t0.f8537b, "on_resume")) {
                C2204e2.this.f8031a = c2410t0;
            } else {
                C2204e2.this.m3759a(c2410t0);
            }
        }
    }

    /* renamed from: d2.e2$b */
    /* loaded from: classes-dex2jar.jar:d2/e2$b.class */
    public class DialogInterface$OnClickListenerC2206b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C2410t0 f8035a;

        public DialogInterface$OnClickListenerC2206b(C2410t0 c2410t0) {
            C2204e2.this = r4;
            this.f8035a = c2410t0;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C2204e2.this.f8032b = null;
            dialogInterface.dismiss();
            C2267f4 c2267f4 = new C2267f4();
            C2227e4.m3739n(c2267f4, "positive", true);
            C2204e2.this.f8033c = false;
            this.f8035a.m3587a(c2267f4).m3586b();
        }
    }

    /* renamed from: d2.e2$c */
    /* loaded from: classes-dex2jar.jar:d2/e2$c.class */
    public class DialogInterface$OnClickListenerC2207c implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C2410t0 f8037a;

        public DialogInterface$OnClickListenerC2207c(C2410t0 c2410t0) {
            C2204e2.this = r4;
            this.f8037a = c2410t0;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C2204e2.this.f8032b = null;
            dialogInterface.dismiss();
            C2267f4 c2267f4 = new C2267f4();
            C2227e4.m3739n(c2267f4, "positive", false);
            C2204e2.this.f8033c = false;
            this.f8037a.m3587a(c2267f4).m3586b();
        }
    }

    /* renamed from: d2.e2$d */
    /* loaded from: classes-dex2jar.jar:d2/e2$d.class */
    public class DialogInterface$OnCancelListenerC2208d implements DialogInterface.OnCancelListener {

        /* renamed from: a */
        public final /* synthetic */ C2410t0 f8039a;

        public DialogInterface$OnCancelListenerC2208d(C2410t0 c2410t0) {
            C2204e2.this = r4;
            this.f8039a = c2410t0;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            C2204e2 c2204e2 = C2204e2.this;
            c2204e2.f8032b = null;
            c2204e2.f8033c = false;
            C2267f4 c2267f4 = new C2267f4();
            C2227e4.m3739n(c2267f4, "positive", false);
            this.f8039a.m3587a(c2267f4).m3586b();
        }
    }

    /* renamed from: d2.e2$e */
    /* loaded from: classes-dex2jar.jar:d2/e2$e.class */
    public class RunnableC2209e implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AlertDialog.Builder f8041a;

        public RunnableC2209e(AlertDialog.Builder builder) {
            C2204e2.this = r4;
            this.f8041a = builder;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2204e2 c2204e2 = C2204e2.this;
            c2204e2.f8033c = true;
            c2204e2.f8032b = this.f8041a.show();
        }
    }

    public C2204e2() {
        C2408t.m3592c("Alert.show", new C2205a());
    }

    @SuppressLint({"InlinedApi"})
    /* renamed from: a */
    public final void m3759a(C2410t0 c2410t0) {
        Context context = C2408t.f8531a;
        if (context == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context, 16974374);
        C2267f4 c2267f4 = c2410t0.f8537b;
        String m3697o = c2267f4.m3697o("message");
        String m3697o2 = c2267f4.m3697o("title");
        String m3697o3 = c2267f4.m3697o("positive");
        String m3697o4 = c2267f4.m3697o("negative");
        builder.setMessage(m3697o);
        builder.setTitle(m3697o2);
        builder.setPositiveButton(m3697o3, new DialogInterface$OnClickListenerC2206b(c2410t0));
        if (!m3697o4.equals("")) {
            builder.setNegativeButton(m3697o4, new DialogInterface$OnClickListenerC2207c(c2410t0));
        }
        builder.setOnCancelListener(new DialogInterface$OnCancelListenerC2208d(c2410t0));
        C2315i3.m3652s(new RunnableC2209e(builder));
    }
}
