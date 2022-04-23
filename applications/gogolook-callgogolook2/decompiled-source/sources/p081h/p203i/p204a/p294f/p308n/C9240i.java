package p081h.p203i.p204a.p294f.p308n;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.util.StateSet;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: h.i.a.f.n.i */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/n/i.class */
public final class C9240i {

    /* renamed from: a */
    public final ArrayList<C9242b> f21167a = new ArrayList<>();

    /* renamed from: b */
    public C9242b f21168b = null;

    /* renamed from: c */
    public ValueAnimator f21169c = null;

    /* renamed from: d */
    public final Animator.AnimatorListener f21170d = new C9241a();

    /* renamed from: h.i.a.f.n.i$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/n/i$a.class */
    public class C9241a extends AnimatorListenerAdapter {
        public C9241a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C9240i iVar = C9240i.this;
            if (iVar.f21169c == animator) {
                iVar.f21169c = null;
            }
        }
    }

    /* renamed from: h.i.a.f.n.i$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/n/i$b.class */
    public static class C9242b {

        /* renamed from: a */
        public final int[] f21172a;

        /* renamed from: b */
        public final ValueAnimator f21173b;

        public C9242b(int[] iArr, ValueAnimator valueAnimator) {
            this.f21172a = iArr;
            this.f21173b = valueAnimator;
        }
    }

    /* renamed from: a */
    public final void m15649a() {
        ValueAnimator valueAnimator = this.f21169c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f21169c = null;
        }
    }

    /* renamed from: a */
    public final void m15648a(C9242b bVar) {
        this.f21169c = bVar.f21173b;
        this.f21169c.start();
    }

    /* renamed from: a */
    public void m15647a(int[] iArr) {
        C9242b bVar;
        int size = this.f21167a.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                bVar = null;
                break;
            }
            C9242b bVar2 = this.f21167a.get(i);
            if (StateSet.stateSetMatches(bVar2.f21172a, iArr)) {
                bVar = bVar2;
                break;
            }
            i++;
        }
        C9242b bVar3 = this.f21168b;
        if (bVar != bVar3) {
            if (bVar3 != null) {
                m15649a();
            }
            this.f21168b = bVar;
            if (bVar != null) {
                m15648a(bVar);
            }
        }
    }

    /* renamed from: a */
    public void m15646a(int[] iArr, ValueAnimator valueAnimator) {
        C9242b bVar = new C9242b(iArr, valueAnimator);
        valueAnimator.addListener(this.f21170d);
        this.f21167a.add(bVar);
    }

    /* renamed from: b */
    public void m15645b() {
        ValueAnimator valueAnimator = this.f21169c;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f21169c = null;
        }
    }
}
