package com.gogolook.developmode.jira;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.app.Person;
import java.util.ArrayList;
import org.json.JSONObject;
import p081h.p160h.p174c.p176f.AbstractC6331d;
import p081h.p160h.p174c.p176f.AsyncTaskC6327a;
import p081h.p160h.p174c.p176f.AsyncTaskC6328b;
import p081h.p160h.p174c.p176f.C6330c;
/* loaded from: classes2-dex2jar.jar:com/gogolook/developmode/jira/JiraReportActivity.class */
public class JiraReportActivity extends Activity implements View.OnClickListener {

    /* renamed from: o */
    public static String f6126o;

    /* renamed from: p */
    public static String f6127p;

    /* renamed from: a */
    public C6330c f6128a;

    /* renamed from: b */
    public TextView f6129b;

    /* renamed from: c */
    public TextView f6130c;

    /* renamed from: d */
    public Button f6131d;

    /* renamed from: e */
    public Button f6132e;

    /* renamed from: f */
    public TextView f6133f;

    /* renamed from: g */
    public TextView f6134g;

    /* renamed from: h */
    public EditText f6135h;

    /* renamed from: i */
    public EditText f6136i;

    /* renamed from: j */
    public EditText f6137j;

    /* renamed from: k */
    public AutoCompleteTextView f6138k;

    /* renamed from: l */
    public CheckBox f6139l;

    /* renamed from: m */
    public CheckBox f6140m;

    /* renamed from: n */
    public TextView f6141n;

    /* renamed from: com.gogolook.developmode.jira.JiraReportActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/developmode/jira/JiraReportActivity$a.class */
    public class DialogInterface$OnClickListenerC3526a implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ ArrayList f6142a;

        public DialogInterface$OnClickListenerC3526a(ArrayList arrayList) {
            this.f6142a = arrayList;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            JiraReportActivity.this.f6133f.setText((CharSequence) ((Pair) this.f6142a.get(i)).first);
            JiraReportActivity.this.f6133f.setTag(((Pair) this.f6142a.get(i)).second);
        }
    }

    /* renamed from: com.gogolook.developmode.jira.JiraReportActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/developmode/jira/JiraReportActivity$b.class */
    public class DialogInterface$OnClickListenerC3527b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ ArrayList f6144a;

        public DialogInterface$OnClickListenerC3527b(ArrayList arrayList) {
            this.f6144a = arrayList;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            JiraReportActivity.this.f6134g.setText((CharSequence) ((Pair) this.f6144a.get(i)).first);
            JiraReportActivity.this.f6134g.setTag(((Pair) this.f6144a.get(i)).second);
        }
    }

    /* renamed from: com.gogolook.developmode.jira.JiraReportActivity$c */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/developmode/jira/JiraReportActivity$c.class */
    public class DialogInterface$OnClickListenerC3528c implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f6146a;

        /* renamed from: b */
        public final /* synthetic */ EditText f6147b;

        /* renamed from: c */
        public final /* synthetic */ CheckBox f6148c;

        public DialogInterface$OnClickListenerC3528c(EditText editText, EditText editText2, CheckBox checkBox) {
            this.f6146a = editText;
            this.f6147b = editText2;
            this.f6148c = checkBox;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i != -1) {
                return;
            }
            if (TextUtils.isEmpty(this.f6146a.getEditableText().toString()) || TextUtils.isEmpty(this.f6147b.getEditableText().toString())) {
                Toast.makeText(JiraReportActivity.this, "Lack of User Account or Password.", 1).show();
                return;
            }
            JiraReportActivity.f6126o = this.f6146a.getEditableText().toString();
            JiraReportActivity.f6127p = this.f6147b.getEditableText().toString();
            if (this.f6148c.isChecked()) {
                PreferenceManager.getDefaultSharedPreferences(JiraReportActivity.this.getApplication()).edit().putString("JIRA_USERNAME", JiraReportActivity.f6126o).commit();
                PreferenceManager.getDefaultSharedPreferences(JiraReportActivity.this.getApplication()).edit().putString("JIRA_PASSWORD", JiraReportActivity.f6127p).commit();
            }
            TextView textView = JiraReportActivity.this.f6141n;
            String str = JiraReportActivity.f6126o;
            String str2 = str;
            if (str == null) {
                str2 = "Set Account";
            }
            textView.setText(str2);
        }
    }

    /* renamed from: com.gogolook.developmode.jira.JiraReportActivity$d */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/developmode/jira/JiraReportActivity$d.class */
    public class C3529d implements AbstractC6331d {
        public C3529d() {
        }

        @Override // p081h.p160h.p174c.p176f.AbstractC6331d
        /* renamed from: a */
        public void mo23280a(int i, String str) {
            String str2 = "body: " + str;
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (!jSONObject.has("id") || !jSONObject.has(Person.KEY_KEY)) {
                    if (jSONObject.has("errors")) {
                        Toast.makeText(JiraReportActivity.this, "Fail to upload feedback. " + jSONObject.getJSONObject("errors").toString(), 1).show();
                    } else {
                        Toast.makeText(JiraReportActivity.this, "Fail to upload feedback.", 1).show();
                    }
                } else if (JiraReportActivity.this.f6139l.isChecked() || JiraReportActivity.this.f6140m.isChecked()) {
                    JiraReportActivity.this.m32248a(jSONObject.getString(Person.KEY_KEY));
                } else {
                    Toast.makeText(JiraReportActivity.this, "Successful to upload feedback.", 1).show();
                    JiraReportActivity.this.finish();
                }
            } catch (Exception e) {
                e.printStackTrace();
                Toast.makeText(JiraReportActivity.this, "Fail to upload feedback.", 1).show();
            }
        }
    }

    /* renamed from: com.gogolook.developmode.jira.JiraReportActivity$e */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/developmode/jira/JiraReportActivity$e.class */
    public class C3530e implements AbstractC6331d {
        public C3530e() {
        }

        @Override // p081h.p160h.p174c.p176f.AbstractC6331d
        /* renamed from: a */
        public void mo23280a(int i, String str) {
            Toast.makeText(JiraReportActivity.this, "Successful to upload feedback.", 1).show();
            JiraReportActivity.this.finish();
        }
    }

    /* renamed from: a */
    public final void m32251a() {
        if (TextUtils.isEmpty(this.f6133f.getText())) {
            Toast.makeText(this, "Lack of Priority.", 1).show();
        } else if (TextUtils.isEmpty(this.f6134g.getText())) {
            Toast.makeText(this, "Lack of Issue Type.", 1).show();
        } else if (TextUtils.isEmpty(this.f6135h.getText())) {
            Toast.makeText(this, "Lack of Summary.", 1).show();
        } else if (TextUtils.isEmpty(this.f6136i.getText())) {
            Toast.makeText(this, "Lack of Description.", 1).show();
        } else if (TextUtils.isEmpty(this.f6138k.getText())) {
            Toast.makeText(this, "Lack of Assignee.", 1).show();
        } else if (TextUtils.isEmpty(f6126o) || TextUtils.isEmpty(f6127p)) {
            Toast.makeText(this, "Lack of User Account or Password.", 1).show();
        } else {
            new AsyncTaskC6328b(this, this.f6133f.getTag().toString(), this.f6134g.getTag().toString(), this.f6135h.getEditableText().toString(), this.f6136i.getEditableText().toString(), this.f6137j.getEditableText().toString(), this.f6138k.getEditableText().toString(), new C3529d()).execute(new Void[0]);
        }
    }

    /* renamed from: a */
    public final void m32248a(String str) {
        String str2 = null;
        String stringExtra = this.f6139l.isChecked() ? getIntent().getStringExtra("bundle_key_screenshot") : null;
        if (this.f6140m.isChecked()) {
            str2 = getIntent().getStringExtra("bundle_key_logcat");
        }
        new AsyncTaskC6327a(this, str, stringExtra, str2, new C3530e()).execute(new Void[0]);
    }

    /* renamed from: a */
    public final void m32247a(String str, ArrayList<Pair<String, String>> arrayList, DialogInterface.OnClickListener onClickListener) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(str);
        ArrayAdapter arrayAdapter = new ArrayAdapter(this, 17367058);
        for (int i = 0; i < arrayList.size(); i++) {
            arrayAdapter.add(arrayList.get(i).first);
        }
        builder.setAdapter(arrayAdapter, onClickListener);
        builder.create().show();
    }

    /* renamed from: b */
    public final void m32246b() {
        C6330c cVar = this.f6128a;
        this.f6129b = cVar.f15704j;
        this.f6130c = cVar.f15705k;
        this.f6131d = cVar.f15707m;
        this.f6132e = cVar.f15708n;
        this.f6133f = cVar.f15711q;
        this.f6134g = cVar.f15713s;
        this.f6135h = cVar.f15715u;
        this.f6136i = cVar.f15717w;
        this.f6137j = cVar.f15719y;
        this.f6138k = cVar.f15698A;
        this.f6139l = cVar.f15699B;
        this.f6140m = cVar.f15700C;
        this.f6141n = cVar.f15702E;
    }

    /* renamed from: c */
    public final void m32244c() {
        ArrayList<Pair<String, String>> arrayList = new ArrayList<>();
        arrayList.add(new Pair<>("Bug", "1"));
        arrayList.add(new Pair<>("New Feature", "2"));
        arrayList.add(new Pair<>("Task", "3"));
        m32247a("Issue Type", arrayList, new DialogInterface$OnClickListenerC3527b(arrayList));
    }

    /* renamed from: d */
    public final void m32242d() {
        ArrayList<Pair<String, String>> arrayList = new ArrayList<>();
        arrayList.add(new Pair<>("Blocker", "1"));
        arrayList.add(new Pair<>("Critical", "2"));
        arrayList.add(new Pair<>("Major", "3"));
        arrayList.add(new Pair<>("Minor", "4"));
        arrayList.add(new Pair<>("Trivial", "5"));
        m32247a("Priority", arrayList, new DialogInterface$OnClickListenerC3526a(arrayList));
    }

    /* renamed from: e */
    public final void m32240e() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("Account & Password");
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(10, 10, 10, 10);
        EditText editText = new EditText(this);
        editText.setHint("input username");
        linearLayout.addView(editText);
        EditText editText2 = new EditText(this);
        editText2.setHint("input password");
        editText2.setInputType(128);
        linearLayout.addView(editText2);
        CheckBox checkBox = new CheckBox(this);
        checkBox.setText("Cache username & password?");
        linearLayout.addView(checkBox);
        builder.setView(linearLayout);
        builder.setPositiveButton("Confirm", new DialogInterface$OnClickListenerC3528c(editText, editText2, checkBox));
        builder.create().show();
    }

    /* renamed from: f */
    public final void m32238f() {
        requestWindowFeature(1);
        this.f6128a = new C6330c(this);
        setContentView(this.f6128a);
    }

    /* renamed from: g */
    public final void m32237g() {
        this.f6129b.setOnClickListener(this);
        this.f6131d.setOnClickListener(this);
        this.f6132e.setOnClickListener(this);
        this.f6133f.setOnClickListener(this);
        this.f6134g.setOnClickListener(this);
        this.f6141n.setOnClickListener(this);
    }

    /* renamed from: h */
    public final void m32236h() {
        this.f6129b.setText("JIRA");
        TextView textView = this.f6130c;
        textView.setText("Now at " + getIntent().getStringExtra("bundle_key_current_page"));
        boolean z = false;
        this.f6130c.setVisibility(0);
        this.f6133f.setText("Major");
        this.f6133f.setTag("3");
        this.f6134g.setText("Bug");
        this.f6134g.setTag("1");
        String[] strArr = {"jetthsieh", "funkyliu", "duoho", "nickjian", "reiny.song", "Wes"};
        this.f6138k.setText(strArr[0]);
        ArrayAdapter arrayAdapter = new ArrayAdapter(this, 17367057, strArr);
        this.f6138k.setThreshold(0);
        this.f6138k.setAdapter(arrayAdapter);
        f6126o = PreferenceManager.getDefaultSharedPreferences(getApplication()).getString("JIRA_USERNAME", null);
        f6127p = PreferenceManager.getDefaultSharedPreferences(getApplication()).getString("JIRA_PASSWORD", null);
        TextView textView2 = this.f6141n;
        String str = f6126o;
        String str2 = str;
        if (str == null) {
            str2 = "Set Account";
        }
        textView2.setText(str2);
        this.f6139l.setChecked(getIntent().getStringExtra("bundle_key_screenshot") != null);
        this.f6139l.setEnabled(getIntent().getStringExtra("bundle_key_screenshot") != null);
        this.f6140m.setChecked(getIntent().getStringExtra("bundle_key_logcat") != null);
        CheckBox checkBox = this.f6140m;
        if (getIntent().getStringExtra("bundle_key_logcat") != null) {
            z = true;
        }
        checkBox.setEnabled(z);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.equals(this.f6131d) || view.equals(this.f6129b)) {
            finish();
        } else if (view.equals(this.f6132e)) {
            m32251a();
        } else if (view.equals(this.f6133f)) {
            m32242d();
        } else if (view.equals(this.f6134g)) {
            m32244c();
        } else if (view.equals(this.f6141n)) {
            m32240e();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m32238f();
        m32246b();
        m32236h();
        m32237g();
    }
}
