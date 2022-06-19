package p193e.p194a.p195a.p237h1.p239o;

import android.animation.ValueAnimator;
import android.view.View;
import android.widget.FrameLayout;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.s;
import s1.z.b.a;
import s1.z.b.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001J=\u0010\b\u001a\u00020\u00042\u001c\b\u0002\u0010\u0005\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00022\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\r\u0010\n\u001a\u00020\u0003¢\u0006\u0004\b\n\u0010\u000bJ\r\u0010\f\u001a\u00020\u0003¢\u0006\u0004\b\f\u0010\u000bR\u0016\u0010\u000f\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u000eR\u0016\u0010\u0011\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u000e¨\u0006\u0012"}, d2 = {"Le/a/a/h1/o/d;", "Landroid/widget/FrameLayout;", "Lkotlin/Function2;", "", "Ls1/s;", "updateListener", "Lkotlin/Function0;", "finishedListener", "a", "(Ls1/z/b/p;Ls1/z/b/a;)V", "getDismissButtonX", "()F", "getDismissButtonY", "Landroid/view/View;", "Landroid/view/View;", "dismissButton", C22021b.f61237c, "gradientView", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.h1.o.d */
/* loaded from: classes11-dex2jar.jar:e/a/a/h1/o/d.class */
public final class C6360d extends FrameLayout {

    /* renamed from: c */
    public static final /* synthetic */ int f21209c = 0;

    /* renamed from: a */
    public final View f21210a;

    /* renamed from: b */
    public final View f21211b;

    /* renamed from: e.a.a.h1.o.d$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/h1/o/d$a.class */
    public static final class C6361a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: b */
        public final /* synthetic */ p f21213b;

        public C6361a(p pVar) {
            C6360d.this = r4;
            this.f21213b = pVar;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            p pVar = this.f21213b;
            if (pVar != null) {
                s sVar = (s) pVar.k(Float.valueOf(C6360d.this.getDismissButtonX()), Float.valueOf(C6360d.this.getDismissButtonY()));
            }
        }
    }

    /* renamed from: e.a.a.h1.o.d$b */
    /* loaded from: classes11-dex2jar.jar:e/a/a/h1/o/d$b.class */
    public static final class RunnableC6362b implements Runnable {

        /* renamed from: b */
        public final /* synthetic */ a f21215b;

        public RunnableC6362b(a aVar) {
            C6360d.this = r4;
            this.f21215b = aVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C6360d.this.setVisibility(4);
            a aVar = this.f21215b;
            if (aVar != null) {
                s sVar = (s) aVar.invoke();
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C6360d(android.content.Context r6, android.util.AttributeSet r7, int r8, int r9) {
        /*
            r5 = this;
            r0 = r9
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L9
            r0 = 0
            r8 = r0
        L9:
            r0 = r6
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            r1 = r6
            r2 = 0
            r3 = r8
            r0.<init>(r1, r2, r3)
            r0 = r6
            r1 = 2131559699(0x7f0d0513, float:1.874475E38)
            r2 = r5
            android.view.View r0 = android.widget.FrameLayout.inflate(r0, r1, r2)
            r0 = r5
            r1 = 2131363361(0x7f0a0621, float:1.8346529E38)
            android.view.View r0 = r0.findViewById(r1)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "findViewById(R.id.dismissButton)"
            s1.z.c.l.d(r0, r1)
            r0 = r5
            r1 = r6
            r0.f21210a = r1
            r0 = r5
            r1 = 2131364036(0x7f0a08c4, float:1.8347898E38)
            android.view.View r0 = r0.findViewById(r1)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "findViewById(R.id.gradientView)"
            s1.z.c.l.d(r0, r1)
            r0 = r5
            r1 = r6
            r0.f21211b = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p237h1.p239o.C6360d.<init>(android.content.Context, android.util.AttributeSet, int, int):void");
    }

    /* renamed from: a */
    public final void m31407a(p<? super Float, ? super Float, s> pVar, a<s> aVar) {
        this.f21211b.animate().alpha(0.0f).start();
        this.f21210a.animate().translationY(getHeight() - this.f21210a.getTop()).setUpdateListener(new C6361a(pVar)).withEndAction(new RunnableC6362b(aVar)).start();
    }

    public final float getDismissButtonX() {
        return (this.f21210a.getWidth() / 2.0f) + this.f21210a.getX();
    }

    public final float getDismissButtonY() {
        return (this.f21210a.getHeight() / 2.0f) + this.f21210a.getY();
    }
}
