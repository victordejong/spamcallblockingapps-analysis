package gogolook.callgogolook2.myprofile;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.os.Messenger;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import com.facebook.Profile;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$menu;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.ReportDialogActivity;
import gogolook.callgogolook2.app.WhoscallActivity;
import gogolook.callgogolook2.gson.DataUserReport;
import gogolook.callgogolook2.gson.NumberInfo;
import java.io.File;
import java.util.Locale;
import okhttp3.Headers;
import org.json.JSONObject;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.C11086o;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p507f0.AbstractC12383b;
import p459j.p460a.p507f0.C12378a;
import p459j.p460a.p518j.p520f.C12484b;
import p459j.p460a.p530k.AbstractAsyncTaskC12818a;
import p459j.p460a.p533l.HandlerC12947l;
import p459j.p460a.p536l0.C13008c;
import p459j.p460a.p538m0.C13018a;
import p459j.p460a.p582w0.C13884a4;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14092n3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p596x.C14376j;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.p617p.C14687h;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/myprofile/FlagActivity.class */
public class FlagActivity extends WhoscallActivity {

    /* renamed from: e */
    public Activity f11935e;

    /* renamed from: f */
    public TextView f11936f;

    /* renamed from: g */
    public TextView f11937g;

    /* renamed from: h */
    public TextView f11938h;

    /* renamed from: i */
    public TextView f11939i;

    /* renamed from: j */
    public View f11940j;

    /* renamed from: k */
    public View f11941k;

    /* renamed from: l */
    public View f11942l;

    /* renamed from: m */
    public View f11943m;

    /* renamed from: n */
    public EditText f11944n;

    /* renamed from: o */
    public EditText f11945o;

    /* renamed from: p */
    public EditText f11946p;

    /* renamed from: q */
    public ProgressDialog f11947q;

    /* renamed from: r */
    public int f11948r = 0;

    /* renamed from: s */
    public String f11949s;

    /* renamed from: t */
    public File f11950t;

    /* renamed from: u */
    public String f11951u;

    /* renamed from: v */
    public String f11952v;

    /* renamed from: w */
    public String f11953w;

    /* renamed from: x */
    public boolean f11954x;

    /* renamed from: gogolook.callgogolook2.myprofile.FlagActivity$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/myprofile/FlagActivity$a.class */
    public class View$OnClickListenerC4844a implements View.OnClickListener {

        /* renamed from: gogolook.callgogolook2.myprofile.FlagActivity$a$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/myprofile/FlagActivity$a$a.class */
        public class HandlerC4845a extends HandlerC12947l {

            /* renamed from: gogolook.callgogolook2.myprofile.FlagActivity$a$a$a */
            /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/myprofile/FlagActivity$a$a$a.class */
            public class C4846a extends C11086o {
                public C4846a() {
                }

                @Override // p459j.p460a.p461a0.C11040b
                /* renamed from: b */
                public void mo1836b(String str, NumberInfo numberInfo) {
                    if (numberInfo.m28370Z() && "FRAUD".equals(numberInfo.whoscall.mySpam.reason)) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("number", FlagActivity.this.f11953w);
                        FlagActivity.this.getContentResolver().insert(C13018a.f29446a, contentValues);
                    }
                }
            }

            public HandlerC4845a() {
            }

            @Override // p459j.p460a.p533l.HandlerC12947l
            /* renamed from: a */
            public void mo4944a(Object obj) {
                C11052i.m10328e().m10340a(FlagActivity.this.f11953w, new C4846a(), 0, EnumC11047e.Ndp);
                FlagActivity.this.finish();
            }
        }

        public View$OnClickListenerC4844a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HandlerC4845a aVar = new HandlerC4845a();
            NumberInfo e = C11052i.m10328e().m10327e(FlagActivity.this.f11953w);
            FlagActivity flagActivity = FlagActivity.this;
            DataUserReport dataUserReport = new DataUserReport(flagActivity.f11952v, flagActivity.f11953w, e != null ? e.m28393C() : "", e != null ? e.m28383M() : "", DataUserReport.Source.OTHER);
            Intent intent = new Intent(FlagActivity.this.f11935e, ReportDialogActivity.class);
            Bundle bundle = new Bundle();
            int i = 1;
            bundle.putBoolean("block", true);
            bundle.putString("blockE164", FlagActivity.this.f11953w);
            bundle.putString("blockNumber", C14108o4.m2473m(FlagActivity.this.f11953w));
            bundle.putBoolean("blockIsforceblock", false);
            bundle.putParcelable("blockHandler", new Messenger(aVar));
            bundle.putString("dataUserReport", DataUserReport.m28451k(dataUserReport));
            if (C14017g4.m2834B()) {
                i = 9;
            }
            bundle.putInt("block_default_selection", i);
            intent.putExtras(bundle);
            intent.setFlags(268435456);
            FlagActivity.this.startActivity(intent);
        }
    }

    /* renamed from: gogolook.callgogolook2.myprofile.FlagActivity$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/myprofile/FlagActivity$b.class */
    public class View$OnClickListenerC4847b implements View.OnClickListener {
        public View$OnClickListenerC4847b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ViewGroup.LayoutParams layoutParams = FlagActivity.this.f11940j.getLayoutParams();
            layoutParams.height = C14217x3.m2201a(65.0f);
            FlagActivity.this.f11940j.setLayoutParams(layoutParams);
            FlagActivity.this.f11944n.setVisibility(8);
            ViewGroup.LayoutParams layoutParams2 = FlagActivity.this.f11941k.getLayoutParams();
            layoutParams2.height = -2;
            FlagActivity.this.f11941k.setLayoutParams(layoutParams2);
            FlagActivity.this.f11945o.setVisibility(0);
            FlagActivity flagActivity = FlagActivity.this;
            flagActivity.m26917a(flagActivity.f11945o);
            ViewGroup.LayoutParams layoutParams3 = FlagActivity.this.f11942l.getLayoutParams();
            layoutParams3.height = C14217x3.m2201a(65.0f);
            FlagActivity.this.f11942l.setLayoutParams(layoutParams3);
            FlagActivity.this.f11946p.setVisibility(8);
            FlagActivity.this.f11937g.setTextColor(Color.parseColor("#333333"));
            FlagActivity.this.f11938h.setTextColor(Color.parseColor("#11aa11"));
            FlagActivity.this.f11939i.setTextColor(Color.parseColor("#333333"));
            FlagActivity.this.f11948r = 1;
        }
    }

    /* renamed from: gogolook.callgogolook2.myprofile.FlagActivity$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/myprofile/FlagActivity$c.class */
    public class View$OnClickListenerC4848c implements View.OnClickListener {
        public View$OnClickListenerC4848c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ViewGroup.LayoutParams layoutParams = FlagActivity.this.f11940j.getLayoutParams();
            layoutParams.height = C14217x3.m2201a(65.0f);
            FlagActivity.this.f11940j.setLayoutParams(layoutParams);
            FlagActivity.this.f11944n.setVisibility(8);
            ViewGroup.LayoutParams layoutParams2 = FlagActivity.this.f11941k.getLayoutParams();
            layoutParams2.height = C14217x3.m2201a(65.0f);
            FlagActivity.this.f11941k.setLayoutParams(layoutParams2);
            FlagActivity.this.f11945o.setVisibility(8);
            ViewGroup.LayoutParams layoutParams3 = FlagActivity.this.f11942l.getLayoutParams();
            layoutParams3.height = -2;
            FlagActivity.this.f11942l.setLayoutParams(layoutParams3);
            FlagActivity.this.f11946p.setVisibility(0);
            FlagActivity flagActivity = FlagActivity.this;
            flagActivity.m26917a(flagActivity.f11946p);
            FlagActivity.this.f11937g.setTextColor(Color.parseColor("#333333"));
            FlagActivity.this.f11938h.setTextColor(Color.parseColor("#333333"));
            FlagActivity.this.f11939i.setTextColor(Color.parseColor("#11aa11"));
            FlagActivity.this.f11948r = 2;
        }
    }

    /* renamed from: gogolook.callgogolook2.myprofile.FlagActivity$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/myprofile/FlagActivity$d.class */
    public class C4849d implements TextWatcher {
        public C4849d() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            FlagActivity.this.invalidateOptionsMenu();
        }
    }

    /* renamed from: gogolook.callgogolook2.myprofile.FlagActivity$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/myprofile/FlagActivity$e.class */
    public class DialogInterface$OnClickListenerC4850e implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC4850e() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            FlagActivity.this.m26898r();
        }
    }

    /* renamed from: gogolook.callgogolook2.myprofile.FlagActivity$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/myprofile/FlagActivity$f.class */
    public class C4851f extends AbstractC12383b {

        /* renamed from: gogolook.callgogolook2.myprofile.FlagActivity$f$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/myprofile/FlagActivity$f$a.class */
        public class RunnableC4852a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ int f11963a;

            public RunnableC4852a(int i) {
                this.f11963a = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                C14687h.m861a(FlagActivity.this.f11935e, String.format(WhoscallActivity.m28686b(R$string.error_code_client), Integer.valueOf(this.f11963a)), 1).m858c();
            }
        }

        public C4851f() {
        }

        @Override // p459j.p460a.p507f0.AbstractC12383b
        /* renamed from: a */
        public void mo3002a(int i, String str, Headers headers) throws Exception {
            if (!FlagActivity.this.f11954x) {
                FlagActivity.this.f11954x = true;
                String obj = FlagActivity.this.f11948r == 0 ? FlagActivity.this.f11944n.getText().toString() : FlagActivity.this.f11948r == 1 ? FlagActivity.this.f11945o.getText().toString() : FlagActivity.this.f11948r == 2 ? FlagActivity.this.f11946p.getText().toString() : "";
                if (i == 200 || i == 404) {
                    FlagActivity flagActivity = FlagActivity.this;
                    C14217x3.m2181a(new AsyncTaskC4854h(flagActivity.f11935e, flagActivity.f11953w, flagActivity.f11951u, obj, flagActivity.f11948r, FlagActivity.this.f11950t.getName()));
                    return;
                }
                FlagActivity.this.runOnUiThread(new RunnableC4852a(i));
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.myprofile.FlagActivity$g */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/myprofile/FlagActivity$g.class */
    public static final class DialogInterface$OnClickListenerC4853g implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Activity f11965a;

        public DialogInterface$OnClickListenerC4853g(Activity activity) {
            this.f11965a = activity;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C14376j.m1453b(this.f11965a, true);
        }
    }

    /* renamed from: gogolook.callgogolook2.myprofile.FlagActivity$h */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/myprofile/FlagActivity$h.class */
    public class AsyncTaskC4854h extends AbstractAsyncTaskC12818a {

        /* renamed from: l */
        public String f11966l;

        /* renamed from: m */
        public String f11967m;

        /* renamed from: n */
        public String f11968n;

        /* renamed from: o */
        public String f11969o;

        /* renamed from: p */
        public int f11970p;

        public AsyncTaskC4854h(Context context, String str, String str2, String str3, int i, String str4) {
            super(context, false, C14206w4.m2225a((int) R$string.commit_waiting));
            this.f11966l = str2;
            this.f11967m = str3;
            this.f11968n = str4;
            this.f11970p = i;
            this.f11969o = str;
        }

        @Override // p459j.p460a.p530k.AbstractAsyncTaskC12818a
        /* renamed from: a */
        public C12378a mo2365a() throws Exception {
            String upperCase = C14017g4.m2810n().toUpperCase(Locale.US);
            String str = this.f11969o;
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("uuid", C14217x3.m2118p() + System.currentTimeMillis());
            jSONObject.put("current_response", this.f11966l);
            jSONObject.put("reason", this.f11967m);
            jSONObject.put("report_type", this.f11970p);
            jSONObject.put("screenshot_filename", this.f11968n);
            return C12378a.m6276a(C12378a.EnumC12382d.POST_REPORT_CARD, jSONObject, upperCase, str);
        }

        @Override // p459j.p460a.p530k.AbstractAsyncTaskC12818a
        /* renamed from: b */
        public boolean mo2364b(C12378a.C12380b bVar) throws Exception {
            if (FlagActivity.this.f11947q != null && FlagActivity.this.f11947q.isShowing()) {
                FlagActivity.this.f11947q.dismiss();
            }
            if (bVar == null) {
                return false;
            }
            int i = bVar.f27921b;
            if (i == 618) {
                C14687h.m862a(FlagActivity.this.f11935e, (int) R$string.card_flag_flagged_content, 1).m858c();
            }
            if (i != 618 && i != 200) {
                return false;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("number", this.f11969o);
            FlagActivity.this.getContentResolver().insert(C13018a.f29446a, contentValues);
            File file = FlagActivity.this.f11950t;
            if (file != null && file.exists()) {
                FlagActivity.this.f11950t.delete();
            }
            FlagActivity flagActivity = FlagActivity.this;
            flagActivity.f11953w = null;
            flagActivity.f11953w = null;
            flagActivity.finish();
            return true;
        }
    }

    /* renamed from: a */
    public static void m26920a(Activity activity, String str, String str2, String str3, boolean z) {
        if (str2 != null && str3 != null) {
            if (!C14137r4.m2369i()) {
                DialogC14618f fVar = new DialogC14618f(activity);
                fVar.m995c(R$string.card_flag_nonregister_content);
                fVar.m999b(R$string.card_flag_nonregister_register_btn, new DialogInterface$OnClickListenerC4853g(activity));
                fVar.m1007a(R$string.cancel, (DialogInterface.OnClickListener) null);
                fVar.show();
            } else if (m26919a(activity, str2)) {
                C14687h.m862a(activity, (int) R$string.card_flag_flagged_content, 0).m858c();
            } else {
                C13884a4.m3188a(activity);
                Intent intent = new Intent(activity, FlagActivity.class);
                intent.putExtra("intent_is_flag_photo", z);
                intent.putExtra("intent_number", str);
                intent.putExtra("intent_e164", str2);
                intent.putExtra("intent_ndp_response", str3);
                activity.startActivity(intent);
            }
        }
    }

    /* renamed from: a */
    public static boolean m26919a(Context context, String str) {
        ContentResolver contentResolver = context.getContentResolver();
        Uri uri = C13018a.f29446a;
        contentResolver.delete(uri, "createtime< datetime('now', '-" + String.valueOf(2592000L) + " seconds')", null);
        boolean z = false;
        Cursor query = context.getContentResolver().query(C13018a.f29446a, new String[]{"number"}, "number = ? ", new String[]{C14108o4.m2474l(str)}, null);
        if (query != null) {
            z = query.moveToFirst();
            query.close();
        }
        return z;
    }

    /* renamed from: a */
    public final void m26918a(Menu menu) {
        for (int i = 0; i < menu.size(); i++) {
            if (menu.getItem(i).getItemId() == 2131362882) {
                if (m26901o()) {
                    menu.getItem(i).setEnabled(true);
                } else {
                    menu.getItem(i).setEnabled(false);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m26917a(EditText editText) {
        if (editText.requestFocus()) {
            ((InputMethodManager) getSystemService("input_method")).showSoftInput(editText, 1);
        }
    }

    /* renamed from: o */
    public final boolean m26901o() {
        if (this.f11948r == 0 && !TextUtils.isEmpty(this.f11944n.getText())) {
            return true;
        }
        if (this.f11948r != 1 || TextUtils.isEmpty(this.f11945o.getText())) {
            return this.f11948r == 2 && !TextUtils.isEmpty(this.f11946p.getText());
        }
        return true;
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (m26901o()) {
            C14137r4.m2376b(this);
        } else {
            C14217x3.m2167b((Activity) this);
        }
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f11935e = this;
        this.f11952v = getIntent().getStringExtra("intent_number");
        this.f11953w = getIntent().getStringExtra("intent_e164");
        this.f11951u = getIntent().getStringExtra("intent_ndp_response");
        if (TextUtils.isEmpty(this.f11951u) || TextUtils.isEmpty(this.f11953w)) {
            finish();
        }
        m26900p();
        m26899q();
        if (getIntent().getBooleanExtra("intent_is_flag_photo", false)) {
            this.f11940j.setVisibility(8);
            this.f11943m.setVisibility(8);
        }
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R$menu.option_flag, menu);
        m26918a(menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId != 16908332) {
            if (itemId == 2131362882) {
                int i = this.f11948r;
                if (TextUtils.isEmpty(i == 0 ? this.f11944n.getText().toString().trim() : i == 1 ? this.f11945o.getText().toString().trim() : i == 2 ? this.f11946p.getText().toString().trim() : "")) {
                    C14687h.m862a(this.f11935e, (int) R$string.card_flag_empty_reason, 0).m858c();
                } else {
                    DialogC14618f fVar = new DialogC14618f(this.f11935e);
                    fVar.m998b(String.format(C14206w4.m2225a((int) R$string.card_flag_confirm_content), this.f11949s));
                    fVar.m999b(R$string.card_flag_confirm_submit_btn, new DialogInterface$OnClickListenerC4850e());
                    fVar.m1007a(R$string.cancel, (DialogInterface.OnClickListener) null);
                    fVar.show();
                    return true;
                }
            }
            return super.onOptionsItemSelected(menuItem);
        }
        onBackPressed();
        return true;
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        m26918a(menu);
        return super.onPrepareOptionsMenu(menu);
    }

    /* renamed from: p */
    public final void m26900p() {
        setContentView(R$layout.flag_activity);
        this.f11940j = findViewById(R$id.ll_reason1);
        this.f11941k = findViewById(R$id.ll_reason2);
        this.f11942l = findViewById(R$id.ll_reason3);
        this.f11936f = (TextView) findViewById(R$id.tv_reminder);
        this.f11944n = (EditText) findViewById(R$id.et_reason1);
        this.f11945o = (EditText) findViewById(R$id.et_reason2);
        this.f11946p = (EditText) findViewById(R$id.et_reason3);
        this.f11937g = (TextView) findViewById(R$id.tv_reason1);
        this.f11938h = (TextView) findViewById(R$id.tv_reason2);
        this.f11939i = (TextView) findViewById(R$id.tv_reason3);
        this.f11943m = findViewById(R$id.v_divider1);
    }

    /* renamed from: q */
    public final void m26899q() {
        C12484b i = m28683i();
        if (i != null) {
            i.m6043a(true);
            i.m6032c(false);
            i.m6028d(true);
            i.m6038b(C14206w4.m2225a((int) R$string.card_flag_actionbar));
        }
        this.f11949s = TextUtils.isEmpty(C14092n3.m2584a("fbAccount", null)) ? C14092n3.m2584a("gmailAccount", null) : Profile.m35384r().m35389a();
        this.f11936f.setText(String.format(C14206w4.m2225a((int) R$string.flag_reminder), this.f11949s));
        this.f11940j.setOnClickListener(new View$OnClickListenerC4844a());
        this.f11941k.setOnClickListener(new View$OnClickListenerC4847b());
        this.f11942l.setOnClickListener(new View$OnClickListenerC4848c());
        C4849d dVar = new C4849d();
        this.f11944n.addTextChangedListener(dVar);
        this.f11945o.addTextChangedListener(dVar);
        this.f11946p.addTextChangedListener(dVar);
    }

    /* renamed from: r */
    public void m26898r() {
        this.f11947q = new ProgressDialog(this.f11935e, 0);
        this.f11947q.setMessage(C14206w4.m2225a((int) R$string.commit_waiting));
        this.f11947q.setCanceledOnTouchOutside(false);
        this.f11947q.show();
        File file = new File(C13884a4.m3171g());
        this.f11950t = new File(MyApplication.m29013o().getCacheDir().toString() + File.separator + System.currentTimeMillis() + ".png");
        file.renameTo(this.f11950t);
        Uri fromFile = Uri.fromFile(this.f11950t);
        this.f11954x = false;
        C13008c.m4816a(fromFile, new C4851f());
    }
}
