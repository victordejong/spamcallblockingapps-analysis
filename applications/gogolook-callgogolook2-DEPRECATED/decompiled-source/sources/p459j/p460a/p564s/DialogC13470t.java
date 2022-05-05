package p459j.p460a.p564s;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.aotter.net.volley.toolbox.JsonRequest;
import com.facebook.ads.AdError;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import java.lang.reflect.InvocationTargetException;
import net.sqlcipher.Cursor;
import net.sqlcipher.database.SQLiteDatabase;
import p081h.p160h.p172b.p173a.C6298e;
import p081h.p160h.p179e.p180a.p190p.C6430c;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C14190u4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p613z0.DialogC14628h;
import p459j.p460a.p613z0.p617p.C14687h;
/* renamed from: j.a.s.t */
/* loaded from: classes2-dex2jar.jar:j/a/s/t.class */
public class DialogC13470t extends Dialog {

    /* renamed from: o */
    public static final LinearLayout.LayoutParams f30272o = new LinearLayout.LayoutParams(-1, -2);

    /* renamed from: p */
    public static final LinearLayout.LayoutParams f30273p = new LinearLayout.LayoutParams(-1, -1);

    /* renamed from: q */
    public static final String[] f30274q = {"ReportLog"};

    /* renamed from: r */
    public static final String[][] f30275r = {new String[]{"_type", "_log"}};

    /* renamed from: a */
    public LinearLayout f30276a;

    /* renamed from: b */
    public LinearLayout f30277b;

    /* renamed from: c */
    public LinearLayout f30278c;

    /* renamed from: d */
    public EditText f30279d;

    /* renamed from: e */
    public String f30280e;

    /* renamed from: f */
    public boolean f30281f;

    /* renamed from: g */
    public TextView f30282g;

    /* renamed from: h */
    public TextView f30283h;

    /* renamed from: i */
    public TextView f30284i;

    /* renamed from: j */
    public TextView f30285j;

    /* renamed from: k */
    public Spinner f30286k;

    /* renamed from: l */
    public WebView f30287l;

    /* renamed from: m */
    public SQLiteDatabase f30288m;

    /* renamed from: n */
    public String f30289n;

    /* renamed from: j.a.s.t$a */
    /* loaded from: classes2-dex2jar.jar:j/a/s/t$a.class */
    public class View$OnClickListenerC13471a implements View.OnClickListener {
        public View$OnClickListenerC13471a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LinearLayout linearLayout = DialogC13470t.this.f30278c;
            linearLayout.setVisibility(linearLayout.getVisibility() == 0 ? 8 : 0);
            DialogC13470t.this.m3987c();
        }
    }

    /* renamed from: j.a.s.t$b */
    /* loaded from: classes2-dex2jar.jar:j/a/s/t$b.class */
    public class C13472b implements AdapterView.OnItemSelectedListener {

        /* renamed from: a */
        public final /* synthetic */ ArrayAdapter f30291a;

        public C13472b(ArrayAdapter arrayAdapter) {
            this.f30291a = arrayAdapter;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            DialogC13470t tVar = DialogC13470t.this;
            new AsyncTaskC13478g(tVar.getContext(), (String) this.f30291a.getItem(i)).execute(new Void[0]);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: j.a.s.t$c */
    /* loaded from: classes2-dex2jar.jar:j/a/s/t$c.class */
    public class View$OnClickListenerC13473c implements View.OnClickListener {

        /* renamed from: j.a.s.t$c$a */
        /* loaded from: classes2-dex2jar.jar:j/a/s/t$c$a.class */
        public class DialogInterface$OnClickListenerC13474a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC13474a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (i == 0) {
                    DialogC13470t.this.m3985d();
                } else if (i == 1) {
                    DialogC13470t tVar = DialogC13470t.this;
                    tVar.m3991a(tVar.f30289n);
                } else if (i == 2) {
                    DialogC13470t.this.f30287l.scrollTo(0, Integer.MIN_VALUE);
                    DialogC13470t.this.f30287l.flingScroll(0, Integer.MIN_VALUE);
                    DialogC13470t.this.f30287l.pageUp(true);
                } else if (i == 3) {
                    DialogC13470t.this.f30287l.scrollTo(0, Integer.MAX_VALUE);
                    DialogC13470t.this.f30287l.flingScroll(0, Integer.MAX_VALUE);
                    DialogC13470t.this.f30287l.pageDown(true);
                }
            }
        }

        public View$OnClickListenerC13473c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AlertDialog.Builder builder = new AlertDialog.Builder(DialogC13470t.this.getContext());
            ArrayAdapter arrayAdapter = new ArrayAdapter(DialogC13470t.this.getContext(), 17367058);
            arrayAdapter.add("Share copied");
            arrayAdapter.add("Share all text ");
            arrayAdapter.add("Scroll top");
            arrayAdapter.add("Scroll bottom");
            builder.setAdapter(arrayAdapter, new DialogInterface$OnClickListenerC13474a());
            AlertDialog create = builder.create();
            create.requestWindowFeature(1);
            create.getWindow().setType(C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003));
            C13878a3.m3244a(create);
        }
    }

    /* renamed from: j.a.s.t$d */
    /* loaded from: classes2-dex2jar.jar:j/a/s/t$d.class */
    public class C13475d implements TextWatcher {
        public C13475d() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            DialogC13470t.this.f30287l.findAllAsync(editable.toString());
            try {
                WebView.class.getMethod("setFindIsUp", Boolean.TYPE).invoke(DialogC13470t.this.f30287l, true);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (NoSuchMethodException e2) {
                e2.printStackTrace();
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: j.a.s.t$e */
    /* loaded from: classes2-dex2jar.jar:j/a/s/t$e.class */
    public class View$OnClickListenerC13476e implements View.OnClickListener {
        public View$OnClickListenerC13476e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!TextUtils.isEmpty(DialogC13470t.this.f30279d.getText())) {
                DialogC13470t.this.f30287l.findNext(view == DialogC13470t.this.f30282g);
            }
        }
    }

    /* renamed from: j.a.s.t$f */
    /* loaded from: classes2-dex2jar.jar:j/a/s/t$f.class */
    public class RunnableC13477f implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f30297a;

        public RunnableC13477f(String str) {
            this.f30297a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("text/plain");
            intent.putExtra("android.intent.extra.SUBJECT", "Database: " + DialogC13470t.this.f30286k.getAdapter().getItem(DialogC13470t.this.f30286k.getSelectedItemPosition()));
            intent.putExtra("android.intent.extra.TEXT", this.f30297a);
            DialogC13470t.this.getContext().startActivity(Intent.createChooser(intent, "Share using"));
        }
    }

    /* renamed from: j.a.s.t$g */
    /* loaded from: classes2-dex2jar.jar:j/a/s/t$g.class */
    public class AsyncTaskC13478g extends AsyncTask<Void, Void, String> {

        /* renamed from: a */
        public String f30299a;

        /* renamed from: b */
        public boolean f30300b;

        /* renamed from: c */
        public DialogC14628h f30301c;

        public AsyncTaskC13478g(Context context, String str) {
            this.f30300b = false;
            if (str.startsWith("decode/")) {
                this.f30300b = true;
                this.f30299a = str.substring(str.indexOf(47) + 1);
                return;
            }
            this.f30299a = str;
        }

        /* JADX WARN: Code restructure failed: missing block: B:80:0x0226, code lost:
            if (r23 == (-1)) goto L_0x0229;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String doInBackground(java.lang.Void... r10) {
            /*
                Method dump skipped, instructions count: 1503
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p564s.DialogC13470t.AsyncTaskC13478g.doInBackground(java.lang.Void[]):java.lang.String");
        }

        /* renamed from: a */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            DialogC13470t.this.f30287l.loadDataWithBaseURL(null, str, "text/html", JsonRequest.PROTOCOL_CHARSET, null);
            DialogC14628h hVar = this.f30301c;
            if (hVar != null && hVar.isShowing()) {
                this.f30301c.dismiss();
            }
            DialogC13470t.this.f30289n = str;
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            super.onPreExecute();
            this.f30301c = new DialogC14628h(DialogC13470t.this.getContext(), (int) R$string.commit_waiting);
            this.f30301c.show();
        }
    }

    @TargetApi(14)
    public DialogC13470t(Context context) {
        super(context, Build.VERSION.SDK_INT >= 14 ? 16974135 : 16973833);
        this.f30280e = "/data/data/gogolook.callgogolook2/databases/whoscall.db";
        this.f30281f = true;
        requestWindowFeature(1);
    }

    @TargetApi(14)
    public DialogC13470t(Context context, String str, boolean z) {
        this(context);
        this.f30280e = str;
        this.f30281f = z;
    }

    /* renamed from: a */
    public final void m3994a() {
        int a = C14217x3.m2201a(5.0f);
        this.f30276a = new LinearLayout(getContext());
        this.f30276a.setOrientation(1);
        this.f30276a.setFocusableInTouchMode(true);
        this.f30276a.setFocusable(true);
        this.f30277b = new LinearLayout(getContext());
        this.f30277b.setOrientation(0);
        this.f30277b.setGravity(16);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        this.f30277b.setLayoutParams(layoutParams);
        this.f30277b.setPadding(10, 10, 10, 10);
        this.f30284i = new TextView(getContext());
        this.f30284i.setPadding(a, a, a, a);
        this.f30284i.setGravity(17);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -1);
        layoutParams2.weight = 1.0f;
        this.f30284i.setLayoutParams(layoutParams2);
        this.f30284i.setBackgroundColor(Color.parseColor("#333333"));
        this.f30285j = new TextView(getContext());
        this.f30285j.setPadding(a, a, a, a);
        this.f30285j.setGravity(17);
        this.f30285j.setLayoutParams(layoutParams2);
        this.f30285j.setBackgroundColor(Color.parseColor("#333333"));
        this.f30278c = new LinearLayout(getContext());
        this.f30278c.setOrientation(0);
        this.f30278c.setLayoutParams(layoutParams);
        this.f30278c.setFocusableInTouchMode(true);
        this.f30278c.setPadding(10, 10, 10, 10);
        this.f30279d = new EditText(getContext());
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, -2);
        layoutParams3.weight = 1.0f;
        this.f30279d.setBackgroundResource(R$drawable.edit_text_selector);
        this.f30279d.setLayoutParams(layoutParams3);
        this.f30279d.setPadding(a, a, a, a);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -1);
        layoutParams4.setMargins(a / 2, 0, 0, 0);
        this.f30282g = new TextView(getContext());
        this.f30282g.setLayoutParams(layoutParams4);
        this.f30282g.setPadding(a, a, a, a);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -1);
        this.f30283h = new TextView(getContext());
        this.f30283h.setPadding(a, a, a, a);
        this.f30283h.setLayoutParams(layoutParams5);
        this.f30278c.addView(this.f30279d);
        this.f30278c.addView(this.f30283h);
        this.f30278c.addView(this.f30282g);
        this.f30286k = new Spinner(getContext());
        this.f30286k.setLayoutParams(layoutParams2);
        this.f30286k.setBackgroundColor(Color.parseColor("#333333"));
        this.f30277b.addView(this.f30286k);
        this.f30276a.addView(this.f30277b, f30272o);
        this.f30276a.addView(this.f30278c);
        this.f30277b.addView(this.f30284i);
        this.f30277b.addView(this.f30285j);
        this.f30287l = new WebView(getContext());
        C14190u4.m2263a(this.f30287l);
        this.f30276a.addView(this.f30287l, f30273p);
        setContentView(this.f30276a);
    }

    /* renamed from: a */
    public final void m3991a(String str) {
        new Handler().postDelayed(new RunnableC13477f(str), 1000L);
        dismiss();
    }

    /* renamed from: b */
    public final void m3990b() {
        String[] strArr;
        Cursor rawQuery;
        this.f30282g.setText("Next");
        this.f30282g.setTextColor(Color.parseColor("#eeeeee"));
        this.f30283h.setText("Prev");
        this.f30283h.setTextColor(Color.parseColor("#eeeeee"));
        this.f30285j.setText("More");
        this.f30285j.setTextColor(Color.parseColor("#eeeeee"));
        this.f30284i.setTextColor(Color.parseColor("#eeeeee"));
        m3987c();
        ArrayAdapter arrayAdapter = new ArrayAdapter(getContext(), (int) R$layout.debug_spinner, 16908308);
        arrayAdapter.setDropDownViewResource(R$layout.debug_spinner_dropdownitem);
        this.f30288m = SQLiteDatabase.openDatabase(this.f30280e, C6430c.m22634e(), (SQLiteDatabase.CursorFactory) null, 1);
        SQLiteDatabase sQLiteDatabase = this.f30288m;
        if (!(sQLiteDatabase == null || (rawQuery = sQLiteDatabase.rawQuery("SELECT name FROM sqlite_master WHERE type = \"table\"", (String[]) null)) == null)) {
            if (rawQuery.moveToFirst()) {
                do {
                    arrayAdapter.add(rawQuery.getString(rawQuery.getColumnIndex("name")));
                } while (rawQuery.moveToNext());
                rawQuery.close();
            } else {
                rawQuery.close();
            }
        }
        if (this.f30281f) {
            for (String str : f30274q) {
                arrayAdapter.add("decode/" + str);
            }
        }
        this.f30284i.setOnClickListener(new View$OnClickListenerC13471a());
        this.f30286k.setAdapter((SpinnerAdapter) arrayAdapter);
        this.f30286k.setOnItemSelectedListener(new C13472b(arrayAdapter));
        this.f30285j.setOnClickListener(new View$OnClickListenerC13473c());
        WebSettings settings = this.f30287l.getSettings();
        settings.setBuiltInZoomControls(true);
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        this.f30287l.setScrollBarStyle(33554432);
        this.f30287l.setScrollbarFadingEnabled(false);
        this.f30287l.setVisibility(0);
        this.f30287l.setInitialScale(200);
        this.f30279d.addTextChangedListener(new C13475d());
        View$OnClickListenerC13476e eVar = new View$OnClickListenerC13476e();
        this.f30282g.setOnClickListener(eVar);
        this.f30283h.setOnClickListener(eVar);
    }

    /* renamed from: c */
    public final void m3987c() {
        this.f30284i.setText(this.f30278c.getVisibility() == 0 ? "Hide search" : "Show search");
    }

    /* renamed from: d */
    public final void m3985d() {
        ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
        if (!clipboardManager.hasPrimaryClip() || !clipboardManager.getPrimaryClipDescription().hasMimeType("text/plain") || clipboardManager.getPrimaryClip() == null || clipboardManager.getPrimaryClip().getItemCount() < 1) {
            C14687h.m861a(getContext(), "Please copy what you want to share first", 0).m858c();
        } else {
            m3991a(clipboardManager.getPrimaryClip().getItemAt(0).getText().toString());
        }
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m3994a();
        m3990b();
    }

    @Override // android.app.Dialog
    public void onStop() {
        SQLiteDatabase sQLiteDatabase = this.f30288m;
        if (sQLiteDatabase != null) {
            sQLiteDatabase.close();
        }
        super.onStop();
    }

    @Override // android.app.Dialog
    public void show() {
        getWindow().setType(C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003));
        super.show();
    }
}
