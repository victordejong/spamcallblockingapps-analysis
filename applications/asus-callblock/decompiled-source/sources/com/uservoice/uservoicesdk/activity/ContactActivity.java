package com.uservoice.uservoicesdk.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.i;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.uservoice.uservoicesdk.a;
import com.uservoice.uservoicesdk.a.a;
import com.uservoice.uservoicesdk.d;
import com.uservoice.uservoicesdk.e;
import com.uservoice.uservoicesdk.model.c;
import com.uservoice.uservoicesdk.model.g;
import com.uservoice.uservoicesdk.model.j;
import com.uservoice.uservoicesdk.ui.k;
import com.uservoice.uservoicesdk.ui.l;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/activity/ContactActivity.class */
public class ContactActivity extends i implements View.OnClickListener {
    private EditText n;
    private EditText o;
    private EditText p;
    private ViewGroup q;
    private Pattern r = Pattern.compile("\\A(\\w[-+.\\w!\\#\\$%&'\\*\\+\\-/=\\?\\^_`\\{\\|\\}~]*@([-\\w]*\\.)+[a-zA-Z]{2,9})\\z");
    private Map<String, String> s;
    private boolean t;
    private View u;
    private ArrayList<String> v;

    private static String a(File file) {
        String str;
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr = new byte[((int) file.length()) + 100];
            str = Base64.encodeToString(bArr, 0, fileInputStream.read(bArr), 0);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            str = null;
            return str;
        } catch (IOException e2) {
            e2.printStackTrace();
            str = null;
            return str;
        }
        return str;
    }

    static /* synthetic */ void a(ContactActivity contactActivity) {
        contactActivity.s = new HashMap(e.a().f4631b.g);
        contactActivity.c();
        if (!TextUtils.isEmpty(e.a().d())) {
            contactActivity.o.setText(e.a().d());
        }
        if (!TextUtils.isEmpty(e.a().c())) {
            contactActivity.p.setText(e.a().c());
        }
        contactActivity.b(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        if (z) {
            findViewById(d.b.m).setVisibility(0);
            findViewById(d.b.l).setVisibility(8);
            return;
        }
        findViewById(d.b.m).setVisibility(8);
        findViewById(d.b.l).setVisibility(0);
    }

    private void c() {
        for (final g gVar : e.a().g.c) {
            if (gVar.f4757b.size() > 0) {
                View inflate = getLayoutInflater().inflate(d.c.r, this.q, true);
                String str = this.s.get(gVar.f4756a);
                TextView textView = (TextView) inflate.findViewById(d.b.I);
                int identifier = getResources().getIdentifier("uf_sdk_translation_" + gVar.c(), "string", getPackageName());
                textView.setText(identifier == 0 ? gVar.f4756a : getString(identifier));
                Spinner spinner = (Spinner) inflate.findViewById(d.b.U);
                spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.uservoice.uservoicesdk.activity.ContactActivity.3
                    @Override // android.widget.AdapterView.OnItemSelectedListener
                    public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                        ContactActivity.this.s.put(gVar.f4756a, gVar.f4757b.get(i));
                    }

                    @Override // android.widget.AdapterView.OnItemSelectedListener
                    public final void onNothingSelected(AdapterView<?> adapterView) {
                    }
                });
                spinner.setAdapter((SpinnerAdapter) new k(this, gVar.f4757b, gVar.c));
                if (spinner.getAdapter().getCount() > 0) {
                    spinner.setSelection(0);
                }
                if (str != null && gVar.f4757b.contains(str)) {
                    spinner.setSelection(gVar.f4757b.indexOf(str) + 1);
                }
                if (this.t && gVar.c() == 117562) {
                    List<Integer> list = gVar.c;
                    int i = -1;
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        if (list.get(i2).intValue() == 2529543) {
                            i = i2;
                        }
                    }
                    if (i != -1) {
                        spinner.setSelection(i);
                    }
                }
            } else {
                View inflate2 = getLayoutInflater().inflate(d.c.v, this.q, true);
                TextView textView2 = (TextView) inflate2.findViewById(d.b.I);
                final EditText editText = (EditText) inflate2.findViewById(d.b.ak);
                textView2.setText(gVar.f4756a);
                editText.setHint(d.f.T);
                editText.setInputType(64);
                editText.setText(this.s.get(gVar.f4756a));
                editText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.uservoice.uservoicesdk.activity.ContactActivity.4
                    @Override // android.view.View.OnFocusChangeListener
                    public final void onFocusChange(View view, boolean z) {
                        if (!z) {
                            ContactActivity.this.s.put(gVar.f4756a, editText.getText().toString());
                        }
                    }
                });
            }
        }
    }

    private boolean d() {
        boolean z;
        String str;
        for (g gVar : e.a().g.c) {
            if (gVar.d && ((str = this.s.get(gVar.f4756a)) == null || str.length() == 0)) {
                z = false;
                break;
            }
        }
        z = true;
        return z;
    }

    public void doSubmit(View view) {
        String obj = this.o.getText().toString();
        String obj2 = this.n.getText().toString();
        if (TextUtils.isEmpty(obj)) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setPositiveButton(17039370, (DialogInterface.OnClickListener) null);
            builder.setTitle(d.f.u);
            builder.setMessage(d.f.H);
            builder.create().show();
            return;
        }
        e.a().a(this.p.getText().toString(), obj);
        if (!this.r.matcher(obj).matches()) {
            AlertDialog.Builder builder2 = new AlertDialog.Builder(this);
            builder2.setPositiveButton(17039370, (DialogInterface.OnClickListener) null);
            builder2.setTitle(d.f.u);
            builder2.setMessage(d.f.e);
            builder2.create().show();
        } else if (TextUtils.isEmpty(obj2)) {
            AlertDialog.Builder builder3 = new AlertDialog.Builder(this);
            builder3.setPositiveButton(17039370, (DialogInterface.OnClickListener) null);
            builder3.setTitle(d.f.u);
            builder3.setMessage(d.f.F);
            builder3.create().show();
        } else if (e.a().g == null || !d()) {
            Toast.makeText(this, d.f.F, 0).show();
        } else {
            b(true);
            this.n.setFocusable(false);
            this.o.setFocusable(false);
            if (getCurrentFocus() != null) {
                ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
            }
            Map<String, String> a2 = e.a().f4631b.a();
            if (a2 != null && a2.size() > 0) {
                for (String str : a2.keySet()) {
                    String str2 = str.toString();
                    this.s.put(str2, a2.get(str2));
                }
            }
            ArrayList arrayList = new ArrayList();
            for (String str3 : this.s.keySet()) {
                String str4 = str3.toString();
                if (str4.equalsIgnoreCase("Feedback type") && this.s.get(str4).equalsIgnoreCase("Bug report")) {
                    ArrayList arrayList2 = new ArrayList();
                    a aVar = e.a().f4631b;
                    String str5 = aVar == null ? null : aVar.k;
                    arrayList = arrayList2;
                    if (str5 != null) {
                        File file = new File(str5);
                        arrayList = arrayList2;
                        if (file.exists()) {
                            arrayList = arrayList2;
                            if (file.length() < 2097152) {
                                String a3 = a(file);
                                arrayList = arrayList2;
                                if (!TextUtils.isEmpty(a3)) {
                                    arrayList2.add(new c("attachment", "text/plain", a3));
                                    arrayList = arrayList2;
                                }
                            }
                        }
                    }
                }
            }
            j.a(this.n.getText().toString(), this.o.getText().toString(), this.p.getText().toString(), this.s, arrayList, new com.uservoice.uservoicesdk.ui.a<j>(this) { // from class: com.uservoice.uservoicesdk.activity.ContactActivity.6
                @Override // com.uservoice.uservoicesdk.ui.a, com.uservoice.uservoicesdk.j.a
                public final void a(com.uservoice.uservoicesdk.j.e eVar) {
                    super.a(eVar);
                    ContactActivity.this.b(false);
                    ContactActivity.this.o.setFocusable(true);
                    ContactActivity.this.n.setFocusable(true);
                }

                @Override // com.uservoice.uservoicesdk.j.a
                public final /* synthetic */ void a(Object obj3) {
                    com.uservoice.uservoicesdk.a.a.a(a.EnumC0133a.SUBMIT_TICKET);
                    Toast.makeText(ContactActivity.this, d.f.h, 0).show();
                    ContactActivity.this.finish();
                }
            });
        }
    }

    @Override // android.support.v4.app.i, android.app.Activity
    public void onBackPressed() {
        if (TextUtils.isEmpty(this.n.getText().toString())) {
            super.onBackPressed();
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(d.f.B);
        builder.setMessage(d.f.f);
        builder.setPositiveButton(d.f.U, new DialogInterface.OnClickListener() { // from class: com.uservoice.uservoicesdk.activity.ContactActivity.5
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ContactActivity.this.finish();
            }
        });
        builder.setNegativeButton(d.f.I, (DialogInterface.OnClickListener) null);
        builder.show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        ArrayAdapter arrayAdapter = new ArrayAdapter(this, 17367058);
        Iterator<String> it = this.v.iterator();
        while (it.hasNext()) {
            arrayAdapter.add(it.next());
        }
        builder.setAdapter(arrayAdapter, new DialogInterface.OnClickListener() { // from class: com.uservoice.uservoicesdk.activity.ContactActivity.7
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ContactActivity.this.n.getText().insert(0, ((String) ContactActivity.this.v.get(i)) + "\n\n");
            }
        });
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.i, android.support.v4.app.e, android.app.Activity
    public void onCreate(Bundle bundle) {
        if (l.a(com.uservoice.uservoicesdk.g.f4678b)) {
            setTheme(d.g.f4629b);
        } else {
            setTheme(d.g.f4628a);
        }
        l.a((Activity) this);
        super.onCreate(bundle);
        this.t = getIntent().getBooleanExtra("bug_report", false);
        if (e.a().f4631b == null) {
            finish();
            return;
        }
        Log.d("NPECHECKING", "onCreate, instance is " + this);
        setTitle(d.f.o);
        setContentView(d.c.f4621b);
        this.u = findViewById(d.b.j);
        this.u.setOnClickListener(this);
        this.v = new ArrayList<>();
        this.v.add("Bug 1");
        this.v.add("Bug 2");
        this.u.setVisibility(8);
        if (getActionBar() != null) {
            getActionBar().setDisplayHomeAsUpEnabled(true);
            getActionBar().setDisplayUseLogoEnabled(false);
        }
        if (getResources().getIdentifier("windowTranslucentStatus", "attr", "android") != 0) {
            if (!l.a(com.uservoice.uservoicesdk.g.f4678b)) {
                findViewById(d.b.f4618a).setBackgroundColor(com.uservoice.uservoicesdk.g.f4678b);
            } else {
                findViewById(d.b.f4618a).setBackgroundColor(-16777216);
            }
            getActionBar().setBackgroundDrawable(new ColorDrawable(com.uservoice.uservoicesdk.g.f4678b));
        } else {
            getActionBar().setBackgroundDrawable(new ColorDrawable(com.uservoice.uservoicesdk.g.f4678b));
        }
        if (Build.VERSION.SDK_INT >= 21) {
            getActionBar().setBackgroundDrawable(new ColorDrawable(Color.argb(255, 254, 254, 254)));
        }
        this.n = (EditText) findViewById(d.b.d);
        this.o = (EditText) findViewById(d.b.f);
        this.p = (EditText) findViewById(d.b.g);
        this.q = (ViewGroup) findViewById(d.b.e);
        b(true);
        new com.uservoice.uservoicesdk.f.a(this, new Runnable() { // from class: com.uservoice.uservoicesdk.activity.ContactActivity.1
            @Override // java.lang.Runnable
            public final void run() {
                ContactActivity.a(ContactActivity.this);
            }
        }, new Runnable() { // from class: com.uservoice.uservoicesdk.activity.ContactActivity.2
            @Override // java.lang.Runnable
            public final void run() {
                ContactActivity.this.b(false);
            }
        }).a();
    }

    @Override // android.support.v4.app.i, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        Log.d("NPECHECKING", "onDestroy, instance is " + this);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean onOptionsItemSelected;
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
            onOptionsItemSelected = true;
        } else {
            onOptionsItemSelected = super.onOptionsItemSelected(menuItem);
        }
        return onOptionsItemSelected;
    }
}
