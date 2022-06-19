package com.allinone.callerid.mvc.controller.block;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.DialogInterfaceC0146a;
import androidx.core.content.C0586a;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.R$style;
import com.allinone.callerid.bean.CollectInfo;
import com.allinone.callerid.bean.CustomBlock;
import com.allinone.callerid.bean.EZBlackList;
import com.allinone.callerid.bean.EZSimpleContact;
import com.allinone.callerid.customview.DeletableEditText;
import com.allinone.callerid.dialog.C2600m;
import com.allinone.callerid.dialog.DialogC2588f;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p162i.p163a.AbstractC2766a;
import com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a;
import com.allinone.callerid.p162i.p163a.p170f.C2796b;
import com.allinone.callerid.p162i.p163a.p172g.AbstractC2808b;
import com.allinone.callerid.p162i.p163a.p172g.AbstractC2814f;
import com.allinone.callerid.p162i.p163a.p174i.C2839c;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3744g1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.C3800m;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.p204j1.C3776a;
import com.allinone.callerid.util.p204j1.C3784b;
import com.github.clans.fab.FloatingActionButton;
import com.github.clans.fab.FloatingActionMenu;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity.class */
public class MyBlockListActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private RelativeLayout f10465A;

    /* renamed from: C */
    private ImageView f10467C;

    /* renamed from: D */
    private ImageView f10468D;

    /* renamed from: F */
    private FloatingActionButton f10470F;

    /* renamed from: G */
    private boolean f10471G;

    /* renamed from: H */
    private boolean f10472H;

    /* renamed from: J */
    private LayoutInflater f10474J;

    /* renamed from: K */
    private DialogInterfaceC0146a f10475K;

    /* renamed from: L */
    private int f10476L;

    /* renamed from: M */
    private RelativeLayout f10477M;

    /* renamed from: N */
    private FloatingActionMenu f10478N;

    /* renamed from: P */
    private LinearLayout f10480P;

    /* renamed from: Q */
    private Typeface f10481Q;

    /* renamed from: v */
    private ImageView f10483v;

    /* renamed from: w */
    private TextView f10484w;

    /* renamed from: x */
    private C3800m f10485x;

    /* renamed from: y */
    private ListView f10486y;

    /* renamed from: z */
    private C3289q f10487z;

    /* renamed from: u */
    private final String f10482u = "MyBlockListActivity";

    /* renamed from: B */
    private List<EZBlackList> f10466B = new ArrayList();

    /* renamed from: E */
    private List<CustomBlock> f10469E = new ArrayList();

    /* renamed from: I */
    private Handler f10473I = new HandlerC3302r(this, null);

    /* renamed from: O */
    private List<Object> f10479O = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$a.class */
    public class RunnableC3262a implements Runnable {

        /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$a.class */
        class View$OnClickListenerC3263a implements View.OnClickListener {
            View$OnClickListenerC3263a() {
                RunnableC3262a.this = r4;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MyBlockListActivity.this.f10468D.getVisibility() != 0) {
                    MyBlockListActivity.this.finish();
                    MyBlockListActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    return;
                }
                MyBlockListActivity.this.m25601U0();
                MyBlockListActivity.this.f10468D.setVisibility(8);
                MyBlockListActivity.this.f10471G = false;
                MyBlockListActivity.this.f10472H = false;
                if (MyBlockListActivity.this.f10466B != null && MyBlockListActivity.this.f10466B.size() > 0) {
                    for (int i = 0; i < MyBlockListActivity.this.f10466B.size(); i++) {
                        ((EZBlackList) MyBlockListActivity.this.f10466B.get(i)).setIsselected(false);
                    }
                }
                if (MyBlockListActivity.this.f10487z == null) {
                    return;
                }
                MyBlockListActivity.this.f10487z.notifyDataSetChanged();
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$a$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$b.class */
        class View$OnClickListenerC3264b implements View.OnClickListener {
            View$OnClickListenerC3264b() {
                RunnableC3262a.this = r4;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!MyBlockListActivity.this.f10472H && !MyBlockListActivity.this.f10471G) {
                    MyBlockListActivity.this.m25595Y0();
                    return;
                }
                ArrayList arrayList = new ArrayList();
                if (MyBlockListActivity.this.f10466B != null && MyBlockListActivity.this.f10466B.size() > 0) {
                    for (int i = 0; i < MyBlockListActivity.this.f10466B.size(); i++) {
                        EZBlackList eZBlackList = (EZBlackList) MyBlockListActivity.this.f10466B.get(i);
                        if (eZBlackList.isselected()) {
                            arrayList.add(eZBlackList);
                        }
                    }
                }
                if (MyBlockListActivity.this.f10469E != null && MyBlockListActivity.this.f10469E.size() > 0) {
                    for (int i2 = 0; i2 < MyBlockListActivity.this.f10469E.size(); i2++) {
                        CustomBlock customBlock = (CustomBlock) MyBlockListActivity.this.f10469E.get(i2);
                        if (customBlock.isselected()) {
                            arrayList.add(customBlock);
                        }
                    }
                }
                if (arrayList.size() <= 0 || arrayList.isEmpty()) {
                    return;
                }
                MyBlockListActivity.this.m25593Z0(arrayList);
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$a$c */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$c.class */
        class View$OnClickListenerC3265c implements View.OnClickListener {
            View$OnClickListenerC3265c() {
                RunnableC3262a.this = r4;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MyBlockListActivity.this.f10472H) {
                    if (MyBlockListActivity.this.f10466B != null && MyBlockListActivity.this.f10466B.size() > 0) {
                        for (int i = 0; i < MyBlockListActivity.this.f10466B.size(); i++) {
                            ((EZBlackList) MyBlockListActivity.this.f10466B.get(i)).setIsselected(false);
                        }
                    }
                    if (MyBlockListActivity.this.f10469E != null && MyBlockListActivity.this.f10469E.size() > 0) {
                        for (int i2 = 0; i2 < MyBlockListActivity.this.f10469E.size(); i2++) {
                            ((CustomBlock) MyBlockListActivity.this.f10469E.get(i2)).setIsselected(false);
                        }
                    }
                    MyBlockListActivity.this.f10472H = false;
                } else {
                    if (MyBlockListActivity.this.f10466B != null && MyBlockListActivity.this.f10466B.size() > 0) {
                        for (int i3 = 0; i3 < MyBlockListActivity.this.f10466B.size(); i3++) {
                            ((EZBlackList) MyBlockListActivity.this.f10466B.get(i3)).setIsselected(true);
                        }
                    }
                    if (MyBlockListActivity.this.f10469E != null && MyBlockListActivity.this.f10469E.size() > 0) {
                        for (int i4 = 0; i4 < MyBlockListActivity.this.f10469E.size(); i4++) {
                            ((CustomBlock) MyBlockListActivity.this.f10469E.get(i4)).setIsselected(true);
                        }
                    }
                    MyBlockListActivity.this.f10472H = true;
                }
                if (MyBlockListActivity.this.f10487z != null) {
                    MyBlockListActivity.this.f10487z.notifyDataSetChanged();
                }
            }
        }

        RunnableC3262a() {
            MyBlockListActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyBlockListActivity myBlockListActivity = MyBlockListActivity.this;
            myBlockListActivity.f10470F = (FloatingActionButton) myBlockListActivity.findViewById(R$id.fab_custom_num);
            MyBlockListActivity.this.f10470F.setLabelTextType(MyBlockListActivity.this.f10481Q);
            MyBlockListActivity.this.f10470F.setOnClickListener(MyBlockListActivity.this);
            MyBlockListActivity myBlockListActivity2 = MyBlockListActivity.this;
            myBlockListActivity2.f10484w = (TextView) myBlockListActivity2.findViewById(R$id.tv_blcok_list);
            MyBlockListActivity myBlockListActivity3 = MyBlockListActivity.this;
            myBlockListActivity3.f10468D = (ImageView) myBlockListActivity3.findViewById(R$id.lb_delete_selete);
            MyBlockListActivity myBlockListActivity4 = MyBlockListActivity.this;
            myBlockListActivity4.f10483v = (ImageView) myBlockListActivity4.findViewById(R$id.header_left_about);
            MyBlockListActivity.this.m25601U0();
            MyBlockListActivity.this.f10483v.setOnClickListener(new View$OnClickListenerC3263a());
            MyBlockListActivity myBlockListActivity5 = MyBlockListActivity.this;
            myBlockListActivity5.f10467C = (ImageView) myBlockListActivity5.findViewById(R$id.lb_block_list);
            MyBlockListActivity.this.f10467C.setOnClickListener(new View$OnClickListenerC3264b());
            MyBlockListActivity.this.f10468D.setOnClickListener(new View$OnClickListenerC3265c());
            MyBlockListActivity myBlockListActivity6 = MyBlockListActivity.this;
            myBlockListActivity6.f10477M = (RelativeLayout) myBlockListActivity6.findViewById(R$id.rl_no_black);
            ((TextView) MyBlockListActivity.this.findViewById(R$id.tv_black_list)).setTypeface(MyBlockListActivity.this.f10481Q);
            MyBlockListActivity.this.m25585d1();
            MyBlockListActivity.this.f10484w.setTypeface(MyBlockListActivity.this.f10481Q);
            MyBlockListActivity myBlockListActivity7 = MyBlockListActivity.this;
            myBlockListActivity7.f10485x = new C3800m(myBlockListActivity7.getApplicationContext());
            MyBlockListActivity myBlockListActivity8 = MyBlockListActivity.this;
            myBlockListActivity8.f10486y = (ListView) myBlockListActivity8.findViewById(R$id.ob_listview);
            MyBlockListActivity myBlockListActivity9 = MyBlockListActivity.this;
            MyBlockListActivity myBlockListActivity10 = MyBlockListActivity.this;
            myBlockListActivity9.f10487z = new C3289q(myBlockListActivity10, myBlockListActivity10.f10479O);
            MyBlockListActivity.this.m25587c1();
            MyBlockListActivity.this.f10486y.setAdapter((ListAdapter) MyBlockListActivity.this.f10487z);
            MyBlockListActivity.this.m25589b1();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$b.class */
    public class DialogInterface$OnClickListenerC3266b implements DialogInterface.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ List f10492d;

        DialogInterface$OnClickListenerC3266b(List list) {
            MyBlockListActivity.this = r4;
            this.f10492d = list;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                MyBlockListActivity.this.m25591a1(this.f10492d);
                MyBlockListActivity.this.m25583e1(this.f10492d);
                MyBlockListActivity.this.m25600V0();
                MyBlockListActivity.this.f10487z.m25548i(MyBlockListActivity.this.f10479O);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$c.class */
    public class RunnableC3267c implements Runnable {

        /* renamed from: d */
        final /* synthetic */ List f10494d;

        RunnableC3267c(List list) {
            MyBlockListActivity.this = r4;
            this.f10494d = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            List list = this.f10494d;
            if (list == null || list.size() <= 0) {
                return;
            }
            for (int i = 0; i < this.f10494d.size(); i++) {
                Object obj = this.f10494d.get(i);
                if (obj instanceof CustomBlock) {
                    MyBlockListActivity.this.f10485x.m24104e(((CustomBlock) obj).getNumber());
                } else {
                    MyBlockListActivity.this.f10485x.m24106c(((EZBlackList) obj).getNumber());
                }
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$d.class */
    public class RunnableC3268d implements Runnable {
        RunnableC3268d() {
            MyBlockListActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyBlockListActivity myBlockListActivity = MyBlockListActivity.this;
            myBlockListActivity.f10466B = myBlockListActivity.f10485x.m24101h();
            if (MyBlockListActivity.this.f10466B != null) {
                MyBlockListActivity.this.f10473I.sendEmptyMessage(200);
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$e.class */
    class C3269e implements C3776a.AbstractC3783g {
        C3269e() {
            MyBlockListActivity.this = r4;
        }

        @Override // com.allinone.callerid.util.p204j1.C3776a.AbstractC3783g
        /* renamed from: a */
        public void mo23968a() {
            if (MyBlockListActivity.this.f10478N.m22322s()) {
                MyBlockListActivity.this.f10478N.m22320u(true);
            }
            MyBlockListActivity.this.m25577h1();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$f.class */
    class C3270f implements C3776a.AbstractC3783g {
        C3270f() {
            MyBlockListActivity.this = r4;
        }

        @Override // com.allinone.callerid.util.p204j1.C3776a.AbstractC3783g
        /* renamed from: a */
        public void mo23968a() {
            if (MyBlockListActivity.this.f10478N.m22322s()) {
                MyBlockListActivity.this.f10478N.m22320u(true);
            }
            MyBlockListActivity.this.m25579g1();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$g.class */
    public class C3271g implements AbstractC2814f {

        /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$g$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$g$a.class */
        class DialogInterface$OnClickListenerC3272a implements DialogInterface.OnClickListener {
            DialogInterface$OnClickListenerC3272a() {
                C3271g.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$g$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$g$b.class */
        class DialogInterface$OnClickListenerC3273b implements DialogInterface.OnClickListener {

            /* renamed from: d */
            final /* synthetic */ DeletableEditText f10501d;

            /* renamed from: e */
            final /* synthetic */ DeletableEditText f10502e;

            DialogInterface$OnClickListenerC3273b(DeletableEditText deletableEditText, DeletableEditText deletableEditText2) {
                C3271g.this = r4;
                this.f10501d = deletableEditText;
                this.f10502e = deletableEditText2;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                try {
                    String obj = this.f10501d.getText().toString();
                    MyBlockListActivity.this.m25581f1(this.f10502e.getText().toString(), obj, false);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        C3271g() {
            MyBlockListActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p172g.AbstractC2814f
        /* renamed from: a */
        public void mo25263a(EZSimpleContact eZSimpleContact) {
            try {
                if (MyBlockListActivity.this.isFinishing()) {
                    return;
                }
                View inflate = LayoutInflater.from(MyBlockListActivity.this).inflate(R$layout.view_dialog_block_edit, (ViewGroup) null);
                DeletableEditText deletableEditText = (DeletableEditText) inflate.findViewById(R$id.edit_name);
                DeletableEditText deletableEditText2 = (DeletableEditText) inflate.findViewById(R$id.edit_number);
                deletableEditText.setText(eZSimpleContact.getName());
                deletableEditText2.setTypeface(MyBlockListActivity.this.f10481Q);
                deletableEditText2.setText(eZSimpleContact.getNumber());
                deletableEditText2.setSelection(deletableEditText2.getText().length());
                AlertDialog create = new AlertDialog.Builder(MyBlockListActivity.this).setMessage(MyBlockListActivity.this.getResources().getString(R$string.add)).setView(inflate).setPositiveButton(MyBlockListActivity.this.getResources().getString(R$string.save_small), new DialogInterface$OnClickListenerC3273b(deletableEditText2, deletableEditText)).setNegativeButton(MyBlockListActivity.this.getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3272a()).create();
                create.show();
                create.getButton(-1).setTextColor(MyBlockListActivity.this.f10476L);
                create.getButton(-2).setTextColor(MyBlockListActivity.this.getResources().getColor(R$color.btn_gray));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$h.class */
    public class C3274h implements AbstractC2808b {

        /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$h$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$h$a.class */
        class DialogInterface$OnClickListenerC3275a implements DialogInterface.OnClickListener {
            DialogInterface$OnClickListenerC3275a() {
                C3274h.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$h$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$h$b.class */
        class DialogInterface$OnClickListenerC3276b implements DialogInterface.OnClickListener {

            /* renamed from: d */
            final /* synthetic */ DeletableEditText f10506d;

            /* renamed from: e */
            final /* synthetic */ DeletableEditText f10507e;

            DialogInterface$OnClickListenerC3276b(DeletableEditText deletableEditText, DeletableEditText deletableEditText2) {
                C3274h.this = r4;
                this.f10506d = deletableEditText;
                this.f10507e = deletableEditText2;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                try {
                    String obj = this.f10506d.getText().toString();
                    MyBlockListActivity.this.m25581f1(this.f10507e.getText().toString(), obj, true);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        C3274h() {
            MyBlockListActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p172g.AbstractC2808b
        /* renamed from: a */
        public void mo25264a(CallLogBean callLogBean) {
            try {
                if (MyBlockListActivity.this.isFinishing()) {
                    return;
                }
                View inflate = LayoutInflater.from(MyBlockListActivity.this).inflate(R$layout.view_dialog_block_edit, (ViewGroup) null);
                DeletableEditText deletableEditText = (DeletableEditText) inflate.findViewById(R$id.edit_name);
                DeletableEditText deletableEditText2 = (DeletableEditText) inflate.findViewById(R$id.edit_number);
                deletableEditText.setHint(R$string.block_name);
                deletableEditText2.setTypeface(MyBlockListActivity.this.f10481Q);
                deletableEditText2.setHint(R$string.block_number);
                deletableEditText.setText(callLogBean.m24884m());
                deletableEditText2.setText(callLogBean.m24880o());
                deletableEditText2.setSelection(deletableEditText2.getText().length());
                AlertDialog create = new AlertDialog.Builder(MyBlockListActivity.this).setMessage(MyBlockListActivity.this.getResources().getString(R$string.add)).setView(inflate).setPositiveButton(MyBlockListActivity.this.getResources().getString(R$string.save_small), new DialogInterface$OnClickListenerC3276b(deletableEditText2, deletableEditText)).setNegativeButton(MyBlockListActivity.this.getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3275a()).create();
                create.show();
                create.getButton(-1).setTextColor(MyBlockListActivity.this.f10476L);
                create.getButton(-2).setTextColor(MyBlockListActivity.this.getResources().getColor(R$color.btn_gray));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$i.class */
    public class RunnableC3277i implements Runnable {
        RunnableC3277i() {
            MyBlockListActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyBlockListActivity myBlockListActivity = MyBlockListActivity.this;
            myBlockListActivity.f10469E = myBlockListActivity.f10485x.m24103f();
            MyBlockListActivity.this.f10473I.sendEmptyMessage(100);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$j */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$j.class */
    public class C3278j implements FloatingActionMenu.AbstractC4501h {

        /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$j$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$j$a.class */
        class DialogInterface$OnDismissListenerC3279a implements DialogInterface.OnDismissListener {
            DialogInterface$OnDismissListenerC3279a() {
                C3278j.this = r4;
            }

            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                MyBlockListActivity.this.m25597X0();
            }
        }

        C3278j() {
            MyBlockListActivity.this = r4;
        }

        @Override // com.github.clans.fab.FloatingActionMenu.AbstractC4501h
        /* renamed from: a */
        public void mo22319a(boolean z) {
            int i;
            if (z) {
                C3810q.m24071b().m24070c("blacklist_add_clik");
                if (C3711a1.m24469x2().booleanValue() || (i = Build.VERSION.SDK_INT) < 26 || i >= 28 || C3784b.m24142d(MyBlockListActivity.this.getApplicationContext())) {
                    return;
                }
                DialogC2588f dialogC2588f = new DialogC2588f(MyBlockListActivity.this, R$style.CustomDialog4);
                dialogC2588f.setCanceledOnTouchOutside(false);
                dialogC2588f.setOnDismissListener(new DialogInterface$OnDismissListenerC3279a());
                dialogC2588f.show();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$k */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$k.class */
    public class DialogInterface$OnClickListenerC3280k implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC3280k() {
            MyBlockListActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$l */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$l.class */
    public class DialogInterface$OnClickListenerC3281l implements DialogInterface.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ DeletableEditText f10513d;

        /* renamed from: e */
        final /* synthetic */ DeletableEditText f10514e;

        DialogInterface$OnClickListenerC3281l(DeletableEditText deletableEditText, DeletableEditText deletableEditText2) {
            MyBlockListActivity.this = r4;
            this.f10513d = deletableEditText;
            this.f10514e = deletableEditText2;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                String obj = this.f10513d.getText().toString();
                MyBlockListActivity.this.m25581f1(this.f10514e.getText().toString(), obj, true);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$m */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$m.class */
    public class C3282m implements AbstractC2795a {

        /* renamed from: a */
        final /* synthetic */ String f10516a;

        /* renamed from: b */
        final /* synthetic */ String f10517b;

        /* renamed from: c */
        final /* synthetic */ boolean f10518c;

        /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$m$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$m$a.class */
        class C3283a implements AbstractC2766a {
            C3283a() {
                C3282m.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
            /* renamed from: a */
            public void mo24704a() {
                MyBlockListActivity.this.m25589b1();
                C3810q.m24071b().m24070c("add_blacklist");
                MyBlockListActivity myBlockListActivity = MyBlockListActivity.this;
                Toast.makeText(myBlockListActivity, myBlockListActivity.getResources().getString(R$string.blocked_to_list), 0).show();
                if (C3282m.this.f10518c) {
                    CollectInfo collectInfo = new CollectInfo();
                    collectInfo.setNumber(C3282m.this.f10516a);
                    collectInfo.setUser_blocked("1");
                    collectInfo.setUser_commented("0");
                    collectInfo.setUser_reported("0");
                    collectInfo.setUser_upload_recording("0");
                    C2839c.m26517c(EZCallApplication.m26146c(), collectInfo);
                }
            }
        }

        C3282m(String str, String str2, boolean z) {
            MyBlockListActivity.this = r4;
            this.f10516a = str;
            this.f10517b = str2;
            this.f10518c = z;
        }

        @Override // com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a
        /* renamed from: a */
        public void mo24705a(boolean z) {
            try {
                if (z) {
                    MyBlockListActivity myBlockListActivity = MyBlockListActivity.this;
                    Toast.makeText(myBlockListActivity, myBlockListActivity.getResources().getString(R$string.blocked_to_list), 0).show();
                } else {
                    EZBlackList eZBlackList = new EZBlackList();
                    eZBlackList.setNumber(this.f10516a.replace("-", ""));
                    eZBlackList.setName(this.f10517b);
                    eZBlackList.setIs_myblock("true");
                    C2796b.m26588a(eZBlackList, new C3283a());
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$n */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$n.class */
    public class DialogInterface$OnClickListenerC3284n implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC3284n() {
            MyBlockListActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$o */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$o.class */
    public class DialogInterface$OnClickListenerC3285o implements DialogInterface.OnClickListener {

        /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$o$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$o$a.class */
        class C3286a implements AbstractC2766a {
            C3286a() {
                DialogInterface$OnClickListenerC3285o.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
            /* renamed from: a */
            public void mo24704a() {
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$o$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$o$b.class */
        class C3287b implements AbstractC2766a {
            C3287b() {
                DialogInterface$OnClickListenerC3285o.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
            /* renamed from: a */
            public void mo24704a() {
            }
        }

        DialogInterface$OnClickListenerC3285o() {
            MyBlockListActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                if (MyBlockListActivity.this.f10466B != null && MyBlockListActivity.this.f10466B.size() > 0) {
                    C2796b.m26586c(new C3286a());
                    MyBlockListActivity.this.f10466B.clear();
                }
                if (MyBlockListActivity.this.f10469E != null && MyBlockListActivity.this.f10469E.size() > 0) {
                    C2796b.m26585d(new C3287b());
                    MyBlockListActivity.this.f10469E.clear();
                }
                if (MyBlockListActivity.this.f10479O != null && MyBlockListActivity.this.f10479O.size() > 0) {
                    MyBlockListActivity.this.f10479O.clear();
                }
                MyBlockListActivity.this.f10487z.m25548i(MyBlockListActivity.this.f10479O);
                MyBlockListActivity.this.m25600V0();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$p */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$p.class */
    public class DialogInterface$OnClickListenerC3288p implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC3288p() {
            MyBlockListActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$q */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$q.class */
    public class C3289q extends BaseAdapter {

        /* renamed from: d */
        private List<Object> f10526d;

        /* renamed from: e */
        private Context f10527e;

        /* renamed from: f */
        private int f10528f;

        /* renamed from: g */
        private int f10529g;

        /* renamed from: h */
        C3301h f10530h;

        /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$q$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a.class */
        class View$OnClickListenerC3290a implements View.OnClickListener {

            /* renamed from: d */
            final /* synthetic */ int f10532d;

            /* renamed from: e */
            final /* synthetic */ Object f10533e;

            /* renamed from: f */
            final /* synthetic */ int f10534f;

            View$OnClickListenerC3290a(int i, Object obj, int i2) {
                C3289q.this = r4;
                this.f10532d = i;
                this.f10533e = obj;
                this.f10534f = i2;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!MyBlockListActivity.this.f10471G) {
                    C3289q.this.m25551f(this.f10534f, this.f10533e, this.f10532d);
                    return;
                }
                if (this.f10532d == 0) {
                    CustomBlock customBlock = (CustomBlock) this.f10533e;
                    if (customBlock.isselected()) {
                        C3289q.this.f10530h.f10562f.setImageResource(R$drawable.ic_unselect_gray);
                        customBlock.setIsselected(false);
                        if (MyBlockListActivity.this.f10472H) {
                            MyBlockListActivity.this.f10472H = false;
                        }
                        C3289q.this.m25549h(0);
                    } else {
                        C3289q.this.f10530h.f10562f.setImageResource(R$drawable.ic_select_red);
                        customBlock.setIsselected(true);
                        C3289q.this.m25550g(0);
                    }
                } else {
                    EZBlackList eZBlackList = (EZBlackList) this.f10533e;
                    if (eZBlackList.isselected()) {
                        C3289q.this.f10530h.f10562f.setImageResource(R$drawable.ic_unselect_gray);
                        eZBlackList.setIsselected(false);
                        C3289q.this.m25549h(0);
                    } else {
                        C3289q.this.f10530h.f10562f.setImageResource(R$drawable.ic_select_red);
                        eZBlackList.setIsselected(true);
                        C3289q.this.m25550g(0);
                    }
                }
                C3289q.this.notifyDataSetChanged();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$q$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b.class */
        public class View$OnClickListenerC3291b implements View.OnClickListener {

            /* renamed from: d */
            final /* synthetic */ int f10536d;

            /* renamed from: e */
            final /* synthetic */ Object f10537e;

            /* renamed from: f */
            final /* synthetic */ int f10538f;

            /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$q$b$a */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b$a.class */
            class View$OnClickListenerC3292a implements View.OnClickListener {
                View$OnClickListenerC3292a() {
                    View$OnClickListenerC3291b.this = r4;
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    View$OnClickListenerC3291b view$OnClickListenerC3291b = View$OnClickListenerC3291b.this;
                    C3289q.this.m25552e(view, view$OnClickListenerC3291b.f10538f, view$OnClickListenerC3291b.f10536d);
                    if (MyBlockListActivity.this.f10475K != null) {
                        MyBlockListActivity.this.f10475K.dismiss();
                    }
                }
            }

            View$OnClickListenerC3291b(int i, Object obj, int i2) {
                C3289q.this = r4;
                this.f10536d = i;
                this.f10537e = obj;
                this.f10538f = i2;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!MyBlockListActivity.this.f10471G) {
                    if (this.f10536d != 1) {
                        return;
                    }
                    View inflate = MyBlockListActivity.this.f10474J.inflate(R$layout.view_dialog_block, (ViewGroup) null);
                    TextView textView = (TextView) inflate.findViewById(R$id.block_edit);
                    TextView textView2 = (TextView) inflate.findViewById(R$id.block_delete);
                    FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R$id.rl_block_edit);
                    FrameLayout frameLayout2 = (FrameLayout) inflate.findViewById(R$id.rl_block_delete);
                    textView.setTypeface(MyBlockListActivity.this.f10481Q);
                    textView2.setTypeface(MyBlockListActivity.this.f10481Q);
                    View$OnClickListenerC3292a view$OnClickListenerC3292a = new View$OnClickListenerC3292a();
                    frameLayout.setOnClickListener(view$OnClickListenerC3292a);
                    frameLayout2.setOnClickListener(view$OnClickListenerC3292a);
                    if (MyBlockListActivity.this.isFinishing()) {
                        return;
                    }
                    MyBlockListActivity myBlockListActivity = MyBlockListActivity.this;
                    myBlockListActivity.f10475K = new DialogInterfaceC0146a.C0147a(myBlockListActivity).m35557r(inflate).m35574a();
                    MyBlockListActivity.this.f10475K.show();
                    return;
                }
                if (this.f10536d == 0) {
                    CustomBlock customBlock = (CustomBlock) this.f10537e;
                    if (customBlock.isselected()) {
                        C3289q.this.f10530h.f10562f.setImageResource(R$drawable.ic_unselect_gray);
                        customBlock.setIsselected(false);
                        MyBlockListActivity.this.f10472H = false;
                        C3289q.this.m25549h(0);
                    } else {
                        C3289q.this.f10530h.f10562f.setImageResource(R$drawable.ic_select_red);
                        customBlock.setIsselected(true);
                        C3289q.this.m25550g(0);
                    }
                } else {
                    EZBlackList eZBlackList = (EZBlackList) this.f10537e;
                    if (eZBlackList.isselected()) {
                        C3289q.this.f10530h.f10562f.setImageResource(R$drawable.ic_unselect_gray);
                        eZBlackList.setIsselected(false);
                        C3289q.this.m25549h(0);
                    } else {
                        C3289q.this.f10530h.f10562f.setImageResource(R$drawable.ic_select_red);
                        eZBlackList.setIsselected(true);
                        C3289q.this.m25550g(0);
                    }
                }
                C3289q.this.notifyDataSetChanged();
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$q$c */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$c.class */
        class View$OnLongClickListenerC3293c implements View.OnLongClickListener {

            /* renamed from: d */
            final /* synthetic */ int f10541d;

            /* renamed from: e */
            final /* synthetic */ Object f10542e;

            View$OnLongClickListenerC3293c(int i, Object obj) {
                C3289q.this = r4;
                this.f10541d = i;
                this.f10542e = obj;
            }

            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                MyBlockListActivity.this.f10468D.setVisibility(0);
                MyBlockListActivity.this.f10483v.setImageResource(R$drawable.nav_close_white);
                MyBlockListActivity.this.f10471G = true;
                if (this.f10541d == 0) {
                    ((CustomBlock) this.f10542e).setIsselected(true);
                } else {
                    ((EZBlackList) this.f10542e).setIsselected(true);
                }
                if (MyBlockListActivity.this.f10487z != null) {
                    MyBlockListActivity.this.f10487z.notifyDataSetChanged();
                    return true;
                }
                return true;
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$q$d */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$d.class */
        public class DialogInterface$OnClickListenerC3294d implements DialogInterface.OnClickListener {
            DialogInterface$OnClickListenerC3294d() {
                C3289q.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$q$e */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e.class */
        public class DialogInterface$OnClickListenerC3295e implements DialogInterface.OnClickListener {

            /* renamed from: d */
            final /* synthetic */ DeletableEditText f10545d;

            /* renamed from: e */
            final /* synthetic */ EZBlackList f10546e;

            /* renamed from: f */
            final /* synthetic */ DeletableEditText f10547f;

            /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$q$e$a */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e$a.class */
            class C3296a implements AbstractC2766a {
                C3296a() {
                    DialogInterface$OnClickListenerC3295e.this = r4;
                }

                @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
                /* renamed from: a */
                public void mo24704a() {
                }
            }

            DialogInterface$OnClickListenerC3295e(DeletableEditText deletableEditText, EZBlackList eZBlackList, DeletableEditText deletableEditText2) {
                C3289q.this = r4;
                this.f10545d = deletableEditText;
                this.f10546e = eZBlackList;
                this.f10547f = deletableEditText2;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                try {
                    if (this.f10545d.getText().toString() == null || "".equals(this.f10545d.getText().toString())) {
                        Toast.makeText(MyBlockListActivity.this.getApplicationContext(), MyBlockListActivity.this.getResources().getString(R$string.invalid_nubmer), 0).show();
                        return;
                    }
                    if (this.f10546e.getName() != null && "".equals(this.f10546e.getName())) {
                        this.f10546e.setIs_myblock("true");
                    }
                    this.f10546e.setName(this.f10547f.getText().toString());
                    this.f10546e.setNumber(this.f10545d.getText().toString().replace("-", ""));
                    this.f10546e.setFormat_number(this.f10545d.getText().toString().replace("-", ""));
                    C2796b.m26582g(this.f10546e, new C3296a());
                    MyBlockListActivity.this.f10487z.notifyDataSetChanged();
                    MyBlockListActivity.this.m25600V0();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$q$f */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$f.class */
        public class DialogInterface$OnClickListenerC3297f implements DialogInterface.OnClickListener {
            DialogInterface$OnClickListenerC3297f() {
                C3289q.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$q$g */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$g.class */
        public class DialogInterface$OnClickListenerC3298g implements DialogInterface.OnClickListener {

            /* renamed from: d */
            final /* synthetic */ int f10551d;

            /* renamed from: e */
            final /* synthetic */ Object f10552e;

            /* renamed from: f */
            final /* synthetic */ int f10553f;

            /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$q$g$a */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$g$a.class */
            class C3299a implements AbstractC2766a {
                C3299a() {
                    DialogInterface$OnClickListenerC3298g.this = r4;
                }

                @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
                /* renamed from: a */
                public void mo24704a() {
                }
            }

            /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$q$g$b */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$g$b.class */
            class C3300b implements AbstractC2766a {
                C3300b() {
                    DialogInterface$OnClickListenerC3298g.this = r4;
                }

                @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
                /* renamed from: a */
                public void mo24704a() {
                }
            }

            DialogInterface$OnClickListenerC3298g(int i, Object obj, int i2) {
                C3289q.this = r4;
                this.f10551d = i;
                this.f10552e = obj;
                this.f10553f = i2;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                try {
                    if (this.f10551d == 0) {
                        C2796b.m26583f(((CustomBlock) this.f10552e).getNumber(), new C3299a());
                    } else {
                        C2796b.m26584e(((EZBlackList) this.f10552e).getNumber(), new C3300b());
                    }
                    C3289q.this.f10526d.remove(this.f10553f);
                    MyBlockListActivity.this.m25600V0();
                    MyBlockListActivity.this.f10487z.notifyDataSetChanged();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$q$h */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h.class */
        public class C3301h {

            /* renamed from: a */
            TextView f10557a;

            /* renamed from: b */
            TextView f10558b;

            /* renamed from: c */
            FrameLayout f10559c;

            /* renamed from: d */
            RelativeLayout f10560d;

            /* renamed from: e */
            RelativeLayout f10561e;

            /* renamed from: f */
            ImageView f10562f;

            public C3301h() {
                C3289q.this = r4;
            }
        }

        public C3289q(Context context, List<Object> list) {
            MyBlockListActivity.this = r6;
            this.f10526d = new ArrayList();
            this.f10527e = context;
            this.f10526d = list;
            this.f10528f = C3719c1.m24431b(context, R$attr.bg_list_card_bottom, R$drawable.bg_list_card_bottom);
            this.f10529g = C3719c1.m24431b(context, R$attr.bg_list_card_center, R$drawable.bg_list_card_center);
        }

        /* renamed from: f */
        public void m25551f(int i, Object obj, int i2) {
            String str;
            String str2;
            try {
                if (i2 == 0) {
                    CustomBlock customBlock = (CustomBlock) obj;
                    if (customBlock.getType() == 3) {
                        str = MyBlockListActivity.this.getResources().getString(R$string.blockforeign);
                        str2 = MyBlockListActivity.this.getResources().getString(R$string.blockforeign);
                    } else {
                        str = customBlock.getNumber();
                        str2 = customBlock.getNumber();
                    }
                } else {
                    EZBlackList eZBlackList = (EZBlackList) obj;
                    str = eZBlackList.getNumber();
                    str2 = eZBlackList.getName();
                }
                String str3 = str;
                if (str2 != null) {
                    str3 = str;
                    if (!"".equals(str2)) {
                        str3 = str2;
                    }
                }
                if (MyBlockListActivity.this.isFinishing()) {
                    return;
                }
                DialogInterfaceC0146a.C0147a c0147a = new DialogInterfaceC0146a.C0147a(MyBlockListActivity.this);
                DialogInterfaceC0146a m35574a = c0147a.m35567h(MyBlockListActivity.this.getResources().getString(R$string.unblock) + " '" + str3 + "' ?").m35561n(MyBlockListActivity.this.getResources().getString(R$string.update_dialog_ok), new DialogInterface$OnClickListenerC3298g(i2, obj, i)).m35565j(MyBlockListActivity.this.getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3297f()).m35574a();
                m35574a.show();
                m35574a.m35577g(-1).setTextColor(MyBlockListActivity.this.f10476L);
                m35574a.m35577g(-2).setTextColor(MyBlockListActivity.this.getResources().getColor(R$color.btn_gray));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        /* renamed from: g */
        public void m25550g(int i) {
            int i2;
            int i3 = i;
            int i4 = 0;
            while (i4 < this.f10526d.size()) {
                Object obj = this.f10526d.get(i4);
                if (obj instanceof CustomBlock) {
                    i2 = i3;
                    if (!((CustomBlock) obj).isselected()) {
                        i4++;
                        i3 = i2;
                    }
                    i2 = i3 + 1;
                    i4++;
                    i3 = i2;
                } else {
                    i2 = i3;
                    if (!((EZBlackList) obj).isselected()) {
                        i4++;
                        i3 = i2;
                    }
                    i2 = i3 + 1;
                    i4++;
                    i3 = i2;
                }
            }
            if (i3 == this.f10526d.size()) {
                MyBlockListActivity.this.f10472H = true;
            }
        }

        /* renamed from: h */
        public void m25549h(int i) {
            int i2;
            int i3 = 0;
            while (i3 < this.f10526d.size()) {
                Object obj = this.f10526d.get(i3);
                if (obj instanceof CustomBlock) {
                    i2 = i;
                    if (((CustomBlock) obj).isselected()) {
                        i3++;
                        i = i2;
                    }
                    i2 = i + 1;
                    i3++;
                    i = i2;
                } else {
                    i2 = i;
                    if (((EZBlackList) obj).isselected()) {
                        i3++;
                        i = i2;
                    }
                    i2 = i + 1;
                    i3++;
                    i = i2;
                }
            }
            if (i == this.f10526d.size()) {
                MyBlockListActivity.this.f10472H = false;
            }
        }

        /* renamed from: e */
        public void m25552e(View view, int i, int i2) {
            try {
                EZBlackList eZBlackList = (EZBlackList) this.f10526d.get(i);
                switch (view.getId()) {
                    case R$id.rl_block_delete /* 2131297478 */:
                        m25551f(i, eZBlackList, i2);
                        return;
                    case R$id.rl_block_edit /* 2131297479 */:
                        try {
                            if (!MyBlockListActivity.this.isFinishing()) {
                                View inflate = MyBlockListActivity.this.f10474J.inflate(R$layout.view_dialog_block_edit, (ViewGroup) null);
                                DeletableEditText deletableEditText = (DeletableEditText) inflate.findViewById(R$id.edit_name);
                                DeletableEditText deletableEditText2 = (DeletableEditText) inflate.findViewById(R$id.edit_number);
                                deletableEditText.setTypeface(MyBlockListActivity.this.f10481Q);
                                deletableEditText2.setTypeface(MyBlockListActivity.this.f10481Q);
                                deletableEditText.setHint(R$string.block_name);
                                deletableEditText2.setHint(R$string.block_number);
                                deletableEditText.setText(eZBlackList.getName());
                                deletableEditText2.setText(eZBlackList.getNumber());
                                deletableEditText2.setSelection(deletableEditText2.getText().length());
                                DialogInterfaceC0146a m35574a = new DialogInterfaceC0146a.C0147a(MyBlockListActivity.this).m35557r(inflate).m35567h(MyBlockListActivity.this.getResources().getString(R$string.block_edit)).m35561n(MyBlockListActivity.this.getResources().getString(R$string.save_small), new DialogInterface$OnClickListenerC3295e(deletableEditText2, eZBlackList, deletableEditText)).m35565j(MyBlockListActivity.this.getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3294d()).m35574a();
                                m35574a.show();
                                m35574a.m35577g(-1).setTextColor(MyBlockListActivity.this.f10476L);
                                m35574a.m35577g(-2).setTextColor(MyBlockListActivity.this.getResources().getColor(R$color.btn_gray));
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        return;
                    default:
                        return;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f10526d.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.f10526d.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            return (!(this.f10526d.get(i) instanceof CustomBlock) && (this.f10526d.get(i) instanceof EZBlackList)) ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View view2;
            Boolean bool;
            String str;
            String str2;
            String str3;
            int itemViewType = getItemViewType(i);
            if (view == null) {
                this.f10530h = new C3301h();
                view2 = LayoutInflater.from(this.f10527e).inflate(R$layout.block_item, (ViewGroup) null);
                this.f10530h.f10557a = (TextView) view2.findViewById(R$id.block_name);
                this.f10530h.f10558b = (TextView) view2.findViewById(R$id.block_number);
                this.f10530h.f10557a.setTypeface(MyBlockListActivity.this.f10481Q);
                this.f10530h.f10558b.setTypeface(MyBlockListActivity.this.f10481Q);
                this.f10530h.f10562f = (ImageView) view2.findViewById(R$id.block_icon);
                this.f10530h.f10559c = (FrameLayout) view2.findViewById(R$id.ripple_bg);
                this.f10530h.f10560d = (RelativeLayout) view2.findViewById(R$id.rl_block_bottom);
                this.f10530h.f10561e = (RelativeLayout) view2.findViewById(R$id.rl_block_bg);
                view2.setTag(this.f10530h);
            } else {
                this.f10530h = (C3301h) view.getTag();
                view2 = view;
            }
            if (i == this.f10526d.size() - 1) {
                this.f10530h.f10560d.setVisibility(0);
                this.f10530h.f10561e.setBackgroundResource(this.f10528f);
            } else {
                this.f10530h.f10561e.setBackgroundResource(this.f10529g);
                this.f10530h.f10560d.setVisibility(8);
            }
            Object obj = this.f10526d.get(i);
            if (itemViewType == 0) {
                CustomBlock customBlock = (CustomBlock) obj;
                Boolean valueOf = Boolean.valueOf(customBlock.isselected());
                int type = customBlock.getType();
                String string = type != 0 ? type != 1 ? type != 2 ? type != 3 ? "" : this.f10527e.getResources().getString(R$string.blockforeign) : this.f10527e.getResources().getString(R$string.endwith) : this.f10527e.getResources().getString(R$string.containwith) : this.f10527e.getResources().getString(R$string.beginwith);
                if (type < 3) {
                    str2 = customBlock.getNumber();
                    str = string;
                    str3 = customBlock.getNumber();
                    bool = valueOf;
                } else {
                    str2 = "";
                    str = string;
                    str3 = "";
                    bool = valueOf;
                }
            } else {
                EZBlackList eZBlackList = (EZBlackList) obj;
                bool = Boolean.valueOf(eZBlackList.isselected());
                str = eZBlackList.getName();
                str2 = eZBlackList.getFormat_number();
                str3 = eZBlackList.getNumber();
            }
            if (!MyBlockListActivity.this.f10471G) {
                this.f10530h.f10562f.setImageResource(R$drawable.ic_unblock);
            } else if (bool.booleanValue()) {
                this.f10530h.f10562f.setImageResource(R$drawable.ic_select_red);
            } else {
                this.f10530h.f10562f.setImageResource(R$drawable.ic_unselect_gray);
            }
            this.f10530h.f10558b.setVisibility(0);
            if (str == null || "".equals(str)) {
                this.f10530h.f10558b.setVisibility(8);
                if (str2 == null || "".equals(str2)) {
                    this.f10530h.f10557a.setText(str3);
                } else {
                    this.f10530h.f10557a.setText(str2);
                }
            } else {
                this.f10530h.f10557a.setVisibility(0);
                this.f10530h.f10557a.setText(str);
            }
            if (str2 == null || "".equals(str2)) {
                this.f10530h.f10558b.setText(str3);
            } else {
                this.f10530h.f10558b.setText(str2);
            }
            this.f10530h.f10562f.setOnClickListener(new View$OnClickListenerC3290a(itemViewType, obj, i));
            this.f10530h.f10559c.setOnClickListener(new View$OnClickListenerC3291b(itemViewType, obj, i));
            this.f10530h.f10559c.setOnLongClickListener(new View$OnLongClickListenerC3293c(itemViewType, obj));
            return view2;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 2;
        }

        /* renamed from: i */
        public void m25548i(List<Object> list) {
            List<Object> list2 = this.f10526d;
            if (list2 == null || list2.size() == 0) {
                this.f10526d = list;
            } else {
                this.f10526d = list;
            }
            notifyDataSetChanged();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.MyBlockListActivity$r */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/MyBlockListActivity$r.class */
    private static class HandlerC3302r extends Handler {

        /* renamed from: a */
        private final WeakReference<MyBlockListActivity> f10564a;

        private HandlerC3302r(MyBlockListActivity myBlockListActivity) {
            this.f10564a = new WeakReference<>(myBlockListActivity);
        }

        /* synthetic */ HandlerC3302r(MyBlockListActivity myBlockListActivity, RunnableC3262a runnableC3262a) {
            this(myBlockListActivity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            MyBlockListActivity myBlockListActivity = this.f10564a.get();
            if (myBlockListActivity != null) {
                int i = message.what;
                if (i == 100) {
                    if (myBlockListActivity.f10479O != null) {
                        myBlockListActivity.f10479O.clear();
                    }
                    if (myBlockListActivity.f10469E != null && myBlockListActivity.f10469E.size() > 0) {
                        myBlockListActivity.f10479O.addAll(myBlockListActivity.f10469E);
                    }
                    myBlockListActivity.m25600V0();
                    if (myBlockListActivity.f10479O != null && myBlockListActivity.f10479O.size() > 0 && myBlockListActivity.f10487z != null) {
                        myBlockListActivity.f10487z.m25548i(myBlockListActivity.f10479O);
                    }
                    myBlockListActivity.m25598X();
                } else if (i == 200) {
                    myBlockListActivity.f10479O.addAll(myBlockListActivity.f10466B);
                    myBlockListActivity.m25600V0();
                    if (myBlockListActivity.f10479O != null && myBlockListActivity.f10479O.size() > 0 && myBlockListActivity.f10487z != null) {
                        myBlockListActivity.f10487z.m25548i(myBlockListActivity.f10479O);
                    }
                }
            }
            super.handleMessage(message);
        }
    }

    /* renamed from: U0 */
    public void m25601U0() {
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            this.f10483v.setImageResource(R$drawable.ic_back_oppo);
        } else {
            this.f10483v.setImageResource(R$drawable.ic_back);
        }
    }

    /* renamed from: W0 */
    private void m25599W0() {
        int i;
        int i2;
        List<Object> list = this.f10479O;
        if (list != null && list.size() > 0) {
            this.f10480P.setVisibility(8);
            if (C3711a1.m24469x2().booleanValue() || (i2 = Build.VERSION.SDK_INT) < 26 || i2 >= 28 || C3784b.m24142d(getApplicationContext())) {
                return;
            }
            DialogC2588f dialogC2588f = new DialogC2588f(this, R$style.CustomDialog4);
            dialogC2588f.setCanceledOnTouchOutside(false);
            dialogC2588f.show();
        } else if (C3711a1.m24469x2().booleanValue() || (i = Build.VERSION.SDK_INT) < 26 || i >= 28 || C3784b.m24142d(getApplicationContext())) {
            this.f10480P.setVisibility(8);
            this.f10477M.setVisibility(0);
        } else {
            C3810q.m24071b().m24070c("block_norifi_per_show");
            this.f10480P.setVisibility(0);
            this.f10477M.setVisibility(8);
        }
    }

    /* renamed from: X */
    public void m25598X() {
        C3772i0.m24190a().f12015b.execute(new RunnableC3268d());
    }

    /* renamed from: X0 */
    public void m25597X0() {
        int i = Build.VERSION.SDK_INT;
        if (i < 26 || i >= 28 || C3784b.m24142d(getApplicationContext()) || !this.f10478N.m22322s()) {
            return;
        }
        this.f10478N.m22320u(true);
    }

    /* renamed from: Y0 */
    public void m25595Y0() {
        try {
            if (isFinishing()) {
                return;
            }
            DialogInterfaceC0146a m35574a = new DialogInterfaceC0146a.C0147a(this).m35567h(getResources().getString(R$string.delete_all_block)).m35561n(getResources().getString(R$string.update_dialog_ok), new DialogInterface$OnClickListenerC3285o()).m35565j(getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3284n()).m35574a();
            m35574a.show();
            m35574a.m35577g(-1).setTextColor(this.f10476L);
            m35574a.m35577g(-2).setTextColor(getResources().getColor(R$color.btn_gray));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: Z0 */
    public void m25593Z0(List<Object> list) {
        try {
            if (isFinishing()) {
                return;
            }
            DialogInterfaceC0146a.C0147a c0147a = new DialogInterfaceC0146a.C0147a(this);
            DialogInterfaceC0146a m35574a = c0147a.m35567h(getResources().getString(R$string.delete_seleted_block) + " " + list.size() + " " + getResources().getString(R$string.delete_seleted_block_spam)).m35561n(getResources().getString(R$string.update_dialog_ok), new DialogInterface$OnClickListenerC3266b(list)).m35565j(getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3288p()).m35574a();
            m35574a.show();
            m35574a.m35577g(-1).setTextColor(this.f10476L);
            m35574a.m35577g(-2).setTextColor(getResources().getColor(R$color.btn_gray));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a1 */
    public void m25591a1(List<Object> list) {
        C3772i0.m24190a().f12015b.execute(new RunnableC3267c(list));
    }

    /* renamed from: b1 */
    public void m25589b1() {
        C3772i0.m24190a().f12015b.execute(new RunnableC3277i());
    }

    /* renamed from: c1 */
    public void m25587c1() {
        View inflate = LayoutInflater.from(this).inflate(R$layout.myblock_list_head, (ViewGroup) null);
        m25573j1(inflate);
        this.f10486y.addHeaderView(inflate, null, false);
    }

    /* renamed from: d1 */
    public void m25585d1() {
        this.f10480P = (LinearLayout) findViewById(R$id.ll_notifi_per);
        ((FrameLayout) findViewById(R$id.flayout_enable)).setOnClickListener(this);
        ((TextView) findViewById(R$id.tv_per_notifi)).setTypeface(this.f10481Q);
        ((TextView) findViewById(R$id.tv_enable)).setTypeface(this.f10481Q);
        FloatingActionMenu floatingActionMenu = (FloatingActionMenu) findViewById(R$id.switch_dial);
        this.f10478N = floatingActionMenu;
        floatingActionMenu.setContentDescription(getResources().getString(R$string.add));
        this.f10478N.setClosedOnTouchOutside(true);
        FloatingActionButton floatingActionButton = (FloatingActionButton) findViewById(R$id.fab_enter_number);
        FloatingActionButton floatingActionButton2 = (FloatingActionButton) findViewById(R$id.fab_from_his);
        FloatingActionButton floatingActionButton3 = (FloatingActionButton) findViewById(R$id.fab_from_contacts);
        floatingActionButton.setOnClickListener(this);
        floatingActionButton2.setOnClickListener(this);
        floatingActionButton3.setOnClickListener(this);
        floatingActionButton.setLabelTextType(this.f10481Q);
        floatingActionButton2.setLabelTextType(this.f10481Q);
        floatingActionButton3.setLabelTextType(this.f10481Q);
        this.f10478N.setMenuButtonShowAnimation(AnimationUtils.loadAnimation(this, R$anim.show_from_bottom));
        this.f10478N.setMenuButtonHideAnimation(AnimationUtils.loadAnimation(this, R$anim.hide_to_bottom));
        this.f10478N.setOnMenuToggleListener(new C3278j());
    }

    /* renamed from: e1 */
    public void m25583e1(List<Object> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (int i = 0; i < list.size(); i++) {
            Object obj = list.get(i);
            if (obj instanceof CustomBlock) {
                this.f10479O.remove((CustomBlock) obj);
            } else {
                EZBlackList eZBlackList = (EZBlackList) obj;
                if (eZBlackList.getIs_myblock() != null && eZBlackList.getIs_myblock().equals("true")) {
                    this.f10479O.remove(eZBlackList);
                }
            }
        }
    }

    /* renamed from: f1 */
    public void m25581f1(String str, String str2, boolean z) {
        if (str2 != null) {
            try {
                if (!"".equals(str2)) {
                    C2796b.m26587b(str2, new C3282m(str2, str, z));
                }
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        Toast.makeText(this, getResources().getString(R$string.invalid_nubmer), 0).show();
    }

    /* renamed from: g1 */
    public void m25579g1() {
        C2600m.m27039h(this, new C3271g());
    }

    /* renamed from: h1 */
    public void m25577h1() {
        C2600m.m27040g(this, new C3274h());
    }

    /* renamed from: i1 */
    private void m25575i1() {
        try {
            if (isFinishing()) {
                return;
            }
            View inflate = this.f10474J.inflate(R$layout.view_dialog_block_edit, (ViewGroup) null);
            DeletableEditText deletableEditText = (DeletableEditText) inflate.findViewById(R$id.edit_name);
            DeletableEditText deletableEditText2 = (DeletableEditText) inflate.findViewById(R$id.edit_number);
            deletableEditText.setHint(R$string.block_name);
            deletableEditText2.setTypeface(this.f10481Q);
            deletableEditText2.setHint(R$string.block_number);
            DialogInterfaceC0146a m35574a = new DialogInterfaceC0146a.C0147a(this).m35567h(getResources().getString(R$string.add)).m35557r(inflate).m35561n(getResources().getString(R$string.save_small), new DialogInterface$OnClickListenerC3281l(deletableEditText2, deletableEditText)).m35565j(getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3280k()).m35574a();
            m35574a.show();
            m35574a.m35577g(-1).setTextColor(this.f10476L);
            m35574a.m35577g(-2).setTextColor(getResources().getColor(R$color.btn_gray));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: j1 */
    private void m25573j1(View view) {
        this.f10465A = (RelativeLayout) view.findViewById(R$id.rl_my_block_list);
        ((TextView) view.findViewById(R$id.tv_your_list)).setTypeface(C3739f1.m24360a());
        m25600V0();
    }

    /* renamed from: V0 */
    public void m25600V0() {
        if (this.f10465A != null) {
            List<Object> list = this.f10479O;
            if (list == null || list.isEmpty() || this.f10479O.size() <= 0) {
                this.f10465A.setVisibility(8);
                this.f10467C.setVisibility(8);
                this.f10477M.setVisibility(0);
                if (this.f10468D.getVisibility() == 0) {
                    m25601U0();
                    this.f10468D.setVisibility(8);
                }
            } else {
                this.f10465A.setVisibility(0);
                this.f10467C.setVisibility(0);
                this.f10477M.setVisibility(8);
            }
            m25599W0();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131296817) {
            C3810q.m24071b().m24070c("block_norifi_per_click");
            C3784b.f12036a = true;
            C3784b.m24143c(getApplicationContext());
            return;
        }
        switch (id) {
            case R$id.fab_custom_num /* 2131296692 */:
                if (this.f10478N.m22322s()) {
                    this.f10478N.m22320u(true);
                }
                C3810q.m24071b().m24070c(C3744g1.f11943q);
                Intent intent = new Intent();
                intent.setClass(this, AddCustomNumActivity.class);
                startActivity(intent);
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                finish();
                return;
            case R$id.fab_enter_number /* 2131296693 */:
                if (this.f10478N.m22322s()) {
                    this.f10478N.m22320u(true);
                }
                m25575i1();
                return;
            case R$id.fab_from_contacts /* 2131296694 */:
                if (!C3776a.m24161d(getApplicationContext())) {
                    C3776a.m24152m(this, new C3270f());
                    return;
                }
                if (this.f10478N.m22322s()) {
                    this.f10478N.m22320u(true);
                }
                m25579g1();
                return;
            case R$id.fab_from_his /* 2131296695 */:
                if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_CALL_LOG") != 0) {
                    C3776a.m24148q(this, new C3269e());
                    return;
                }
                if (this.f10478N.m22322s()) {
                    this.f10478N.m22320u(true);
                }
                m25577h1();
                return;
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_myblock_list);
        this.f10481Q = C3739f1.m24359b();
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        this.f10476L = C3719c1.m24432a(this, R$attr.color_action, 2131099706);
        this.f10474J = LayoutInflater.from(this);
        getWindow().getDecorView().post(new RunnableC3262a());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            try {
                ImageView imageView = this.f10468D;
                if (imageView == null || imageView.getVisibility() != 0) {
                    finish();
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    return true;
                }
                ImageView imageView2 = this.f10483v;
                if (imageView2 != null) {
                    imageView2.setImageResource(R$drawable.ic_back);
                }
                this.f10468D.setVisibility(8);
                this.f10471G = false;
                this.f10472H = false;
                List<EZBlackList> list = this.f10466B;
                if (list != null && list.size() > 0) {
                    for (int i2 = 0; i2 < this.f10466B.size(); i2++) {
                        this.f10466B.get(i2).setIsselected(false);
                    }
                }
                C3289q c3289q = this.f10487z;
                if (c3289q == null) {
                    return true;
                }
                c3289q.notifyDataSetChanged();
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return true;
            }
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
        if (C3784b.f12036a) {
            if (C3784b.m24144b(getApplicationContext())) {
                C3810q.m24071b().m24070c("dialog_notifi_per_tip_enalbleed");
            }
            C3784b.f12036a = false;
            m25599W0();
        }
    }
}
