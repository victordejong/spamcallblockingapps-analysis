package p459j.p460a.p613z0.p617p;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import android.widget.Toast;
import com.facebook.ads.AdError;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$style;
import java.lang.ref.WeakReference;
import java.util.concurrent.TimeUnit;
import p081h.p160h.p172b.p173a.C6298e;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14081m3;
import p459j.p460a.p582w0.C14197v4;
import p459j.p460a.p582w0.C14206w4;
import p660rx.Observable;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.z0.p.h */
/* loaded from: classes3-dex2jar.jar:j/a/z0/p/h.class */
public class C14687h {

    /* renamed from: h */
    public static WeakReference<C14687h> f32795h;

    /* renamed from: b */
    public Context f32797b;

    /* renamed from: c */
    public String f32798c;

    /* renamed from: d */
    public int f32799d;

    /* renamed from: e */
    public Toast f32800e;

    /* renamed from: f */
    public WindowManager f32801f;

    /* renamed from: g */
    public View f32802g = null;

    /* renamed from: a */
    public int f32796a = -1;

    /* renamed from: j.a.z0.p.h$a */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/p/h$a.class */
    public class C14688a implements Action1<Long> {
        public C14688a() {
        }

        /* renamed from: a */
        public void call(Long l) {
            C14687h.this.m859b();
        }
    }

    public C14687h(Context context, String str, int i) {
        this.f32797b = context;
        this.f32798c = str;
        this.f32799d = i;
        this.f32801f = (WindowManager) this.f32797b.getSystemService("window");
    }

    /* renamed from: a */
    public static C14687h m862a(Context context, int i, int i2) {
        return new C14687h(context, C14206w4.m2225a(i), i2);
    }

    /* renamed from: a */
    public static C14687h m861a(Context context, String str, int i) {
        WeakReference<C14687h> weakReference = f32795h;
        if (!(weakReference == null || weakReference.get() == null)) {
            f32795h.get().m864a();
        }
        C14687h hVar = new C14687h(context, str, i);
        f32795h = new WeakReference<>(hVar);
        return hVar;
    }

    /* renamed from: a */
    public C14687h m863a(int i) {
        this.f32796a = i;
        return this;
    }

    /* renamed from: a */
    public void m864a() {
        Toast toast = this.f32800e;
        if (toast != null) {
            toast.cancel();
            this.f32800e = null;
        }
        m859b();
    }

    /* renamed from: b */
    public final void m859b() {
        View view = this.f32802g;
        if (!(view == null || view.getParent() == null)) {
            try {
                this.f32801f.removeViewImmediate(this.f32802g);
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
        this.f32802g = null;
    }

    /* renamed from: c */
    public void m858c() {
        if (C14197v4.m2249b(this.f32797b)) {
            m859b();
            this.f32802g = LayoutInflater.from(this.f32797b).inflate(R$layout.toast_lock_screen_general, (ViewGroup) null);
            View view = this.f32802g;
            if (view instanceof TextView) {
                ((TextView) view).setText(this.f32798c);
            }
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.height = -2;
            layoutParams.width = -1;
            layoutParams.format = -3;
            layoutParams.windowAnimations = R$style.SlideToastAnimation;
            layoutParams.type = C6298e.m23356a((int) AdError.INTERNAL_ERROR_2006);
            layoutParams.flags = 526248;
            layoutParams.gravity = 81;
            View view2 = this.f32802g;
            if (view2 != null) {
                C13878a3.m3236a(this.f32801f, view2, layoutParams);
            }
            Observable.timer(this.f32799d == 1 ? 6000L : 2000L, TimeUnit.MILLISECONDS).subscribeOn(Schedulers.computation()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C14688a(), C14081m3.m2611a());
            return;
        }
        this.f32800e = Toast.makeText(this.f32797b.getApplicationContext(), this.f32798c, this.f32799d);
        int i = this.f32796a;
        if (i != -1) {
            this.f32800e.setGravity(i, 0, 0);
        }
        this.f32800e.show();
    }
}
