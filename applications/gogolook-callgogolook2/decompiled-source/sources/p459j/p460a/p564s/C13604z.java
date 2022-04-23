package p459j.p460a.p564s;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.InputDeviceCompat;
import gogolook.callgogolook2.MyApplication;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import p081h.p160h.p172b.p173a.C6298e;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14260e;
/* renamed from: j.a.s.z */
/* loaded from: classes2-dex2jar.jar:j/a/s/z.class */
public class C13604z {

    /* renamed from: l */
    public static C13604z f30537l;

    /* renamed from: c */
    public SpannableStringBuilder f30540c;

    /* renamed from: f */
    public WindowManager.LayoutParams f30543f;

    /* renamed from: g */
    public WindowManager.LayoutParams f30544g;

    /* renamed from: i */
    public TextView f30546i;

    /* renamed from: j */
    public TextView f30547j;

    /* renamed from: b */
    public ArrayList<C13609e> f30539b = new ArrayList<>();

    /* renamed from: d */
    public ArrayList<String> f30541d = new ArrayList<>();

    /* renamed from: k */
    public boolean f30548k = false;

    /* renamed from: a */
    public Context f30538a = MyApplication.m29013o();

    /* renamed from: e */
    public WindowManager f30542e = (WindowManager) MyApplication.m29013o().getSystemService("window");

    /* renamed from: h */
    public DisplayMetrics f30545h = this.f30538a.getResources().getDisplayMetrics();

    /* renamed from: j.a.s.z$a */
    /* loaded from: classes2-dex2jar.jar:j/a/s/z$a.class */
    public class View$OnClickListenerC13605a implements View.OnClickListener {
        public View$OnClickListenerC13605a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (((Integer) C13604z.this.f30547j.getTag()).intValue() == 0) {
                C13604z.this.m3855a(1);
            } else if (((Integer) C13604z.this.f30547j.getTag()).intValue() == 1) {
                C13604z.this.m3855a(2);
            } else {
                C13604z.this.m3855a(0);
            }
        }
    }

    /* renamed from: j.a.s.z$b */
    /* loaded from: classes2-dex2jar.jar:j/a/s/z$b.class */
    public class View$OnLongClickListenerC13606b implements View.OnLongClickListener {
        public View$OnLongClickListenerC13606b() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            C13604z.this.m3843f();
            return true;
        }
    }

    /* renamed from: j.a.s.z$c */
    /* loaded from: classes2-dex2jar.jar:j/a/s/z$c.class */
    public class RunnableC13607c implements Runnable {
        public RunnableC13607c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C13604z.this.f30546i.setText(C13604z.this.f30540c);
        }
    }

    /* renamed from: j.a.s.z$d */
    /* loaded from: classes2-dex2jar.jar:j/a/s/z$d.class */
    public class DialogInterface$OnClickListenerC13608d implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ CheckBox[] f30552a;

        public DialogInterface$OnClickListenerC13608d(CheckBox[] checkBoxArr) {
            this.f30552a = checkBoxArr;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C13604z.this.f30541d.clear();
            int i2 = 0;
            while (true) {
                CheckBox[] checkBoxArr = this.f30552a;
                if (i2 < checkBoxArr.length) {
                    if (checkBoxArr[i2].isChecked()) {
                        C13604z.this.f30541d.add(C14260e.f31880a[i2]);
                    }
                    i2++;
                } else {
                    C13604z.this.f30546i.setVisibility(0);
                    C13604z.this.m3844e();
                    return;
                }
            }
        }
    }

    /* renamed from: j.a.s.z$e */
    /* loaded from: classes2-dex2jar.jar:j/a/s/z$e.class */
    public class C13609e {

        /* renamed from: a */
        public String f30554a;

        /* renamed from: b */
        public String f30555b;

        /* renamed from: c */
        public int f30556c;

        public C13609e(C13604z zVar, String str, String str2, int i) {
            this.f30554a = str;
            this.f30555b = str2;
            this.f30556c = i;
            System.currentTimeMillis();
        }
    }

    public C13604z() {
        this.f30541d.add("ggla");
        m3850b();
        m3848c();
    }

    /* renamed from: h */
    public static C13604z m3841h() {
        return f30537l;
    }

    /* renamed from: i */
    public static void m3840i() {
        f30537l = new C13604z();
    }

    /* renamed from: j */
    public static boolean m3839j() {
        return f30537l != null;
    }

    /* renamed from: a */
    public final int m3852a(String str) {
        if (str.equals("flurry")) {
            return -1;
        }
        if (str.equals("ggla")) {
            return -16711936;
        }
        if (str.equals("ggla_sdk")) {
            return InputDeviceCompat.SOURCE_ANY;
        }
        return -3355444;
    }

    /* renamed from: a */
    public void m3856a() {
        this.f30548k = false;
        try {
            this.f30542e.removeView(this.f30546i);
            this.f30542e.removeView(this.f30547j);
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public final void m3855a(int i) {
        this.f30547j.setTag(Integer.valueOf(i));
        if (i == 0) {
            this.f30546i.setVisibility(8);
        } else if (i == 1) {
            this.f30546i.setVisibility(0);
            this.f30546i.setBackgroundColor(Color.parseColor("#60000000"));
        } else {
            this.f30546i.setVisibility(0);
            this.f30546i.setBackgroundColor(-16777216);
        }
    }

    /* renamed from: a */
    public void m3851a(String str, String str2) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss");
        ArrayList<C13609e> arrayList = this.f30539b;
        arrayList.add(new C13609e(this, "[" + simpleDateFormat.format(new Date()) + "] " + str, str2, m3852a(str2)));
        if (this.f30539b.size() > 80) {
            this.f30539b.remove(0);
        }
        m3844e();
    }

    /* renamed from: b */
    public final void m3850b() {
        this.f30546i = new TextView(this.f30538a);
        this.f30546i.setPadding(0, C14217x3.m2201a(24.0f), 0, 0);
        this.f30546i.setBackgroundColor(Color.parseColor("#60000000"));
        this.f30546i.setTextSize(13.0f);
        this.f30546i.setTextColor(Color.parseColor("#80B3FFF1"));
        this.f30543f = new WindowManager.LayoutParams();
        this.f30543f.type = C6298e.m23356a(2010);
        WindowManager.LayoutParams layoutParams = this.f30543f;
        layoutParams.flags = 56;
        layoutParams.format = -2;
        layoutParams.gravity = 48;
        layoutParams.x = 0;
        layoutParams.y = 0;
        DisplayMetrics displayMetrics = this.f30545h;
        layoutParams.width = displayMetrics.widthPixels;
        layoutParams.height = (int) (displayMetrics.heightPixels * 0.7f);
        m3851a("Initialize Event Viewer\n", "flurry");
    }

    /* renamed from: c */
    public final void m3848c() {
        this.f30547j = new TextView(this.f30538a);
        this.f30547j.setText("[Event Viewer]");
        int a = C14217x3.m2201a(4.0f);
        int a2 = C14217x3.m2201a(2.0f);
        this.f30547j.setPadding(a, a2, a, a2);
        m3855a(0);
        this.f30547j.setOnClickListener(new View$OnClickListenerC13605a());
        this.f30547j.setGravity(17);
        this.f30547j.setOnLongClickListener(new View$OnLongClickListenerC13606b());
        this.f30547j.setTextColor(-1);
        this.f30547j.setBackgroundColor(Color.parseColor("#60000000"));
        this.f30544g = new WindowManager.LayoutParams();
        this.f30544g.type = C6298e.m23356a(2010);
        WindowManager.LayoutParams layoutParams = this.f30544g;
        layoutParams.flags = 40;
        layoutParams.format = -2;
        layoutParams.gravity = 49;
        layoutParams.x = 0;
        layoutParams.y = 0;
        layoutParams.width = -2;
        layoutParams.height = C14217x3.m2201a(24.0f);
    }

    /* renamed from: d */
    public boolean m3846d() {
        return this.f30548k;
    }

    /* renamed from: e */
    public final void m3844e() {
        this.f30540c = new SpannableStringBuilder();
        int size = this.f30539b.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            C13609e eVar = this.f30539b.get((size - 1) - i2);
            i = i;
            if (this.f30541d.contains(eVar.f30555b)) {
                this.f30540c.append((CharSequence) eVar.f30554a);
                this.f30540c.setSpan(new ForegroundColorSpan(eVar.f30556c), i, eVar.f30554a.length() + i, 33);
                this.f30540c.append((CharSequence) "\n");
                i = this.f30540c.length();
            }
        }
        this.f30546i.post(new RunnableC13607c());
    }

    /* renamed from: f */
    public final void m3843f() {
        LinearLayout linearLayout = new LinearLayout(this.f30538a);
        linearLayout.setOrientation(1);
        CheckBox[] checkBoxArr = new CheckBox[C14260e.f31880a.length];
        for (int i = 0; i < checkBoxArr.length; i++) {
            checkBoxArr[i] = new CheckBox(this.f30538a);
            CheckBox checkBox = checkBoxArr[i];
            checkBox.setText("show " + C14260e.f31880a[i]);
            checkBoxArr[i].setChecked(this.f30541d.contains(C14260e.f31880a[i]));
            linearLayout.addView(checkBoxArr[i]);
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f30538a);
        builder.setTitle("set filter");
        builder.setView(linearLayout);
        builder.setPositiveButton("ok", new DialogInterface$OnClickListenerC13608d(checkBoxArr));
        AlertDialog create = builder.create();
        create.getWindow().setType(C6298e.m23356a(2010));
        create.show();
    }

    /* renamed from: g */
    public void m3842g() {
        this.f30548k = true;
        m3855a(0);
        m3843f();
        try {
            C13878a3.m3236a(this.f30542e, this.f30546i, this.f30543f);
            C13878a3.m3236a(this.f30542e, this.f30547j, this.f30543f);
        } catch (Exception e) {
        }
    }
}
