package com.mglab.scm.intro;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.C0396a;
import androidx.fragment.app.Fragment;
import ba.AbstractC0762k;
import ba.C0748b;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import com.mglab.scm.MainActivity;
import java.lang.reflect.Constructor;
import java.util.Map;
import java.util.Objects;
import org.greenrobot.eventbus.ThreadMode;
import p007a6.C0028d;
import p007a6.C0033h;
import p066d0.C2134a;
import p085ea.AbstractC2633b;
import p085ea.C2632a;
import p086f.ActivityC2651j;
import p095f8.C2779g;
import p095f8.C2780h;
import p117h8.C3043q;
import p117h8.C3047u;
import p138j8.C3287a;
import p138j8.C3288b;
import p149k8.C3400p;
import p149k8.C3401q;
import p160l8.C3540w;
import p278w8.C4775f;
import p278w8.C4776g;
@SuppressLint({"NonConstantResourceId"})
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/intro/IntroActivity.class */
public class IntroActivity extends ActivityC2651j {

    /* renamed from: p */
    public static boolean f7301p = false;

    /* renamed from: q */
    public static boolean f7302q = false;

    /* renamed from: r */
    public static boolean f7303r = false;

    /* renamed from: s */
    public static int f7304s = 0;

    /* renamed from: t */
    public static int f7305t = 0;

    /* renamed from: u */
    public static int f7306u = 0;

    /* renamed from: v */
    public static String f7307v;

    /* renamed from: w */
    public static boolean f7308w = false;
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: x */
    public static Context f7309x;
    @BindView
    public TextView back;
    @BindView
    public LinearLayout intro_bar_linear_layout;
    @BindView
    public TextView next;
    @BindView
    public ImageView progress1;
    @BindView
    public ImageView progress2;
    @BindView
    public ImageView progress3;
    @BindView
    public ImageView progress4;
    @BindView
    public ImageView progress5;

    /* renamed from: n */
    public final AbstractC2633b f7310n = new C1985a();

    /* renamed from: o */
    public final AbstractC2633b f7311o = new C1986b();

    /* renamed from: com.mglab.scm.intro.IntroActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/intro/IntroActivity$a.class */
    public class C1985a implements AbstractC2633b {
        public C1985a() {
            IntroActivity.this = r4;
        }

        @Override // p085ea.AbstractC2633b
        /* renamed from: a */
        public void mo3379a() {
        }

        @Override // p085ea.AbstractC2633b
        /* renamed from: b */
        public void mo3378b() {
            IntroActivity.this.m3964w(3);
            C3043q.m2722C(IntroActivity.this.getApplicationContext());
        }
    }

    /* renamed from: com.mglab.scm.intro.IntroActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/intro/IntroActivity$b.class */
    public class C1986b implements AbstractC2633b {
        public C1986b() {
            IntroActivity.this = r4;
        }

        @Override // p085ea.AbstractC2633b
        /* renamed from: a */
        public void mo3379a() {
            IntroActivity.this.m3964w(4);
        }

        @Override // p085ea.AbstractC2633b
        /* renamed from: b */
        public void mo3378b() {
            IntroActivity.this.m3964w(4);
            new C3043q().m2723B(IntroActivity.this.getApplicationContext(), false);
            new C3540w(IntroActivity.f7309x).m2206l(8, true);
        }
    }

    /* renamed from: v */
    public static boolean m3965v() {
        return f7302q && (f7301p || !C2779g.m3114a(f7309x)) && ((f7303r || f7304s >= 3) && !f7308w);
    }

    @OnClick
    @SuppressLint({"NonConstantResourceId"})
    public void backClick() {
        Fragment m8198H = m8094o().m8198H(2131296631);
        if (m8198H instanceof C3287a) {
            m3964w(4);
        } else if (m8198H instanceof Intro4) {
            m3964w(3);
        } else if (m8198H instanceof Intro3) {
            m3964w(2);
        } else if (m8198H instanceof Intro2) {
            m3964w(1);
        } else if (!(m8198H instanceof Intro1)) {
        } else {
            moveTaskToBack(true);
            Process.killProcess(Process.myPid());
            System.exit(1);
        }
    }

    @OnClick
    @SuppressLint({"NonConstantResourceId"})
    public void nextClick() {
        Fragment m8198H = m8094o().m8198H(2131296631);
        if (m8198H instanceof Intro1) {
            m3964w(2);
        } else if (m8198H instanceof Intro2) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 23) {
                C2632a.m3382a(this, i >= 26 ? new String[]{"android.permission.ANSWER_PHONE_CALLS", "android.permission.CALL_PHONE", "android.permission.READ_PHONE_STATE", "android.permission.READ_CALL_LOG"} : new String[]{"android.permission.CALL_PHONE", "android.permission.READ_PHONE_STATE", "android.permission.READ_CALL_LOG"}, this.f7310n);
                return;
            }
            m3964w(3);
            C3043q.m2722C(getApplicationContext());
        } else if (m8198H instanceof Intro3) {
            if (Build.VERSION.SDK_INT >= 23) {
                C2632a.m3382a(this, new String[]{"android.permission.READ_CONTACTS"}, this.f7311o);
                return;
            }
            m3964w(4);
            new C3043q().m2723B(getApplicationContext(), false);
        } else if (m8198H instanceof Intro4) {
            m3964w(5);
        } else if (!(m8198H instanceof C3287a)) {
        } else {
            C2780h.m3049g0(getApplicationContext(), "fstart", false);
            finish();
            Intent intent = new Intent(this, MainActivity.class);
            intent.setFlags(67108864);
            intent.setFlags(268435456);
            startActivity(intent);
        }
    }

    @Override // androidx.fragment.app.ActivityC0455o, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        Objects.toString(intent);
        super.onActivityResult(i, i2, intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        backClick();
    }

    @Override // androidx.fragment.app.ActivityC0455o, androidx.activity.ComponentActivity, p026c0.ActivityC0787g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        f7309x = getApplicationContext();
        C0748b.m7409b().m7400k(this);
        C2632a.m3381b(getApplicationContext());
        setContentView(2131492892);
        Map<Class<?>, Constructor<? extends Unbinder>> map = ButterKnife.f2883a;
        ButterKnife.m7385a(this, getWindow().getDecorView());
        m3964w(!C2780h.m3021x(f7309x) ? 1 : 0);
        if (!C2780h.m3021x(f7309x)) {
            C2779g.m3093v(f7309x);
            C2779g.m3120M(f7309x);
            m3966u();
        }
        f7301p = false;
        f7302q = false;
        f7303r = false;
        f7304s = 0;
        f7305t = 0;
        f7306u = 0;
        f7308w = false;
        f7307v = getString(2131821026);
        if (!C0748b.m7409b().m7405f(this)) {
            C0748b.m7409b().m7400k(this);
        }
    }

    @Override // p086f.ActivityC2651j, androidx.fragment.app.ActivityC0455o, android.app.Activity
    public void onDestroy() {
        if (C0748b.m7409b().m7405f(this)) {
            C0748b.m7409b().m7398m(this);
        }
        super.onDestroy();
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(C3401q c3401q) {
        int i = c3401q.f11443a;
        if (i == -5) {
            f7307v = getString(2131821040);
            int i2 = f7304s + 1;
            f7304s = i2;
            if (i2 <= 3) {
                C2779g.m3120M(getApplicationContext());
                StringBuilder sb = new StringBuilder();
                sb.append(f7307v);
                sb.append(".. ");
                sb.append(getString(2131821039));
                sb.append("(");
                f7307v = C0033h.m8885l(sb, f7304s, ")");
            }
            f7308w = false;
        } else if (i == -4) {
            f7307v = getString(2131821037);
            int i3 = f7304s + 1;
            f7304s = i3;
            if (i3 <= 3) {
                C2779g.m3120M(getApplicationContext());
                StringBuilder sb2 = new StringBuilder();
                sb2.append(f7307v);
                sb2.append(".. ");
                sb2.append(getString(2131821039));
                sb2.append("(");
                f7307v = C0033h.m8885l(sb2, f7304s, ")");
            }
            f7308w = false;
        } else if (i == -3) {
            f7307v = getString(2131821031);
            int i4 = f7304s + 1;
            f7304s = i4;
            if (i4 <= 3) {
                C2779g.m3120M(getApplicationContext());
                StringBuilder sb3 = new StringBuilder();
                sb3.append(f7307v);
                sb3.append(".. ");
                sb3.append(getString(2131821039));
                sb3.append("(");
                f7307v = C0033h.m8885l(sb3, f7304s, ")");
            }
            f7308w = false;
        } else if (i == -2) {
            f7307v = getString(2131821036);
            int i5 = f7304s + 1;
            f7304s = i5;
            if (i5 <= 3) {
                C2779g.m3120M(getApplicationContext());
                StringBuilder sb4 = new StringBuilder();
                sb4.append(f7307v);
                sb4.append(".. ");
                sb4.append(getString(2131821039));
                sb4.append("(");
                f7307v = C0033h.m8885l(sb4, f7304s, ")");
            }
            f7308w = false;
        } else if (i == -1) {
            f7307v = getString(2131821035);
            int i6 = f7304s + 1;
            f7304s = i6;
            if (i6 <= 3) {
                C2779g.m3120M(getApplicationContext());
                StringBuilder sb5 = new StringBuilder();
                sb5.append(f7307v);
                sb5.append(".. ");
                sb5.append(getString(2131821039));
                sb5.append("(");
                f7307v = C0033h.m8885l(sb5, f7304s, ")");
            }
            f7308w = false;
        } else if (i == 4) {
            f7308w = true;
            f7307v = getString(2131821039);
            m3963x(true);
            C2779g.m3120M(getApplicationContext());
        } else if (i == 10) {
            f7301p = true;
        } else if (i == 20) {
            f7302q = true;
        } else if (i == 50) {
            int i7 = f7306u;
            if (i7 < f7305t) {
                f7306u = i7 + 1;
            }
            f7307v = getString(2131821032);
        } else if (i == 77) {
            m3964w(2);
        } else if (i == 200) {
            C2779g.m3093v(f7309x);
            C2779g.m3120M(f7309x);
            m3966u();
            m3964w(1);
        } else if (i == 100) {
            f7303r = true;
            f7306u = f7305t;
            f7307v = getString(2131821025);
            f7308w = false;
        } else if (i == 101) {
            int i8 = c3401q.f11444b;
            if (i8 > f7305t) {
                f7305t = i8;
            }
            if (f7303r) {
                f7306u = f7305t;
            }
        }
        m3963x(m8094o().m8198H(2131296631) instanceof Intro4);
    }

    @Override // p086f.ActivityC2651j, android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
    }

    @Override // androidx.fragment.app.ActivityC0455o, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        C2632a.m3380c(i, iArr);
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // androidx.fragment.app.ActivityC0455o, android.app.Activity
    public void onResume() {
        super.onResume();
        Fragment m8198H = m8094o().m8198H(2131296631);
        if (C2780h.m3021x(f7309x) || !(m8198H instanceof C3288b)) {
            return;
        }
        C0028d.m8914f(200, C0748b.m7409b());
    }

    /* renamed from: u */
    public final void m3966u() {
        if (C2780h.m3052f(f7309x, "psetcreatebasepresets", true)) {
            C2780h.m3049g0(f7309x, "psetcreatebasepresets", false);
            new C4776g(new C4775f(), C3047u.class).mo458i();
            C3047u c3047u = new C3047u();
            c3047u.f10324d = C2780h.m3052f(f7309x, "psetonoff", true);
            c3047u.f10323c = "BASE";
            c3047u.f10325e = 0;
            c3047u.f10326f = C2780h.m3052f(f7309x, "psetusesim1", true);
            c3047u.f10327g = C2780h.m3052f(f7309x, "psetusesim2", true);
            c3047u.f10328h = C2780h.m3052f(f7309x, "psetusedb", true);
            c3047u.f10329i = C2780h.m3052f(f7309x, "psetusebl", true);
            c3047u.f10330j = C2780h.m3052f(f7309x, "psetusewl", true);
            c3047u.f10333m = false;
            Context context = f7309x;
            c3047u.f10331k = C2780h.m3052f(context, "psetusecontacts", C2779g.m3114a(context));
            c3047u.f10332l = C2780h.m3052f(f7309x, "psetblockallexceptcontacts", false);
            c3047u.f10334n = C2780h.m3052f(f7309x, "psetblh", true);
            c3047u.f10335o = C2780h.m3052f(f7309x, "psetbf", false);
            c3047u.f10336p = C2780h.m3052f(f7309x, "psetdelblock", false);
            c3047u.f10337q = C2780h.m3052f(f7309x, "psshownotif", true);
            c3047u.f10338r = false;
            c3047u.f10339s = true;
            c3047u.f10340t = true;
            c3047u.f10341u = true;
            c3047u.f10342v = true;
            c3047u.f10343w = true;
            c3047u.f10344x = true;
            c3047u.f10345y = true;
            c3047u.f10346z = "00:00";
            c3047u.f10321A = "23:59";
            c3047u.mo7416a();
            C3047u c3047u2 = new C3047u();
            c3047u2.f10323c = f7309x.getString(2131820949);
            c3047u2.f10324d = false;
            c3047u2.f10325e = 1;
            c3047u2.f10326f = true;
            c3047u2.f10327g = true;
            c3047u2.f10328h = true;
            c3047u2.f10329i = true;
            c3047u2.f10330j = true;
            c3047u2.f10333m = false;
            c3047u2.f10331k = true;
            c3047u2.f10332l = true;
            c3047u2.f10334n = false;
            c3047u2.f10335o = false;
            c3047u2.f10336p = false;
            c3047u2.f10337q = true;
            c3047u2.f10338r = true;
            c3047u2.f10339s = false;
            c3047u2.f10340t = false;
            c3047u2.f10341u = false;
            c3047u2.f10342v = false;
            c3047u2.f10343w = false;
            c3047u2.f10344x = true;
            c3047u2.f10345y = true;
            c3047u2.f10346z = "00:00";
            c3047u2.f10321A = "23:59";
            c3047u2.mo7416a();
            C3047u c3047u3 = new C3047u();
            c3047u3.f10323c = f7309x.getString(2131820950);
            c3047u3.f10324d = false;
            c3047u3.f10325e = 2;
            c3047u3.f10326f = false;
            c3047u3.f10327g = true;
            c3047u3.f10328h = true;
            c3047u3.f10329i = true;
            c3047u3.f10330j = true;
            c3047u3.f10333m = true;
            c3047u3.f10331k = true;
            c3047u3.f10332l = false;
            c3047u3.f10334n = false;
            c3047u3.f10335o = false;
            c3047u3.f10336p = false;
            c3047u3.f10337q = true;
            c3047u3.f10338r = true;
            c3047u3.f10339s = true;
            c3047u3.f10340t = true;
            c3047u3.f10341u = true;
            c3047u3.f10342v = true;
            c3047u3.f10343w = true;
            c3047u3.f10344x = true;
            c3047u3.f10345y = true;
            c3047u3.f10346z = "00:00";
            c3047u3.f10321A = "23:59";
            c3047u3.mo7416a();
            C3047u c3047u4 = new C3047u();
            c3047u4.f10323c = f7309x.getString(2131820951);
            c3047u4.f10324d = false;
            c3047u4.f10325e = 3;
            c3047u4.f10326f = true;
            c3047u4.f10327g = true;
            c3047u4.f10328h = true;
            c3047u4.f10329i = true;
            c3047u4.f10330j = true;
            c3047u4.f10333m = false;
            c3047u4.f10331k = true;
            c3047u4.f10332l = false;
            c3047u4.f10334n = true;
            c3047u4.f10335o = true;
            c3047u4.f10336p = false;
            c3047u4.f10337q = false;
            c3047u4.f10338r = true;
            c3047u4.f10339s = true;
            c3047u4.f10340t = true;
            c3047u4.f10341u = true;
            c3047u4.f10342v = true;
            c3047u4.f10343w = true;
            c3047u4.f10344x = true;
            c3047u4.f10345y = true;
            c3047u4.f10346z = "23:00";
            c3047u4.f10321A = "07:00";
            c3047u4.mo7416a();
        }
    }

    /* renamed from: w */
    public void m3964w(int i) {
        C0396a c0396a = new C0396a(m8094o());
        if (i == 0) {
            c0396a.m8095e(2131296631, new C3288b(), null);
            c0396a.m8212i();
        } else if (i == 1) {
            c0396a.m8095e(2131296631, new Intro1(), null);
            c0396a.m8212i();
        } else if (i == 2) {
            c0396a.m8095e(2131296631, new Intro2(), null);
            c0396a.m8212i();
        } else if (i == 3) {
            c0396a.m8095e(2131296631, new Intro3(), null);
            c0396a.m8212i();
        } else if (i == 4) {
            c0396a.m8095e(2131296631, new Intro4(), null);
            c0396a.m8212i();
        } else if (i == 5) {
            c0396a.m8095e(2131296631, new C3287a(), null);
            c0396a.m8212i();
        }
        boolean z = false;
        this.intro_bar_linear_layout.setVisibility(i == 0 ? 8 : 0);
        if (i != 0) {
            int identifier = getResources().getIdentifier("android:drawable/radiobutton_off_background", null, null);
            int identifier2 = getResources().getIdentifier("android:drawable/radiobutton_on_background", null, null);
            this.progress1.setImageResource(identifier);
            this.progress2.setImageResource(identifier);
            this.progress3.setImageResource(identifier);
            this.progress4.setImageResource(identifier);
            this.progress5.setImageResource(identifier);
            this.next.setText(2131820798);
            if (i == 4) {
                z = true;
            }
            m3963x(z);
            this.back.setText(2131820795);
            if (i == 1) {
                this.progress1.setImageResource(identifier2);
                this.back.setText(2131820796);
            } else if (i == 2) {
                this.progress2.setImageResource(identifier2);
            } else if (i == 3) {
                this.progress3.setImageResource(identifier2);
            } else if (i == 4) {
                this.progress4.setImageResource(identifier2);
            } else if (i != 5) {
            } else {
                this.progress5.setImageResource(identifier2);
                this.next.setText(2131820797);
            }
        }
    }

    /* renamed from: x */
    public final void m3963x(boolean z) {
        if (!z) {
            this.next.setEnabled(true);
            this.next.setTextColor(C2134a.m3845b(getApplicationContext(), 2131099742));
            return;
        }
        if (m3965v()) {
            this.next.setEnabled(true);
            this.next.setTextColor(C2134a.m3845b(getApplicationContext(), 2131099742));
        } else {
            this.next.setEnabled(false);
            this.next.setTextColor(C2134a.m3845b(getApplicationContext(), 2131099737));
        }
        C0748b.m7409b().m7404g(new C3400p("from IntroActivity"));
    }
}
