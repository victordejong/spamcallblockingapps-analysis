package p132j2;

import android.animation.ValueAnimator;
import android.graphics.Color;
import com.github.clans.fab.FloatingActionMenu;
/* renamed from: j2.b */
/* loaded from: classes-dex2jar.jar:j2/b.class */
public class C3170b implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ int f10675a;

    /* renamed from: b */
    public final /* synthetic */ int f10676b;

    /* renamed from: c */
    public final /* synthetic */ int f10677c;

    /* renamed from: d */
    public final /* synthetic */ FloatingActionMenu f10678d;

    public C3170b(FloatingActionMenu floatingActionMenu, int i, int i2, int i3) {
        this.f10678d = floatingActionMenu;
        this.f10675a = i;
        this.f10676b = i2;
        this.f10677c = i3;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f10678d.setBackgroundColor(Color.argb(((Integer) valueAnimator.getAnimatedValue()).intValue(), this.f10675a, this.f10676b, this.f10677c));
    }
}
