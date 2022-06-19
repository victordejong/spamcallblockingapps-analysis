package p132j2;

import android.animation.ValueAnimator;
import android.graphics.Color;
import com.github.clans.fab.FloatingActionMenu;
/* renamed from: j2.a */
/* loaded from: classes-dex2jar.jar:j2/a.class */
public class C3169a implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ int f10671a;

    /* renamed from: b */
    public final /* synthetic */ int f10672b;

    /* renamed from: c */
    public final /* synthetic */ int f10673c;

    /* renamed from: d */
    public final /* synthetic */ FloatingActionMenu f10674d;

    public C3169a(FloatingActionMenu floatingActionMenu, int i, int i2, int i3) {
        this.f10674d = floatingActionMenu;
        this.f10671a = i;
        this.f10672b = i2;
        this.f10673c = i3;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f10674d.setBackgroundColor(Color.argb(((Integer) valueAnimator.getAnimatedValue()).intValue(), this.f10671a, this.f10672b, this.f10673c));
    }
}
