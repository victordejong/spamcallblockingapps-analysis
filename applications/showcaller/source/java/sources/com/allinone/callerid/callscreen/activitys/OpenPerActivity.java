package com.allinone.callerid.callscreen.activitys;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.DialogInterfaceC0146a;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.callscreen.bean.HomeInfo;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.p204j1.C3776a;
import com.allinone.callerid.util.p204j1.C3784b;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/OpenPerActivity.class */
public class OpenPerActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private ImageView f8387A;

    /* renamed from: B */
    private FrameLayout f8388B;

    /* renamed from: C */
    private ImageView f8389C;

    /* renamed from: D */
    private Typeface f8390D;

    /* renamed from: E */
    private RelativeLayout f8391E;

    /* renamed from: F */
    private RelativeLayout f8392F;

    /* renamed from: G */
    private RelativeLayout f8393G;

    /* renamed from: H */
    private RelativeLayout f8394H;

    /* renamed from: J */
    private boolean f8396J;

    /* renamed from: K */
    private boolean f8397K;

    /* renamed from: L */
    private Timer f8398L;

    /* renamed from: M */
    private TimerTask f8399M;

    /* renamed from: N */
    private HomeInfo f8400N;

    /* renamed from: O */
    private boolean f8401O;

    /* renamed from: v */
    private FrameLayout f8403v;

    /* renamed from: w */
    private ImageView f8404w;

    /* renamed from: x */
    private FrameLayout f8405x;

    /* renamed from: y */
    private ImageView f8406y;

    /* renamed from: z */
    private FrameLayout f8407z;

    /* renamed from: u */
    private final String f8402u = "OpenPerActivity";

    /* renamed from: I */
    private boolean f8395I = false;

    /* renamed from: com.allinone.callerid.callscreen.activitys.OpenPerActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/OpenPerActivity$a.class */
    public class DialogInterface$OnClickListenerC2406a implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC2406a() {
            OpenPerActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            OpenPerActivity.this.finish();
            OpenPerActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.OpenPerActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/OpenPerActivity$b.class */
    public class DialogInterface$OnClickListenerC2407b implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC2407b() {
            OpenPerActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.OpenPerActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/OpenPerActivity$c.class */
    class C2408c extends TimerTask {
        C2408c() {
            OpenPerActivity.this = r4;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            OpenPerActivity.this.m27483f0();
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.OpenPerActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/OpenPerActivity$d.class */
    class C2409d implements C3776a.AbstractC3783g {
        C2409d() {
            OpenPerActivity.this = r4;
        }

        @Override // com.allinone.callerid.util.p204j1.C3776a.AbstractC3783g
        /* renamed from: a */
        public void mo23968a() {
            OpenPerActivity.this.f8405x.setVisibility(8);
            OpenPerActivity.this.f8406y.setVisibility(0);
            OpenPerActivity.this.m27486c0();
            C3810q.m24071b().m24070c("callscreen_sdcard_per_open");
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.OpenPerActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/OpenPerActivity$e.class */
    class C2410e extends TimerTask {
        C2410e() {
            OpenPerActivity.this = r4;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            OpenPerActivity.this.m27482g0();
        }
    }

    /* renamed from: C */
    private void m27492C() {
        TextView textView = (TextView) findViewById(R$id.tv_per_title);
        TextView textView2 = (TextView) findViewById(R$id.tv_notifi);
        TextView textView3 = (TextView) findViewById(R$id.tv_notifi_des);
        this.f8403v = (FrameLayout) findViewById(R$id.fl_set_notifi);
        TextView textView4 = (TextView) findViewById(R$id.tv_set_notifi);
        this.f8404w = (ImageView) findViewById(R$id.iv_settinged_notifi);
        TextView textView5 = (TextView) findViewById(R$id.tv_sdcard);
        TextView textView6 = (TextView) findViewById(R$id.tv_sdcard_des);
        this.f8405x = (FrameLayout) findViewById(R$id.fl_set_sdcard);
        TextView textView7 = (TextView) findViewById(R$id.tv_set_sdcard);
        this.f8406y = (ImageView) findViewById(R$id.iv_settinged_sdcard);
        TextView textView8 = (TextView) findViewById(R$id.tv_ringtone);
        TextView textView9 = (TextView) findViewById(R$id.tv_ringtone_des);
        this.f8407z = (FrameLayout) findViewById(R$id.fl_set_ringtone);
        TextView textView10 = (TextView) findViewById(R$id.tv_set_ringtone);
        this.f8387A = (ImageView) findViewById(R$id.iv_settinged_ringtone);
        TextView textView11 = (TextView) findViewById(R$id.tv_overlay);
        TextView textView12 = (TextView) findViewById(R$id.tv_overlay_des);
        this.f8388B = (FrameLayout) findViewById(R$id.fl_set_overlay);
        TextView textView13 = (TextView) findViewById(R$id.tv_set_overlay);
        this.f8389C = (ImageView) findViewById(R$id.iv_settinged_overlay);
        this.f8391E = (RelativeLayout) findViewById(R$id.rl_notifi_per);
        this.f8392F = (RelativeLayout) findViewById(R$id.rl_sdcard_per);
        this.f8393G = (RelativeLayout) findViewById(R$id.rl_ringtone_per);
        this.f8394H = (RelativeLayout) findViewById(R$id.rl_overlay_per);
        ((ImageView) findViewById(R$id.iv_close)).setOnClickListener(this);
        this.f8403v.setOnClickListener(this);
        this.f8405x.setOnClickListener(this);
        this.f8407z.setOnClickListener(this);
        this.f8388B.setOnClickListener(this);
        textView.setTypeface(this.f8390D);
        textView2.setTypeface(this.f8390D);
        textView3.setTypeface(this.f8390D);
        textView4.setTypeface(this.f8390D);
        textView5.setTypeface(this.f8390D);
        textView6.setTypeface(this.f8390D);
        textView7.setTypeface(this.f8390D);
        textView8.setTypeface(this.f8390D);
        textView9.setTypeface(this.f8390D);
        textView10.setTypeface(this.f8390D);
        textView11.setTypeface(this.f8390D);
        textView12.setTypeface(this.f8390D);
        textView13.setTypeface(this.f8390D);
    }

    /* renamed from: c0 */
    public void m27486c0() {
        try {
            if (!C3776a.m24164a(getApplicationContext())) {
                return;
            }
            HomeInfo homeInfo = this.f8400N;
            if (homeInfo != null && homeInfo.isUnLock()) {
                Intent intent = new Intent(this, CallScreenPdtActivity.class);
                intent.putExtra("homeinfo", this.f8400N);
                startActivity(intent);
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            }
            C3810q.m24071b().m24070c("callscreen_all_per_open");
            setResult(980);
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d0 */
    private void m27485d0() {
        if (C3776a.m24164a(getApplicationContext())) {
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            return;
        }
        DialogInterfaceC0146a m35574a = new DialogInterfaceC0146a.C0147a(this).m35558q(getResources().getString(R$string.permission_leave_title)).m35567h(getResources().getString(R$string.permission_leave_message)).m35561n(getResources().getString(R$string.grant_text), new DialogInterface$OnClickListenerC2407b()).m35565j(getResources().getString(R$string.later), new DialogInterface$OnClickListenerC2406a()).m35574a();
        m35574a.show();
        m35574a.m35577g(-1).setTextColor(C3719c1.m24432a(this, R$attr.color_action, 2131099706));
        m35574a.m35577g(-2).setTextColor(getResources().getColor(R$color.btn_gray));
        C3810q.m24071b().m24070c("callscreen_leave_per");
    }

    /* renamed from: e0 */
    private void m27484e0() {
        this.f8400N = (HomeInfo) getIntent().getSerializableExtra("homeinfo");
        this.f8401O = getIntent().getBooleanExtra("is_diy", false);
        if (C3776a.m24155j()) {
            this.f8391E.setVisibility(8);
        } else {
            this.f8391E.setVisibility(0);
        }
        if (C3776a.m24159f(getApplicationContext())) {
            this.f8392F.setVisibility(8);
        } else {
            this.f8392F.setVisibility(0);
        }
        if (C3776a.m24154k(getApplicationContext())) {
            this.f8393G.setVisibility(8);
        } else {
            this.f8393G.setVisibility(0);
        }
        if (C3776a.m24157h()) {
            this.f8394H.setVisibility(8);
        } else {
            this.f8394H.setVisibility(0);
        }
    }

    /* renamed from: f0 */
    public void m27483f0() {
        try {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "judgeNotifiPer");
            }
            if (!C3776a.m24153l()) {
                return;
            }
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "开启了");
            }
            this.f8399M.cancel();
            if (!C3776a.m24164a(getApplicationContext())) {
                Intent intent = new Intent();
                intent.setClass(this, OpenPerActivity.class);
                HomeInfo homeInfo = this.f8400N;
                if (homeInfo != null) {
                    intent.putExtra("homeinfo", homeInfo);
                    intent.putExtra("is_diy", this.f8401O);
                }
                startActivity(intent);
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            }
            HomeInfo homeInfo2 = this.f8400N;
            if (homeInfo2 != null) {
                if (this.f8401O) {
                    if (!homeInfo2.isContacts_diy() && !this.f8400N.isDefautl_diy()) {
                        startActivity(new Intent(this, SelectVideoActivity.class));
                        overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    }
                    startActivity(new Intent(this, ManageDiyActivity.class));
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                } else {
                    Intent intent2 = new Intent(this, CallScreenPdtActivity.class);
                    intent2.putExtra("homeinfo", this.f8400N);
                    startActivity(intent2);
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                }
            }
            C3810q.m24071b().m24070c("callscreen_all_per_open");
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: g0 */
    public void m27482g0() {
        try {
            if (!C3776a.m24154k(getApplicationContext())) {
                return;
            }
            this.f8399M.cancel();
            if (!C3776a.m24164a(getApplicationContext())) {
                Intent intent = new Intent();
                intent.setClass(this, OpenPerActivity.class);
                HomeInfo homeInfo = this.f8400N;
                if (homeInfo != null) {
                    intent.putExtra("homeinfo", homeInfo);
                    intent.putExtra("is_diy", this.f8401O);
                }
                startActivity(intent);
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            }
            HomeInfo homeInfo2 = this.f8400N;
            if (homeInfo2 != null) {
                if (this.f8401O) {
                    if (!homeInfo2.isContacts_diy() && !this.f8400N.isDefautl_diy()) {
                        startActivity(new Intent(this, SelectVideoActivity.class));
                        overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    }
                    startActivity(new Intent(this, ManageDiyActivity.class));
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                } else if (homeInfo2.isUnLock()) {
                    Intent intent2 = new Intent(this, CallScreenPdtActivity.class);
                    intent2.putExtra("homeinfo", this.f8400N);
                    startActivity(intent2);
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                }
            }
            C3810q.m24071b().m24070c("callscreen_all_per_open");
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131296970) {
            m27485d0();
            return;
        }
        switch (id) {
            case R$id.fl_set_notifi /* 2131296788 */:
                try {
                    C3810q.m24071b().m24070c("callscreen_notifi_per_request");
                    C3784b.m24143c(getApplicationContext());
                    this.f8395I = true;
                    TimerTask timerTask = this.f8399M;
                    if (timerTask != null) {
                        timerTask.cancel();
                    }
                    C2408c c2408c = new C2408c();
                    this.f8399M = c2408c;
                    this.f8398L.schedule(c2408c, 0L, 500L);
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            case R$id.fl_set_overlay /* 2131296789 */:
                C3776a.m24149p(getApplicationContext());
                this.f8397K = true;
                return;
            case R$id.fl_set_ringtone /* 2131296790 */:
                try {
                    C3810q.m24071b().m24070c("callscreen_ringtone_per_request");
                    C3776a.m24146s(getApplicationContext());
                    this.f8396J = true;
                    TimerTask timerTask2 = this.f8399M;
                    if (timerTask2 != null) {
                        timerTask2.cancel();
                    }
                    C2410e c2410e = new C2410e();
                    this.f8399M = c2410e;
                    this.f8398L.schedule(c2410e, 0L, 500L);
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            case R$id.fl_set_sdcard /* 2131296791 */:
                C3810q.m24071b().m24070c("callscreen_sdcard_per_request");
                C3776a.m24147r(this, new C2409d());
                return;
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_screen_permission);
        this.f8390D = C3739f1.m24359b();
        m27492C();
        m27484e0();
        C3810q.m24071b().m24070c("callscreen_per_open");
        this.f8398L = new Timer();
        if (C3718c0.f11914a) {
            C3718c0.m24436a("callscreen", "onCreate");
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            TimerTask timerTask = this.f8399M;
            if (timerTask != null) {
                timerTask.cancel();
                this.f8399M = null;
            }
            Timer timer = this.f8398L;
            if (timer == null) {
                return;
            }
            timer.cancel();
            this.f8398L = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            m27485d0();
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
        try {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "onResume");
            }
            TimerTask timerTask = this.f8399M;
            if (timerTask != null) {
                timerTask.cancel();
            }
            if (this.f8395I) {
                this.f8395I = false;
                if (C3776a.m24153l()) {
                    this.f8403v.setVisibility(8);
                    this.f8404w.setVisibility(0);
                    m27486c0();
                    C3810q.m24071b().m24070c("callscreen_notifi_per_open");
                }
            }
            if (this.f8396J) {
                this.f8396J = false;
                if (C3776a.m24154k(getApplicationContext())) {
                    this.f8407z.setVisibility(8);
                    this.f8387A.setVisibility(0);
                    m27486c0();
                    C3810q.m24071b().m24070c("callscreen_ringtone_per_open");
                }
            }
            if (!this.f8397K) {
                return;
            }
            this.f8397K = false;
            if (!C3776a.m24157h()) {
                return;
            }
            this.f8388B.setVisibility(8);
            this.f8389C.setVisibility(0);
            m27486c0();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
