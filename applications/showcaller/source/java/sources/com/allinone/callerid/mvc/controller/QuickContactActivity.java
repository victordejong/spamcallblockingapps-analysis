package com.allinone.callerid.mvc.controller;

import android.app.AlertDialog;
import android.content.ContentUris;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.bean.QuickContactBean;
import com.allinone.callerid.customview.DeletableEditText;
import com.allinone.callerid.customview.SortToken;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p136b.C2221s;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.C3802n;
import com.allinone.callerid.util.C3852t;
import com.allinone.callerid.util.C3863u;
import com.allinone.callerid.util.p204j1.C3776a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import p020b.p067p.p068a.C1764a;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/QuickContactActivity.class */
public class QuickContactActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private ArrayList<QuickContactBean> f10294A;

    /* renamed from: C */
    private C2221s f10296C;

    /* renamed from: E */
    private Typeface f10298E;

    /* renamed from: H */
    private int f10301H;

    /* renamed from: v */
    private LinearLayout f10303v;

    /* renamed from: w */
    private ListView f10304w;

    /* renamed from: x */
    private RelativeLayout f10305x;

    /* renamed from: y */
    private LinearLayout f10306y;

    /* renamed from: z */
    private C3802n f10307z;

    /* renamed from: u */
    private final String f10302u = "QuickContactActivity";

    /* renamed from: B */
    private ArrayList<QuickContactBean> f10295B = new ArrayList<>();

    /* renamed from: D */
    public List<CallLogBean> f10297D = new ArrayList();

    /* renamed from: F */
    String f10299F = "[\\u4E00-\\u9FA5]+";

    /* renamed from: G */
    public Handler f10300G = new HandlerC3206i(this, null);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.mvc.controller.QuickContactActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/QuickContactActivity$a.class */
    public class RunnableC3193a implements Runnable {

        /* renamed from: com.allinone.callerid.mvc.controller.QuickContactActivity$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/QuickContactActivity$a$a.class */
        class C3194a implements AdapterView.OnItemClickListener {
            C3194a() {
                RunnableC3193a.this = r4;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                QuickContactBean quickContactBean = (QuickContactBean) QuickContactActivity.this.f10296C.getItem(i);
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("quick", "bean:" + quickContactBean.toString());
                }
                if (quickContactBean.getIsquick() == null) {
                    List<CallLogBean> list = QuickContactActivity.this.f10297D;
                    if (list == null) {
                        return;
                    }
                    if (list.size() >= 4) {
                        QuickContactActivity quickContactActivity = QuickContactActivity.this;
                        Toast.makeText(quickContactActivity, quickContactActivity.getResources().getString(R$string.no_more_add), 0).show();
                        return;
                    }
                    quickContactBean.setIsquick(Boolean.TRUE);
                    QuickContactActivity.this.f10296C.m27848b(QuickContactActivity.this.f10294A);
                    QuickContactActivity.this.m25755A0(quickContactBean.getBean().m24884m(), quickContactBean.getBean().m24880o());
                } else if (quickContactBean.getIsquick().booleanValue()) {
                    quickContactBean.setIsquick(Boolean.valueOf(!quickContactBean.getIsquick().booleanValue()));
                    QuickContactActivity.this.f10296C.m27848b(QuickContactActivity.this.f10294A);
                    QuickContactActivity.this.m25731s0(quickContactBean.getBean().m24880o());
                } else {
                    List<CallLogBean> list2 = QuickContactActivity.this.f10297D;
                    if (list2 == null) {
                        return;
                    }
                    if (list2.size() >= 4) {
                        QuickContactActivity quickContactActivity2 = QuickContactActivity.this;
                        Toast.makeText(quickContactActivity2, quickContactActivity2.getResources().getString(R$string.no_more_add), 0).show();
                        return;
                    }
                    quickContactBean.setIsquick(Boolean.valueOf(!quickContactBean.getIsquick().booleanValue()));
                    QuickContactActivity.this.f10296C.m27848b(QuickContactActivity.this.f10294A);
                    QuickContactActivity.this.m25755A0(quickContactBean.getBean().m24884m(), quickContactBean.getBean().m24880o());
                }
            }
        }

        RunnableC3193a() {
            QuickContactActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            QuickContactActivity quickContactActivity = QuickContactActivity.this;
            quickContactActivity.f10307z = new C3802n(quickContactActivity.getApplicationContext());
            QuickContactActivity quickContactActivity2 = QuickContactActivity.this;
            quickContactActivity2.f10301H = C3719c1.m24432a(quickContactActivity2, R$attr.color_action, 2131099706);
            QuickContactActivity.this.m25728v0();
            if (C3776a.m24161d(QuickContactActivity.this.getApplicationContext())) {
                QuickContactActivity.this.m25726x0();
            }
            QuickContactActivity.this.m25725y0();
            QuickContactActivity quickContactActivity3 = QuickContactActivity.this;
            QuickContactActivity quickContactActivity4 = QuickContactActivity.this;
            quickContactActivity3.f10296C = new C2221s(quickContactActivity4, quickContactActivity4.f10295B, QuickContactActivity.this.f10304w);
            QuickContactActivity.this.f10304w.setAdapter((ListAdapter) QuickContactActivity.this.f10296C);
            QuickContactActivity.this.f10304w.setOnItemClickListener(new C3194a());
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.QuickContactActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/QuickContactActivity$b.class */
    public class RunnableC3195b implements Runnable {
        RunnableC3195b() {
            QuickContactActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            QuickContactActivity quickContactActivity = QuickContactActivity.this;
            quickContactActivity.f10297D = quickContactActivity.f10307z.m24091c();
            QuickContactActivity.this.f10300G.sendEmptyMessage(100);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.QuickContactActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/QuickContactActivity$c.class */
    class animationAnimation$AnimationListenerC3196c implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC3196c() {
            QuickContactActivity.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            if (QuickContactActivity.this.f10303v != null) {
                QuickContactActivity.this.f10303v.setVisibility(8);
            }
            C3711a1.m24490s1(false);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.QuickContactActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/QuickContactActivity$d.class */
    public class RunnableC3197d implements Runnable {

        /* renamed from: d */
        final /* synthetic */ String f10312d;

        /* renamed from: com.allinone.callerid.mvc.controller.QuickContactActivity$d$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/QuickContactActivity$d$a.class */
        class RunnableC3198a implements Runnable {
            RunnableC3198a() {
                RunnableC3197d.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                QuickContactActivity.this.f10296C.m27848b(QuickContactActivity.this.f10294A);
                QuickContactActivity.this.m25725y0();
                QuickContactActivity.this.m25754B0();
            }
        }

        RunnableC3197d(String str) {
            QuickContactActivity.this = r4;
            this.f10312d = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                QuickContactActivity.this.f10307z.m24092b(this.f10312d);
                QuickContactActivity.this.runOnUiThread(new RunnableC3198a());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.QuickContactActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/QuickContactActivity$e.class */
    public class DialogInterface$OnClickListenerC3199e implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC3199e() {
            QuickContactActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.QuickContactActivity$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/QuickContactActivity$f.class */
    public class DialogInterface$OnClickListenerC3200f implements DialogInterface.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ DeletableEditText f10316d;

        /* renamed from: e */
        final /* synthetic */ DeletableEditText f10317e;

        DialogInterface$OnClickListenerC3200f(DeletableEditText deletableEditText, DeletableEditText deletableEditText2) {
            QuickContactActivity.this = r4;
            this.f10316d = deletableEditText;
            this.f10317e = deletableEditText2;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                String obj = this.f10316d.getText().toString();
                String obj2 = this.f10317e.getText().toString();
                if (QuickContactActivity.this.f10297D.size() >= 4) {
                    QuickContactActivity quickContactActivity = QuickContactActivity.this;
                    Toast.makeText(quickContactActivity, quickContactActivity.getResources().getString(R$string.no_more_add), 0).show();
                } else {
                    QuickContactActivity.this.m25755A0(obj2, obj);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.QuickContactActivity$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/QuickContactActivity$g.class */
    public class RunnableC3201g implements Runnable {

        /* renamed from: d */
        final /* synthetic */ String f10319d;

        /* renamed from: e */
        final /* synthetic */ String f10320e;

        /* renamed from: com.allinone.callerid.mvc.controller.QuickContactActivity$g$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/QuickContactActivity$g$a.class */
        class RunnableC3202a implements Runnable {
            RunnableC3202a() {
                RunnableC3201g.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                QuickContactActivity.this.m25725y0();
                QuickContactActivity.this.m25754B0();
            }
        }

        RunnableC3201g(String str, String str2) {
            QuickContactActivity.this = r4;
            this.f10319d = str;
            this.f10320e = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            CallLogBean callLogBean = new CallLogBean();
            callLogBean.m24951E0(this.f10319d.replace("-", ""));
            callLogBean.m24955C0(this.f10320e);
            QuickContactActivity.this.f10307z.m24089e(callLogBean);
            QuickContactActivity.this.runOnUiThread(new RunnableC3202a());
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.QuickContactActivity$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/QuickContactActivity$h.class */
    public class RunnableC3203h implements Runnable {

        /* renamed from: com.allinone.callerid.mvc.controller.QuickContactActivity$h$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/QuickContactActivity$h$a.class */
        class RunnableC3204a implements Runnable {
            RunnableC3204a() {
                RunnableC3203h.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                QuickContactActivity.this.f10304w.setVisibility(8);
                QuickContactActivity.this.f10305x.setVisibility(0);
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.QuickContactActivity$h$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/QuickContactActivity$h$b.class */
        class RunnableC3205b implements Runnable {
            RunnableC3205b() {
                RunnableC3203h.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (QuickContactActivity.this.f10294A != null && QuickContactActivity.this.f10294A.size() > 0) {
                    QuickContactActivity.this.f10295B.clear();
                    QuickContactActivity.this.f10295B.addAll(QuickContactActivity.this.f10294A);
                }
                QuickContactActivity.this.f10296C.m27848b(QuickContactActivity.this.f10295B);
            }
        }

        RunnableC3203h() {
            QuickContactActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Cursor query = EZCallApplication.m26146c().getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"display_name", "data1", "sort_key", "contact_id", "photo_id", "starred", "data2"}, null, null, "sort_key COLLATE LOCALIZED ASC");
                if (query != null && query.getCount() != 0) {
                    int columnIndex = query.getColumnIndex("data1");
                    int columnIndex2 = query.getColumnIndex("display_name");
                    int columnIndex3 = query.getColumnIndex("sort_key");
                    if (query.getCount() > 0) {
                        QuickContactActivity.this.f10294A = new ArrayList();
                        while (query.moveToNext()) {
                            String string = query.getString(columnIndex);
                            if (!TextUtils.isEmpty(string)) {
                                String string2 = query.getString(columnIndex2);
                                String string3 = query.getString(columnIndex3);
                                String string4 = query.getString(query.getColumnIndex("starred"));
                                String string5 = query.getString(query.getColumnIndex("photo_id"));
                                int i = query.getInt(query.getColumnIndex("contact_id"));
                                int i2 = query.getInt(query.getColumnIndex("data2"));
                                String string6 = i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? "" : QuickContactActivity.this.getResources().getString(R$string.workfax) : QuickContactActivity.this.getResources().getString(R$string.work) : QuickContactActivity.this.getResources().getString(R$string.mobile) : QuickContactActivity.this.getResources().getString(R$string.home);
                                CallLogBean callLogBean = new CallLogBean();
                                QuickContactBean quickContactBean = new QuickContactBean();
                                callLogBean.m24942J0(i);
                                callLogBean.m24922V0(string4);
                                callLogBean.m24925T0(string3);
                                String m25729u0 = QuickContactActivity.this.m25729u0(string3);
                                if (C3718c0.f11914a) {
                                    C3718c0.m24436a("contactlist", "sortLetters:" + m25729u0);
                                }
                                String str = m25729u0;
                                if (m25729u0 == null) {
                                    str = QuickContactActivity.this.m25730t0(string2);
                                }
                                callLogBean.f11532t = str;
                                callLogBean.f11516h0 = QuickContactActivity.this.m25724z0(string3);
                                if (string6 != null && !"".equals(string6)) {
                                    callLogBean.m24949F0(string6);
                                    callLogBean.m24933O0(string6);
                                }
                                callLogBean.m24951E0(string);
                                quickContactBean.setIsquick(QuickContactActivity.this.f10307z.m24090d(string));
                                if (string5 != null && !"".equals(string5) && !"0".equals(string5)) {
                                    callLogBean.m24944I0(string5);
                                }
                                if (string2 != null) {
                                    callLogBean.m24955C0(string2);
                                    quickContactBean.setBean(callLogBean);
                                    QuickContactActivity.this.f10294A.add(quickContactBean);
                                }
                            }
                        }
                    }
                    query.close();
                    if (QuickContactActivity.this.f10294A != null && QuickContactActivity.this.f10294A.size() != 0) {
                        for (int i3 = 0; i3 < QuickContactActivity.this.f10294A.size(); i3++) {
                            for (int size = QuickContactActivity.this.f10294A.size() - 1; size > i3; size--) {
                                if (((QuickContactBean) QuickContactActivity.this.f10294A.get(i3)).getBean().m24868v() == ((QuickContactBean) QuickContactActivity.this.f10294A.get(size)).getBean().m24868v()) {
                                    QuickContactActivity.this.f10294A.remove(size);
                                }
                            }
                        }
                    }
                    QuickContactActivity.this.runOnUiThread(new RunnableC3205b());
                    return;
                }
                QuickContactActivity.this.runOnUiThread(new RunnableC3204a());
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.QuickContactActivity$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/QuickContactActivity$i.class */
    private static class HandlerC3206i extends Handler {

        /* renamed from: a */
        private final WeakReference<QuickContactActivity> f10326a;

        private HandlerC3206i(QuickContactActivity quickContactActivity) {
            this.f10326a = new WeakReference<>(quickContactActivity);
        }

        /* synthetic */ HandlerC3206i(QuickContactActivity quickContactActivity, RunnableC3193a runnableC3193a) {
            this(quickContactActivity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            QuickContactActivity quickContactActivity = this.f10326a.get();
            if (quickContactActivity != null && message.what == 100 && quickContactActivity.f10297D != null) {
                quickContactActivity.m25753C0();
            }
            super.handleMessage(message);
        }
    }

    /* renamed from: A0 */
    public void m25755A0(String str, String str2) {
        if (C3718c0.f11914a) {
            C3718c0.m24436a("quickcontact", "name=" + str + "----number=" + str2);
        }
        if (!"".equals(str2)) {
            C3772i0.m24190a().f12015b.execute(new RunnableC3201g(str2, str));
        }
    }

    /* renamed from: B0 */
    public void m25754B0() {
        C1764a.m28939b(getApplicationContext()).m28937d(new Intent("com.allinone.callerid.SET_SHORTCUT"));
    }

    /* renamed from: C0 */
    public void m25753C0() {
        if (this.f10297D.size() <= 0) {
            this.f10306y.setVisibility(8);
            return;
        }
        this.f10306y.setVisibility(0);
        int[] iArr = {R$id.tv_name, R$id.tv_name2, R$id.tv_name3, R$id.tv_name4};
        int[] iArr2 = {R$id.rl_contact1, R$id.rl_contact2, R$id.rl_contact3, R$id.rl_contact4};
        for (int i = 0; i < 4; i++) {
            ((RelativeLayout) findViewById(iArr2[i])).setVisibility(4);
        }
        for (int i2 = 0; i2 < this.f10297D.size(); i2++) {
            if (i2 < 4) {
                ImageView imageView = (ImageView) findViewById(new int[]{R$id.iv_add, R$id.iv_add2, R$id.iv_add3, R$id.iv_add4}[i2]);
                CallLogBean callLogBean = this.f10297D.get(i2);
                int m24868v = callLogBean.m24868v();
                if (m24868v != 0) {
                    C3852t.m23960c(this, ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, m24868v), "", R$drawable.ic_photo_normal, imageView);
                } else {
                    imageView.setImageResource(R$drawable.icon_gray);
                }
                String m24884m = callLogBean.m24884m();
                String str = m24884m;
                if ("".equals(m24884m)) {
                    str = callLogBean.m24880o();
                }
                ((TextView) findViewById(iArr[i2])).setText(str);
                ((TextView) findViewById(iArr[i2])).setTypeface(this.f10298E);
                ((ImageView) findViewById(new int[]{R$id.iv_delete1, R$id.iv_delete2, R$id.iv_delete3, R$id.iv_delete4}[i2])).setVisibility(0);
                ((RelativeLayout) findViewById(iArr2[i2])).setVisibility(0);
            }
        }
    }

    /* renamed from: r0 */
    private void m25732r0() {
        View inflate = LayoutInflater.from(this).inflate(R$layout.view_dialog_block_edit, (ViewGroup) null);
        DeletableEditText deletableEditText = (DeletableEditText) inflate.findViewById(R$id.edit_name);
        DeletableEditText deletableEditText2 = (DeletableEditText) inflate.findViewById(R$id.edit_number);
        deletableEditText.setHint(R$string.block_name);
        deletableEditText2.setHint(R$string.block_number);
        deletableEditText.setTypeface(this.f10298E);
        deletableEditText2.setTypeface(this.f10298E);
        AlertDialog create = new AlertDialog.Builder(this).setView(inflate).setMessage(getResources().getString(R$string.add)).setPositiveButton(getResources().getString(R$string.save_small), new DialogInterface$OnClickListenerC3200f(deletableEditText2, deletableEditText)).setNegativeButton(getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3199e()).create();
        create.show();
        create.getButton(-1).setTextColor(this.f10301H);
        create.getButton(-2).setTextColor(getResources().getColor(R$color.btn_gray));
    }

    /* renamed from: s0 */
    public void m25731s0(String str) {
        C3772i0.m24190a().f12015b.execute(new RunnableC3197d(str));
    }

    /* renamed from: t0 */
    public String m25730t0(String str) {
        if (str == null) {
            return "#";
        }
        String upperCase = C3863u.m23916c().m23917b(str).get(0).f12191c.substring(0, 1).toUpperCase(Locale.CHINESE);
        String str2 = "#";
        if (upperCase.matches("[A-Z]")) {
            str2 = upperCase.toUpperCase(Locale.CHINESE);
        }
        return str2;
    }

    /* renamed from: u0 */
    public String m25729u0(String str) {
        if (str == null || "".equals(str.trim())) {
            return null;
        }
        String upperCase = C3863u.m23916c().m23917b(str).get(0).f12191c.trim().substring(0, 1).toUpperCase(Locale.CHINESE);
        return upperCase.matches("[A-Z]") ? upperCase.toUpperCase(Locale.CHINESE) : "#";
    }

    /* renamed from: v0 */
    public void m25728v0() {
        ImageView imageView = (ImageView) findViewById(R$id.lb_back);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            imageView.setImageResource(R$drawable.ic_back_oppo);
        }
        ImageView imageView2 = (ImageView) findViewById(R$id.lb_add);
        this.f10303v = (LinearLayout) findViewById(R$id.ll_content1);
        TextView textView = (TextView) findViewById(R$id.tv_gotit);
        TextView textView2 = (TextView) findViewById(R$id.tv_des1);
        TextView textView3 = (TextView) findViewById(R$id.tv_des2);
        this.f10304w = (ListView) findViewById(R$id.lv_contact);
        this.f10305x = (RelativeLayout) findViewById(R$id.rl_no_contact);
        TextView textView4 = (TextView) findViewById(R$id.tv_no_contact);
        ImageView imageView3 = (ImageView) findViewById(R$id.iv_delete1);
        ImageView imageView4 = (ImageView) findViewById(R$id.iv_delete2);
        ImageView imageView5 = (ImageView) findViewById(R$id.iv_delete3);
        ImageView imageView6 = (ImageView) findViewById(R$id.iv_delete4);
        this.f10306y = (LinearLayout) findViewById(R$id.ll_addcontact);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R$id.rl_contact1);
        RelativeLayout relativeLayout2 = (RelativeLayout) findViewById(R$id.rl_contact2);
        RelativeLayout relativeLayout3 = (RelativeLayout) findViewById(R$id.rl_contact3);
        RelativeLayout relativeLayout4 = (RelativeLayout) findViewById(R$id.rl_contact4);
        this.f10306y.setVisibility(8);
        relativeLayout.setVisibility(4);
        relativeLayout2.setVisibility(4);
        relativeLayout3.setVisibility(4);
        relativeLayout4.setVisibility(4);
        Typeface m24359b = C3739f1.m24359b();
        this.f10298E = m24359b;
        textView2.setTypeface(m24359b);
        textView3.setTypeface(this.f10298E);
        textView.setTypeface(this.f10298E);
        textView4.setTypeface(this.f10298E);
        if (C3711a1.m24607O()) {
            this.f10303v.setVisibility(0);
        } else {
            this.f10303v.setVisibility(8);
        }
        imageView.setOnClickListener(this);
        imageView2.setOnClickListener(this);
        textView.setOnClickListener(this);
        imageView3.setOnClickListener(this);
        imageView4.setOnClickListener(this);
        imageView5.setOnClickListener(this);
        imageView6.setOnClickListener(this);
    }

    /* renamed from: w0 */
    private void m25727w0(String str) {
        ArrayList<QuickContactBean> arrayList = this.f10294A;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        for (int i = 0; i < this.f10294A.size(); i++) {
            QuickContactBean quickContactBean = this.f10294A.get(i);
            if (str.equals(quickContactBean.getBean().m24880o())) {
                quickContactBean.setIsquick(Boolean.valueOf(!quickContactBean.getIsquick().booleanValue()));
            }
        }
        this.f10295B.clear();
        this.f10295B.addAll(this.f10294A);
        this.f10296C.m27848b(this.f10295B);
    }

    /* renamed from: x0 */
    public void m25726x0() {
        C3772i0.m24190a().f12015b.execute(new RunnableC3203h());
    }

    /* renamed from: y0 */
    public void m25725y0() {
        C3772i0.m24190a().f12015b.execute(new RunnableC3195b());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131297111) {
            m25732r0();
        } else if (id == 2131297113) {
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        } else if (id == 2131297933) {
            Animation loadAnimation = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_shouqi);
            loadAnimation.setAnimationListener(new animationAnimation$AnimationListenerC3196c());
            this.f10303v.startAnimation(loadAnimation);
        } else {
            switch (id) {
                case R$id.iv_delete1 /* 2131296977 */:
                    try {
                        m25731s0(this.f10297D.get(0).m24880o());
                        m25727w0(this.f10297D.get(0).m24880o());
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                case R$id.iv_delete2 /* 2131296978 */:
                    try {
                        m25731s0(this.f10297D.get(1).m24880o());
                        m25727w0(this.f10297D.get(1).m24880o());
                        return;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return;
                    }
                case R$id.iv_delete3 /* 2131296979 */:
                    try {
                        m25731s0(this.f10297D.get(2).m24880o());
                        m25727w0(this.f10297D.get(2).m24880o());
                        return;
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        return;
                    }
                case R$id.iv_delete4 /* 2131296980 */:
                    try {
                        m25731s0(this.f10297D.get(3).m24880o());
                        m25727w0(this.f10297D.get(3).m24880o());
                        return;
                    } catch (Exception e4) {
                        e4.printStackTrace();
                        return;
                    }
                default:
                    return;
            }
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_quick_contact);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        getWindow().getDecorView().post(new RunnableC3193a());
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

    /* renamed from: z0 */
    public SortToken m25724z0(String str) {
        String[] split;
        SortToken sortToken = new SortToken();
        if (str != null && str.length() > 0) {
            for (String str2 : str.replace(" ", "").split(this.f10299F)) {
                if (str2.length() > 0) {
                    StringBuilder sb = new StringBuilder(sortToken.f8654d);
                    sb.append(str2.charAt(0));
                    sortToken.f8654d = String.valueOf(sb);
                    StringBuilder sb2 = new StringBuilder(sortToken.f8655e);
                    sb2.append(str2);
                    sortToken.f8655e = String.valueOf(sb2);
                }
            }
        }
        return sortToken;
    }
}
