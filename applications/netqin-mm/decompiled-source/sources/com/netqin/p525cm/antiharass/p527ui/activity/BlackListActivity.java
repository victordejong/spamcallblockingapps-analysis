package com.netqin.p525cm.antiharass.p527ui.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.netqin.p525cm.main.p529ui.BaseActivity;
import com.netqin.p525cm.p528db.model.BlackWhiteListModel;
import com.netqin.p525cm.permission.CBPermissionsHelper;
import com.netqin.p525cm.utils.AsyncTask;
import java.util.ArrayList;
import java.util.List;
import p131c.p431l.p432a.p442b.p445c.C6727b;
import p131c.p431l.p432a.p442b.p445c.C6741c;
import p131c.p431l.p432a.p442b.p448f.p450b.C6773c;
import p131c.p431l.p432a.p442b.p448f.p451c.DialogC6776a;
import p131c.p431l.p432a.p442b.p448f.p451c.DialogC6778b;
import p131c.p431l.p432a.p468n.C6843d;
import p131c.p431l.p432a.p468n.C6850i;
import p131c.p431l.p432a.p468n.p469s.p472c.C6864a;
import p573f.C9946p;
import p573f.p590w.p591b.AbstractC10031l;
/* renamed from: com.netqin.cm.antiharass.ui.activity.BlackListActivity */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlackListActivity.class */
public class BlackListActivity extends BaseActivity {

    /* renamed from: A */
    public TextView f35315A;

    /* renamed from: B */
    public TextView f35316B;

    /* renamed from: C */
    public TextView f35317C;

    /* renamed from: D */
    public TextView f35318D;

    /* renamed from: E */
    public EditText f35319E;

    /* renamed from: F */
    public EditText f35320F;

    /* renamed from: G */
    public TextView f35321G;

    /* renamed from: H */
    public ImageView f35322H;

    /* renamed from: I */
    public C6727b f35323I;

    /* renamed from: J */
    public C6773c f35324J;

    /* renamed from: K */
    public C9064p f35325K;

    /* renamed from: L */
    public C9065q f35326L;

    /* renamed from: M */
    public List<BlackWhiteListModel> f35327M;

    /* renamed from: N */
    public Context f35328N;

    /* renamed from: Q */
    public DialogC6776a f35331Q;

    /* renamed from: R */
    public DialogC6776a f35332R;

    /* renamed from: t */
    public LinearLayout f35334t;

    /* renamed from: u */
    public ListView f35335u;

    /* renamed from: v */
    public DialogC6778b f35336v;

    /* renamed from: w */
    public TextView f35337w;

    /* renamed from: x */
    public EditText f35338x;

    /* renamed from: y */
    public EditText f35339y;

    /* renamed from: z */
    public TextView f35340z;

    /* renamed from: O */
    public boolean f35329O = false;

    /* renamed from: P */
    public View.OnClickListener f35330P = new View$OnClickListenerC9053g();

    /* renamed from: S */
    public AdapterView.OnItemClickListener f35333S = new C9062n();

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlackListActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlackListActivity$a.class */
    public class View$OnClickListenerC9047a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ BlackWhiteListModel f35341a;

        public View$OnClickListenerC9047a(BlackWhiteListModel blackWhiteListModel) {
            this.f35341a = blackWhiteListModel;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BlackListActivity.this.m3553c(this.f35341a);
            BlackListActivity.this.f35331Q.dismiss();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlackListActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlackListActivity$b.class */
    public class DialogInterface$OnClickListenerC9048b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ BlackWhiteListModel f35343a;

        public DialogInterface$OnClickListenerC9048b(BlackWhiteListModel blackWhiteListModel) {
            this.f35343a = blackWhiteListModel;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                int a = BlackListActivity.this.f35323I.m19963a(this.f35343a.getAddress());
                BlackListActivity.this.f35327M.remove(this.f35343a);
                BlackListActivity.this.f35324J.notifyDataSetChanged();
                if (a > 0) {
                    C6741c.m19914a(BlackListActivity.this.f35328N, "com.netqin.antiharass.refresh");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlackListActivity$c */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlackListActivity$c.class */
    public class DialogInterface$OnClickListenerC9049c implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC9049c() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlackListActivity$d */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlackListActivity$d.class */
    public class DialogInterface$OnClickListenerC9050d implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ BlackWhiteListModel f35346a;

        public DialogInterface$OnClickListenerC9050d(BlackWhiteListModel blackWhiteListModel) {
            this.f35346a = blackWhiteListModel;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                String trim = BlackListActivity.this.f35319E.getText().toString().trim();
                String str = trim;
                if (TextUtils.isEmpty(trim.replaceAll(" ", ""))) {
                    str = this.f35346a.getAddress();
                }
                long a = BlackListActivity.this.f35323I.m19972a(this.f35346a.getId(), str, this.f35346a.getAddress(), 1);
                BlackListActivity.this.f35324J.notifyDataSetChanged();
                if (a > 0) {
                    C6741c.m19914a(BlackListActivity.this.f35328N, "com.netqin.antiharass.refresh");
                    BlackListActivity.this.f35325K = new C9064p(BlackListActivity.this, null);
                    try {
                        BlackListActivity.this.f35325K.m3194b(new Object[0]);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    BlackListActivity.this.m3533s();
                    BlackListActivity.this.onResume();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlackListActivity$e */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlackListActivity$e.class */
    public class DialogInterface$OnClickListenerC9051e implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC9051e() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlackListActivity$f */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlackListActivity$f.class */
    public class C9052f implements AbstractC10031l<Integer, C9946p> {

        /* renamed from: a */
        public final /* synthetic */ int f35349a;

        public C9052f(int i) {
            this.f35349a = i;
        }

        /* renamed from: a */
        public C9946p invoke(Integer num) {
            if (num.intValue() == 0) {
                int i = this.f35349a;
                if (i == 1) {
                    BlackListActivity.this.m3540n();
                } else if (i == 2) {
                    BlackListActivity.this.m3538o();
                } else if (i == 3) {
                    BlackListActivity.this.m3536p();
                }
            }
            DialogC6776a aVar = BlackListActivity.this.f35331Q;
            if (aVar == null) {
                return null;
            }
            aVar.dismiss();
            return null;
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlackListActivity$g */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlackListActivity$g.class */
    public class View$OnClickListenerC9053g implements View.OnClickListener {
        public View$OnClickListenerC9053g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int id = view.getId();
            if (id == 2131230990) {
                BlackListActivity.this.m3529w();
            } else if (id == 2131231075) {
                BlackListActivity.this.finish();
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlackListActivity$h */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlackListActivity$h.class */
    public class View$OnClickListenerC9054h implements View.OnClickListener {
        public View$OnClickListenerC9054h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BlackListActivity.this.m3552d(1);
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlackListActivity$i */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlackListActivity$i.class */
    public class View$OnClickListenerC9055i implements View.OnClickListener {
        public View$OnClickListenerC9055i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BlackListActivity.this.m3552d(2);
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlackListActivity$j */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlackListActivity$j.class */
    public class View$OnClickListenerC9056j implements View.OnClickListener {
        public View$OnClickListenerC9056j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BlackListActivity.this.m3552d(3);
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlackListActivity$k */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlackListActivity$k.class */
    public class DialogInterface$OnClickListenerC9057k implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC9057k() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            BlackListActivity.this.f35332R.dismiss();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlackListActivity$l */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlackListActivity$l.class */
    public class DialogInterface$OnClickListenerC9058l implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f35356a;

        /* renamed from: com.netqin.cm.antiharass.ui.activity.BlackListActivity$l$a */
        /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlackListActivity$l$a.class */
        public class DialogInterface$OnClickListenerC9059a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC9059a(DialogInterface$OnClickListenerC9058l lVar) {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }

        /* renamed from: com.netqin.cm.antiharass.ui.activity.BlackListActivity$l$b */
        /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlackListActivity$l$b.class */
        public class DialogInterface$OnClickListenerC9060b implements DialogInterface.OnClickListener {

            /* renamed from: a */
            public final /* synthetic */ BlackWhiteListModel f35358a;

            /* renamed from: b */
            public final /* synthetic */ List f35359b;

            public DialogInterface$OnClickListenerC9060b(BlackWhiteListModel blackWhiteListModel, List list) {
                this.f35358a = blackWhiteListModel;
                this.f35359b = list;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                BlackWhiteListModel blackWhiteListModel = this.f35358a;
                DialogInterface$OnClickListenerC9058l lVar = DialogInterface$OnClickListenerC9058l.this;
                C6741c.m19913a(blackWhiteListModel, lVar.f35356a, BlackListActivity.this.f35323I);
                if (BlackListActivity.this.f35323I.m19965a(this.f35358a)) {
                    List list = this.f35359b;
                    if (list == null || list.size() <= 0) {
                        new ArrayList().add(this.f35358a);
                        BlackListActivity.this.f35325K = new C9064p(BlackListActivity.this, null);
                        try {
                            BlackListActivity.this.f35325K.m3194b(new Object[0]);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        BlackListActivity.this.m3533s();
                        BlackListActivity.this.f35332R.dismiss();
                    } else {
                        new ArrayList().add(this.f35358a);
                        BlackListActivity.this.f35325K = new C9064p(BlackListActivity.this, null);
                        try {
                            BlackListActivity.this.f35325K.m3194b(new Object[0]);
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                        BlackListActivity.this.m3533s();
                        BlackListActivity.this.onResume();
                        BlackListActivity.this.f35332R.dismiss();
                    }
                    C6741c.m19914a(BlackListActivity.this.f35328N, "com.netqin.antiharass.refresh");
                }
                dialogInterface.dismiss();
            }
        }

        public DialogInterface$OnClickListenerC9058l(int i) {
            this.f35356a = i;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            ArrayList arrayList = new ArrayList();
            BlackWhiteListModel blackWhiteListModel = new BlackWhiteListModel();
            String obj = BlackListActivity.this.f35338x.getText().toString();
            String obj2 = BlackListActivity.this.f35339y.getText().toString();
            if (!TextUtils.isEmpty(obj2)) {
                blackWhiteListModel.setAddress(obj2);
            }
            if (TextUtils.isEmpty(obj)) {
                blackWhiteListModel.setName(BlackListActivity.this.f35323I.m19955b(obj2));
            } else {
                blackWhiteListModel.setName(obj);
            }
            blackWhiteListModel.setType(this.f35356a);
            if (C6741c.m19911b(blackWhiteListModel, this.f35356a, BlackListActivity.this.f35323I)) {
                arrayList.add(TextUtils.isEmpty(blackWhiteListModel.getName()) ? blackWhiteListModel.getAddress() : blackWhiteListModel.getName());
                C6843d.m19605a(BlackListActivity.this, 2131558443, 2131558444, 2131558496, 2131558513, new DialogInterface$OnClickListenerC9059a(this), new DialogInterface$OnClickListenerC9060b(blackWhiteListModel, arrayList));
            } else if (BlackListActivity.this.f35323I.m19965a(blackWhiteListModel)) {
                if (arrayList.size() > 0) {
                    new ArrayList().add(blackWhiteListModel);
                    BlackListActivity.this.f35325K = new C9064p(BlackListActivity.this, null);
                    try {
                        BlackListActivity.this.f35325K.m3194b(new Object[0]);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    BlackListActivity.this.m3533s();
                    BlackListActivity.this.onResume();
                    BlackListActivity.this.f35332R.dismiss();
                } else {
                    new ArrayList().add(blackWhiteListModel);
                    BlackListActivity.this.f35325K = new C9064p(BlackListActivity.this, null);
                    try {
                        BlackListActivity.this.f35325K.m3194b(new Object[0]);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    BlackListActivity.this.m3533s();
                    BlackListActivity.this.f35332R.dismiss();
                }
                C6741c.m19914a(BlackListActivity.this.f35328N, "com.netqin.antiharass.refresh");
            } else {
                BlackListActivity.this.f35332R.dismiss();
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlackListActivity$m */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlackListActivity$m.class */
    public class C9061m implements TextWatcher {
        public C9061m() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            C6843d.m19598a(BlackListActivity.this.f35332R, editable.toString());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlackListActivity$n */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlackListActivity$n.class */
    public class C9062n implements AdapterView.OnItemClickListener {
        public C9062n() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            BlackListActivity.this.m3556b((BlackWhiteListModel) BlackListActivity.this.f35327M.get(i));
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlackListActivity$o */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlackListActivity$o.class */
    public class View$OnClickListenerC9063o implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ BlackWhiteListModel f35363a;

        public View$OnClickListenerC9063o(BlackWhiteListModel blackWhiteListModel) {
            this.f35363a = blackWhiteListModel;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BlackListActivity.this.m3558a(this.f35363a);
            BlackListActivity.this.f35331Q.dismiss();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlackListActivity$p */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlackListActivity$p.class */
    public class C9064p extends AsyncTask<Object, Object, Object> {
        public C9064p() {
        }

        public /* synthetic */ C9064p(BlackListActivity blackListActivity, View$OnClickListenerC9053g gVar) {
            this();
        }

        @Override // com.netqin.p525cm.utils.AsyncTask
        /* renamed from: a */
        public Object mo3198a(Object... objArr) {
            BlackListActivity blackListActivity = BlackListActivity.this;
            blackListActivity.f35327M = blackListActivity.f35323I.m19975a(1);
            BlackListActivity blackListActivity2 = BlackListActivity.this;
            blackListActivity2.f35327M = blackListActivity2.f35323I.m19961a(BlackListActivity.this.f35327M);
            if (BlackListActivity.this.f35327M != null) {
                BlackListActivity.this.f35324J = new C6773c(BlackListActivity.this.f35328N, BlackListActivity.this.f35327M, BlackListActivity.this);
            }
            return objArr;
        }

        @Override // com.netqin.p525cm.utils.AsyncTask
        /* renamed from: c */
        public void mo3193c() {
            if (BlackListActivity.this.m3534r() > 0) {
                BlackListActivity.this.m3528x();
            }
        }

        @Override // com.netqin.p525cm.utils.AsyncTask
        /* renamed from: c */
        public void mo3191c(Object obj) {
            BlackListActivity blackListActivity = BlackListActivity.this;
            if (blackListActivity.f35627s) {
                blackListActivity.m3533s();
                BlackListActivity.this.f35325K = null;
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlackListActivity$q */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlackListActivity$q.class */
    public class C9065q extends BroadcastReceiver {
        public C9065q() {
        }

        public /* synthetic */ C9065q(BlackListActivity blackListActivity, View$OnClickListenerC9053g gVar) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.netqin.antiharass.refresh".equals(intent.getAction())) {
                BlackListActivity.this.m3533s();
            }
        }
    }

    /* renamed from: a */
    public void m3558a(BlackWhiteListModel blackWhiteListModel) {
        DialogC6776a.C6777a aVar = new DialogC6776a.C6777a(this);
        if (1 == blackWhiteListModel.getType()) {
            aVar.m19831b(2131558497);
            aVar.m19834a(this.f35328N.getString(2131558451));
        } else {
            aVar.m19831b(2131558497);
            aVar.m19834a(this.f35328N.getString(2131558451));
        }
        aVar.m19836a(2131558513, new DialogInterface$OnClickListenerC9048b(blackWhiteListModel));
        aVar.m19830b(2131558496, new DialogInterface$OnClickListenerC9049c());
        aVar.m19838a().show();
    }

    /* renamed from: b */
    public final void m3556b(BlackWhiteListModel blackWhiteListModel) {
        DialogC6776a.C6777a aVar = new DialogC6776a.C6777a(this);
        this.f35331Q = aVar.m19838a();
        aVar.m19829b(!TextUtils.isEmpty(blackWhiteListModel.getName()) ? blackWhiteListModel.getName() : blackWhiteListModel.getAddress());
        View inflate = LayoutInflater.from(this).inflate(2131427380, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(2131230915);
        this.f35316B = textView;
        textView.setText(getString(2131558497));
        TextView textView2 = (TextView) inflate.findViewById(2131230924);
        this.f35318D = textView2;
        textView2.setText(getString(2131558459));
        this.f35316B.setOnClickListener(new View$OnClickListenerC9063o(blackWhiteListModel));
        this.f35318D.setOnClickListener(new View$OnClickListenerC9047a(blackWhiteListModel));
        aVar.m19835a(inflate);
        DialogC6776a a = aVar.m19838a();
        this.f35331Q = a;
        a.show();
    }

    /* renamed from: c */
    public final void m3555c(int i) {
        DialogC6776a.C6777a aVar = new DialogC6776a.C6777a(this);
        aVar.m19829b(getString(2131558443));
        View inflate = LayoutInflater.from(this).inflate(2131427374, (ViewGroup) null);
        this.f35338x = (EditText) inflate.findViewById(2131231067);
        this.f35339y = (EditText) inflate.findViewById(2131231086);
        aVar.m19835a(inflate);
        DialogInterface$OnClickListenerC9057k kVar = new DialogInterface$OnClickListenerC9057k();
        DialogInterface$OnClickListenerC9058l lVar = new DialogInterface$OnClickListenerC9058l(i);
        aVar.m19828b(getString(2131558496), kVar);
        aVar.m19833a(getString(2131558494), lVar);
        this.f35332R = aVar.m19838a();
        this.f35339y.addTextChangedListener(new C9061m());
        C6843d.m19598a(this.f35332R, this.f35339y.getText().toString());
        this.f35332R.show();
    }

    /* renamed from: c */
    public void m3553c(BlackWhiteListModel blackWhiteListModel) {
        String name = !TextUtils.isEmpty(blackWhiteListModel.getName()) ? blackWhiteListModel.getName() : blackWhiteListModel.getAddress();
        DialogC6776a.C6777a aVar = new DialogC6776a.C6777a(this);
        aVar.m19829b(getString(2131558459));
        View inflate = LayoutInflater.from(this).inflate(2131427402, (ViewGroup) null);
        EditText editText = (EditText) inflate.findViewById(2131231044);
        this.f35319E = editText;
        editText.setText(name);
        C6843d.m19599a(this.f35319E);
        this.f35320F = (EditText) inflate.findViewById(2131231088);
        TextView textView = (TextView) inflate.findViewById(2131231089);
        this.f35317C = textView;
        textView.setText(2131558460);
        this.f35320F.setText(blackWhiteListModel.getAddress());
        aVar.m19835a(inflate);
        aVar.m19836a(2131558513, new DialogInterface$OnClickListenerC9050d(blackWhiteListModel));
        aVar.m19830b(2131558496, new DialogInterface$OnClickListenerC9051e());
        aVar.m19838a().show();
    }

    /* renamed from: d */
    public void m3552d(int i) {
        if (CBPermissionsHelper.m3293a() || !CBPermissionsHelper.m3285c()) {
            CBPermissionsHelper.m3289a(this, new C9052f(i));
        } else if (!this.f35329O) {
            this.f35329O = true;
            m3550e(112);
        }
    }

    /* renamed from: e */
    public void m3550e(int i) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.addFlags(1082458112);
        intent.setData(Uri.parse("package:" + getPackageName()));
        startActivityForResult(intent, i);
        overridePendingTransition(0, 0);
    }

    /* renamed from: n */
    public final void m3540n() {
        if (this.f35323I.m19942e() <= 0) {
            Intent intent = new Intent(this.f35328N, EmptyAddFromActivity.class);
            intent.putExtra("source_type", 1);
            intent.putExtra("black_white_list_type", 1);
            startActivityForResult(intent, 0);
            return;
        }
        Intent intent2 = new Intent(this.f35328N, AddFromCallLogActivity.class);
        intent2.putExtra("black_white_list_type", 1);
        startActivityForResult(intent2, 0);
    }

    /* renamed from: o */
    public final void m3538o() {
        if (this.f35323I.m19939f() == null || this.f35323I.m19939f().getCount() <= 0) {
            Intent intent = new Intent(this.f35328N, EmptyAddFromActivity.class);
            intent.putExtra("source_type", 2);
            intent.putExtra("black_white_list_type", 1);
            startActivityForResult(intent, 0);
            return;
        }
        Intent intent2 = new Intent(this.f35328N, AddFromContactsActivity.class);
        intent2.putExtra("black_white_list_type", 1);
        startActivityForResult(intent2, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 111) {
            if (CBPermissionsHelper.m3287b()) {
                m3540n();
            }
            DialogC6776a aVar = this.f35331Q;
            if (aVar != null) {
                aVar.dismiss();
            }
        } else if (i == 112) {
            this.f35329O = false;
            if (CBPermissionsHelper.m3293a()) {
                m3538o();
            }
            DialogC6776a aVar2 = this.f35331Q;
            if (aVar2 != null) {
                aVar2.dismiss();
            }
        }
        if (i2 == -1 && intent != null) {
            ArrayList arrayList = (ArrayList) intent.getSerializableExtra("sign_extra_name");
            if (arrayList != null) {
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    if (this.f35327M != null) {
                        for (int i4 = 0; i4 < this.f35327M.size(); i4++) {
                            if (C6864a.m19519b(this.f35327M.get(i4).getAddress()).equals(C6864a.m19519b(((BlackWhiteListModel) arrayList.get(i3)).getAddress()))) {
                                this.f35327M.remove(i4);
                            }
                        }
                        this.f35327M.add(0, arrayList.get(i3));
                    }
                }
            }
            C6773c cVar = this.f35324J;
            if (cVar != null) {
                cVar.notifyDataSetChanged();
            }
            if (intent != null) {
                int intExtra = intent.getIntExtra("WhichWayToAdd", 0);
                C6850i.m19577b("BlickListActivity", "来自界面  whichActivityFrom = " + intExtra);
            }
            m3533s();
        }
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131427379);
        Context applicationContext = getApplicationContext();
        this.f35328N = applicationContext;
        this.f35323I = C6727b.m19968a(applicationContext);
        m3532t();
        m3531u();
        m3530v();
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m3527y();
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        C9064p pVar = new C9064p(this, null);
        this.f35325K = pVar;
        try {
            pVar.m3194b(new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: p */
    public final void m3536p() {
        m3555c(1);
    }

    /* renamed from: q */
    public final void m3535q() {
        DialogC6778b bVar = this.f35336v;
        if (bVar != null) {
            bVar.dismiss();
        }
    }

    /* renamed from: r */
    public final int m3534r() {
        return this.f35323I.m19935g(1);
    }

    /* renamed from: s */
    public final void m3533s() {
        m3535q();
        List<BlackWhiteListModel> list = this.f35327M;
        if (list == null || !list.isEmpty()) {
            this.f35334t.setVisibility(0);
            this.f35337w.setVisibility(8);
            this.f35335u.setAdapter((ListAdapter) this.f35324J);
            return;
        }
        this.f35334t.setVisibility(8);
        this.f35337w.setVisibility(0);
    }

    /* renamed from: t */
    public final void m3532t() {
        this.f35326L = new C9065q(this, null);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.netqin.antiharass.delete");
        intentFilter.addAction("com.netqin.antiharass.insert");
        intentFilter.addAction("com.netqin.antiharass.refresh");
        registerReceiver(this.f35326L, intentFilter);
    }

    /* renamed from: u */
    public final void m3531u() {
        ((TextView) findViewById(2131230784)).setText(2131558452);
        ((RelativeLayout) findViewById(2131231075)).setOnClickListener(this.f35330P);
    }

    /* renamed from: v */
    public final void m3530v() {
        this.f35334t = (LinearLayout) findViewById(2131230841);
        ListView listView = (ListView) findViewById(2131231036);
        this.f35335u = listView;
        listView.setOnItemClickListener(this.f35333S);
        this.f35335u.setCacheColorHint(0);
        TextView textView = (TextView) findViewById(2131231224);
        this.f35337w = textView;
        textView.setVisibility(0);
        ((FrameLayout) findViewById(2131231079)).setVisibility(0);
        ((LinearLayout) findViewById(2131231015)).setVisibility(0);
        this.f35337w.setText(2131558648);
        ImageView imageView = (ImageView) findViewById(2131230988);
        this.f35322H = imageView;
        imageView.setVisibility(0);
        this.f35322H.setImageResource(2131165479);
        View findViewById = findViewById(2131230990);
        findViewById.setVisibility(0);
        findViewById.setOnClickListener(this.f35330P);
    }

    /* renamed from: w */
    public final void m3529w() {
        DialogC6776a.C6777a aVar = new DialogC6776a.C6777a(this);
        aVar.m19831b(2131558443);
        View inflate = LayoutInflater.from(this).inflate(2131427368, (ViewGroup) null);
        this.f35340z = (TextView) inflate.findViewById(2131230864);
        this.f35315A = (TextView) inflate.findViewById(2131230898);
        this.f35321G = (TextView) inflate.findViewById(2131231280);
        this.f35340z.setOnClickListener(new View$OnClickListenerC9054h());
        this.f35315A.setOnClickListener(new View$OnClickListenerC9055i());
        this.f35321G.setOnClickListener(new View$OnClickListenerC9056j());
        aVar.m19835a(inflate);
        DialogC6776a a = aVar.m19838a();
        this.f35331Q = a;
        a.show();
    }

    /* renamed from: x */
    public final void m3528x() {
        DialogC6778b bVar = new DialogC6778b(this);
        this.f35336v = bVar;
        bVar.setCancelable(false);
        this.f35336v.show();
    }

    /* renamed from: y */
    public final void m3527y() {
        unregisterReceiver(this.f35326L);
    }
}
