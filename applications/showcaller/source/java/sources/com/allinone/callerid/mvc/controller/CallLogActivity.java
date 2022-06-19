package com.allinone.callerid.mvc.controller;

import android.app.AlertDialog;
import android.app.role.RoleManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.os.Build;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.content.C0586a;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.bean.ShortCut;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p136b.C2169d;
import com.allinone.callerid.p162i.p163a.p172g.AbstractC2817h;
import com.allinone.callerid.p162i.p163a.p172g.C2818i;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3714b1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.p204j1.C3776a;
import com.hzy.lib7z.ErrorCode;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import p020b.p067p.p068a.C1764a;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/CallLogActivity.class */
public class CallLogActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private C2169d f9973A;

    /* renamed from: B */
    private int f9974B;

    /* renamed from: v */
    private ImageView f9976v;

    /* renamed from: w */
    private ListView f9977w;

    /* renamed from: y */
    private String f9979y;

    /* renamed from: z */
    private FrameLayout f9980z;

    /* renamed from: u */
    private final String f9975u = "CallLogActivity";

    /* renamed from: x */
    private List<CallLogBean> f9978x = new ArrayList();

    /* renamed from: com.allinone.callerid.mvc.controller.CallLogActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/CallLogActivity$a.class */
    public class C3072a implements AdapterView.OnItemLongClickListener {

        /* renamed from: com.allinone.callerid.mvc.controller.CallLogActivity$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/CallLogActivity$a$a.class */
        public class DialogInterface$OnClickListenerC3073a implements DialogInterface.OnClickListener {
            DialogInterface$OnClickListenerC3073a() {
                C3072a.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.CallLogActivity$a$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/CallLogActivity$a$b.class */
        public class DialogInterface$OnClickListenerC3074b implements DialogInterface.OnClickListener {

            /* renamed from: d */
            final /* synthetic */ int f9983d;

            /* renamed from: com.allinone.callerid.mvc.controller.CallLogActivity$a$b$a */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/CallLogActivity$a$b$a.class */
            class C3075a implements AbstractC2817h {
                C3075a() {
                    DialogInterface$OnClickListenerC3074b.this = r4;
                }

                @Override // com.allinone.callerid.p162i.p163a.p172g.AbstractC2817h
                /* renamed from: a */
                public void mo26031a() {
                    CallLogActivity.this.m26042C();
                    Intent intent = new Intent();
                    intent.setAction("com.allinone.callerid.RELOAD_DATA");
                    C1764a.m28939b(CallLogActivity.this.getApplicationContext()).m28937d(intent);
                }
            }

            DialogInterface$OnClickListenerC3074b(int i) {
                C3072a.this = r4;
                this.f9983d = i;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                try {
                    Context applicationContext = CallLogActivity.this.getApplicationContext();
                    int m24890j = ((CallLogBean) CallLogActivity.this.f9978x.get(this.f9983d)).m24890j();
                    C2818i.m26552b(applicationContext, String.valueOf(m24890j), new C3075a());
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        C3072a() {
            CallLogActivity.this = r4;
        }

        /* renamed from: a */
        private void m26032a(int i) {
            try {
                String string = C3767h1.m24216w0(((CallLogBean) CallLogActivity.this.f9978x.get(i)).m24880o()) ? CallLogActivity.this.getResources().getString(R$string.unknow_call) : ((CallLogBean) CallLogActivity.this.f9978x.get(i)).m24880o();
                AlertDialog.Builder builder = new AlertDialog.Builder(CallLogActivity.this);
                AlertDialog create = builder.setMessage(string + "\n" + ((CallLogBean) CallLogActivity.this.f9978x.get(i)).m24897g()).setPositiveButton(CallLogActivity.this.getResources().getString(R$string.delete_dialog), new DialogInterface$OnClickListenerC3074b(i)).setNegativeButton(CallLogActivity.this.getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3073a()).create();
                create.show();
                create.getButton(-1).setTextColor(CallLogActivity.this.f9974B);
                create.getButton(-2).setTextColor(CallLogActivity.this.getResources().getColor(R$color.btn_gray));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 < 23) {
                m26032a(i);
                return true;
            } else if (C3776a.m24156i(EZCallApplication.m26146c())) {
                m26032a(i);
                return true;
            } else {
                try {
                    if (i2 >= 29) {
                        RoleManager roleManager = (RoleManager) CallLogActivity.this.getSystemService(RoleManager.class);
                        if (roleManager != null && roleManager.isRoleAvailable("android.app.role.DIALER")) {
                            if (roleManager.isRoleHeld("android.app.role.DIALER")) {
                                if (C3718c0.f11914a) {
                                    C3718c0.m24436a("default_dialer", "This app is the default dialer app");
                                }
                                m26032a(i);
                            } else {
                                if (C3718c0.f11914a) {
                                    C3718c0.m24436a("default_dialer", "This app isn't the default dialer app");
                                }
                                CallLogActivity.this.startActivityForResult(roleManager.createRequestRoleIntent("android.app.role.DIALER"), ErrorCode.ERROR_CODE_PATH_ERROR);
                            }
                        }
                    } else {
                        Intent intent = new Intent("android.telecom.action.CHANGE_DEFAULT_DIALER");
                        intent.putExtra("android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME", C3767h1.m24275M(EZCallApplication.m26146c()));
                        CallLogActivity.this.startActivityForResult(intent, ErrorCode.ERROR_CODE_PATH_ERROR);
                    }
                    C3810q.m24071b().m24070c("delete_request_default_dialer");
                    return true;
                } catch (Exception e) {
                    m26032a(i);
                    e.printStackTrace();
                    return true;
                }
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.CallLogActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/CallLogActivity$b.class */
    public class DialogInterface$OnClickListenerC3076b implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC3076b() {
            CallLogActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.CallLogActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/CallLogActivity$c.class */
    public class DialogInterface$OnClickListenerC3077c implements DialogInterface.OnClickListener {

        /* renamed from: com.allinone.callerid.mvc.controller.CallLogActivity$c$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/CallLogActivity$c$a.class */
        class C3078a implements AbstractC2817h {
            C3078a() {
                DialogInterface$OnClickListenerC3077c.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p172g.AbstractC2817h
            /* renamed from: a */
            public void mo26031a() {
                CallLogActivity.this.m26042C();
                Intent intent = new Intent();
                intent.setAction("com.allinone.callerid.RELOAD_DATA");
                C1764a.m28939b(CallLogActivity.this.getApplicationContext()).m28937d(intent);
            }
        }

        DialogInterface$OnClickListenerC3077c() {
            CallLogActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                C2818i.m26551c(CallLogActivity.this.getApplicationContext(), CallLogActivity.this.f9979y, new C3078a());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.CallLogActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/CallLogActivity$d.class */
    public class RunnableC3079d implements Runnable {

        /* renamed from: d */
        private ArrayList<CallLogBean> f9989d;

        /* renamed from: com.allinone.callerid.mvc.controller.CallLogActivity$d$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/CallLogActivity$d$a.class */
        class RunnableC3080a implements Runnable {
            RunnableC3080a() {
                RunnableC3079d.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (RunnableC3079d.this.f9989d == null || RunnableC3079d.this.f9989d.size() <= 0) {
                    CallLogActivity.this.f9980z.setVisibility(0);
                    return;
                }
                CallLogActivity.this.f9978x.clear();
                CallLogActivity.this.f9978x.addAll(RunnableC3079d.this.f9989d);
                CallLogActivity.this.f9973A.notifyDataSetChanged();
                CallLogActivity.this.f9976v.setVisibility(0);
                CallLogActivity.this.f9980z.setVisibility(8);
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.CallLogActivity$d$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/CallLogActivity$d$b.class */
        class RunnableC3081b implements Runnable {
            RunnableC3081b() {
                RunnableC3079d.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                CallLogActivity.this.f9980z.setVisibility(0);
            }
        }

        RunnableC3079d() {
            CallLogActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Cursor query = EZCallApplication.m26146c().getContentResolver().query(C3714b1.m24450h(), null, "number=?", new String[]{CallLogActivity.this.f9979y}, "date DESC");
            if (query == null || query.getCount() <= 0) {
                CallLogActivity.this.runOnUiThread(new RunnableC3081b());
            } else {
                this.f9989d = new ArrayList<>();
                query.moveToFirst();
                for (int i = 0; i < query.getCount(); i++) {
                    query.moveToPosition(i);
                    Date date = new Date(query.getLong(query.getColumnIndex("date")));
                    String string = query.getString(query.getColumnIndex(ShortCut.NUMBER));
                    int i2 = query.getInt(query.getColumnIndex("type"));
                    String string2 = query.getString(query.getColumnIndex(ShortCut.NAME));
                    String string3 = query.getString(query.getColumnIndex("duration"));
                    int i3 = query.getInt(query.getColumnIndex("_id"));
                    int i4 = query.getInt(query.getColumnIndex("numbertype"));
                    String string4 = query.getString(query.getColumnIndex("numberlabel"));
                    String str = (i4 == 0 && string4 == null) ? "" : (String) ContactsContract.CommonDataKinds.Phone.getTypeLabel(EZCallApplication.m26146c().getResources(), i4, string4);
                    CallLogBean callLogBean = new CallLogBean();
                    callLogBean.m24862y0(i3);
                    callLogBean.m24951E0(string);
                    callLogBean.m24955C0(string2);
                    callLogBean.m24949F0(str);
                    callLogBean.m24904d1(i2);
                    callLogBean.m24873s0(DateFormat.getDateTimeInstance(2, 3).format(date));
                    callLogBean.m24899f0(date);
                    callLogBean.m24871t0(string3);
                    this.f9989d.add(callLogBean);
                }
                CallLogActivity.this.runOnUiThread(new RunnableC3080a());
            }
            if (query != null) {
                query.close();
            }
        }
    }

    /* renamed from: d0 */
    private void m26035d0() {
        try {
            AlertDialog create = new AlertDialog.Builder(this).setMessage(getResources().getString(R$string.delete_his)).setPositiveButton(getResources().getString(R$string.delete_dialog), new DialogInterface$OnClickListenerC3077c()).setNegativeButton(getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3076b()).create();
            create.show();
            create.getButton(-1).setTextColor(this.f9974B);
            create.getButton(-2).setTextColor(getResources().getColor(R$color.btn_gray));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e0 */
    private void m26034e0() {
        this.f9974B = C3719c1.m24432a(this, R$attr.color_action, 2131099706);
        ImageView imageView = (ImageView) findViewById(R$id.lb_call_log_back);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            imageView.setImageResource(R$drawable.ic_back_oppo);
        }
        this.f9976v = (ImageView) findViewById(R$id.lb_call_log_delete);
        TextView textView = (TextView) findViewById(R$id.tv_call_log_title);
        TextView textView2 = (TextView) findViewById(R$id.tv_no_calllog);
        this.f9980z = (FrameLayout) findViewById(R$id.rl_no_calllog);
        imageView.setOnClickListener(this);
        this.f9976v.setOnClickListener(this);
        textView.setTypeface(C3739f1.m24359b());
        textView2.setTypeface(C3739f1.m24359b());
        this.f9977w = (ListView) findViewById(R$id.lv_call_log);
        m26033f0(this.f9978x);
        this.f9977w.setOnItemLongClickListener(new C3072a());
        m26042C();
    }

    /* renamed from: f0 */
    private void m26033f0(List<CallLogBean> list) {
        C2169d c2169d = new C2169d(this, list, this.f9977w);
        this.f9973A = c2169d;
        this.f9977w.setAdapter((ListAdapter) c2169d);
    }

    /* renamed from: C */
    public void m26042C() {
        String str;
        if (C0586a.m33353a(getApplicationContext(), "android.permission.READ_CALL_LOG") != 0 || (str = this.f9979y) == null || "".equals(str)) {
            return;
        }
        C3772i0.m24190a().f12015b.execute(new RunnableC3079d());
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 999 || !C3776a.m24156i(getApplicationContext())) {
            return;
        }
        C3810q.m24071b().m24070c("delete_request_default_dialer_enabled");
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.lb_call_log_back /* 2131297116 */:
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.lb_call_log_delete /* 2131297117 */:
                int i = Build.VERSION.SDK_INT;
                if (i < 23) {
                    m26035d0();
                    return;
                } else if (C3776a.m24156i(EZCallApplication.m26146c())) {
                    m26035d0();
                    return;
                } else {
                    try {
                        if (i >= 29) {
                            RoleManager roleManager = (RoleManager) getSystemService(RoleManager.class);
                            if (roleManager != null && roleManager.isRoleAvailable("android.app.role.DIALER")) {
                                if (roleManager.isRoleHeld("android.app.role.DIALER")) {
                                    if (C3718c0.f11914a) {
                                        C3718c0.m24436a("default_dialer", "This app is the default dialer app");
                                    }
                                    m26035d0();
                                } else {
                                    if (C3718c0.f11914a) {
                                        C3718c0.m24436a("default_dialer", "This app isn't the default dialer app");
                                    }
                                    startActivityForResult(roleManager.createRequestRoleIntent("android.app.role.DIALER"), ErrorCode.ERROR_CODE_PATH_ERROR);
                                }
                            }
                        } else {
                            Intent intent = new Intent("android.telecom.action.CHANGE_DEFAULT_DIALER");
                            intent.putExtra("android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME", C3767h1.m24275M(EZCallApplication.m26146c()));
                            startActivityForResult(intent, ErrorCode.ERROR_CODE_PATH_ERROR);
                        }
                        C3810q.m24071b().m24070c("delete_request_default_dialer");
                        return;
                    } catch (Exception e) {
                        m26035d0();
                        e.printStackTrace();
                        return;
                    }
                }
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_call_log);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        String str = "";
        if (getIntent().getStringExtra("call_log_number") != null) {
            str = "";
            if (!"".equals(getIntent().getStringExtra("call_log_number"))) {
                str = getIntent().getStringExtra("call_log_number");
            }
        }
        this.f9979y = str;
        m26034e0();
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
