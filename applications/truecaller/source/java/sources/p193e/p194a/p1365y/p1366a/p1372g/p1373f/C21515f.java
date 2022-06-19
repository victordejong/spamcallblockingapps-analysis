package p193e.p194a.p1365y.p1366a.p1372g.p1373f;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.tenor.android.core.constant.ViewAction;
import java.util.Map;
import java.util.Objects;
import p1727n3.p1789g0.AbstractC26214m;
import p1727n3.p1789g0.C26227u;
import s1.z.c.l;
/* renamed from: e.a.y.a.g.f.f */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/g/f/f.class */
public final class C21515f extends AbstractC26214m {

    /* renamed from: y */
    public final String f60066y = "emojiView:rotation";

    /* renamed from: e.a.y.a.g.f.f$a */
    /* loaded from: classes9-dex2jar.jar:e/a/y/a/g/f/f$a.class */
    public static final class C21516a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public final /* synthetic */ View f60067a;

        /* renamed from: b */
        public final /* synthetic */ ViewGroup f60068b;

        public C21516a(View view, ViewGroup viewGroup) {
            this.f60067a = view;
            this.f60068b = viewGroup;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            View view = this.f60067a;
            l.d(view, ViewAction.VIEW);
            l.d(valueAnimator, "it");
            Object animatedValue = valueAnimator.getAnimatedValue();
            Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
            view.setRotation(((Float) animatedValue).floatValue());
        }
    }

    /* renamed from: L */
    public final void m9569L(C26227u c26227u) {
        Map<String, Object> map = c26227u.f73123a;
        l.d(map, "values.values");
        String str = this.f60066y;
        View view = c26227u.f73124b;
        l.d(view, "values.view");
        map.put(str, Float.valueOf(view.getRotation()));
    }

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: f */
    public void mo2503f(C26227u c26227u) {
        l.e(c26227u, "transitionValues");
        m9569L(c26227u);
    }

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: i */
    public void mo2501i(C26227u c26227u) {
        l.e(c26227u, "transitionValues");
        m9569L(c26227u);
    }

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: m */
    public Animator mo2535m(ViewGroup viewGroup, C26227u c26227u, C26227u c26227u2) {
        l.e(viewGroup, "sceneRoot");
        if (c26227u == null || c26227u2 == null) {
            return null;
        }
        View view = c26227u.f73124b;
        Object obj = c26227u.f73123a.get(this.f60066y);
        Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) obj).floatValue();
        Object obj2 = c26227u2.f73123a.get(this.f60066y);
        Objects.requireNonNull(obj2, "null cannot be cast to non-null type kotlin.Float");
        float floatValue2 = ((Float) obj2).floatValue();
        if (floatValue == floatValue2) {
            return null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(floatValue, floatValue2);
        ofFloat.addUpdateListener(new C21516a(view, viewGroup));
        ofFloat.setRepeatCount(8);
        ofFloat.setRepeatMode(2);
        Context context = viewGroup.getContext();
        Objects.requireNonNull(context, "null cannot be cast to non-null type android.app.Activity");
        Window window = ((Activity) context).getWindow();
        l.d(window, "(sceneRoot.context as Activity).window");
        View decorView = window.getDecorView();
        l.d(decorView, "(sceneRoot.context as Activity).window.decorView");
        View rootView = decorView.getRootView();
        l.d(rootView, "(sceneRoot.context as Ac…window.decorView.rootView");
        ofFloat.setDuration(rootView.getHeight() / 2);
        return ofFloat;
    }
}
