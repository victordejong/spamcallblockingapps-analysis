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
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Toast;
import com.uservoice.uservoicesdk.a.a;
import com.uservoice.uservoicesdk.d;
import com.uservoice.uservoicesdk.e;
import com.uservoice.uservoicesdk.f.b;
import com.uservoice.uservoicesdk.f.c;
import com.uservoice.uservoicesdk.g;
import com.uservoice.uservoicesdk.model.Category;
import com.uservoice.uservoicesdk.model.Suggestion;
import com.uservoice.uservoicesdk.model.h;
import com.uservoice.uservoicesdk.ui.a;
import com.uservoice.uservoicesdk.ui.k;
import com.uservoice.uservoicesdk.ui.l;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/activity/PostIdeaActivity.class */
public class PostIdeaActivity extends i {
    private EditText n;
    private EditText o;
    private EditText p;
    private EditText q;
    private Spinner r;
    private Pattern s = Pattern.compile("\\A(\\w[-+.\\w!\\#\\$%&'\\*\\+\\-/=\\?\\^_`\\{\\|\\}~]*@([-\\w]*\\.)+[a-zA-Z]{2,9})\\z");

    static /* synthetic */ void a(PostIdeaActivity postIdeaActivity) {
        if (e.a().h == null) {
            h.a(e.a().f4631b.b(), new a<h>(postIdeaActivity) { // from class: com.uservoice.uservoicesdk.activity.PostIdeaActivity.2
                @Override // com.uservoice.uservoicesdk.j.a
                public final /* synthetic */ void a(Object obj) {
                    e.a().h = (h) obj;
                    if (e.a().h.c.size() > 0) {
                        PostIdeaActivity.this.findViewById(d.b.c).setVisibility(0);
                        PostIdeaActivity.this.r = (Spinner) PostIdeaActivity.this.findViewById(d.b.f4619b);
                        PostIdeaActivity.this.r.setAdapter((SpinnerAdapter) new k(PostIdeaActivity.this, e.a().h.c));
                    }
                }
            });
        } else if (e.a().h.c.size() > 0) {
            postIdeaActivity.findViewById(d.b.c).setVisibility(0);
            postIdeaActivity.r = (Spinner) postIdeaActivity.findViewById(d.b.f4619b);
            postIdeaActivity.r.setAdapter((SpinnerAdapter) new k(postIdeaActivity, e.a().h.c));
        }
        if (e.a().f != null) {
            if (!TextUtils.isEmpty(e.a().f.f4766b)) {
                postIdeaActivity.n.setText(e.a().f.f4766b);
            }
            if (!TextUtils.isEmpty(e.a().f.f4765a)) {
                postIdeaActivity.o.setText(e.a().f.f4765a);
                return;
            }
            return;
        }
        if (!TextUtils.isEmpty(e.a().d())) {
            postIdeaActivity.n.setText(e.a().d());
        }
        if (!TextUtils.isEmpty(e.a().c())) {
            postIdeaActivity.o.setText(e.a().c());
        }
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

    public void doSubmit(View view) {
        String obj = this.n.getText().toString();
        String obj2 = this.p.getText().toString();
        if (TextUtils.isEmpty(obj)) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setPositiveButton(17039370, (DialogInterface.OnClickListener) null);
            builder.setTitle(d.f.u);
            builder.setMessage(d.f.H);
            builder.create().show();
        } else if (!this.s.matcher(obj).matches()) {
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
        } else {
            b(true);
            if (getCurrentFocus() != null) {
                ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
            }
            c.a(this, this.n.getText().toString(), this.o.getText().toString(), new b() { // from class: com.uservoice.uservoicesdk.activity.PostIdeaActivity.4
                @Override // com.uservoice.uservoicesdk.f.b
                public final void a() {
                    Suggestion.a(e.a().h, PostIdeaActivity.this.r == null ? null : (Category) PostIdeaActivity.this.r.getSelectedItem(), PostIdeaActivity.this.p.getText().toString(), PostIdeaActivity.this.q.getText().toString(), new a<Suggestion>(PostIdeaActivity.this) { // from class: com.uservoice.uservoicesdk.activity.PostIdeaActivity.4.1
                        @Override // com.uservoice.uservoicesdk.ui.a, com.uservoice.uservoicesdk.j.a
                        public final void a(com.uservoice.uservoicesdk.j.e eVar) {
                            PostIdeaActivity.this.b(false);
                            super.a(eVar);
                        }

                        @Override // com.uservoice.uservoicesdk.j.a
                        public final /* synthetic */ void a(Object obj3) {
                            com.uservoice.uservoicesdk.a.a.a(a.EnumC0133a.SUBMIT_IDEA);
                            Toast.makeText(PostIdeaActivity.this, d.f.i, 0).show();
                            PostIdeaActivity.this.setResult(-1);
                            PostIdeaActivity.this.finish();
                        }
                    });
                }
            });
        }
    }

    @Override // android.support.v4.app.i, android.app.Activity
    public void onBackPressed() {
        if (TextUtils.isEmpty(this.p.getText().toString())) {
            super.onBackPressed();
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(d.f.B);
        builder.setMessage(d.f.f);
        builder.setPositiveButton(d.f.U, new DialogInterface.OnClickListener() { // from class: com.uservoice.uservoicesdk.activity.PostIdeaActivity.3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                PostIdeaActivity.this.finish();
            }
        });
        builder.setNegativeButton(d.f.I, (DialogInterface.OnClickListener) null);
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.i, android.support.v4.app.e, android.app.Activity
    public void onCreate(Bundle bundle) {
        if (l.a(g.f4678b)) {
            setTheme(d.g.f4629b);
        } else {
            setTheme(d.g.f4628a);
        }
        l.a((Activity) this);
        super.onCreate(bundle);
        if (e.a().f4631b == null) {
            finish();
            return;
        }
        setTitle(d.f.q);
        setContentView(d.c.c);
        if (getActionBar() != null) {
            getActionBar().setDisplayHomeAsUpEnabled(true);
            getActionBar().setDisplayUseLogoEnabled(false);
        }
        if (getResources().getIdentifier("windowTranslucentStatus", "attr", "android") != 0) {
            if (!l.a(g.f4678b)) {
                findViewById(d.b.f4618a).setBackgroundColor(g.f4678b);
            } else {
                findViewById(d.b.f4618a).setBackgroundColor(-16777216);
            }
            getActionBar().setBackgroundDrawable(new ColorDrawable(g.f4678b));
        } else {
            getActionBar().setBackgroundDrawable(new ColorDrawable(g.f4678b));
        }
        if (Build.VERSION.SDK_INT >= 21) {
            getActionBar().setBackgroundDrawable(new ColorDrawable(Color.argb(255, 254, 254, 254)));
        }
        this.n = (EditText) findViewById(d.b.f);
        this.o = (EditText) findViewById(d.b.g);
        this.p = (EditText) findViewById(d.b.o);
        this.q = (EditText) findViewById(d.b.n);
        new com.uservoice.uservoicesdk.f.a(this, new Runnable() { // from class: com.uservoice.uservoicesdk.activity.PostIdeaActivity.1
            @Override // java.lang.Runnable
            public final void run() {
                PostIdeaActivity.a(PostIdeaActivity.this);
            }
        }).a();
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
