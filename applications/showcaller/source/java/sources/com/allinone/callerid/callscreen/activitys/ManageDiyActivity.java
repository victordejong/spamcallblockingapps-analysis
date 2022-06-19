package com.allinone.callerid.callscreen.activitys;

import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.callscreen.bean.HomeInfo;
import com.allinone.callerid.callscreen.bean.PersonaliseContact;
import com.allinone.callerid.customview.MyGridLayoutManager;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.p144d.p145a.C2464c;
import com.allinone.callerid.p144d.p147b.C2480c;
import com.allinone.callerid.p144d.p147b.C2487e;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3772i0;
import java.util.ArrayList;
import java.util.List;
import p020b.p067p.p068a.C1764a;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/ManageDiyActivity.class */
public class ManageDiyActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private ImageView f8362A;

    /* renamed from: B */
    private ImageView f8363B;

    /* renamed from: C */
    private FrameLayout f8364C;

    /* renamed from: D */
    private TextView f8365D;

    /* renamed from: E */
    private C2405f f8366E;

    /* renamed from: H */
    private boolean f8369H;

    /* renamed from: I */
    private boolean f8370I;

    /* renamed from: J */
    private ViewStub f8371J;

    /* renamed from: v */
    private RecyclerView f8373v;

    /* renamed from: w */
    private C2464c f8374w;

    /* renamed from: x */
    private TextView f8375x;

    /* renamed from: y */
    private ImageView f8376y;

    /* renamed from: z */
    private ImageView f8377z;

    /* renamed from: u */
    private final String f8372u = "ManageDiyActivity";

    /* renamed from: F */
    private ArrayList<PersonaliseContact> f8367F = new ArrayList<>();

    /* renamed from: G */
    private ArrayList<PersonaliseContact> f8368G = new ArrayList<>();

    /* renamed from: com.allinone.callerid.callscreen.activitys.ManageDiyActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/ManageDiyActivity$a.class */
    public class RunnableC2398a implements Runnable {

        /* renamed from: com.allinone.callerid.callscreen.activitys.ManageDiyActivity$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/ManageDiyActivity$a$a.class */
        class RunnableC2399a implements Runnable {
            RunnableC2399a() {
                RunnableC2398a.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (ManageDiyActivity.this.f8367F == null) {
                    ManageDiyActivity.this.m27493o0();
                    return;
                }
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("callscreen", "diy_list:" + ManageDiyActivity.this.f8367F.toString());
                }
                ManageDiyActivity.this.f8374w.m27281A(ManageDiyActivity.this.f8367F, true);
                ManageDiyActivity.this.f8374w.m31967i();
                if (ManageDiyActivity.this.f8367F.size() > 0) {
                    ManageDiyActivity.this.f8371J.setVisibility(8);
                } else {
                    ManageDiyActivity.this.m27493o0();
                }
            }
        }

        RunnableC2398a() {
            ManageDiyActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ManageDiyActivity.this.f8367F.clear();
                HomeInfo m27254g = C2487e.m27256e().m27254g();
                if (m27254g != null) {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("callscreen", "default_diy:" + m27254g.toString());
                    }
                    PersonaliseContact personaliseContact = new PersonaliseContact();
                    personaliseContact.setThemtname(m27254g.getName());
                    personaliseContact.setPath(m27254g.getPath());
                    personaliseContact.setIs_default(true);
                    personaliseContact.setIsdiy(true);
                    ManageDiyActivity.this.f8367F.add(personaliseContact);
                }
                List<PersonaliseContact> m27267e = C2480c.m27268d().m27267e();
                if (m27267e != null && m27267e.size() > 0) {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("callscreen", "contacts_diy:" + m27267e.toString());
                    }
                    for (int i = 0; i < m27267e.size(); i++) {
                        PersonaliseContact personaliseContact2 = m27267e.get(i);
                        String path = personaliseContact2.getPath();
                        for (int size = m27267e.size() - 1; size > i; size--) {
                            if (path.equals(m27267e.get(size).getPath())) {
                                personaliseContact2.setContacts_counts(personaliseContact2.getContacts_counts() + 1);
                                m27267e.remove(size);
                            }
                        }
                    }
                    ManageDiyActivity.this.f8367F.addAll(m27267e);
                }
                ManageDiyActivity.this.runOnUiThread(new RunnableC2399a());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.ManageDiyActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/ManageDiyActivity$b.class */
    public class C2400b implements C2464c.AbstractC2466b {
        C2400b() {
            ManageDiyActivity.this = r4;
        }

        @Override // com.allinone.callerid.p144d.p145a.C2464c.AbstractC2466b
        /* renamed from: a */
        public void mo27291a(View view, int i, List<PersonaliseContact> list) {
            ManageDiyActivity.this.f8368G.clear();
            ManageDiyActivity.this.f8368G.addAll(list);
            TextView textView = ManageDiyActivity.this.f8375x;
            textView.setText(ManageDiyActivity.this.f8368G.size() + "/" + ManageDiyActivity.this.f8367F.size());
            ManageDiyActivity manageDiyActivity = ManageDiyActivity.this;
            manageDiyActivity.f8370I = manageDiyActivity.f8368G.size() == ManageDiyActivity.this.f8367F.size();
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.ManageDiyActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/ManageDiyActivity$c.class */
    class DialogInterface$OnClickListenerC2401c implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC2401c() {
            ManageDiyActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.ManageDiyActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/ManageDiyActivity$d.class */
    class DialogInterface$OnClickListenerC2402d implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC2402d() {
            ManageDiyActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                ManageDiyActivity manageDiyActivity = ManageDiyActivity.this;
                manageDiyActivity.m27496l0(manageDiyActivity.f8368G);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.ManageDiyActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/ManageDiyActivity$e.class */
    public class RunnableC2403e implements Runnable {

        /* renamed from: d */
        final /* synthetic */ List f8383d;

        /* renamed from: com.allinone.callerid.callscreen.activitys.ManageDiyActivity$e$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/ManageDiyActivity$e$a.class */
        class RunnableC2404a implements Runnable {
            RunnableC2404a() {
                RunnableC2403e.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                ManageDiyActivity.this.f8369H = false;
                ManageDiyActivity.this.f8376y.setImageResource(R$drawable.ic_back);
                ManageDiyActivity.this.f8363B.setVisibility(0);
                ManageDiyActivity.this.f8377z.setVisibility(8);
                ManageDiyActivity.this.f8362A.setVisibility(8);
                ManageDiyActivity.this.f8375x.setText(ManageDiyActivity.this.getResources().getString(R$string.my_diy));
                ManageDiyActivity.this.f8368G.clear();
                ManageDiyActivity.this.f8374w.m27293H(false);
                C1764a.m28939b(ManageDiyActivity.this).m28937d(new Intent("com.allinone.callerid.REFRESH_HOME_DATA"));
                ManageDiyActivity.this.m27495m0();
            }
        }

        RunnableC2403e(List list) {
            ManageDiyActivity.this = r4;
            this.f8383d = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            List list = this.f8383d;
            if (list != null && list.size() > 0) {
                for (int i = 0; i < this.f8383d.size(); i++) {
                    PersonaliseContact personaliseContact = (PersonaliseContact) this.f8383d.get(i);
                    if (personaliseContact.isIs_default()) {
                        C2487e.m27256e().m27257d();
                    }
                    C2480c.m27268d().m27269c(personaliseContact.getPath());
                }
            }
            ManageDiyActivity.this.runOnUiThread(new RunnableC2404a());
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.ManageDiyActivity$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/ManageDiyActivity$f.class */
    public class C2405f extends BroadcastReceiver {
        private C2405f() {
            ManageDiyActivity.this = r4;
        }

        /* synthetic */ C2405f(ManageDiyActivity manageDiyActivity, RunnableC2398a runnableC2398a) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "diy_Refresh");
            }
            ManageDiyActivity.this.m27495m0();
        }
    }

    /* renamed from: l0 */
    public void m27496l0(List<PersonaliseContact> list) {
        C3772i0.m24190a().f12015b.execute(new RunnableC2403e(list));
    }

    /* renamed from: m0 */
    public void m27495m0() {
        C3772i0.m24190a().f12015b.execute(new RunnableC2398a());
    }

    /* renamed from: n0 */
    private void m27494n0() {
        this.f8375x = (TextView) findViewById(R$id.tv_title);
        this.f8371J = (ViewStub) findViewById(R$id.vs_no_data);
        this.f8377z = (ImageView) findViewById(R$id.iv_selete);
        this.f8362A = (ImageView) findViewById(R$id.iv_delet);
        this.f8363B = (ImageView) findViewById(R$id.iv_edit);
        this.f8364C = (FrameLayout) findViewById(R$id.fl_add_diy);
        this.f8365D = (TextView) findViewById(R$id.tv_add_diy);
        this.f8377z.setOnClickListener(this);
        this.f8362A.setOnClickListener(this);
        this.f8363B.setOnClickListener(this);
        this.f8364C.setOnClickListener(this);
        this.f8376y = (ImageView) findViewById(R$id.iv_back);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            this.f8376y.setImageResource(R$drawable.ic_back_oppo);
        }
        this.f8376y.setOnClickListener(this);
        Typeface m24359b = C3739f1.m24359b();
        this.f8375x.setTypeface(m24359b);
        this.f8365D.setTypeface(m24359b);
        this.f8373v = (RecyclerView) findViewById(R$id.recycleview);
        MyGridLayoutManager myGridLayoutManager = new MyGridLayoutManager(getApplicationContext(), 2);
        myGridLayoutManager.m32114z2(1);
        myGridLayoutManager.m27382f3(true);
        this.f8373v.setLayoutManager(myGridLayoutManager);
        C2464c c2464c = new C2464c(this);
        this.f8374w = c2464c;
        this.f8373v.setAdapter(c2464c);
        this.f8374w.m27292I(new C2400b());
        this.f8366E = new C2405f(this, null);
        C1764a.m28939b(getApplicationContext()).m28938c(this.f8366E, new IntentFilter("com.allinone.callerid.REFRESH_HOME_DATA"));
    }

    /* renamed from: o0 */
    public void m27493o0() {
        try {
            TextView textView = (TextView) ((RelativeLayout) this.f8371J.inflate()).findViewById(R$id.tv_no_calllog);
            textView.setText(getResources().getString(R$string.no_my_diy));
            textView.setTypeface(C3739f1.m24359b());
        } catch (Exception e) {
            this.f8371J.setVisibility(0);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.fl_add_diy /* 2131296712 */:
                startActivity(new Intent(getApplicationContext(), SelectVideoActivity.class));
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.iv_back /* 2131296951 */:
                if (!this.f8369H) {
                    finish();
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    return;
                }
                this.f8369H = false;
                this.f8376y.setImageResource(R$drawable.ic_back);
                this.f8363B.setVisibility(0);
                this.f8377z.setVisibility(8);
                this.f8362A.setVisibility(8);
                this.f8375x.setText(getResources().getString(R$string.my_diy));
                this.f8368G.clear();
                this.f8374w.m27293H(false);
                this.f8374w.m31967i();
                return;
            case R$id.iv_delet /* 2131296975 */:
                try {
                    ArrayList<PersonaliseContact> arrayList = this.f8368G;
                    if (arrayList == null || arrayList.size() <= 0) {
                        return;
                    }
                    AlertDialog create = new AlertDialog.Builder(this).setMessage(getResources().getString(R$string.delete_diy)).setPositiveButton(getResources().getString(R$string.delete_dialog), new DialogInterface$OnClickListenerC2402d()).setNegativeButton(getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC2401c()).create();
                    create.show();
                    create.getButton(-1).setTextColor(getResources().getColor(2131099706));
                    create.getButton(-2).setTextColor(getResources().getColor(R$color.btn_gray));
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            case R$id.iv_edit /* 2131296985 */:
                this.f8369H = true;
                this.f8363B.setVisibility(8);
                this.f8377z.setVisibility(0);
                this.f8362A.setVisibility(0);
                this.f8375x.setText("0/" + this.f8367F.size());
                this.f8376y.setImageResource(R$drawable.nav_close_white);
                C2464c c2464c = this.f8374w;
                if (c2464c == null) {
                    return;
                }
                c2464c.m27293H(true);
                this.f8374w.m31967i();
                return;
            case R$id.iv_selete /* 2131297046 */:
                try {
                    if (this.f8370I) {
                        this.f8370I = false;
                        ArrayList<PersonaliseContact> arrayList2 = this.f8367F;
                        if (arrayList2 != null && arrayList2.size() > 0) {
                            for (int i = 0; i < this.f8367F.size(); i++) {
                                this.f8367F.get(i).setIsselect(false);
                            }
                        }
                        this.f8375x.setText("0/" + this.f8367F.size());
                        this.f8368G.clear();
                    } else {
                        this.f8370I = true;
                        ArrayList<PersonaliseContact> arrayList3 = this.f8367F;
                        if (arrayList3 != null && arrayList3.size() > 0) {
                            for (int i2 = 0; i2 < this.f8367F.size(); i2++) {
                                this.f8367F.get(i2).setIsselect(true);
                            }
                        }
                        this.f8375x.setText(this.f8367F.size() + "/" + this.f8367F.size());
                        this.f8368G.clear();
                        this.f8368G.addAll(this.f8367F);
                    }
                    C2464c c2464c2 = this.f8374w;
                    if (c2464c2 == null) {
                        return;
                    }
                    c2464c2.m31967i();
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_manage_diy);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        m27494n0();
        m27495m0();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            if (this.f8366E == null) {
                return;
            }
            C1764a.m28939b(getApplicationContext()).m28936e(this.f8366E);
        } catch (Exception e) {
            e.printStackTrace();
        }
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
