package p081h.p160h.p174c;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Base64;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.facebook.ads.AdError;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;
import java.util.concurrent.ArrayBlockingQueue;
import p081h.p160h.p178d.C6333a;
import p459j.p460a.p582w0.p590x4.C14247d;
/* renamed from: h.h.c.d */
/* loaded from: classes2-dex2jar.jar:h/h/c/d.class */
public class DialogC6312d extends Dialog {

    /* renamed from: a */
    public int f15644a;

    /* renamed from: b */
    public int f15645b;

    /* renamed from: c */
    public AbstractC6305b f15646c;

    /* renamed from: d */
    public LinearLayout f15647d;

    /* renamed from: e */
    public LinearLayout f15648e;

    /* renamed from: f */
    public LinearLayout f15649f;

    /* renamed from: g */
    public EditText f15650g;

    /* renamed from: h */
    public WebView f15651h;

    /* renamed from: i */
    public TextView f15652i;

    /* renamed from: j */
    public TextView f15653j;

    /* renamed from: k */
    public TextView f15654k;

    /* renamed from: l */
    public TextView f15655l;

    /* renamed from: m */
    public String f15656m;

    /* renamed from: h.h.c.d$a */
    /* loaded from: classes2-dex2jar.jar:h/h/c/d$a.class */
    public class C6313a implements TextWatcher {
        public C6313a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            DialogC6312d.this.f15651h.findAllAsync(editable.toString());
            try {
                WebView.class.getMethod("setFindIsUp", Boolean.TYPE).invoke(DialogC6312d.this.f15650g, true);
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

    /* renamed from: h.h.c.d$b */
    /* loaded from: classes2-dex2jar.jar:h/h/c/d$b.class */
    public class C6314b implements TextView.OnEditorActionListener {
        public C6314b() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            StringBuilder sb = new StringBuilder();
            sb.append("keyCode=");
            sb.append(keyEvent == null ? C14247d.f31851f : Integer.valueOf(keyEvent.getKeyCode()));
            sb.toString();
            if (keyEvent == null || keyEvent.getKeyCode() != 66) {
                return false;
            }
            ((InputMethodManager) DialogC6312d.this.getContext().getSystemService("input_method")).hideSoftInputFromWindow(DialogC6312d.this.f15650g.getApplicationWindowToken(), 2);
            return false;
        }
    }

    /* renamed from: h.h.c.d$c */
    /* loaded from: classes2-dex2jar.jar:h/h/c/d$c.class */
    public class View$OnClickListenerC6315c implements View.OnClickListener {

        /* renamed from: h.h.c.d$c$a */
        /* loaded from: classes2-dex2jar.jar:h/h/c/d$c$a.class */
        public class DialogInterface$OnClickListenerC6316a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC6316a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (i == 0) {
                    DialogC6312d dVar = DialogC6312d.this;
                    dVar.m23307a(dVar.f15656m);
                } else if (i == 1) {
                    DialogC6312d.this.m23304c();
                } else if (i == 2) {
                    LinearLayout linearLayout = DialogC6312d.this.f15648e;
                    int i2 = 8;
                    if (linearLayout.getVisibility() == 8) {
                        i2 = 0;
                    }
                    linearLayout.setVisibility(i2);
                } else if (i == 3) {
                    DialogC6312d.this.f15651h.scrollTo(0, Integer.MIN_VALUE);
                    DialogC6312d.this.f15651h.flingScroll(0, Integer.MIN_VALUE);
                    DialogC6312d.this.f15651h.pageUp(true);
                } else if (i == 4) {
                    DialogC6312d.this.f15651h.scrollTo(0, Integer.MAX_VALUE);
                    DialogC6312d.this.f15651h.flingScroll(0, Integer.MAX_VALUE);
                    DialogC6312d.this.f15651h.pageDown(true);
                }
            }
        }

        public View$OnClickListenerC6315c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AlertDialog.Builder builder = new AlertDialog.Builder(DialogC6312d.this.getContext());
            ArrayAdapter arrayAdapter = new ArrayAdapter(DialogC6312d.this.getContext(), 17367058);
            arrayAdapter.add("Share");
            arrayAdapter.add("Share copied text");
            arrayAdapter.add("Search");
            arrayAdapter.add("Scroll top");
            arrayAdapter.add("Scroll bottom");
            builder.setAdapter(arrayAdapter, new DialogInterface$OnClickListenerC6316a());
            AlertDialog create = builder.create();
            create.getWindow().setType(Build.VERSION.SDK_INT >= 26 ? 2038 : AdError.INTERNAL_ERROR_2003);
            create.requestWindowFeature(1);
            create.show();
        }
    }

    /* renamed from: h.h.c.d$d */
    /* loaded from: classes2-dex2jar.jar:h/h/c/d$d.class */
    public class View$OnClickListenerC6317d implements View.OnClickListener {
        public View$OnClickListenerC6317d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((InputMethodManager) DialogC6312d.this.getContext().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    /* renamed from: h.h.c.d$e */
    /* loaded from: classes2-dex2jar.jar:h/h/c/d$e.class */
    public class View$OnClickListenerC6318e implements View.OnClickListener {
        public View$OnClickListenerC6318e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!TextUtils.isEmpty(DialogC6312d.this.f15650g.getText())) {
                DialogC6312d dVar = DialogC6312d.this;
                dVar.f15651h.findNext(view == dVar.f15652i);
            }
        }
    }

    /* renamed from: h.h.c.d$f */
    /* loaded from: classes2-dex2jar.jar:h/h/c/d$f.class */
    public class RunnableC6319f implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f15663a;

        public RunnableC6319f(String str) {
            this.f15663a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("text/plain");
            intent.putExtra("android.intent.extra.TEXT", this.f15663a);
            intent.addFlags(268435456);
            DialogC6312d.this.getContext().startActivity(Intent.createChooser(intent, "Share using").addFlags(268435456));
        }
    }

    @TargetApi(14)
    public DialogC6312d(Context context, AbstractC6305b bVar, int i) {
        super(context, Build.VERSION.SDK_INT >= 14 ? 16974134 : 16973833);
        this.f15645b = -1;
        this.f15645b = i;
        this.f15646c = bVar;
    }

    /* renamed from: a */
    public static int m23310a(Context context, Float f) {
        return (int) (context.getResources().getDisplayMetrics().scaledDensity * f.floatValue());
    }

    /* renamed from: a */
    public final void m23311a() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
        layoutParams.weight = 1.0f;
        this.f15647d = new LinearLayout(getContext());
        this.f15647d.setOrientation(1);
        this.f15647d.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        this.f15649f = new LinearLayout(getContext());
        this.f15654k = new TextView(getContext());
        this.f15654k.setLayoutParams(layoutParams);
        this.f15654k.setTextSize(16.0f);
        TextView textView = this.f15654k;
        int i = this.f15644a;
        textView.setPadding(i, i, i, i);
        if (1 == this.f15645b) {
            this.f15654k.setText("ApiLog");
        }
        this.f15649f.addView(this.f15654k);
        this.f15655l = new TextView(getContext());
        this.f15655l.setTextSize(16.0f);
        this.f15655l.setText("more");
        TextView textView2 = this.f15655l;
        int i2 = this.f15644a;
        textView2.setPadding(i2, i2, i2, i2);
        this.f15649f.addView(this.f15655l);
        this.f15647d.addView(this.f15649f);
        this.f15650g = new EditText(getContext());
        this.f15650g.setLayoutParams(layoutParams);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        this.f15653j = new TextView(getContext());
        this.f15652i = new TextView(getContext());
        this.f15653j.setText("Prev");
        this.f15652i.setText("Next");
        this.f15653j.setLayoutParams(layoutParams2);
        this.f15652i.setLayoutParams(layoutParams2);
        TextView textView3 = this.f15652i;
        int i3 = this.f15644a;
        textView3.setPadding(i3, i3, i3, i3);
        TextView textView4 = this.f15653j;
        int i4 = this.f15644a;
        textView4.setPadding(i4, i4, i4, i4);
        this.f15648e = new LinearLayout(getContext());
        this.f15648e.setOrientation(0);
        this.f15648e.addView(this.f15650g);
        this.f15648e.addView(this.f15653j);
        this.f15648e.addView(this.f15652i);
        this.f15648e.setVisibility(8);
        this.f15647d.addView(this.f15648e);
        this.f15651h = new WebView(getContext());
        WebSettings settings = this.f15651h.getSettings();
        settings.setDefaultFontSize(m23310a(getContext(), Float.valueOf(C6333a.m23273a(getContext(), 3.0f))));
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        setContentView(this.f15647d);
    }

    /* renamed from: a */
    public final void m23307a(String str) {
        new Handler().postDelayed(new RunnableC6319f(str), 1000L);
        dismiss();
    }

    /* renamed from: b */
    public final void m23306b() {
        this.f15650g.addTextChangedListener(new C6313a());
        this.f15650g.setOnEditorActionListener(new C6314b());
        this.f15655l.setOnClickListener(new View$OnClickListenerC6315c());
        if (this.f15645b == 1) {
            setTitle("API log");
            AbstractC6305b bVar = this.f15646c;
            if (bVar != null) {
                ArrayBlockingQueue<String> b = bVar.m23321b();
                StringBuilder sb = new StringBuilder();
                Iterator<String> it = b.iterator();
                while (it.hasNext()) {
                    sb.append(it.next());
                    sb.append("<br>");
                }
                this.f15647d.addView(this.f15651h, -1, -1);
                this.f15656m = sb.toString();
                this.f15656m = this.f15656m.replace(" ", "&nbsp;").replace("#", "<font color=\"green\">#</font>").replace("\n", "<br>");
                this.f15656m = this.f15656m.replace("GET", "<font color=\"red\">GET</font>");
                this.f15656m = this.f15656m.replace("POST", "<font color=\"red\">POST</font>");
                this.f15656m = this.f15656m.replace("PUT", "<font color=\"red\">PUT</font>");
                this.f15656m = this.f15656m.replace("DELETE", "<font color=\"red\">DELETE</font>");
                this.f15651h.loadData(Base64.encodeToString(this.f15656m.getBytes(StandardCharsets.UTF_8), 0), "text/html; charset=utf-8", "base64");
            }
        }
        this.f15651h.setOnClickListener(new View$OnClickListenerC6317d());
        View$OnClickListenerC6318e eVar = new View$OnClickListenerC6318e();
        this.f15652i.setOnClickListener(eVar);
        this.f15653j.setOnClickListener(eVar);
    }

    /* renamed from: c */
    public final void m23304c() {
        ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
        if (!clipboardManager.hasPrimaryClip() || !clipboardManager.getPrimaryClipDescription().hasMimeType("text/plain") || clipboardManager.getPrimaryClip() == null || clipboardManager.getPrimaryClip().getItemCount() < 1) {
            Toast.makeText(getContext(), "Please copy what you want to share first", 0).show();
        } else {
            m23307a(clipboardManager.getPrimaryClip().getItemAt(0).getText().toString());
        }
    }

    @Override // android.app.Dialog
    @SuppressLint({"NewApi"})
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f15644a = C6333a.m23273a(getContext(), 8.0f);
        requestWindowFeature(1);
        m23311a();
        m23306b();
    }

    @Override // android.app.Dialog
    public void show() {
        getWindow().setType(Build.VERSION.SDK_INT >= 26 ? 2038 : AdError.INTERNAL_ERROR_2003);
        super.show();
    }
}
