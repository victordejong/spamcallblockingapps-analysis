package com.allinone.callerid.mvc.controller.permission;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.role.RoleManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.app.C0565h;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$mipmap;
import com.allinone.callerid.R$string;
import com.allinone.callerid.main.BaseThemeActivity;
import com.allinone.callerid.start.PrivacyActivity;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3742g0;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.C3848s;
import com.allinone.callerid.util.p204j1.C3776a;
import com.hzy.lib7z.ErrorCode;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/permission/RequestPermissionActivity.class */
public class RequestPermissionActivity extends BaseThemeActivity implements View.OnClickListener {

    /* renamed from: v */
    private boolean f11108v;

    /* renamed from: w */
    private boolean f11109w;

    /* renamed from: x */
    private boolean f11110x;

    /* renamed from: y */
    private boolean f11111y;

    /* renamed from: u */
    private final String f11107u = "RequestPermissionActivity";

    /* renamed from: z */
    private long f11112z = 0;

    /* renamed from: com.allinone.callerid.mvc.controller.permission.RequestPermissionActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/permission/RequestPermissionActivity$a.class */
    public class C3466a implements C3776a.AbstractC3783g {
        C3466a() {
            RequestPermissionActivity.this = r4;
        }

        @Override // com.allinone.callerid.util.p204j1.C3776a.AbstractC3783g
        /* renamed from: a */
        public void mo23968a() {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "开启了权限");
            }
            if (!C3711a1.m24513m2().booleanValue() || !C3767h1.m24243j()) {
                RequestPermissionActivity.this.m25218Y();
                return;
            }
            RequestPermissionActivity.this.f11109w = true;
            C3810q.m24071b().m24069d("permission_request_ziqi_show");
            new C3742g0().m24355b(RequestPermissionActivity.this);
        }
    }

    /* renamed from: Y */
    public void m25218Y() {
        C3848s.m23967a();
        Intent intent = new Intent();
        intent.setClass(this, PrivacyActivity.class);
        C3810q.m24071b().m24069d("request_permission_granted");
        startActivity(intent);
        overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        finish();
    }

    /* renamed from: Z */
    private void m25217Z() {
        C3776a.m24150o(this, new C3466a());
    }

    /* renamed from: a0 */
    private void m25216a0(Context context) {
        try {
            if (C3767h1.m24228q0()) {
                return;
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            Intent intent = new Intent(context, RequestPermissionActivity.class);
            intent.setFlags(268435456);
            intent.putExtra("per_enable_notifi", true);
            PendingIntent activity = PendingIntent.getActivity(context, 1, intent, 201326592);
            C0565h.C0574e c0574e = new C0565h.C0574e(context, "Showcaller");
            c0574e.m33420j(context.getResources().getString(R$string.per_notifi_content)).m33419k(context.getResources().getString(R$string.per_notifi_title)).m33421i(activity).m33430B(System.currentTimeMillis()).m33411s(true);
            int i = Build.VERSION.SDK_INT;
            if (i >= 26) {
                NotificationChannel notificationChannel = new NotificationChannel("com.allinone.callerid_notfication_N", "Showcaller", 3);
                if (notificationManager != null) {
                    notificationChannel.setShowBadge(false);
                    notificationManager.createNotificationChannel(notificationChannel);
                    c0574e.m33423g("com.allinone.callerid_notfication_N");
                }
            }
            if (i >= 21) {
                try {
                    context.getDrawable(R$drawable.msg_icon);
                    c0574e.m33408v(R$drawable.msg_icon);
                    c0574e.m33422h(context.getResources().getColor(2131099706));
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            } else {
                c0574e.m33408v(R$drawable.ic_launcher24);
                c0574e.m33415o(BitmapFactory.decodeResource(context.getResources(), R$mipmap.ic_launcher));
            }
            notificationManager.notify(2019, c0574e.m33428b());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 999) {
            if (!C3776a.m24156i(getApplicationContext())) {
                m25217Z();
                if (!C3718c0.f11914a) {
                    return;
                }
                C3718c0.m24436a("default_dialer", "notEnable");
                return;
            }
            m25217Z();
            C3810q.m24071b().m24069d("first_request_default_dialer_enabled");
            if (!C3718c0.f11914a) {
                return;
            }
            C3718c0.m24436a("default_dialer", "isEnable");
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != 2131296815) {
            return;
        }
        C3810q.m24071b().m24069d("request_permission_guide_click");
        if (!this.f11111y) {
            m25217Z();
            return;
        }
        int i = Build.VERSION.SDK_INT;
        if (i < 23) {
            m25217Z();
        } else if (C3776a.m24156i(getApplicationContext())) {
            m25217Z();
        } else {
            try {
                if (i >= 29) {
                    RoleManager roleManager = (RoleManager) getSystemService(RoleManager.class);
                    if (roleManager != null && roleManager.isRoleAvailable("android.app.role.DIALER")) {
                        if (roleManager.isRoleHeld("android.app.role.DIALER")) {
                            if (C3718c0.f11914a) {
                                C3718c0.m24436a("default_dialer", "This app is the default dialer app");
                            }
                            m25217Z();
                        } else {
                            if (C3718c0.f11914a) {
                                C3718c0.m24436a("default_dialer", "This app isn't the default dialer app");
                            }
                            startActivityForResult(roleManager.createRequestRoleIntent("android.app.role.DIALER"), ErrorCode.ERROR_CODE_PATH_ERROR);
                        }
                    }
                } else {
                    Intent intent = new Intent("android.telecom.action.CHANGE_DEFAULT_DIALER");
                    intent.putExtra("android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME", getPackageName());
                    startActivityForResult(intent, ErrorCode.ERROR_CODE_PATH_ERROR);
                }
                C3810q.m24071b().m24069d("first_request_default_dialer");
            } catch (Exception e) {
                m25217Z();
                e.printStackTrace();
            }
        }
    }

    @Override // com.allinone.callerid.main.BaseThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            setContentView(R$layout.activity_request_permission);
            if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
                getWindow().getDecorView().setLayoutDirection(1);
            }
            Typeface m24359b = C3739f1.m24359b();
            ((TextView) findViewById(R$id.tv_request_per)).setTypeface(m24359b);
            ((TextView) findViewById(R$id.tv_request_per_tip)).setTypeface(m24359b);
            ((TextView) findViewById(R$id.tv_request_per_security)).setTypeface(m24359b);
            ((TextView) findViewById(R$id.tv_btn)).setTypeface(m24359b);
            ((FrameLayout) findViewById(R$id.flayout_btn)).setOnClickListener(this);
            this.f11108v = true;
            if (getIntent() != null && getIntent().getBooleanExtra("per_enable_notifi", false)) {
                this.f11111y = true;
                ((NotificationManager) getSystemService("notification")).cancel(2019);
                C3810q.m24071b().m24069d("request_permission_notifi_click");
            }
            if (getIntent() == null || !getIntent().getBooleanExtra("isShowDefault", false)) {
                return;
            }
            this.f11111y = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            if (System.currentTimeMillis() - this.f11112z > 2000) {
                Toast.makeText(getApplicationContext(), getResources().getString(R$string.press_back_again), 0).show();
                this.f11112z = System.currentTimeMillis();
                return true;
            }
            C3810q.m24071b().m24069d("request_permission_close");
            m25216a0(getApplicationContext());
            moveTaskToBack(true);
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.allinone.callerid.main.BaseThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        if (this.f11109w) {
            this.f11109w = false;
            this.f11110x = true;
        }
    }

    @Override // com.allinone.callerid.main.BaseThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f11108v) {
            C3810q.m24071b().m24069d("request_permission_guide_show");
            this.f11108v = false;
        }
        if (this.f11110x) {
            this.f11110x = false;
            m25218Y();
        }
    }
}
