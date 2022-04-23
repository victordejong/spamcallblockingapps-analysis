package com.netqin.p525cm.antiharass.p527ui.activity;

import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.netqin.p525cm.main.p529ui.BaseActivity;
import com.netqin.p525cm.p528db.model.BlackWhiteListModel;
import com.netqin.p525cm.utils.AsyncTask;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p131c.p431l.p432a.p442b.p445c.C6727b;
import p131c.p431l.p432a.p442b.p445c.C6741c;
import p131c.p431l.p432a.p442b.p448f.p450b.C6766a;
import p131c.p431l.p432a.p442b.p448f.p451c.DialogC6776a;
import p131c.p431l.p432a.p442b.p448f.p451c.DialogC6778b;
import p131c.p431l.p432a.p468n.C6850i;
import p131c.p431l.p432a.p468n.p469s.p472c.C6864a;
/* renamed from: com.netqin.cm.antiharass.ui.activity.AddFromCallLogActivity */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/AddFromCallLogActivity.class */
public class AddFromCallLogActivity extends BaseActivity {

    /* renamed from: A */
    public C9034j f35249A;

    /* renamed from: B */
    public Cursor f35250B;

    /* renamed from: C */
    public List<Integer> f35251C;

    /* renamed from: D */
    public ArrayList<BlackWhiteListModel> f35252D;

    /* renamed from: E */
    public int f35253E;

    /* renamed from: F */
    public int f35254F;

    /* renamed from: K */
    public C9035k f35259K;

    /* renamed from: M */
    public C9033i f35261M;

    /* renamed from: t */
    public LinearLayout f35262t;

    /* renamed from: u */
    public Button f35263u;

    /* renamed from: v */
    public Button f35264v;

    /* renamed from: w */
    public ListView f35265w;

    /* renamed from: x */
    public DialogC6778b f35266x;

    /* renamed from: y */
    public C6766a f35267y;

    /* renamed from: z */
    public C6727b f35268z;

    /* renamed from: G */
    public View.OnClickListener f35255G = new View$OnClickListenerC9027c();

    /* renamed from: H */
    public View.OnClickListener f35256H = new View$OnClickListenerC9028d();

    /* renamed from: I */
    public AdapterView.OnItemClickListener f35257I = new C9029e();

    /* renamed from: J */
    public boolean f35258J = false;

    /* renamed from: L */
    public Handler f35260L = new HandlerC9032h();

    /* renamed from: com.netqin.cm.antiharass.ui.activity.AddFromCallLogActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/AddFromCallLogActivity$a.class */
    public class View$OnClickListenerC9025a implements View.OnClickListener {
        public View$OnClickListenerC9025a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AddFromCallLogActivity.this.finish();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.AddFromCallLogActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/AddFromCallLogActivity$b.class */
    public class C9026b implements AbsListView.OnScrollListener {
        public C9026b() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            C6850i.m19580a("scrolling");
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            C6850i.m19580a("scroll_state_change_" + i);
            if (i == 0) {
                C6766a.f20867d = false;
                AddFromCallLogActivity.this.f35267y.notifyDataSetChanged();
                C6850i.m19580a("scroll_state_change_SCROLL_STATE_IDLE");
            } else if (i == 1) {
                C6766a.f20867d = true;
                C6850i.m19580a("scroll_state_change_SCROLL_STATE_TOUCH_SCROLL");
            } else if (i == 2) {
                C6766a.f20867d = true;
                C6850i.m19580a("scroll_state_change_SCROLL_STATE_FLING");
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.AddFromCallLogActivity$c */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/AddFromCallLogActivity$c.class */
    public class View$OnClickListenerC9027c implements View.OnClickListener {
        public View$OnClickListenerC9027c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AddFromCallLogActivity.this.setResult(0);
            AddFromCallLogActivity.this.finish();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.AddFromCallLogActivity$d */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/AddFromCallLogActivity$d.class */
    public class View$OnClickListenerC9028d implements View.OnClickListener {
        public View$OnClickListenerC9028d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!AddFromCallLogActivity.this.m3604t()) {
                AddFromCallLogActivity.this.f35259K = new C9035k(AddFromCallLogActivity.this, null);
                try {
                    AddFromCallLogActivity.this.f35259K.m3194b(new Object[0]);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.AddFromCallLogActivity$e */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/AddFromCallLogActivity$e.class */
    public class C9029e implements AdapterView.OnItemClickListener {
        public C9029e() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            AddFromCallLogActivity.this.m3629c(AddFromCallLogActivity.this.m3608r());
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.AddFromCallLogActivity$f */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/AddFromCallLogActivity$f.class */
    public class DialogInterface$OnClickListenerC9030f implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC9030f() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                AddFromCallLogActivity.this.f35261M = new C9033i(AddFromCallLogActivity.this, null);
                AddFromCallLogActivity.this.f35261M.m3194b(new Object[0]);
                dialogInterface.dismiss();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.AddFromCallLogActivity$g */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/AddFromCallLogActivity$g.class */
    public class DialogInterface$OnClickListenerC9031g implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC9031g() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.AddFromCallLogActivity$h */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/AddFromCallLogActivity$h.class */
    public class HandlerC9032h extends Handler {
        public HandlerC9032h() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.arg1;
            if (i == 1) {
                AddFromCallLogActivity.this.m3627d(1);
            } else if (i == 0) {
                AddFromCallLogActivity.this.m3627d(0);
            } else if (i == 10) {
                AddFromCallLogActivity.this.f35261M = new C9033i(AddFromCallLogActivity.this, null);
                try {
                    AddFromCallLogActivity.this.f35261M.m3194b(new Object[0]);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.AddFromCallLogActivity$i */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/AddFromCallLogActivity$i.class */
    public class C9033i extends AsyncTask<Object, Object, Object> {

        /* renamed from: o */
        public DialogC6778b f35277o;

        /* renamed from: p */
        public List<String> f35278p;

        public C9033i() {
            this.f35277o = new DialogC6778b(AddFromCallLogActivity.this);
        }

        public /* synthetic */ C9033i(AddFromCallLogActivity addFromCallLogActivity, View$OnClickListenerC9025a aVar) {
            this();
        }

        @Override // com.netqin.p525cm.utils.AsyncTask
        /* renamed from: a */
        public Object mo3198a(Object... objArr) {
            AddFromCallLogActivity.this.f35252D = new ArrayList();
            this.f35278p = AddFromCallLogActivity.this.m3616n();
            return objArr;
        }

        @Override // com.netqin.p525cm.utils.AsyncTask
        /* renamed from: c */
        public void mo3193c() {
            this.f35277o.setCancelable(false);
            this.f35277o.show();
            super.mo3193c();
        }

        @Override // com.netqin.p525cm.utils.AsyncTask
        /* renamed from: c */
        public void mo3191c(Object obj) {
            if (AddFromCallLogActivity.this.f35627s) {
                this.f35277o.dismiss();
                List<String> list = this.f35278p;
                if (list == null || list.size() <= 0) {
                    C6741c.m19914a(AddFromCallLogActivity.this.f35626r, "com.netqin.antiharass.refresh");
                    Intent intent = new Intent();
                    if (AddFromCallLogActivity.this.f35254F == 1) {
                        intent.setClass(AddFromCallLogActivity.this.f35626r, BlackListActivity.class);
                        AddFromCallLogActivity.this.startActivity(intent);
                    } else {
                        intent.putExtra("WhichWayToAdd", 1);
                        intent.putParcelableArrayListExtra("sign_extra_name", AddFromCallLogActivity.this.f35252D);
                        AddFromCallLogActivity.this.setResult(-1, intent);
                    }
                    AddFromCallLogActivity.this.finish();
                } else {
                    Intent intent2 = new Intent();
                    if (AddFromCallLogActivity.this.f35254F == 1) {
                        intent2.setClass(AddFromCallLogActivity.this.f35626r, BlackListActivity.class);
                        AddFromCallLogActivity.this.startActivity(intent2);
                    } else {
                        intent2.putExtra("WhichWayToAdd", 1);
                        intent2.putParcelableArrayListExtra("sign_extra_name", AddFromCallLogActivity.this.f35252D);
                        intent2.putStringArrayListExtra("namelist", (ArrayList) this.f35278p);
                        AddFromCallLogActivity.this.setResult(-1, intent2);
                    }
                    AddFromCallLogActivity.this.finish();
                }
                super.mo3191c((C9033i) obj);
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.AddFromCallLogActivity$j */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/AddFromCallLogActivity$j.class */
    public class C9034j extends AsyncTask<Void, Void, Void> {
        public C9034j() {
        }

        public /* synthetic */ C9034j(AddFromCallLogActivity addFromCallLogActivity, View$OnClickListenerC9025a aVar) {
            this();
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public Void mo3198a(Void... voidArr) {
            AddFromCallLogActivity.this.m3610q();
            return null;
        }

        /* renamed from: a */
        public void mo3191c(Void r8) {
            super.mo3191c((C9034j) r8);
            AddFromCallLogActivity.this.f35249A = null;
            AddFromCallLogActivity addFromCallLogActivity = AddFromCallLogActivity.this;
            if (addFromCallLogActivity.f35627s) {
                addFromCallLogActivity.m3612p();
                if (AddFromCallLogActivity.this.f35250B == null || AddFromCallLogActivity.this.f35250B.getCount() <= 0) {
                    AddFromCallLogActivity.this.f35262t.setVisibility(8);
                    AddFromCallLogActivity.this.f35264v.setVisibility(8);
                    AddFromCallLogActivity.this.f35263u.setVisibility(8);
                    return;
                }
                AddFromCallLogActivity.this.f35267y = new C6766a(AddFromCallLogActivity.this.f35626r, AddFromCallLogActivity.this.f35250B, false);
                AddFromCallLogActivity.this.f35262t.setVisibility(0);
                AddFromCallLogActivity.this.f35263u.setVisibility(0);
                AddFromCallLogActivity.this.f35264v.setVisibility(0);
                AddFromCallLogActivity.this.f35265w.setAdapter((ListAdapter) AddFromCallLogActivity.this.f35267y);
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.AddFromCallLogActivity$k */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/AddFromCallLogActivity$k.class */
    public class C9035k extends AsyncTask<Object, Object, Object> {
        public C9035k() {
        }

        public /* synthetic */ C9035k(AddFromCallLogActivity addFromCallLogActivity, View$OnClickListenerC9025a aVar) {
            this();
        }

        @Override // com.netqin.p525cm.utils.AsyncTask
        /* renamed from: a */
        public Object mo3198a(Object... objArr) {
            AddFromCallLogActivity.this.f35252D = new ArrayList();
            if (!AddFromCallLogActivity.this.m3614o()) {
                Message message = new Message();
                message.arg1 = 10;
                AddFromCallLogActivity.this.f35260L.sendMessage(message);
            }
            return objArr;
        }

        @Override // com.netqin.p525cm.utils.AsyncTask
        /* renamed from: c */
        public void mo3193c() {
            super.mo3193c();
            C6850i.m19579a("AddFromCallLogActivity", "CheckAdd2BlackWhiteListAsyncTask onPreExcute()");
        }

        @Override // com.netqin.p525cm.utils.AsyncTask
        /* renamed from: c */
        public void mo3191c(Object obj) {
            super.mo3191c((C9035k) obj);
            AddFromCallLogActivity.this.f35259K = null;
        }
    }

    /* renamed from: c */
    public final void m3629c(int i) {
        boolean z;
        String string = getString(2131558494);
        if (i > 0) {
            z = true;
            string = string + " (" + i + ")";
        } else {
            z = false;
        }
        this.f35263u.setEnabled(z);
        this.f35263u.setClickable(z);
        this.f35263u.setText(string);
    }

    /* renamed from: d */
    public void m3627d(int i) {
        DialogC6776a.C6777a aVar = new DialogC6776a.C6777a(this);
        if (1 == i) {
            aVar.m19829b(getString(2131558443));
            aVar.m19834a(getString(2131558444));
        } else if (i == 0) {
            aVar.m19829b(getString(2131558449));
            aVar.m19834a(getString(2131558450));
        }
        aVar.m19836a(2131558513, new DialogInterface$OnClickListenerC9030f());
        aVar.m19830b(2131558496, new DialogInterface$OnClickListenerC9031g());
        aVar.m19838a().show();
    }

    /* renamed from: n */
    public List<String> m3616n() {
        ArrayList arrayList = new ArrayList();
        m3606s();
        HashMap hashMap = new HashMap();
        int size = this.f35251C.size();
        hashMap.clear();
        for (int i = 0; i < size; i++) {
            Cursor cursor = (Cursor) this.f35265w.getItemAtPosition(this.f35251C.get(i).intValue());
            if (cursor != null) {
                String string = cursor.getString(cursor.getColumnIndex("number"));
                String b = C6864a.m19519b(string);
                BlackWhiteListModel blackWhiteListModel = new BlackWhiteListModel();
                if (!hashMap.containsKey(b)) {
                    hashMap.put(b, string);
                    blackWhiteListModel.setName(this.f35268z.m19955b(string));
                    blackWhiteListModel.setAddress(string);
                    blackWhiteListModel.setType(this.f35253E);
                    if (C6741c.m19913a(blackWhiteListModel, this.f35253E, this.f35268z)) {
                        arrayList.add(TextUtils.isEmpty(blackWhiteListModel.getName()) ? blackWhiteListModel.getAddress() : blackWhiteListModel.getName());
                    }
                    this.f35268z.m19965a(blackWhiteListModel);
                    this.f35252D.add(blackWhiteListModel);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: o */
    public final boolean m3614o() {
        ArrayList arrayList = new ArrayList();
        m3606s();
        HashMap hashMap = new HashMap();
        int size = this.f35251C.size();
        hashMap.clear();
        BlackWhiteListModel blackWhiteListModel = new BlackWhiteListModel();
        for (int i = 0; i < size; i++) {
            Cursor cursor = (Cursor) this.f35265w.getItemAtPosition(this.f35251C.get(i).intValue());
            if (cursor != null) {
                String string = cursor.getString(cursor.getColumnIndex("number"));
                String b = C6864a.m19519b(string);
                if (!hashMap.containsKey(b)) {
                    hashMap.put(b, string);
                    blackWhiteListModel.setName(this.f35268z.m19955b(string));
                    blackWhiteListModel.setAddress(string);
                    blackWhiteListModel.setType(this.f35253E);
                    if (C6741c.m19911b(blackWhiteListModel, this.f35253E, this.f35268z)) {
                        arrayList.add(TextUtils.isEmpty(blackWhiteListModel.getName()) ? blackWhiteListModel.getAddress() : blackWhiteListModel.getName());
                        this.f35258J = true;
                    }
                }
            }
        }
        if (!this.f35258J) {
            return false;
        }
        Message message = new Message();
        message.arg1 = blackWhiteListModel.getType();
        this.f35260L.sendMessage(message);
        return true;
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131427371);
        this.f35268z = C6727b.m19968a(this.f35626r);
        this.f35251C = new ArrayList();
        this.f35253E = getIntent().getIntExtra("black_white_list_type", 1);
        this.f35254F = getIntent().getIntExtra("block_call_history", 0);
        m3600x();
        m3602v();
        m3601w();
        m3603u();
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    /* renamed from: p */
    public final void m3612p() {
        DialogC6778b bVar = this.f35266x;
        if (bVar != null) {
            bVar.dismiss();
        }
    }

    /* renamed from: q */
    public final void m3610q() {
        this.f35250B = this.f35268z.m19952c();
    }

    /* renamed from: r */
    public final int m3608r() {
        int i = 0;
        for (int i2 = 0; i2 < this.f35265w.getCount(); i2++) {
            i = i;
            if (this.f35265w.isItemChecked(i2)) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: s */
    public final int m3606s() {
        this.f35251C.clear();
        int count = this.f35265w.getCount();
        for (int i = 0; i < count; i++) {
            if (this.f35265w.isItemChecked(i)) {
                this.f35251C.add(Integer.valueOf(i));
            }
        }
        return this.f35251C.size();
    }

    /* renamed from: t */
    public final boolean m3604t() {
        return m3608r() == 0;
    }

    /* renamed from: u */
    public final void m3603u() {
        if (this.f35249A == null) {
            C9034j jVar = new C9034j(this, null);
            this.f35249A = jVar;
            try {
                jVar.m3194b((Object[]) new Void[0]);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: v */
    public final void m3602v() {
        ((TextView) findViewById(2131230784)).setText(2131558446);
        ((FrameLayout) findViewById(2131231075)).setOnClickListener(new View$OnClickListenerC9025a());
    }

    /* renamed from: w */
    public final void m3601w() {
        this.f35262t = (LinearLayout) findViewById(2131230873);
        this.f35263u = (Button) findViewById(2131230858);
        this.f35264v = (Button) findViewById(2131230859);
        this.f35265w = (ListView) findViewById(2131231037);
        this.f35264v.setOnClickListener(this.f35255G);
        m3629c(0);
        this.f35263u.setOnClickListener(this.f35256H);
        this.f35265w.setChoiceMode(2);
        this.f35265w.setOnItemClickListener(this.f35257I);
        this.f35265w.setOnScrollListener(new C9026b());
    }

    /* renamed from: x */
    public final void m3600x() {
        DialogC6778b bVar = new DialogC6778b(this);
        this.f35266x = bVar;
        bVar.show();
    }
}
