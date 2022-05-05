package gogolook.callgogolook2;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.legacy.app.ActionBarDrawerToggle;
import gogolook.callgogolook2.app.WhoscallActivity;
import gogolook.callgogolook2.main.MainActivity;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p567t0.C13625a;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14300r;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.DialogC14628h;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/InexistentAccountActivity.class */
public class InexistentAccountActivity extends WhoscallActivity {

    /* renamed from: gogolook.callgogolook2.InexistentAccountActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/InexistentAccountActivity$a.class */
    public class DialogInterface$OnClickListenerC4326a implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Handler f10448a;

        /* renamed from: gogolook.callgogolook2.InexistentAccountActivity$a$a */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/InexistentAccountActivity$a$a.class */
        public class RunnableC4327a implements Runnable {
            public RunnableC4327a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C14217x3.m2166b((Context) InexistentAccountActivity.this);
                C13915b3.m3060b();
                C13625a.m3822a(InexistentAccountActivity.this);
                Intent intent = new Intent(InexistentAccountActivity.this.getApplicationContext(), MainActivity.class);
                intent.addFlags(67108864);
                InexistentAccountActivity.this.startActivity(intent);
                InexistentAccountActivity.this.finish();
                C13565v.m3921g().m23331c();
            }
        }

        public DialogInterface$OnClickListenerC4326a(Handler handler) {
            this.f10448a = handler;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            DialogC14628h hVar = new DialogC14628h(InexistentAccountActivity.this, (int) R$string.wait);
            hVar.setCanceledOnTouchOutside(false);
            hVar.setCancelable(false);
            hVar.show();
            this.f10448a.postDelayed(new RunnableC4327a(), 1000L);
        }
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C14300r.m1652b("InexistentAccount", getIntent());
        m28683i().m6032c(true);
        m28683i().m6028d(false);
        m28683i().m6043a(false);
        m28683i().m6023f(true);
        m28683i().m6025e(true);
        if (Build.VERSION.SDK_INT > 11) {
            try {
                ImageView imageView = (ImageView) findViewById(ActionBarDrawerToggle.ID_HOME);
                imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                ((FrameLayout.LayoutParams) imageView.getLayoutParams()).topMargin = 0;
                ((FrameLayout.LayoutParams) imageView.getLayoutParams()).bottomMargin = 0;
                ((FrameLayout.LayoutParams) imageView.getLayoutParams()).leftMargin = 0;
                ((FrameLayout.LayoutParams) imageView.getLayoutParams()).rightMargin = 0;
                imageView.setPadding(0, 0, 0, 0);
                ((FrameLayout.LayoutParams) imageView.getLayoutParams()).height = -2;
                ((FrameLayout.LayoutParams) imageView.getLayoutParams()).width = -2;
            } catch (Error e) {
                C14080m2.m2612a((Throwable) e);
            } catch (Exception e2) {
                C14080m2.m2612a((Throwable) e2);
            }
        }
        Handler handler = new Handler();
        DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(this);
        fVar.m979b(WhoscallActivity.m28686b(R$string.settings_delete_multiaccount_info));
        fVar.m983a(false);
        fVar.m978b(WhoscallActivity.m28686b(R$string.okok), new DialogInterface$OnClickListenerC4326a(handler));
        fVar.m989a().show();
    }
}
