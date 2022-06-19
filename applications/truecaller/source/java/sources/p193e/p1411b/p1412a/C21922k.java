package p193e.p1411b.p1412a;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import com.tenor.android.core.constant.StringConstant;
import e.b.a.y.l.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p193e.p1411b.p1412a.p1414b0.C21904d;
import p193e.p1411b.p1412a.p1414b0.Choreographer$FrameCallbackC21902b;
import p193e.p1411b.p1412a.p1415c0.C21909c;
import p193e.p1411b.p1412a.p1419x.C21968a;
import p193e.p1411b.p1412a.p1419x.C21969b;
import p193e.p1411b.p1412a.p1420y.AbstractC21976f;
import p193e.p1411b.p1412a.p1420y.C21975e;
import p193e.p1411b.p1412a.p1420y.C21978h;
import p193e.p1411b.p1412a.p1420y.p1421j.C21983l;
import p193e.p1411b.p1412a.p1420y.p1423l.C22010e;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.b.a.k */
/* loaded from: classes-dex2jar.jar:e/b/a/k.class */
public class C21922k extends Drawable implements Drawable.Callback, Animatable {

    /* renamed from: p */
    public static final String f60851p = C21922k.class.getSimpleName();

    /* renamed from: b */
    public C21913e f60853b;

    /* renamed from: c */
    public final Choreographer$FrameCallbackC21902b f60854c;

    /* renamed from: g */
    public C21969b f60858g;

    /* renamed from: h */
    public String f60859h;

    /* renamed from: i */
    public AbstractC21900b f60860i;

    /* renamed from: j */
    public C21968a f60861j;

    /* renamed from: k */
    public boolean f60862k;

    /* renamed from: l */
    public c f60863l;

    /* renamed from: n */
    public boolean f60865n;

    /* renamed from: a */
    public final Matrix f60852a = new Matrix();

    /* renamed from: d */
    public float f60855d = 1.0f;

    /* renamed from: e */
    public boolean f60856e = true;

    /* renamed from: f */
    public final ArrayList<AbstractC21937o> f60857f = new ArrayList<>();

    /* renamed from: m */
    public int f60864m = 255;

    /* renamed from: o */
    public boolean f60866o = false;

    /* renamed from: e.b.a.k$a */
    /* loaded from: classes-dex2jar.jar:e/b/a/k$a.class */
    public class C21923a implements AbstractC21937o {

        /* renamed from: a */
        public final /* synthetic */ String f60867a;

        public C21923a(String str) {
            C21922k.this = r4;
            this.f60867a = str;
        }

        @Override // p193e.p1411b.p1412a.C21922k.AbstractC21937o
        /* renamed from: a */
        public void mo8879a(C21913e c21913e) {
            C21922k.this.m8885m(this.f60867a);
        }
    }

    /* renamed from: e.b.a.k$b */
    /* loaded from: classes-dex2jar.jar:e/b/a/k$b.class */
    public class C21924b implements AbstractC21937o {

        /* renamed from: a */
        public final /* synthetic */ int f60869a;

        /* renamed from: b */
        public final /* synthetic */ int f60870b;

        public C21924b(int i, int i2) {
            C21922k.this = r4;
            this.f60869a = i;
            this.f60870b = i2;
        }

        @Override // p193e.p1411b.p1412a.C21922k.AbstractC21937o
        /* renamed from: a */
        public void mo8879a(C21913e c21913e) {
            C21922k.this.m8886l(this.f60869a, this.f60870b);
        }
    }

    /* renamed from: e.b.a.k$c */
    /* loaded from: classes-dex2jar.jar:e/b/a/k$c.class */
    public class C21925c implements AbstractC21937o {

        /* renamed from: a */
        public final /* synthetic */ int f60872a;

        public C21925c(int i) {
            C21922k.this = r4;
            this.f60872a = i;
        }

        @Override // p193e.p1411b.p1412a.C21922k.AbstractC21937o
        /* renamed from: a */
        public void mo8879a(C21913e c21913e) {
            C21922k.this.m8890h(this.f60872a);
        }
    }

    /* renamed from: e.b.a.k$d */
    /* loaded from: classes-dex2jar.jar:e/b/a/k$d.class */
    public class C21926d implements AbstractC21937o {

        /* renamed from: a */
        public final /* synthetic */ float f60874a;

        public C21926d(float f) {
            C21922k.this = r4;
            this.f60874a = f;
        }

        @Override // p193e.p1411b.p1412a.C21922k.AbstractC21937o
        /* renamed from: a */
        public void mo8879a(C21913e c21913e) {
            C21922k.this.m8881q(this.f60874a);
        }
    }

    /* renamed from: e.b.a.k$e */
    /* loaded from: classes-dex2jar.jar:e/b/a/k$e.class */
    public class C21927e implements AbstractC21937o {

        /* renamed from: a */
        public final /* synthetic */ C21975e f60876a;

        /* renamed from: b */
        public final /* synthetic */ Object f60877b;

        /* renamed from: c */
        public final /* synthetic */ C21909c f60878c;

        public C21927e(C21975e c21975e, Object obj, C21909c c21909c) {
            C21922k.this = r4;
            this.f60876a = c21975e;
            this.f60877b = obj;
            this.f60878c = c21909c;
        }

        @Override // p193e.p1411b.p1412a.C21922k.AbstractC21937o
        /* renamed from: a */
        public void mo8879a(C21913e c21913e) {
            C21922k.this.m8897a(this.f60876a, this.f60877b, this.f60878c);
        }
    }

    /* renamed from: e.b.a.k$f */
    /* loaded from: classes-dex2jar.jar:e/b/a/k$f.class */
    public class C21928f implements ValueAnimator.AnimatorUpdateListener {
        public C21928f() {
            C21922k.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            C21922k c21922k = C21922k.this;
            c cVar = c21922k.f60863l;
            if (cVar != null) {
                cVar.o(c21922k.f60854c.m8934c());
            }
        }
    }

    /* renamed from: e.b.a.k$g */
    /* loaded from: classes-dex2jar.jar:e/b/a/k$g.class */
    public class C21929g implements AbstractC21937o {
        public C21929g() {
            C21922k.this = r4;
        }

        @Override // p193e.p1411b.p1412a.C21922k.AbstractC21937o
        /* renamed from: a */
        public void mo8879a(C21913e c21913e) {
            C21922k.this.m8892f();
        }
    }

    /* renamed from: e.b.a.k$h */
    /* loaded from: classes-dex2jar.jar:e/b/a/k$h.class */
    public class C21930h implements AbstractC21937o {
        public C21930h() {
            C21922k.this = r4;
        }

        @Override // p193e.p1411b.p1412a.C21922k.AbstractC21937o
        /* renamed from: a */
        public void mo8879a(C21913e c21913e) {
            C21922k.this.m8891g();
        }
    }

    /* renamed from: e.b.a.k$i */
    /* loaded from: classes-dex2jar.jar:e/b/a/k$i.class */
    public class C21931i implements AbstractC21937o {

        /* renamed from: a */
        public final /* synthetic */ int f60883a;

        public C21931i(int i) {
            C21922k.this = r4;
            this.f60883a = i;
        }

        @Override // p193e.p1411b.p1412a.C21922k.AbstractC21937o
        /* renamed from: a */
        public void mo8879a(C21913e c21913e) {
            C21922k.this.m8884n(this.f60883a);
        }
    }

    /* renamed from: e.b.a.k$j */
    /* loaded from: classes-dex2jar.jar:e/b/a/k$j.class */
    public class C21932j implements AbstractC21937o {

        /* renamed from: a */
        public final /* synthetic */ float f60885a;

        public C21932j(float f) {
            C21922k.this = r4;
            this.f60885a = f;
        }

        @Override // p193e.p1411b.p1412a.C21922k.AbstractC21937o
        /* renamed from: a */
        public void mo8879a(C21913e c21913e) {
            C21922k.this.m8882p(this.f60885a);
        }
    }

    /* renamed from: e.b.a.k$k */
    /* loaded from: classes-dex2jar.jar:e/b/a/k$k.class */
    public class C21933k implements AbstractC21937o {

        /* renamed from: a */
        public final /* synthetic */ int f60887a;

        public C21933k(int i) {
            C21922k.this = r4;
            this.f60887a = i;
        }

        @Override // p193e.p1411b.p1412a.C21922k.AbstractC21937o
        /* renamed from: a */
        public void mo8879a(C21913e c21913e) {
            C21922k.this.m8889i(this.f60887a);
        }
    }

    /* renamed from: e.b.a.k$l */
    /* loaded from: classes-dex2jar.jar:e/b/a/k$l.class */
    public class C21934l implements AbstractC21937o {

        /* renamed from: a */
        public final /* synthetic */ float f60889a;

        public C21934l(float f) {
            C21922k.this = r4;
            this.f60889a = f;
        }

        @Override // p193e.p1411b.p1412a.C21922k.AbstractC21937o
        /* renamed from: a */
        public void mo8879a(C21913e c21913e) {
            C21922k.this.m8887k(this.f60889a);
        }
    }

    /* renamed from: e.b.a.k$m */
    /* loaded from: classes-dex2jar.jar:e/b/a/k$m.class */
    public class C21935m implements AbstractC21937o {

        /* renamed from: a */
        public final /* synthetic */ String f60891a;

        public C21935m(String str) {
            C21922k.this = r4;
            this.f60891a = str;
        }

        @Override // p193e.p1411b.p1412a.C21922k.AbstractC21937o
        /* renamed from: a */
        public void mo8879a(C21913e c21913e) {
            C21922k.this.m8883o(this.f60891a);
        }
    }

    /* renamed from: e.b.a.k$n */
    /* loaded from: classes-dex2jar.jar:e/b/a/k$n.class */
    public class C21936n implements AbstractC21937o {

        /* renamed from: a */
        public final /* synthetic */ String f60893a;

        public C21936n(String str) {
            C21922k.this = r4;
            this.f60893a = str;
        }

        @Override // p193e.p1411b.p1412a.C21922k.AbstractC21937o
        /* renamed from: a */
        public void mo8879a(C21913e c21913e) {
            C21922k.this.m8888j(this.f60893a);
        }
    }

    /* renamed from: e.b.a.k$o */
    /* loaded from: classes-dex2jar.jar:e/b/a/k$o.class */
    public interface AbstractC21937o {
        /* renamed from: a */
        void mo8879a(C21913e c21913e);
    }

    public C21922k() {
        Choreographer$FrameCallbackC21902b choreographer$FrameCallbackC21902b = new Choreographer$FrameCallbackC21902b();
        this.f60854c = choreographer$FrameCallbackC21902b;
        new HashSet();
        choreographer$FrameCallbackC21902b.f60781a.add(new C21928f());
    }

    /* renamed from: a */
    public <T> void m8897a(C21975e c21975e, T t, C21909c<T> c21909c) {
        ArrayList arrayList;
        c cVar = this.f60863l;
        if (cVar == null) {
            this.f60857f.add(new C21927e(c21975e, t, c21909c));
            return;
        }
        AbstractC21976f abstractC21976f = c21975e.f61025b;
        boolean z = true;
        if (abstractC21976f != null) {
            abstractC21976f.m8843f(t, c21909c);
        } else {
            if (cVar == null) {
                arrayList = Collections.emptyList();
            } else {
                ArrayList arrayList2 = new ArrayList();
                this.f60863l.g(c21975e, 0, arrayList2, new C21975e(new String[0]));
                arrayList = arrayList2;
            }
            for (int i = 0; i < arrayList.size(); i++) {
                ((C21975e) arrayList.get(i)).f61025b.m8843f(t, c21909c);
            }
            z = true ^ arrayList.isEmpty();
        }
        if (!z) {
            return;
        }
        invalidateSelf();
        if (t != AbstractC21941o.f60898A) {
            return;
        }
        m8881q(m8894d());
    }

    /* renamed from: b */
    public final void m8896b() {
        C21913e c21913e = this.f60853b;
        Rect rect = c21913e.f60833j;
        C22010e c22010e = new C22010e(Collections.emptyList(), c21913e, "__container", -1L, C22010e.EnumC22011a.PRE_COMP, -1L, null, Collections.emptyList(), new C21983l(null, null, null, null, null, null, null, null, null), 0, 0, 0, 0.0f, 0.0f, rect.width(), rect.height(), null, null, Collections.emptyList(), C22010e.EnumC22012b.NONE, null, false);
        C21913e c21913e2 = this.f60853b;
        this.f60863l = new c(this, c22010e, c21913e2.f60832i, c21913e2);
    }

    /* renamed from: c */
    public void m8895c() {
        Choreographer$FrameCallbackC21902b choreographer$FrameCallbackC21902b = this.f60854c;
        if (choreographer$FrameCallbackC21902b.f60791k) {
            choreographer$FrameCallbackC21902b.cancel();
        }
        this.f60853b = null;
        this.f60863l = null;
        this.f60858g = null;
        Choreographer$FrameCallbackC21902b choreographer$FrameCallbackC21902b2 = this.f60854c;
        choreographer$FrameCallbackC21902b2.f60790j = null;
        choreographer$FrameCallbackC21902b2.f60788h = -2.14748365E9f;
        choreographer$FrameCallbackC21902b2.f60789i = 2.14748365E9f;
        invalidateSelf();
    }

    /* renamed from: d */
    public float m8894d() {
        return this.f60854c.m8934c();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float f;
        this.f60866o = false;
        Set<String> set = C21906c.f60801a;
        if (this.f60863l == null) {
            return;
        }
        float f2 = this.f60855d;
        float min = Math.min(canvas.getWidth() / this.f60853b.f60833j.width(), canvas.getHeight() / this.f60853b.f60833j.height());
        if (f2 > min) {
            f = this.f60855d / min;
        } else {
            min = f2;
            f = 1.0f;
        }
        int i = -1;
        if (f > 1.0f) {
            i = canvas.save();
            float width = this.f60853b.f60833j.width() / 2.0f;
            float height = this.f60853b.f60833j.height() / 2.0f;
            float f3 = width * min;
            float f4 = height * min;
            float f5 = this.f60855d;
            canvas.translate((width * f5) - f3, (f5 * height) - f4);
            canvas.scale(f, f, f3, f4);
        }
        this.f60852a.reset();
        this.f60852a.preScale(min, min);
        this.f60863l.c(canvas, this.f60852a, this.f60864m);
        C21906c.m8916a("Drawable#draw");
        if (i <= 0) {
            return;
        }
        canvas.restoreToCount(i);
    }

    /* renamed from: e */
    public int m8893e() {
        return this.f60854c.getRepeatCount();
    }

    /* renamed from: f */
    public void m8892f() {
        if (this.f60863l == null) {
            this.f60857f.add(new C21929g());
            return;
        }
        if (this.f60856e || m8893e() == 0) {
            Choreographer$FrameCallbackC21902b choreographer$FrameCallbackC21902b = this.f60854c;
            choreographer$FrameCallbackC21902b.f60791k = true;
            boolean m8931g = choreographer$FrameCallbackC21902b.m8931g();
            for (Animator.AnimatorListener animatorListener : choreographer$FrameCallbackC21902b.f60782b) {
                if (Build.VERSION.SDK_INT >= 26) {
                    animatorListener.onAnimationStart(choreographer$FrameCallbackC21902b, m8931g);
                } else {
                    animatorListener.onAnimationStart(choreographer$FrameCallbackC21902b);
                }
            }
            choreographer$FrameCallbackC21902b.m8928j((int) (choreographer$FrameCallbackC21902b.m8931g() ? choreographer$FrameCallbackC21902b.m8933e() : choreographer$FrameCallbackC21902b.m8932f()));
            choreographer$FrameCallbackC21902b.f60785e = System.nanoTime();
            choreographer$FrameCallbackC21902b.f60787g = 0;
            choreographer$FrameCallbackC21902b.m8930h();
        }
        if (this.f60856e) {
            return;
        }
        Choreographer$FrameCallbackC21902b choreographer$FrameCallbackC21902b2 = this.f60854c;
        m8890h((int) (choreographer$FrameCallbackC21902b2.f60783c < 0.0f ? choreographer$FrameCallbackC21902b2.m8932f() : choreographer$FrameCallbackC21902b2.m8933e()));
    }

    /* renamed from: g */
    public void m8891g() {
        if (this.f60863l == null) {
            this.f60857f.add(new C21930h());
            return;
        }
        Choreographer$FrameCallbackC21902b choreographer$FrameCallbackC21902b = this.f60854c;
        choreographer$FrameCallbackC21902b.f60791k = true;
        choreographer$FrameCallbackC21902b.m8930h();
        choreographer$FrameCallbackC21902b.f60785e = System.nanoTime();
        if (choreographer$FrameCallbackC21902b.m8931g() && choreographer$FrameCallbackC21902b.f60786f == choreographer$FrameCallbackC21902b.m8932f()) {
            choreographer$FrameCallbackC21902b.f60786f = choreographer$FrameCallbackC21902b.m8933e();
        } else if (choreographer$FrameCallbackC21902b.m8931g() || choreographer$FrameCallbackC21902b.f60786f != choreographer$FrameCallbackC21902b.m8933e()) {
        } else {
            choreographer$FrameCallbackC21902b.f60786f = choreographer$FrameCallbackC21902b.m8932f();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f60864m;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        C21913e c21913e = this.f60853b;
        return c21913e == null ? -1 : (int) (c21913e.f60833j.height() * this.f60855d);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        C21913e c21913e = this.f60853b;
        return c21913e == null ? -1 : (int) (c21913e.f60833j.width() * this.f60855d);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    /* renamed from: h */
    public void m8890h(int i) {
        if (this.f60853b == null) {
            this.f60857f.add(new C21925c(i));
        } else {
            this.f60854c.m8928j(i);
        }
    }

    /* renamed from: i */
    public void m8889i(int i) {
        if (this.f60853b == null) {
            this.f60857f.add(new C21933k(i));
            return;
        }
        Choreographer$FrameCallbackC21902b choreographer$FrameCallbackC21902b = this.f60854c;
        choreographer$FrameCallbackC21902b.m8927k(choreographer$FrameCallbackC21902b.f60788h, i + 0.99f);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.f60866o) {
            return;
        }
        this.f60866o = true;
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f60854c.f60791k;
    }

    /* renamed from: j */
    public void m8888j(String str) {
        C21913e c21913e = this.f60853b;
        if (c21913e == null) {
            this.f60857f.add(new C21936n(str));
            return;
        }
        C21978h m8905c = c21913e.m8905c(str);
        if (m8905c == null) {
            throw new IllegalArgumentException(C22128a.m8725C2("Cannot find marker with name ", str, StringConstant.DOT));
        }
        m8889i((int) (m8905c.f61029b + m8905c.f61030c));
    }

    /* renamed from: k */
    public void m8887k(float f) {
        C21913e c21913e = this.f60853b;
        if (c21913e == null) {
            this.f60857f.add(new C21934l(f));
        } else {
            m8889i((int) C21904d.m8922e(c21913e.f60834k, c21913e.f60835l, f));
        }
    }

    /* renamed from: l */
    public void m8886l(int i, int i2) {
        if (this.f60853b == null) {
            this.f60857f.add(new C21924b(i, i2));
        } else {
            this.f60854c.m8927k(i, i2 + 0.99f);
        }
    }

    /* renamed from: m */
    public void m8885m(String str) {
        C21913e c21913e = this.f60853b;
        if (c21913e == null) {
            this.f60857f.add(new C21923a(str));
            return;
        }
        C21978h m8905c = c21913e.m8905c(str);
        if (m8905c == null) {
            throw new IllegalArgumentException(C22128a.m8725C2("Cannot find marker with name ", str, StringConstant.DOT));
        }
        int i = (int) m8905c.f61029b;
        m8886l(i, ((int) m8905c.f61030c) + i);
    }

    /* renamed from: n */
    public void m8884n(int i) {
        if (this.f60853b == null) {
            this.f60857f.add(new C21931i(i));
            return;
        }
        Choreographer$FrameCallbackC21902b choreographer$FrameCallbackC21902b = this.f60854c;
        choreographer$FrameCallbackC21902b.m8927k(i, (int) choreographer$FrameCallbackC21902b.f60789i);
    }

    /* renamed from: o */
    public void m8883o(String str) {
        C21913e c21913e = this.f60853b;
        if (c21913e == null) {
            this.f60857f.add(new C21935m(str));
            return;
        }
        C21978h m8905c = c21913e.m8905c(str);
        if (m8905c == null) {
            throw new IllegalArgumentException(C22128a.m8725C2("Cannot find marker with name ", str, StringConstant.DOT));
        }
        m8884n((int) m8905c.f61029b);
    }

    /* renamed from: p */
    public void m8882p(float f) {
        C21913e c21913e = this.f60853b;
        if (c21913e == null) {
            this.f60857f.add(new C21932j(f));
        } else {
            m8884n((int) C21904d.m8922e(c21913e.f60834k, c21913e.f60835l, f));
        }
    }

    /* renamed from: q */
    public void m8881q(float f) {
        C21913e c21913e = this.f60853b;
        if (c21913e == null) {
            this.f60857f.add(new C21926d(f));
        } else {
            m8890h((int) C21904d.m8922e(c21913e.f60834k, c21913e.f60835l, f));
        }
    }

    /* renamed from: r */
    public final void m8880r() {
        C21913e c21913e = this.f60853b;
        if (c21913e == null) {
            return;
        }
        float f = this.f60855d;
        setBounds(0, 0, (int) (c21913e.f60833j.width() * f), (int) (this.f60853b.f60833j.height() * f));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f60864m = i;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        m8892f();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f60857f.clear();
        Choreographer$FrameCallbackC21902b choreographer$FrameCallbackC21902b = this.f60854c;
        choreographer$FrameCallbackC21902b.m8929i();
        choreographer$FrameCallbackC21902b.m8936a(choreographer$FrameCallbackC21902b.m8931g());
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }
}
