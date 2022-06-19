package com.allinone.callerid.backup.activitys;

import android.app.AlertDialog;
import android.content.Intent;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.R$style;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.p140c.p141a.AbstractC2318b;
import com.allinone.callerid.p140c.p141a.C2316a;
import com.allinone.callerid.p140c.p142b.C2319a;
import com.allinone.callerid.p140c.p142b.C2321c;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3725e;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.C3774j;
import com.allinone.callerid.util.C3810q;
import com.google.android.gms.auth.api.signin.C5901a;
import com.google.android.gms.auth.api.signin.C5903c;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.tasks.AbstractC7960d;
import com.google.android.gms.tasks.AbstractC7962e;
import com.google.api.client.googleapis.extensions.android.gms.auth.C8607a;
import com.google.api.client.googleapis.extensions.android.gms.auth.UserRecoverableAuthIOException;
import com.google.api.client.json.p289i.C8676a;
import com.google.api.services.drive.Drive;
import com.google.api.services.drive.DriveScopes;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import p078c.p084c.p114b.p115a.p116a.p117a.p118b.C1970a;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/backup/activitys/BackupActivity.class */
public class BackupActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private TextView f8059A;

    /* renamed from: B */
    private TextView f8060B;

    /* renamed from: C */
    private FrameLayout f8061C;

    /* renamed from: D */
    private TextView f8062D;

    /* renamed from: E */
    private LinearLayout f8063E;

    /* renamed from: F */
    private TextView f8064F;

    /* renamed from: G */
    private TextView f8065G;

    /* renamed from: H */
    private FrameLayout f8066H;

    /* renamed from: I */
    private TextView f8067I;

    /* renamed from: J */
    private TextView f8068J;

    /* renamed from: K */
    private FrameLayout f8069K;

    /* renamed from: L */
    private TextView f8070L;

    /* renamed from: M */
    private TextView f8071M;

    /* renamed from: N */
    private FrameLayout f8072N;

    /* renamed from: O */
    private TextView f8073O;

    /* renamed from: P */
    private TextView f8074P;

    /* renamed from: Q */
    private Typeface f8075Q;

    /* renamed from: R */
    private Typeface f8076R;

    /* renamed from: S */
    private AlertDialog f8077S;

    /* renamed from: T */
    private AlertDialog f8078T;

    /* renamed from: U */
    private AlertDialog f8079U;

    /* renamed from: V */
    private PopupWindow f8080V;

    /* renamed from: W */
    private AlertDialog f8081W;

    /* renamed from: X */
    private Drive f8082X;

    /* renamed from: Y */
    private GoogleSignInAccount f8083Y;

    /* renamed from: Z */
    private boolean f8084Z;

    /* renamed from: a0 */
    private boolean f8085a0;

    /* renamed from: b0 */
    private SimpleDateFormat f8086b0;

    /* renamed from: c0 */
    private AlertDialog f8087c0;

    /* renamed from: u */
    private final String f8088u = "BackupActivity";

    /* renamed from: v */
    private TextView f8089v;

    /* renamed from: w */
    private ImageView f8090w;

    /* renamed from: x */
    private ImageView f8091x;

    /* renamed from: y */
    private TextView f8092y;

    /* renamed from: z */
    private Switch f8093z;

    /* renamed from: com.allinone.callerid.backup.activitys.BackupActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/backup/activitys/BackupActivity$a.class */
    public class View$OnClickListenerC2293a implements View.OnClickListener {
        View$OnClickListenerC2293a() {
            BackupActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (BackupActivity.this.f8081W != null) {
                BackupActivity.this.f8081W.cancel();
            }
        }
    }

    /* renamed from: com.allinone.callerid.backup.activitys.BackupActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/backup/activitys/BackupActivity$b.class */
    public class View$OnClickListenerC2294b implements View.OnClickListener {
        View$OnClickListenerC2294b() {
            BackupActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (BackupActivity.this.f8081W != null) {
                BackupActivity.this.f8081W.cancel();
            }
        }
    }

    /* renamed from: com.allinone.callerid.backup.activitys.BackupActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/backup/activitys/BackupActivity$c.class */
    public class View$OnClickListenerC2295c implements View.OnClickListener {
        View$OnClickListenerC2295c() {
            BackupActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BackupActivity.this.f8073O.setText(BackupActivity.this.getResources().getString(R$string.wifi));
            if (BackupActivity.this.f8077S != null) {
                BackupActivity.this.f8077S.cancel();
            }
            C2321c.m27648i(0);
        }
    }

    /* renamed from: com.allinone.callerid.backup.activitys.BackupActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/backup/activitys/BackupActivity$d.class */
    public class View$OnClickListenerC2296d implements View.OnClickListener {
        View$OnClickListenerC2296d() {
            BackupActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BackupActivity.this.f8073O.setText(BackupActivity.this.getResources().getString(R$string.wifi_cellular));
            if (BackupActivity.this.f8077S != null) {
                BackupActivity.this.f8077S.cancel();
            }
            C2321c.m27648i(1);
        }
    }

    /* renamed from: com.allinone.callerid.backup.activitys.BackupActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/backup/activitys/BackupActivity$e.class */
    public class View$OnClickListenerC2297e implements View.OnClickListener {
        View$OnClickListenerC2297e() {
            BackupActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BackupActivity.this.f8071M.setText(BackupActivity.this.getResources().getString(R$string.never));
            if (BackupActivity.this.f8078T != null) {
                BackupActivity.this.f8078T.cancel();
            }
            C2321c.m27649h(0);
        }
    }

    /* renamed from: com.allinone.callerid.backup.activitys.BackupActivity$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/backup/activitys/BackupActivity$f.class */
    public class View$OnClickListenerC2298f implements View.OnClickListener {
        View$OnClickListenerC2298f() {
            BackupActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BackupActivity.this.f8071M.setText(BackupActivity.this.getResources().getString(R$string.only_tap));
            if (BackupActivity.this.f8078T != null) {
                BackupActivity.this.f8078T.cancel();
            }
            C2321c.m27649h(1);
        }
    }

    /* renamed from: com.allinone.callerid.backup.activitys.BackupActivity$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/backup/activitys/BackupActivity$g.class */
    public class View$OnClickListenerC2299g implements View.OnClickListener {
        View$OnClickListenerC2299g() {
            BackupActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BackupActivity.this.f8071M.setText(BackupActivity.this.getResources().getString(R$string.daily));
            if (BackupActivity.this.f8078T != null) {
                BackupActivity.this.f8078T.cancel();
            }
            C2321c.m27649h(2);
        }
    }

    /* renamed from: com.allinone.callerid.backup.activitys.BackupActivity$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/backup/activitys/BackupActivity$h.class */
    public class View$OnClickListenerC2300h implements View.OnClickListener {
        View$OnClickListenerC2300h() {
            BackupActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BackupActivity.this.f8071M.setText(BackupActivity.this.getResources().getString(R$string.weekly));
            if (BackupActivity.this.f8078T != null) {
                BackupActivity.this.f8078T.cancel();
            }
            C2321c.m27649h(3);
        }
    }

    /* renamed from: com.allinone.callerid.backup.activitys.BackupActivity$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/backup/activitys/BackupActivity$i.class */
    public class View$OnClickListenerC2301i implements View.OnClickListener {
        View$OnClickListenerC2301i() {
            BackupActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BackupActivity.this.f8071M.setText(BackupActivity.this.getResources().getString(R$string.monthly));
            if (BackupActivity.this.f8078T != null) {
                BackupActivity.this.f8078T.cancel();
            }
            C2321c.m27649h(4);
        }
    }

    /* renamed from: com.allinone.callerid.backup.activitys.BackupActivity$j */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/backup/activitys/BackupActivity$j.class */
    public class C2302j implements CompoundButton.OnCheckedChangeListener {
        C2302j() {
            BackupActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!z) {
                C2321c.m27651f(false);
                BackupActivity.this.f8061C.setClickable(false);
                BackupActivity.this.f8061C.setAlpha(0.3f);
                BackupActivity.this.f8063E.setAlpha(0.3f);
                BackupActivity.this.f8066H.setClickable(false);
                BackupActivity.this.f8069K.setClickable(false);
                BackupActivity.this.f8072N.setClickable(false);
                BackupActivity.this.m27702G0();
                return;
            }
            C2321c.m27651f(true);
            BackupActivity.this.f8061C.setClickable(true);
            BackupActivity.this.f8061C.setAlpha(1.0f);
            BackupActivity.this.f8063E.setAlpha(1.0f);
            BackupActivity.this.f8066H.setClickable(true);
            BackupActivity.this.f8069K.setClickable(true);
            BackupActivity.this.f8072N.setClickable(true);
            String m27655b = C2321c.m27655b();
            if (m27655b == null || "".equals(m27655b)) {
                BackupActivity.this.f8084Z = true;
                BackupActivity.this.m27704E0();
            }
            C3810q.m24071b().m24070c("backup_enable");
        }
    }

    /* renamed from: com.allinone.callerid.backup.activitys.BackupActivity$k */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/backup/activitys/BackupActivity$k.class */
    public class View$OnClickListenerC2303k implements View.OnClickListener {
        View$OnClickListenerC2303k() {
            BackupActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (BackupActivity.this.f8079U != null) {
                BackupActivity.this.f8079U.cancel();
            }
        }
    }

    /* renamed from: com.allinone.callerid.backup.activitys.BackupActivity$l */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/backup/activitys/BackupActivity$l.class */
    public class View$OnClickListenerC2304l implements View.OnClickListener {
        View$OnClickListenerC2304l() {
            BackupActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (BackupActivity.this.f8079U != null) {
                BackupActivity.this.f8079U.cancel();
            }
            BackupActivity.this.f8093z.setChecked(true);
            BackupActivity.this.f8061C.setClickable(true);
            BackupActivity.this.f8061C.setAlpha(1.0f);
            BackupActivity.this.f8063E.setAlpha(1.0f);
            BackupActivity.this.f8066H.setClickable(true);
            BackupActivity.this.f8069K.setClickable(true);
            BackupActivity.this.f8072N.setClickable(true);
        }
    }

    /* renamed from: com.allinone.callerid.backup.activitys.BackupActivity$m */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/backup/activitys/BackupActivity$m.class */
    public class View$OnClickListenerC2305m implements View.OnClickListener {
        View$OnClickListenerC2305m() {
            BackupActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BackupActivity.this.f8068J.setText(BackupActivity.this.getResources().getString(R$string.choose_account));
            C2321c.m27650g("");
            if (BackupActivity.this.f8087c0 != null) {
                BackupActivity.this.f8087c0.cancel();
            }
            BackupActivity.this.m27704E0();
        }
    }

    /* renamed from: com.allinone.callerid.backup.activitys.BackupActivity$n */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/backup/activitys/BackupActivity$n.class */
    public class C2306n implements AbstractC7960d {
        C2306n() {
            BackupActivity.this = r4;
        }

        @Override // com.google.android.gms.tasks.AbstractC7960d
        /* renamed from: a */
        public void mo5788a(Exception exc) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("backup", "Unable to sign in." + exc.getMessage());
            }
        }
    }

    /* renamed from: com.allinone.callerid.backup.activitys.BackupActivity$o */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/backup/activitys/BackupActivity$o.class */
    public class C2307o implements AbstractC7962e<GoogleSignInAccount> {
        C2307o() {
            BackupActivity.this = r4;
        }

        /* renamed from: a */
        public void onSuccess(GoogleSignInAccount googleSignInAccount) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("backup", "Signed in as " + googleSignInAccount.m17662l0());
            }
            BackupActivity.this.f8083Y = googleSignInAccount;
            BackupActivity.this.f8068J.setText(googleSignInAccount.m17662l0());
            C2321c.m27650g(googleSignInAccount.m17662l0());
            if (BackupActivity.this.f8084Z) {
                BackupActivity.this.m27671x0();
                BackupActivity.this.f8084Z = false;
            }
            if (BackupActivity.this.f8085a0) {
                BackupActivity.this.m27703F0();
                BackupActivity.this.f8085a0 = false;
            }
        }
    }

    /* renamed from: com.allinone.callerid.backup.activitys.BackupActivity$p */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/backup/activitys/BackupActivity$p.class */
    public class RunnableC2308p implements Runnable {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.allinone.callerid.backup.activitys.BackupActivity$p$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/backup/activitys/BackupActivity$p$a.class */
        public class C2309a implements AbstractC2318b {

            /* renamed from: com.allinone.callerid.backup.activitys.BackupActivity$p$a$a */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/backup/activitys/BackupActivity$p$a$a.class */
            class RunnableC2310a implements Runnable {
                RunnableC2310a() {
                    C2309a.this = r4;
                }

                @Override // java.lang.Runnable
                public void run() {
                    Toast.makeText(BackupActivity.this.getApplicationContext(), BackupActivity.this.getResources().getString(R$string.backup_failed), 0).show();
                }
            }

            /* renamed from: com.allinone.callerid.backup.activitys.BackupActivity$p$a$b */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/backup/activitys/BackupActivity$p$a$b.class */
            class RunnableC2311b implements Runnable {
                RunnableC2311b() {
                    C2309a.this = r4;
                }

                @Override // java.lang.Runnable
                public void run() {
                    C2321c.m27647j(System.currentTimeMillis());
                    TextView textView = BackupActivity.this.f8060B;
                    textView.setText(BackupActivity.this.getResources().getString(R$string.last_backup) + " " + BackupActivity.this.f8086b0.format(new Date(System.currentTimeMillis())));
                    BackupActivity.this.f8060B.setVisibility(0);
                    Toast.makeText(BackupActivity.this.getApplicationContext(), BackupActivity.this.getResources().getString(R$string.backup_complete), 1).show();
                    C3810q.m24071b().m24070c("backup_successful");
                }
            }

            C2309a() {
                RunnableC2308p.this = r4;
            }

            @Override // com.allinone.callerid.p140c.p141a.AbstractC2318b
            /* renamed from: b */
            public void mo27663b() {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("backup", "onError");
                }
                BackupActivity.this.runOnUiThread(new RunnableC2310a());
            }

            @Override // com.allinone.callerid.p140c.p141a.AbstractC2318b
            /* renamed from: c */
            public void mo27662c() {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("backup", "Ok");
                }
                BackupActivity.this.runOnUiThread(new RunnableC2311b());
            }

            @Override // com.allinone.callerid.p140c.p141a.AbstractC2318b
            /* renamed from: d */
            public void mo27661d(UserRecoverableAuthIOException userRecoverableAuthIOException) {
                if (userRecoverableAuthIOException != null) {
                    BackupActivity.this.startActivityForResult(userRecoverableAuthIOException.getIntent(), 2);
                }
            }
        }

        RunnableC2308p() {
            BackupActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                C2316a.m27666b(BackupActivity.this.getApplicationContext(), BackupActivity.this.f8082X, new C2309a());
            } catch (Exception e) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("backup", "Exception:" + e.getMessage());
                }
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.backup.activitys.BackupActivity$q */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/backup/activitys/BackupActivity$q.class */
    public class RunnableC2312q implements Runnable {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.allinone.callerid.backup.activitys.BackupActivity$q$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/backup/activitys/BackupActivity$q$a.class */
        public class C2313a implements AbstractC2318b {

            /* renamed from: com.allinone.callerid.backup.activitys.BackupActivity$q$a$a */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/backup/activitys/BackupActivity$q$a$a.class */
            class RunnableC2314a implements Runnable {
                RunnableC2314a() {
                    C2313a.this = r4;
                }

                @Override // java.lang.Runnable
                public void run() {
                    Toast.makeText(BackupActivity.this.getApplicationContext(), BackupActivity.this.getResources().getString(R$string.restore_successful), 1).show();
                    C2319a.m27659b(BackupActivity.this.getApplicationContext());
                }
            }

            C2313a() {
                RunnableC2312q.this = r4;
            }

            @Override // com.allinone.callerid.p140c.p141a.AbstractC2318b
            /* renamed from: b */
            public void mo27663b() {
            }

            @Override // com.allinone.callerid.p140c.p141a.AbstractC2318b
            /* renamed from: c */
            public void mo27662c() {
                BackupActivity.this.runOnUiThread(new RunnableC2314a());
            }

            @Override // com.allinone.callerid.p140c.p141a.AbstractC2318b
            /* renamed from: d */
            public void mo27661d(UserRecoverableAuthIOException userRecoverableAuthIOException) {
            }
        }

        RunnableC2312q() {
            BackupActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                C2316a.m27665c(BackupActivity.this.f8082X, new C2313a());
            } catch (Exception e) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("backup", "restoreException:" + e.getMessage());
                }
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.backup.activitys.BackupActivity$r */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/backup/activitys/BackupActivity$r.class */
    public class View$OnClickListenerC2315r implements View.OnClickListener {
        View$OnClickListenerC2315r() {
            BackupActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (BackupActivity.this.f8081W != null) {
                BackupActivity.this.f8081W.cancel();
            }
            if (C5901a.m17620c(BackupActivity.this.getApplicationContext()) == null) {
                BackupActivity.this.f8085a0 = true;
                BackupActivity.this.m27704E0();
                return;
            }
            BackupActivity backupActivity = BackupActivity.this;
            backupActivity.f8083Y = C5901a.m17620c(backupActivity.getApplicationContext());
            BackupActivity.this.m27703F0();
        }
    }

    /* renamed from: A0 */
    private void m27707A0() {
        try {
            View inflate = LayoutInflater.from(this).inflate(R$layout.popuwindow_callscreen_more, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(R$id.tv_set);
            textView.setText(getResources().getString(R$string.backup_restore));
            textView.setTypeface(this.f8075Q);
            ((FrameLayout) inflate.findViewById(R$id.fl_set)).setOnClickListener(this);
            this.f8080V = new PopupWindow(inflate);
            this.f8080V.setWidth(getWindowManager().getDefaultDisplay().getWidth() / 4);
            this.f8080V.setHeight(-2);
            this.f8080V.setFocusable(true);
            if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
                this.f8080V.setAnimationStyle(R$style.pop_style_rtl);
            } else {
                this.f8080V.setAnimationStyle(R$style.pop_style);
            }
            this.f8080V.setBackgroundDrawable(new ColorDrawable(0));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: B0 */
    private void m27706B0() {
        this.f8075Q = C3739f1.m24359b();
        this.f8076R = C3739f1.m24360a();
        this.f8089v = (TextView) findViewById(R$id.tv_title_backup);
        this.f8090w = (ImageView) findViewById(R$id.iv_more);
        this.f8091x = (ImageView) findViewById(R$id.iv_backup);
        this.f8092y = (TextView) findViewById(R$id.tv_backup);
        this.f8093z = (Switch) findViewById(R$id.switch_backup);
        this.f8059A = (TextView) findViewById(R$id.tv_backup_content);
        this.f8060B = (TextView) findViewById(R$id.tv_last_time);
        this.f8061C = (FrameLayout) findViewById(R$id.fl_backup);
        this.f8062D = (TextView) findViewById(R$id.tv_fl_backup);
        this.f8063E = (LinearLayout) findViewById(R$id.ll_background);
        this.f8064F = (TextView) findViewById(R$id.tv_google_drive);
        this.f8065G = (TextView) findViewById(R$id.tv_google_drive_content);
        this.f8066H = (FrameLayout) findViewById(R$id.fl_account);
        this.f8067I = (TextView) findViewById(R$id.tv_account_title);
        this.f8068J = (TextView) findViewById(R$id.tv_account);
        this.f8069K = (FrameLayout) findViewById(R$id.fl_frequency);
        this.f8070L = (TextView) findViewById(R$id.tv_frequency_title);
        this.f8071M = (TextView) findViewById(R$id.tv_frequency);
        this.f8072N = (FrameLayout) findViewById(R$id.fl_backup_net);
        this.f8074P = (TextView) findViewById(R$id.tv_net_title);
        this.f8073O = (TextView) findViewById(R$id.tv_net);
        this.f8089v.setTypeface(this.f8075Q);
        this.f8092y.setTypeface(this.f8075Q);
        this.f8059A.setTypeface(this.f8075Q);
        this.f8060B.setTypeface(this.f8075Q);
        this.f8062D.setTypeface(this.f8075Q);
        this.f8064F.setTypeface(this.f8075Q);
        this.f8065G.setTypeface(this.f8075Q);
        this.f8067I.setTypeface(this.f8075Q);
        this.f8068J.setTypeface(this.f8075Q);
        this.f8070L.setTypeface(this.f8075Q);
        this.f8071M.setTypeface(this.f8075Q);
        this.f8074P.setTypeface(this.f8075Q);
        this.f8073O.setTypeface(this.f8075Q);
        this.f8061C.setOnClickListener(this);
        this.f8066H.setOnClickListener(this);
        this.f8069K.setOnClickListener(this);
        this.f8072N.setOnClickListener(this);
        this.f8090w.setOnClickListener(this);
        this.f8093z.setOnCheckedChangeListener(new C2302j());
    }

    /* renamed from: C0 */
    private void m27705C0() {
        if (C5901a.m17620c(getApplicationContext()) == null) {
            this.f8084Z = true;
            m27704E0();
            return;
        }
        this.f8083Y = C5901a.m17620c(getApplicationContext());
        if (C3718c0.f11914a) {
            C3718c0.m24436a("backup", "mGoogleAccount:" + this.f8083Y.m17662l0());
        }
        m27671x0();
    }

    /* renamed from: E0 */
    public void m27704E0() {
        if (C3718c0.f11914a) {
            C3718c0.m24436a("backup", "Requesting sign-in");
        }
        C5903c m17622a = C5901a.m17622a(this, new GoogleSignInOptions.C5900a(GoogleSignInOptions.f18984d).m17628b().m17625e(new Scope(DriveScopes.DRIVE_FILE), new Scope[0]).m17629a());
        m17622a.m17616u();
        startActivityForResult(m17622a.m17618s(), 1);
    }

    /* renamed from: F0 */
    public void m27703F0() {
        if (this.f8083Y != null) {
            Toast.makeText(getApplicationContext(), getResources().getString(R$string.preparing_restore), 1).show();
            C8607a m3272d = C8607a.m3272d(this, Collections.singleton(DriveScopes.DRIVE_FILE));
            m3272d.m3273c(this.f8083Y.m17664P());
            this.f8082X = new Drive.Builder(C1970a.m28427a(), new C8676a(), m3272d).setApplicationName(getResources().getString(2131755110)).build();
            C3772i0.m24190a().f12015b.execute(new RunnableC2312q());
        }
    }

    /* renamed from: G0 */
    public void m27702G0() {
        View inflate = LayoutInflater.from(this).inflate(R$layout.view_dialog_backup_ask, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R$id.tv_title);
        TextView textView2 = (TextView) inflate.findViewById(R$id.tv_content);
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R$id.fl_keep_of);
        TextView textView3 = (TextView) inflate.findViewById(R$id.tv_keep_off);
        FrameLayout frameLayout2 = (FrameLayout) inflate.findViewById(R$id.fl_trun_on);
        textView.setTypeface(this.f8076R);
        textView2.setTypeface(this.f8075Q);
        textView3.setTypeface(this.f8075Q);
        ((TextView) inflate.findViewById(R$id.tv_trun_on)).setTypeface(this.f8075Q);
        frameLayout.setOnClickListener(new View$OnClickListenerC2303k());
        frameLayout2.setOnClickListener(new View$OnClickListenerC2304l());
        AlertDialog create = new AlertDialog.Builder(this).setView(inflate).create();
        this.f8079U = create;
        create.show();
    }

    /* renamed from: H0 */
    private void m27701H0(String str) {
        View inflate = LayoutInflater.from(this).inflate(R$layout.view_dialog_backup_change_account, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R$id.tv_title);
        TextView textView2 = (TextView) inflate.findViewById(R$id.tv_current_account);
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R$id.fl_change_account);
        textView2.setText(str);
        textView.setTypeface(this.f8076R);
        textView2.setTypeface(this.f8075Q);
        ((TextView) inflate.findViewById(R$id.tv_change_account)).setTypeface(this.f8075Q);
        frameLayout.setOnClickListener(new View$OnClickListenerC2305m());
        AlertDialog create = new AlertDialog.Builder(this).setView(inflate).create();
        this.f8087c0 = create;
        create.show();
    }

    /* renamed from: I0 */
    private void m27700I0() {
        View inflate = LayoutInflater.from(this).inflate(R$layout.view_dialog_backup_frequency, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R$id.tv_title);
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R$id.fl_never);
        TextView textView2 = (TextView) inflate.findViewById(R$id.tv_never);
        FrameLayout frameLayout2 = (FrameLayout) inflate.findViewById(R$id.fl_only_tap);
        TextView textView3 = (TextView) inflate.findViewById(R$id.tv_only_tap);
        FrameLayout frameLayout3 = (FrameLayout) inflate.findViewById(R$id.fl_daily);
        TextView textView4 = (TextView) inflate.findViewById(R$id.tv_daily);
        FrameLayout frameLayout4 = (FrameLayout) inflate.findViewById(R$id.fl_weekly);
        TextView textView5 = (TextView) inflate.findViewById(R$id.tv_weekly);
        FrameLayout frameLayout5 = (FrameLayout) inflate.findViewById(R$id.fl_monthly);
        textView.setTypeface(this.f8076R);
        textView2.setTypeface(this.f8075Q);
        textView3.setTypeface(this.f8075Q);
        textView4.setTypeface(this.f8075Q);
        textView5.setTypeface(this.f8075Q);
        ((TextView) inflate.findViewById(R$id.tv_monthly)).setTypeface(this.f8075Q);
        frameLayout.setOnClickListener(new View$OnClickListenerC2297e());
        frameLayout2.setOnClickListener(new View$OnClickListenerC2298f());
        frameLayout3.setOnClickListener(new View$OnClickListenerC2299g());
        frameLayout4.setOnClickListener(new View$OnClickListenerC2300h());
        frameLayout5.setOnClickListener(new View$OnClickListenerC2301i());
        AlertDialog create = new AlertDialog.Builder(this).setView(inflate).create();
        this.f8078T = create;
        create.show();
    }

    /* renamed from: K0 */
    private void m27699K0() {
        View inflate = LayoutInflater.from(this).inflate(R$layout.view_dialog_backup_net, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R$id.tv_title);
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R$id.fl_wifi);
        TextView textView2 = (TextView) inflate.findViewById(R$id.tv_wifi);
        FrameLayout frameLayout2 = (FrameLayout) inflate.findViewById(R$id.fl_wifi_cellular);
        textView.setTypeface(this.f8076R);
        textView2.setTypeface(this.f8075Q);
        ((TextView) inflate.findViewById(R$id.tv_wifi_cellular)).setTypeface(this.f8075Q);
        frameLayout.setOnClickListener(new View$OnClickListenerC2295c());
        frameLayout2.setOnClickListener(new View$OnClickListenerC2296d());
        AlertDialog create = new AlertDialog.Builder(this).setView(inflate).create();
        this.f8077S = create;
        create.show();
    }

    /* renamed from: L0 */
    private void m27698L0() {
        View inflate = LayoutInflater.from(this).inflate(R$layout.view_dialog_backup_restore, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R$id.tv_last_time);
        TextView textView2 = (TextView) inflate.findViewById(R$id.tv_content);
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R$id.fl_restore);
        TextView textView3 = (TextView) inflate.findViewById(R$id.tv_restore);
        FrameLayout frameLayout2 = (FrameLayout) inflate.findViewById(R$id.fl_skip);
        TextView textView4 = (TextView) inflate.findViewById(R$id.tv_skip);
        ImageView imageView = (ImageView) inflate.findViewById(R$id.iv_close);
        long m27652e = C2321c.m27652e();
        if (m27652e != 0) {
            textView.setText(getResources().getString(R$string.last_backup) + " " + this.f8086b0.format(new Date(m27652e)));
        } else {
            textView.setVisibility(8);
            frameLayout.setVisibility(8);
            frameLayout2.setVisibility(8);
            imageView.setVisibility(0);
            textView2.setText(getResources().getString(R$string.no_backup));
        }
        textView.setTypeface(this.f8075Q);
        textView2.setTypeface(this.f8075Q);
        textView3.setTypeface(this.f8075Q);
        textView4.setTypeface(this.f8075Q);
        frameLayout.setOnClickListener(new View$OnClickListenerC2315r());
        frameLayout2.setOnClickListener(new View$OnClickListenerC2293a());
        imageView.setOnClickListener(new View$OnClickListenerC2294b());
        AlertDialog create = new AlertDialog.Builder(this).setView(inflate).create();
        this.f8081W = create;
        create.show();
    }

    /* renamed from: x0 */
    public void m27671x0() {
        if (this.f8083Y != null) {
            Toast.makeText(getApplicationContext(), getResources().getString(R$string.performing_backup), 1).show();
            C8607a m3272d = C8607a.m3272d(this, Collections.singleton(DriveScopes.DRIVE_FILE));
            m3272d.m3273c(this.f8083Y.m17664P());
            this.f8082X = new Drive.Builder(C1970a.m28427a(), new C8676a(), m3272d).setApplicationName(getResources().getString(2131755110)).build();
            C3772i0.m24190a().f12015b.execute(new RunnableC2308p());
        }
    }

    /* renamed from: y0 */
    private void m27670y0(Intent intent) {
        C5901a.m17619d(intent).mo5821f(new C2307o()).mo5823d(new C2306n());
    }

    /* renamed from: z0 */
    private void m27669z0() {
        if (C2321c.m27656a()) {
            this.f8093z.setChecked(true);
            this.f8061C.setClickable(true);
            this.f8061C.setAlpha(1.0f);
            this.f8063E.setAlpha(1.0f);
            this.f8066H.setClickable(true);
            this.f8069K.setClickable(true);
            this.f8072N.setClickable(true);
        } else {
            this.f8093z.setChecked(false);
            this.f8061C.setClickable(false);
            this.f8061C.setAlpha(0.3f);
            this.f8063E.setAlpha(0.3f);
            this.f8066H.setClickable(false);
            this.f8069K.setClickable(false);
            this.f8072N.setClickable(false);
        }
        this.f8086b0 = new SimpleDateFormat("dd/MM/yy HH:mm a", C3767h1.m24213y());
        long m27652e = C2321c.m27652e();
        if (m27652e != 0) {
            TextView textView = this.f8060B;
            textView.setText(getResources().getString(R$string.last_backup) + " " + this.f8086b0.format(new Date(m27652e)));
            this.f8060B.setVisibility(0);
        }
        String m27655b = C2321c.m27655b();
        if (m27655b == null || "".equals(m27655b)) {
            this.f8068J.setText(getResources().getString(R$string.choose_account));
        } else {
            this.f8068J.setText(m27655b);
        }
        int m27654c = C2321c.m27654c();
        if (m27654c == 0) {
            this.f8071M.setText(getResources().getString(R$string.never));
        } else if (m27654c == 1) {
            this.f8071M.setText(getResources().getString(R$string.only_tap));
        } else if (m27654c == 2) {
            this.f8071M.setText(getResources().getString(R$string.daily));
        } else if (m27654c == 3) {
            this.f8071M.setText(getResources().getString(R$string.weekly));
        } else if (m27654c == 4) {
            this.f8071M.setText(getResources().getString(R$string.monthly));
        }
        int m27653d = C2321c.m27653d();
        if (m27653d == 0) {
            this.f8073O.setText(getResources().getString(R$string.wifi));
        } else if (m27653d != 1) {
        } else {
            this.f8073O.setText(getResources().getString(R$string.wifi_cellular));
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (C3718c0.f11914a) {
            C3718c0.m24436a("backup", "requestCode:" + i + " resultCode:" + i2);
        }
        if (i != 1) {
            if (i == 2) {
                if (i2 == -1) {
                    m27671x0();
                } else {
                    m27704E0();
                }
            }
        } else if (i2 == -1 && intent != null) {
            m27670y0(intent);
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.fl_account /* 2131296709 */:
                String m27655b = C2321c.m27655b();
                if (m27655b != null && !"".equals(m27655b)) {
                    m27701H0(m27655b);
                    return;
                }
                this.f8084Z = true;
                m27704E0();
                return;
            case R$id.fl_backup /* 2131296713 */:
                int m27653d = C2321c.m27653d();
                if (C3725e.m24417b(getApplicationContext())) {
                    if (!C3725e.m24416c(getApplicationContext())) {
                        m27705C0();
                    } else if (m27653d == 0) {
                        Toast.makeText(getApplicationContext(), getResources().getString(R$string.cellular_select_wifi_tips), 0).show();
                    } else {
                        m27705C0();
                    }
                } else if (m27653d == 0) {
                    Toast.makeText(getApplicationContext(), getResources().getString(R$string.no_net_select_wifi_tips), 0).show();
                } else {
                    Toast.makeText(getApplicationContext(), getResources().getString(R$string.no_net_select_wifi_cellular_tips), 0).show();
                }
                C3810q.m24071b().m24070c("backup_click");
                return;
            case R$id.fl_backup_net /* 2131296714 */:
                m27699K0();
                return;
            case R$id.fl_frequency /* 2131296750 */:
                m27700I0();
                return;
            case R$id.fl_set /* 2131296784 */:
                m27698L0();
                PopupWindow popupWindow = this.f8080V;
                if (popupWindow == null) {
                    return;
                }
                popupWindow.dismiss();
                return;
            case R$id.iv_back /* 2131296951 */:
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.iv_more /* 2131297016 */:
                if (this.f8080V == null) {
                    m27707A0();
                }
                if (this.f8080V == null) {
                    return;
                }
                if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
                    this.f8080V.showAtLocation(view, 51, 5, C3774j.m24169a(getApplicationContext(), 14.0f) + 25);
                    return;
                } else {
                    this.f8080V.showAtLocation(view, 53, 5, C3774j.m24169a(getApplicationContext(), 14.0f) + 25);
                    return;
                }
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_backup);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        ImageView imageView = (ImageView) findViewById(R$id.iv_back);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            imageView.setImageResource(R$drawable.ic_back_oppo);
        }
        imageView.setOnClickListener(this);
        m27706B0();
        m27669z0();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
