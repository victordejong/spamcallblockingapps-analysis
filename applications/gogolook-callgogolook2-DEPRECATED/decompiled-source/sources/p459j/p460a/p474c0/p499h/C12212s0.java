package p459j.p460a.p474c0.p499h;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import gogolook.callgogolook2.R$integer;
import gogolook.callgogolook2.messaging.p078ui.BugleActionBarActivity;
import java.util.List;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p491g.AbstractC12117u;
import p459j.p460a.p474c0.p491g.C12111t;
import p459j.p460a.p474c0.p491g.C12118v;
import p459j.p460a.p582w0.C14017g4;
/* renamed from: j.a.c0.h.s0 */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/s0.class */
public class C12212s0 {

    /* renamed from: a */
    public static final int f27369a = m6797a().getResources().getInteger(R$integer.mediapicker_transition_duration);

    /* renamed from: b */
    public static final int f27370b = m6797a().getResources().getInteger(R$integer.compose_transition_duration);

    /* renamed from: c */
    public static final int f27371c = m6797a().getResources().getInteger(R$integer.reveal_view_animation_duration);

    /* renamed from: d */
    public static final Interpolator f27372d = new animationInterpolatorC12215t(0.4f, 0.0f, 0.2f, 1.0f);

    /* renamed from: e */
    public static final Interpolator f27373e = new animationInterpolatorC12215t(0.4f, 0.0f, 0.8f, 0.5f);

    /* renamed from: f */
    public static final Interpolator f27374f = new animationInterpolatorC12215t(0.0f, 0.0f, 0.2f, 1.0f);

    /* renamed from: j.a.c0.h.s0$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/s0$a.class */
    public static final class View$OnLayoutChangeListenerC12213a implements View.OnLayoutChangeListener {

        /* renamed from: a */
        public final /* synthetic */ Runnable f27375a;

        /* renamed from: b */
        public final /* synthetic */ View f27376b;

        public View$OnLayoutChangeListenerC12213a(Runnable runnable, View view) {
            this.f27375a = runnable;
            this.f27376b = view;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            C12204q0.m6814a().post(this.f27375a);
            this.f27376b.removeOnLayoutChangeListener(this);
        }
    }

    /* renamed from: j.a.c0.h.s0$b  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/s0$b.class */
    public static final class animationAnimation$AnimationListenerC12214b implements Animation.AnimationListener {

        /* renamed from: a */
        public final /* synthetic */ Runnable f27377a;

        public animationAnimation$AnimationListenerC12214b(Runnable runnable) {
            this.f27377a = runnable;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            if (this.f27377a != null) {
                C12204q0.m6814a().post(this.f27377a);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    static {
        m6797a().getResources().getInteger(R$integer.asyncimage_transition_duration);
    }

    /* renamed from: a */
    public static Context m6797a() {
        return AbstractC11516a.m9413n().mo9412a();
    }

    /* renamed from: a */
    public static Rect m6792a(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new Rect(iArr[0], iArr[1], iArr[0] + view.getMeasuredWidth(), iArr[1] + view.getMeasuredHeight());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static CharSequence m6788a(String str, TextPaint textPaint, int i, String str2, String str3) {
        CharSequence commaEllipsize = TextUtils.commaEllipsize(str, textPaint, i, str2, str3);
        if (!TextUtils.isEmpty(commaEllipsize)) {
            str = commaEllipsize;
        }
        return str;
    }

    /* renamed from: a */
    public static void m6796a(int i) {
        Toast.makeText(m6797a(), m6797a().getString(i), 1).show();
    }

    /* renamed from: a */
    public static void m6795a(Activity activity, int i) {
        if (C14017g4.m2805s()) {
            activity.getWindow().setStatusBarColor(Color.rgb((int) Math.floor(Color.red(i) * 0.84f), (int) Math.floor(Color.green(i) * 0.84f), (int) Math.floor(Color.blue(i) * 0.84f)));
        }
    }

    /* renamed from: a */
    public static final void m6794a(Context context, int i) {
        if (context instanceof BugleActionBarActivity) {
            ((BugleActionBarActivity) context).f11453f = i;
        }
    }

    /* renamed from: a */
    public static void m6793a(Context context, @NonNull View view, @NonNull String str, @NonNull C12111t.C12113b bVar, @Nullable List<AbstractC12117u> list, @Nullable C12111t.C12115d dVar) {
        C12151d.m7000b(context);
        C12151d.m6999b(!TextUtils.isEmpty(str));
        C12151d.m7000b(bVar);
        C12111t.C12114c a = C12118v.m7107c().m7117a(view);
        a.m7133a(str);
        a.m7136a(bVar);
        a.m7132a(list);
        a.m7134a(dVar);
        a.m7131b();
    }

    /* renamed from: a */
    public static void m6791a(View view, int i, @Nullable Runnable runnable) {
        if (view.getVisibility() != i) {
            float f = i == 0 ? 0.0f : 1.0f;
            float f2 = i == 0 ? 1.0f : 0.0f;
            ScaleAnimation scaleAnimation = new ScaleAnimation(f, f2, f, f2, 1, 0.5f, 1, 0.5f);
            scaleAnimation.setDuration(f27371c);
            scaleAnimation.setInterpolator(f27372d);
            scaleAnimation.setAnimationListener(new animationAnimation$AnimationListenerC12214b(runnable));
            view.clearAnimation();
            view.startAnimation(scaleAnimation);
            view.setVisibility(i);
        } else if (runnable != null) {
            C12204q0.m6814a().post(runnable);
        }
    }

    /* renamed from: a */
    public static void m6790a(View view, Runnable runnable) {
        view.addOnLayoutChangeListener(new View$OnLayoutChangeListenerC12213a(runnable, view));
    }

    /* renamed from: a */
    public static void m6789a(String str) {
        Toast.makeText(m6797a(), str, 1).show();
    }

    /* renamed from: b */
    public static int m6786b(View view) {
        return view.getPaddingEnd();
    }

    /* renamed from: b */
    public static boolean m6787b() {
        return AbstractC11516a.m9413n().mo9412a().getResources().getConfiguration().orientation == 2;
    }

    /* renamed from: c */
    public static int m6784c(View view) {
        return view.getPaddingStart();
    }

    /* renamed from: c */
    public static boolean m6785c() {
        AbstractC12181l0 t = AbstractC12181l0.m6886t();
        return t.m6890p() && t.mo6874g() && t.m6891m();
    }

    /* renamed from: d */
    public static boolean m6783d() {
        boolean z = true;
        if (AbstractC11516a.m9413n().mo9412a().getResources().getConfiguration().getLayoutDirection() != 1) {
            z = false;
        }
        return z;
    }
}
