package com.allinone.callerid.mvc.controller.guidep;

import android.content.Intent;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.text.Html;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.C0586a;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.dialog.DialogMissed;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.mvc.controller.MainActivity;
import com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b;
import com.allinone.callerid.p162i.p163a.p168e.C2786a;
import com.allinone.callerid.search.EZSearchResult;
import com.allinone.callerid.util.C3709a;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.p202gg.C3749a;
import com.google.android.gms.ads.AbstractC5596b;
import com.google.android.gms.ads.C5600d;
import com.google.android.gms.ads.C5603e;
import com.google.android.gms.ads.C5756j;
import com.google.android.gms.ads.C5848t;
import com.google.android.gms.ads.formats.C5608c;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.nativead.AbstractC5796a;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/guidep/MissedCallActivity.class */
public class MissedCallActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: u */
    private final String f10989u = "MissedCallActivity";

    /* renamed from: v */
    private List<EZSearchResult> f10990v = new ArrayList();

    /* renamed from: w */
    private TextView f10991w;

    /* renamed from: x */
    private int f10992x;

    /* renamed from: y */
    private int f10993y;

    /* renamed from: com.allinone.callerid.mvc.controller.guidep.MissedCallActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/guidep/MissedCallActivity$a.class */
    class RunnableC3421a implements Runnable {
        RunnableC3421a() {
            MissedCallActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            MissedCallActivity.this.m25289C();
            MissedCallActivity.this.m25283c0();
            C3709a.m24672a(MissedCallActivity.this);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.guidep.MissedCallActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/guidep/MissedCallActivity$b.class */
    class RunnableC3422b implements Runnable {
        RunnableC3422b() {
            MissedCallActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MissedCallActivity.this.f10993y != 0 || System.currentTimeMillis() - C3711a1.m24547e0() <= 86400000) {
                return;
            }
            C3711a1.m24621K1(C3711a1.m24543f0() + 1);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.guidep.MissedCallActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/guidep/MissedCallActivity$c.class */
    public class C3423c implements AbstractC2790b {
        C3423c() {
            MissedCallActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b
        /* renamed from: a */
        public void mo24346a(boolean z) {
            if (z) {
                MissedCallActivity.this.m25284b0();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.guidep.MissedCallActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/guidep/MissedCallActivity$d.class */
    public class RunnableC3424d implements Runnable {
        RunnableC3424d() {
            MissedCallActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3711a1.m24625J1(System.currentTimeMillis());
            C3711a1.m24621K1(0);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.guidep.MissedCallActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/guidep/MissedCallActivity$e.class */
    public class C3425e implements AbstractC5796a.AbstractC5799c {
        C3425e() {
            MissedCallActivity.this = r4;
        }

        @Override // com.google.android.gms.ads.nativead.AbstractC5796a.AbstractC5799c
        /* renamed from: a */
        public void mo17848a(AbstractC5796a abstractC5796a) {
            C3749a.m24343a().f11963b = abstractC5796a;
            Log.e("wjjj", "成功");
            Intent intent = new Intent(EZCallApplication.m26146c(), DialogMissed.class);
            intent.addFlags(268435456);
            MissedCallActivity.this.startActivity(intent);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.guidep.MissedCallActivity$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/guidep/MissedCallActivity$f.class */
    public class C3426f extends AbstractC5596b {
        C3426f() {
            MissedCallActivity.this = r4;
        }

        @Override // com.google.android.gms.ads.AbstractC5596b
        /* renamed from: n */
        public void mo9079n(C5756j c5756j) {
            super.mo9079n(c5756j);
        }

        @Override // com.google.android.gms.ads.AbstractC5596b
        /* renamed from: r */
        public void mo9076r() {
            super.mo9076r();
        }
    }

    /* renamed from: C */
    public void m25289C() {
        Typeface m24359b = C3739f1.m24359b();
        ImageView imageView = (ImageView) findViewById(R$id.lb_missed_close);
        this.f10991w = (TextView) findViewById(R$id.tv_miss_count);
        imageView.setOnClickListener(this);
        ((FrameLayout) findViewById(R$id.fl_detail)).setOnClickListener(this);
        ((RelativeLayout) findViewById(R$id.all_rl)).setOnClickListener(this);
        ((TextView) findViewById(R$id.tv_tip)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_detail)).setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_missedcall)).setTypeface(m24359b);
        this.f10991w.setTypeface(m24359b);
    }

    /* renamed from: b0 */
    public void m25284b0() {
        C3810q.m24071b().m24070c("missed_request_num");
        C5600d.C5601a c5601a = new C5600d.C5601a(EZCallApplication.m26146c(), "ca-app-pub-5825926894918682/7437588851");
        c5601a.m18290c(new C3425e());
        c5601a.m18287f(new C5608c.C5609a().m18243h(new C5848t.C5849a().m17759b(true).m17760a()).m18250a());
        c5601a.m18288e(new C3426f()).m18292a().m18294b(new C5603e.C5604a().m18283b(MediationNativeAdapter.class, new Bundle()).m18282c());
    }

    /* renamed from: c0 */
    public void m25283c0() {
        boolean z;
        List<EZSearchResult> list = this.f10990v;
        if (list == null || list.size() <= 1) {
            return;
        }
        String number = this.f10990v.get(0).getNumber();
        int i = 1;
        while (true) {
            z = true;
            if (i >= this.f10990v.size()) {
                break;
            } else if (!number.equals(this.f10990v.get(i).getNumber())) {
                z = false;
                break;
            } else {
                i++;
            }
        }
        if (this.f10992x <= 0) {
            return;
        }
        if (!z) {
            String str = "<font color='#EE5164'>" + this.f10992x + "</font>";
            this.f10991w.setText(Html.fromHtml(str + " " + getResources().getString(R$string.missed_calls)));
            return;
        }
        String format_tel_number = this.f10990v.get(0).getFormat_tel_number();
        String str2 = number;
        if (format_tel_number != null) {
            str2 = number;
            if (!"".equals(format_tel_number)) {
                str2 = format_tel_number;
            }
        }
        this.f10991w.setText(Html.fromHtml(str2 + " (" + this.f10992x + ")"));
    }

    /* renamed from: d0 */
    private void m25282d0() {
        if (System.currentTimeMillis() - C3711a1.m24551d0() > 86400000) {
            C2786a.m26600a(new C3423c());
        } else if (System.currentTimeMillis() - C3711a1.m24547e0() <= 86400000 || C3711a1.m24543f0() != 2) {
        } else {
            Intent intent = new Intent(this, MainActivity.class);
            intent.setFlags(268435456);
            startActivity(intent);
            C3772i0.m24190a().f12015b.execute(new RunnableC3424d());
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        try {
            int id = view.getId();
            if (id == 2131296346) {
                m25282d0();
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            } else if (id == 2131296736) {
                C3810q.m24071b().m24070c("misscall_more_pdtclick");
                Intent intent = new Intent(this, MainActivity.class);
                intent.setFlags(268435456);
                startActivity(intent);
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            } else if (id == 2131297124) {
                C3810q.m24071b().m24070c("missed_close");
                m25282d0();
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Bundle extras;
        super.onCreate(bundle);
        try {
            C3767h1.m24293C0(this, C0586a.m33350d(this, R$color.transparent));
            if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
                getWindow().getDecorView().setLayoutDirection(1);
            }
            Intent intent = getIntent();
            if (intent != null && (extras = intent.getExtras()) != null) {
                this.f10990v = extras.getParcelableArrayList("contact_missed");
                this.f10992x = extras.getInt("unreadkey");
                this.f10993y = intent.getIntExtra("isContact", 0);
            }
            setContentView(R$layout.dialog_missed_new);
            getWindow().getDecorView().post(new RunnableC3421a());
            C3810q.m24071b().m24070c("misscall_more_show");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        C3772i0.m24190a().f12015b.execute(new RunnableC3422b());
        C3709a.m24670c(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            m25282d0();
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
