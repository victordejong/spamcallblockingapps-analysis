package p280x;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Bundle;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import androidx.constraintlayout.widget.C0309b;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import p163m0.AbstractC3578k;
import p280x.C4802e;
import p291y.C4947b;
/* renamed from: x.d */
/* loaded from: classes-dex2jar.jar:x/d.class */
public class C4797d extends ConstraintLayout implements AbstractC3578k {

    /* renamed from: O */
    public static final /* synthetic */ int f14731O = 0;

    /* renamed from: A */
    public float f14732A;

    /* renamed from: B */
    public AbstractC4800c f14733B;

    /* renamed from: C */
    public C4795b f14734C;

    /* renamed from: D */
    public boolean f14735D;

    /* renamed from: E */
    public ArrayList<C4796c> f14736E;

    /* renamed from: F */
    public ArrayList<C4796c> f14737F;

    /* renamed from: G */
    public CopyOnWriteArrayList<AbstractC4800c> f14738G;

    /* renamed from: H */
    public int f14739H;

    /* renamed from: I */
    public float f14740I;

    /* renamed from: J */
    public boolean f14741J;

    /* renamed from: K */
    public C4799b f14742K;

    /* renamed from: L */
    public boolean f14743L;

    /* renamed from: M */
    public EnumC4801d f14744M;

    /* renamed from: N */
    public boolean f14745N;

    /* renamed from: s */
    public float f14746s;

    /* renamed from: t */
    public int f14747t;

    /* renamed from: u */
    public int f14748u;

    /* renamed from: v */
    public int f14749v;

    /* renamed from: w */
    public float f14750w;

    /* renamed from: x */
    public float f14751x;

    /* renamed from: y */
    public float f14752y;

    /* renamed from: z */
    public long f14753z;

    /* renamed from: x.d$a */
    /* loaded from: classes-dex2jar.jar:x/d$a.class */
    public class RunnableC4798a implements Runnable {
        public RunnableC4798a() {
            C4797d.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C4797d.this.f14742K.m432a();
        }
    }

    /* renamed from: x.d$b */
    /* loaded from: classes-dex2jar.jar:x/d$b.class */
    public class C4799b {

        /* renamed from: a */
        public float f14755a = Float.NaN;

        /* renamed from: b */
        public float f14756b = Float.NaN;

        /* renamed from: c */
        public int f14757c = -1;

        /* renamed from: d */
        public int f14758d = -1;

        public C4799b() {
            C4797d.this = r4;
        }

        /* renamed from: a */
        public void m432a() {
            int m204a;
            EnumC4801d enumC4801d = EnumC4801d.SETUP;
            int i = this.f14757c;
            if (i != -1 || this.f14758d != -1) {
                if (i == -1) {
                    C4797d.this.m433x(this.f14758d);
                } else {
                    int i2 = this.f14758d;
                    if (i2 == -1) {
                        C4797d c4797d = C4797d.this;
                        c4797d.setState(enumC4801d);
                        c4797d.f14748u = i;
                        c4797d.f14747t = -1;
                        c4797d.f14749v = -1;
                        C4947b c4947b = c4797d.f1193k;
                        if (c4947b != null) {
                            float f = -1;
                            int i3 = c4947b.f15089b;
                            if (i3 == i) {
                                C4947b.C4948a valueAt = i == -1 ? c4947b.f15091d.valueAt(0) : c4947b.f15091d.get(i3);
                                int i4 = c4947b.f15090c;
                                if ((i4 == -1 || !valueAt.f15094b.get(i4).m203a(f, f)) && c4947b.f15090c != (m204a = valueAt.m204a(f, f))) {
                                    C0309b c0309b = m204a == -1 ? null : valueAt.f15094b.get(m204a).f15102f;
                                    if (m204a != -1) {
                                        int i5 = valueAt.f15094b.get(m204a).f15101e;
                                    }
                                    if (c0309b != null) {
                                        c4947b.f15090c = m204a;
                                        c0309b.m8359a(c4947b.f15088a);
                                    }
                                }
                            } else {
                                c4947b.f15089b = i;
                                C4947b.C4948a c4948a = c4947b.f15091d.get(i);
                                int m204a2 = c4948a.m204a(f, f);
                                C0309b c0309b2 = m204a2 == -1 ? c4948a.f15096d : c4948a.f15094b.get(m204a2).f15102f;
                                if (m204a2 != -1) {
                                    int i6 = c4948a.f15094b.get(m204a2).f15101e;
                                }
                                if (c0309b2 != null) {
                                    c4947b.f15090c = m204a2;
                                    c0309b2.m8359a(c4947b.f15088a);
                                }
                            }
                        }
                    } else {
                        C4797d.this.m434w(i, i2);
                    }
                }
                C4797d.this.setState(enumC4801d);
            }
            if (Float.isNaN(this.f14756b)) {
                if (Float.isNaN(this.f14755a)) {
                    return;
                }
                C4797d.this.setProgress(this.f14755a);
                return;
            }
            C4797d.this.m435v(this.f14755a, this.f14756b);
            this.f14755a = Float.NaN;
            this.f14756b = Float.NaN;
            this.f14757c = -1;
            this.f14758d = -1;
        }
    }

    /* renamed from: x.d$c */
    /* loaded from: classes-dex2jar.jar:x/d$c.class */
    public interface AbstractC4800c {
        /* renamed from: a */
        void mo431a(C4797d c4797d, int i, int i2);

        /* renamed from: b */
        void mo430b(C4797d c4797d, int i, int i2, float f);
    }

    /* renamed from: x.d$d */
    /* loaded from: classes-dex2jar.jar:x/d$d.class */
    public enum EnumC4801d {
        /* JADX INFO: Fake field, exist only in values array */
        UNDEFINED,
        SETUP,
        MOVING,
        FINISHED
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        m438s(false);
        super.dispatchDraw(canvas);
    }

    public int[] getConstraintSetIds() {
        return null;
    }

    public int getCurrentState() {
        return this.f14748u;
    }

    public ArrayList<C4802e.C4803a> getDefinedTransitions() {
        return null;
    }

    public C4795b getDesignTool() {
        if (this.f14734C == null) {
            this.f14734C = new C4795b(this);
        }
        return this.f14734C;
    }

    public int getEndState() {
        return this.f14749v;
    }

    public long getNanoTime() {
        return System.nanoTime();
    }

    public float getProgress() {
        return this.f14752y;
    }

    public C4802e getScene() {
        return null;
    }

    public int getStartState() {
        return this.f14747t;
    }

    public float getTargetPosition() {
        return this.f14732A;
    }

    public Bundle getTransitionState() {
        if (this.f14742K == null) {
            this.f14742K = new C4799b();
        }
        C4799b c4799b = this.f14742K;
        C4797d c4797d = C4797d.this;
        c4799b.f14758d = c4797d.f14749v;
        c4799b.f14757c = c4797d.f14747t;
        c4799b.f14756b = c4797d.getVelocity();
        c4799b.f14755a = C4797d.this.getProgress();
        C4799b c4799b2 = this.f14742K;
        Objects.requireNonNull(c4799b2);
        Bundle bundle = new Bundle();
        bundle.putFloat("motion.progress", c4799b2.f14755a);
        bundle.putFloat("motion.velocity", c4799b2.f14756b);
        bundle.putInt("motion.StartState", c4799b2.f14757c);
        bundle.putInt("motion.EndState", c4799b2.f14758d);
        return bundle;
    }

    public long getTransitionTimeMs() {
        return this.f14750w * 1000.0f;
    }

    public float getVelocity() {
        return this.f14746s;
    }

    @Override // p163m0.AbstractC3577j
    /* renamed from: h */
    public void mo445h(View view, View view2, int i, int i2) {
        getNanoTime();
    }

    @Override // p163m0.AbstractC3577j
    /* renamed from: i */
    public void mo444i(View view, int i) {
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return super.isAttachedToWindow();
    }

    @Override // p163m0.AbstractC3577j
    /* renamed from: j */
    public void mo443j(View view, int i, int i2, int[] iArr, int i3) {
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    /* renamed from: k */
    public void mo442k(int i) {
        this.f1193k = null;
    }

    @Override // p163m0.AbstractC3578k
    /* renamed from: m */
    public void mo441m(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (i == 0 && i2 == 0) {
            return;
        }
        iArr[0] = iArr[0] + i3;
        iArr[1] = iArr[1] + i4;
    }

    @Override // p163m0.AbstractC3577j
    /* renamed from: n */
    public void mo440n(View view, int i, int i2, int i3, int i4, int i5) {
    }

    @Override // p163m0.AbstractC3577j
    /* renamed from: o */
    public boolean mo439o(View view, View view2, int i, int i2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Display display = getDisplay();
        if (display != null) {
            display.getRotation();
        }
        C4799b c4799b = this.f14742K;
        if (c4799b != null) {
            if (this.f14743L) {
                post(new RunnableC4798a());
            } else {
                c4799b.m432a();
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.f14741J = true;
        try {
            super.onLayout(z, i, i2, i3, i4);
        } finally {
            this.f14741J = false;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof C4796c) {
            C4796c c4796c = (C4796c) view;
            if (this.f14738G == null) {
                this.f14738G = new CopyOnWriteArrayList<>();
            }
            this.f14738G.add(c4796c);
            if (c4796c.f14727i) {
                if (this.f14736E == null) {
                    this.f14736E = new ArrayList<>();
                }
                this.f14736E.add(c4796c);
            }
            if (!c4796c.f14728j) {
                return;
            }
            if (this.f14737F == null) {
                this.f14737F = new ArrayList<>();
            }
            this.f14737F.add(c4796c);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList<C4796c> arrayList = this.f14736E;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList<C4796c> arrayList2 = this.f14737F;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public void requestLayout() {
        int i = this.f14748u;
        super.requestLayout();
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x009b, code lost:
        if (r0 <= r5.f14732A) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ed, code lost:
        if (r8 <= r5.f14732A) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0122  */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m438s(boolean r6) {
        /*
            Method dump skipped, instructions count: 626
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p280x.C4797d.m438s(boolean):void");
    }

    public void setDebugMode(int i) {
        invalidate();
    }

    public void setDelayedApplicationOfInitialState(boolean z) {
        this.f14743L = z;
    }

    public void setInteractionEnabled(boolean z) {
    }

    public void setInterpolatedProgress(float f) {
        setProgress(f);
    }

    public void setOnHide(float f) {
        ArrayList<C4796c> arrayList = this.f14737F;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f14737F.get(i).setProgress(f);
            }
        }
    }

    public void setOnShow(float f) {
        ArrayList<C4796c> arrayList = this.f14736E;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f14736E.get(i).setProgress(f);
            }
        }
    }

    public void setProgress(float f) {
        EnumC4801d enumC4801d = EnumC4801d.FINISHED;
        EnumC4801d enumC4801d2 = EnumC4801d.MOVING;
        int i = (f > 0.0f ? 1 : (f == 0.0f ? 0 : -1));
        if (i < 0 || f > 1.0f) {
            Log.w("MotionLayout", "Warning! Progress is defined for values between 0.0 and 1.0 inclusive");
        }
        if (!super.isAttachedToWindow()) {
            if (this.f14742K == null) {
                this.f14742K = new C4799b();
            }
            this.f14742K.f14755a = f;
        } else if (i <= 0) {
            if (this.f14752y == 1.0f && this.f14748u == this.f14749v) {
                setState(enumC4801d2);
            }
            this.f14748u = this.f14747t;
            if (this.f14752y != 0.0f) {
                return;
            }
            setState(enumC4801d);
        } else if (f < 1.0f) {
            this.f14748u = -1;
            setState(enumC4801d2);
        } else {
            if (this.f14752y == 0.0f && this.f14748u == this.f14747t) {
                setState(enumC4801d2);
            }
            this.f14748u = this.f14749v;
            if (this.f14752y != 1.0f) {
                return;
            }
            setState(enumC4801d);
        }
    }

    public void setScene(C4802e c4802e) {
        m8374g();
        throw null;
    }

    public void setStartState(int i) {
        if (super.isAttachedToWindow()) {
            this.f14748u = i;
            return;
        }
        if (this.f14742K == null) {
            this.f14742K = new C4799b();
        }
        C4799b c4799b = this.f14742K;
        c4799b.f14757c = i;
        c4799b.f14758d = i;
    }

    public void setState(EnumC4801d enumC4801d) {
        EnumC4801d enumC4801d2 = EnumC4801d.FINISHED;
        if (enumC4801d == enumC4801d2 && this.f14748u == -1) {
            return;
        }
        EnumC4801d enumC4801d3 = this.f14744M;
        this.f14744M = enumC4801d;
        EnumC4801d enumC4801d4 = EnumC4801d.MOVING;
        if (enumC4801d3 == enumC4801d4 && enumC4801d == enumC4801d4) {
            m437t();
        }
        int ordinal = enumC4801d3.ordinal();
        if (ordinal != 0 && ordinal != 1) {
            if (ordinal != 2 || enumC4801d != enumC4801d2) {
                return;
            }
            m436u();
            return;
        }
        if (enumC4801d == enumC4801d4) {
            m437t();
        }
        if (enumC4801d != enumC4801d2) {
            return;
        }
        m436u();
    }

    public void setTransition(int i) {
    }

    public void setTransition(C4802e.C4803a c4803a) {
        throw null;
    }

    public void setTransitionDuration(int i) {
    }

    public void setTransitionListener(AbstractC4800c abstractC4800c) {
        this.f14733B = abstractC4800c;
    }

    public void setTransitionState(Bundle bundle) {
        if (this.f14742K == null) {
            this.f14742K = new C4799b();
        }
        C4799b c4799b = this.f14742K;
        Objects.requireNonNull(c4799b);
        c4799b.f14755a = bundle.getFloat("motion.progress");
        c4799b.f14756b = bundle.getFloat("motion.velocity");
        c4799b.f14757c = bundle.getInt("motion.StartState");
        c4799b.f14758d = bundle.getInt("motion.EndState");
        if (super.isAttachedToWindow()) {
            this.f14742K.m432a();
        }
    }

    /* renamed from: t */
    public final void m437t() {
        CopyOnWriteArrayList<AbstractC4800c> copyOnWriteArrayList;
        if ((this.f14733B != null || ((copyOnWriteArrayList = this.f14738G) != null && !copyOnWriteArrayList.isEmpty())) && this.f14740I != this.f14751x) {
            if (this.f14739H != -1) {
                AbstractC4800c abstractC4800c = this.f14733B;
                if (abstractC4800c != null) {
                    abstractC4800c.mo431a(this, this.f14747t, this.f14749v);
                }
                CopyOnWriteArrayList<AbstractC4800c> copyOnWriteArrayList2 = this.f14738G;
                if (copyOnWriteArrayList2 != null) {
                    Iterator<AbstractC4800c> it2 = copyOnWriteArrayList2.iterator();
                    while (it2.hasNext()) {
                        it2.next().mo431a(this, this.f14747t, this.f14749v);
                    }
                }
            }
            this.f14739H = -1;
            float f = this.f14751x;
            this.f14740I = f;
            AbstractC4800c abstractC4800c2 = this.f14733B;
            if (abstractC4800c2 != null) {
                abstractC4800c2.mo430b(this, this.f14747t, this.f14749v, f);
            }
            CopyOnWriteArrayList<AbstractC4800c> copyOnWriteArrayList3 = this.f14738G;
            if (copyOnWriteArrayList3 == null) {
                return;
            }
            Iterator<AbstractC4800c> it3 = copyOnWriteArrayList3.iterator();
            while (it3.hasNext()) {
                it3.next().mo430b(this, this.f14747t, this.f14749v, this.f14751x);
            }
        }
    }

    @Override // android.view.View
    public String toString() {
        Context context = getContext();
        return C4794a.m447a(context, this.f14747t) + "->" + C4794a.m447a(context, this.f14749v) + " (pos:" + this.f14752y + " Dpos/Dt:" + this.f14746s;
    }

    /* renamed from: u */
    public void m436u() {
        CopyOnWriteArrayList<AbstractC4800c> copyOnWriteArrayList;
        CopyOnWriteArrayList<AbstractC4800c> copyOnWriteArrayList2;
        if ((this.f14733B != null || ((copyOnWriteArrayList2 = this.f14738G) != null && !copyOnWriteArrayList2.isEmpty())) && this.f14739H == -1) {
            this.f14739H = this.f14748u;
            throw null;
        } else if (this.f14733B == null && ((copyOnWriteArrayList = this.f14738G) == null || copyOnWriteArrayList.isEmpty())) {
        } else {
            throw null;
        }
    }

    /* renamed from: v */
    public void m435v(float f, float f2) {
        if (super.isAttachedToWindow()) {
            setProgress(f);
            setState(EnumC4801d.MOVING);
            this.f14746s = f2;
            return;
        }
        if (this.f14742K == null) {
            this.f14742K = new C4799b();
        }
        C4799b c4799b = this.f14742K;
        c4799b.f14755a = f;
        c4799b.f14756b = f2;
    }

    /* renamed from: w */
    public void m434w(int i, int i2) {
        if (!super.isAttachedToWindow()) {
            if (this.f14742K == null) {
                this.f14742K = new C4799b();
            }
            C4799b c4799b = this.f14742K;
            c4799b.f14757c = i;
            c4799b.f14758d = i2;
        }
    }

    /* renamed from: x */
    public void m433x(int i) {
        if (!super.isAttachedToWindow()) {
            if (this.f14742K == null) {
                this.f14742K = new C4799b();
            }
            this.f14742K.f14758d = i;
            return;
        }
        int i2 = this.f14748u;
        if (i2 == i || this.f14747t == i || this.f14749v == i) {
            return;
        }
        this.f14749v = i;
        if (i2 != -1) {
            m434w(i2, i);
            this.f14752y = 0.0f;
            return;
        }
        this.f14732A = 1.0f;
        this.f14751x = 0.0f;
        this.f14752y = 0.0f;
        this.f14753z = getNanoTime();
        getNanoTime();
        throw null;
    }
}
