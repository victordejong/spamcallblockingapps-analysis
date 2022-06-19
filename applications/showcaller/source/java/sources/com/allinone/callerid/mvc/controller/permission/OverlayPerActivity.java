package com.allinone.callerid.mvc.controller.permission;

import android.app.AlertDialog;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.Html;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.app.C0565h;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.main.BaseThemeActivity;
import com.allinone.callerid.mvc.controller.MainActivity;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.p204j1.C3776a;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/permission/OverlayPerActivity.class */
public class OverlayPerActivity extends BaseThemeActivity implements View.OnClickListener {

    /* renamed from: v */
    private boolean f11088v;

    /* renamed from: w */
    private boolean f11089w;

    /* renamed from: y */
    private Timer f11091y;

    /* renamed from: z */
    private TimerTask f11092z;

    /* renamed from: u */
    private final String f11087u = "OverlayPerActivity";

    /* renamed from: x */
    private Handler f11090x = new Handler();

    /* renamed from: com.allinone.callerid.mvc.controller.permission.OverlayPerActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/permission/OverlayPerActivity$a.class */
    class RunnableC3458a implements Runnable {
        RunnableC3458a() {
            OverlayPerActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            OverlayPerActivity.this.m25227b0();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.permission.OverlayPerActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/permission/OverlayPerActivity$b.class */
    class C3459b extends TimerTask {
        C3459b() {
            OverlayPerActivity.this = r4;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            OverlayPerActivity.this.m25227b0();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.permission.OverlayPerActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/permission/OverlayPerActivity$c.class */
    public class RunnableC3460c implements Runnable {
        RunnableC3460c() {
            OverlayPerActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent(OverlayPerActivity.this, OverlayGuideActivity.class);
            intent.addFlags(268435456);
            OverlayPerActivity.this.startActivity(intent);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.permission.OverlayPerActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/permission/OverlayPerActivity$d.class */
    public class DialogInterface$OnClickListenerC3461d implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC3461d() {
            OverlayPerActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                OverlayPerActivity overlayPerActivity = OverlayPerActivity.this;
                overlayPerActivity.m25226c0(overlayPerActivity.getApplicationContext());
                OverlayPerActivity.this.m25228a0();
                C3810q.m24071b().m24069d("over_per_dialig_skip");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.permission.OverlayPerActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/permission/OverlayPerActivity$e.class */
    public class DialogInterface$OnClickListenerC3462e implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC3462e() {
            OverlayPerActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C3810q.m24071b().m24069d("over_per_dialig_cancel");
        }
    }

    /* renamed from: W */
    private void m25232W() {
        AlertDialog create = new AlertDialog.Builder(this).setMessage(getResources().getString(R$string.are_you_sure)).setTitle(getResources().getString(R$string.enable_caller_id)).setPositiveButton(getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3462e()).setNegativeButton(getResources().getString(R$string.skip), new DialogInterface$OnClickListenerC3461d()).create();
        create.show();
        create.getButton(-1).setTextColor(getResources().getColor(2131099706));
        create.getButton(-2).setTextColor(getResources().getColor(R$color.btn_gray));
    }

    /* renamed from: a0 */
    public void m25228a0() {
        Intent intent = new Intent();
        intent.setClass(this, MainActivity.class);
        startActivity(intent);
        overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        finish();
    }

    /* renamed from: b0 */
    public void m25227b0() {
        try {
            if (!C3776a.m24157h()) {
                if (!C3718c0.f11914a) {
                    return;
                }
                C3718c0.m24436a("tony", "未开启");
                return;
            }
            this.f11092z.cancel();
            this.f11091y.cancel();
            if (C3718c0.f11914a) {
                C3718c0.m24436a("tony", "开启了");
            }
            Intent intent = new Intent();
            intent.setClass(this, MainActivity.class);
            startActivity(intent);
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            if (!C3767h1.m24214x0()) {
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            }
            C3810q.m24071b().m24069d("overlay_per_open");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c0 */
    public void m25226c0(Context context) {
        try {
            if (C3767h1.m24228q0()) {
                return;
            }
            int i = Build.VERSION.SDK_INT;
            if (i < 23) {
                return;
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            Intent intent = new Intent(context, MainActivity.class);
            intent.putExtra("open_notifi_overlay", true);
            intent.addFlags(268435456);
            PendingIntent activity = PendingIntent.getActivity(context, 1, intent, 201326592);
            C0565h.C0574e c0574e = new C0565h.C0574e(context, "Showcaller");
            c0574e.m33420j(context.getResources().getString(R$string.click_here_to_fix_it)).m33419k(context.getResources().getString(R$string.caller_id_status)).m33421i(activity).m33430B(System.currentTimeMillis()).m33424f(false).m33411s(true);
            if (i >= 26) {
                NotificationChannel notificationChannel = new NotificationChannel("com.allinone.callerid_notfication_N", "Showcaller", 3);
                if (notificationManager != null) {
                    notificationChannel.setShowBadge(false);
                    notificationManager.createNotificationChannel(notificationChannel);
                    c0574e.m33423g("com.allinone.callerid_notfication_N");
                }
            }
            try {
                context.getDrawable(R$drawable.msg_icon);
                c0574e.m33408v(R$drawable.msg_icon);
                c0574e.m33422h(context.getResources().getColor(2131099706));
                notificationManager.notify(201922, c0574e.m33428b());
            } catch (Exception e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* renamed from: d0 */
    private void m25225d0() {
        try {
            new Handler().postDelayed(new RunnableC3460c(), 500L);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131296764) {
            m25232W();
            C3810q.m24071b().m24069d("overlay_per_not_now");
        } else if (id != 2131296815) {
            if (id != 2131298083) {
                return;
            }
            startActivity(new Intent(this, OverlayPerTipsActivity.class));
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        } else {
            try {
                if (Build.VERSION.SDK_INT < 23) {
                    return;
                }
                this.f11089w = true;
                m25225d0();
                Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + getApplicationContext().getPackageName()));
                intent.setFlags(268435456);
                startActivity(intent);
                C3810q.m24071b().m24069d("overlay_per_click");
                TimerTask timerTask = this.f11092z;
                if (timerTask != null) {
                    timerTask.cancel();
                }
                C3459b c3459b = new C3459b();
                this.f11092z = c3459b;
                this.f11091y.schedule(c3459b, 0L, 500L);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.allinone.callerid.main.BaseThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_overlay_per);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        Typeface m24359b = C3739f1.m24359b();
        ((TextView) findViewById(R$id.tv_request_per)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_btn)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_not_now)).setTypeface(m24359b);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.flayout_btn);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R$id.fl_not_new);
        TextView textView = (TextView) findViewById(R$id.tv_request_per_tip);
        textView.setText(Html.fromHtml(getResources().getString(R$string.request_per_tip_over) + " <font color=\"#0084FF\"><u>" + getResources().getString(R$string.why) + "</u></font>"));
        textView.setTypeface(m24359b);
        frameLayout.setOnClickListener(this);
        frameLayout2.setOnClickListener(this);
        textView.setOnClickListener(this);
        this.f11088v = true;
        this.f11091y = new Timer();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            m25226c0(getApplicationContext());
            m25228a0();
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.allinone.callerid.main.BaseThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // com.allinone.callerid.main.BaseThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        try {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("tony", "onResume_isRequest:" + this.f11089w);
            }
            if (this.f11088v) {
                this.f11088v = false;
                C3810q.m24071b().m24069d("overlay_per_show");
            }
            if (!this.f11089w) {
                return;
            }
            this.f11089w = false;
            this.f11090x.postDelayed(new RunnableC3458a(), 500L);
            TimerTask timerTask = this.f11092z;
            if (timerTask == null) {
                return;
            }
            timerTask.cancel();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
