package p081h.p082a.p083a;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.animation.LinearInterpolator;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import p081h.p082a.p083a.p087m.C5401a;
import p081h.p082a.p083a.p087m.C5402b;
import p081h.p082a.p083a.p088n.p091m.C5509b;
import p081h.p082a.p083a.p088n.p091m.C5512d;
import p081h.p082a.p083a.p092o.C5525c;
/* renamed from: h.a.a.f */
/* loaded from: classes-dex2jar.jar:h/a/a/f.class */
public class C5344f extends Drawable implements Drawable.Callback {

    /* renamed from: r */
    public static final String f13346r = C5344f.class.getSimpleName();

    /* renamed from: b */
    public C5341e f13348b;
    @Nullable

    /* renamed from: h */
    public C5402b f13354h;
    @Nullable

    /* renamed from: i */
    public String f13355i;
    @Nullable

    /* renamed from: j */
    public AbstractC5339c f13356j;
    @Nullable

    /* renamed from: k */
    public C5401a f13357k;
    @Nullable

    /* renamed from: l */
    public C5338b f13358l;
    @Nullable

    /* renamed from: m */
    public C5357k f13359m;

    /* renamed from: n */
    public boolean f13360n;
    @Nullable

    /* renamed from: o */
    public C5509b f13361o;

    /* renamed from: q */
    public boolean f13363q;

    /* renamed from: a */
    public final Matrix f13347a = new Matrix();

    /* renamed from: c */
    public final C5525c f13349c = new C5525c();

    /* renamed from: d */
    public float f13350d = 1.0f;

    /* renamed from: e */
    public float f13351e = 1.0f;

    /* renamed from: f */
    public final Set<C5347c> f13352f = new HashSet();

    /* renamed from: g */
    public final ArrayList<AbstractC5348d> f13353g = new ArrayList<>();

    /* renamed from: p */
    public int f13362p = 255;

    /* renamed from: h.a.a.f$a */
    /* loaded from: classes-dex2jar.jar:h/a/a/f$a.class */
    public class C5345a implements ValueAnimator.AnimatorUpdateListener {
        public C5345a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (C5344f.this.f13361o != null) {
                C5344f.this.f13361o.mo25320b(C5344f.this.f13349c.m25267f());
            }
        }
    }

    /* renamed from: h.a.a.f$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/f$b.class */
    public class C5346b implements AbstractC5348d {

        /* renamed from: a */
        public final /* synthetic */ boolean f13365a;

        public C5346b(boolean z) {
            this.f13365a = z;
        }

        @Override // p081h.p082a.p083a.C5344f.AbstractC5348d
        /* renamed from: a */
        public void mo25579a(C5341e eVar) {
            C5344f.this.m25597c(this.f13365a);
        }
    }

    /* renamed from: h.a.a.f$c */
    /* loaded from: classes-dex2jar.jar:h/a/a/f$c.class */
    public static class C5347c {

        /* renamed from: a */
        public final String f13367a;
        @Nullable

        /* renamed from: b */
        public final String f13368b;
        @Nullable

        /* renamed from: c */
        public final ColorFilter f13369c;

        public C5347c(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
            this.f13367a = str;
            this.f13368b = str2;
            this.f13369c = colorFilter;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C5347c)) {
                return false;
            }
            C5347c cVar = (C5347c) obj;
            if (!(hashCode() == cVar.hashCode() && this.f13369c == cVar.f13369c)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            String str = this.f13367a;
            int hashCode = str != null ? 527 * str.hashCode() : 17;
            String str2 = this.f13368b;
            int i = hashCode;
            if (str2 != null) {
                i = hashCode * 31 * str2.hashCode();
            }
            return i;
        }
    }

    /* renamed from: h.a.a.f$d */
    /* loaded from: classes-dex2jar.jar:h/a/a/f$d.class */
    public interface AbstractC5348d {
        /* renamed from: a */
        void mo25579a(C5341e eVar);
    }

    public C5344f() {
        this.f13349c.setRepeatCount(0);
        this.f13349c.setInterpolator(new LinearInterpolator());
        this.f13349c.addUpdateListener(new C5345a());
    }

    /* renamed from: a */
    public final float m25614a(@NonNull Canvas canvas) {
        return Math.min(canvas.getWidth() / this.f13348b.m25651a().width(), canvas.getHeight() / this.f13348b.m25651a().height());
    }

    @Nullable
    /* renamed from: a */
    public Bitmap m25609a(String str) {
        C5402b i = m25591i();
        if (i != null) {
            return i.m25501a(str);
        }
        return null;
    }

    @Nullable
    /* renamed from: a */
    public Typeface m25608a(String str, String str2) {
        C5401a h = m25592h();
        if (h != null) {
            return h.m25505a(str, str2);
        }
        return null;
    }

    /* renamed from: a */
    public final void m25617a() {
        if (this.f13361o != null) {
            for (C5347c cVar : this.f13352f) {
                this.f13361o.mo25292a(cVar.f13367a, cVar.f13368b, cVar.f13369c);
            }
        }
    }

    /* renamed from: a */
    public void m25616a(@FloatRange(from = 0.0d, m37520to = 1.0d) float f) {
        this.f13349c.m25277a(f);
        C5509b bVar = this.f13361o;
        if (bVar != null) {
            bVar.mo25320b(f);
        }
    }

    /* renamed from: a */
    public void m25615a(Animator.AnimatorListener animatorListener) {
        this.f13349c.addListener(animatorListener);
    }

    /* renamed from: a */
    public void m25613a(ColorFilter colorFilter) {
        m25607a(null, null, colorFilter);
    }

    /* renamed from: a */
    public final void m25607a(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
        C5347c cVar = new C5347c(str, str2, colorFilter);
        if (colorFilter != null || !this.f13352f.contains(cVar)) {
            this.f13352f.add(new C5347c(str, str2, colorFilter));
        } else {
            this.f13352f.remove(cVar);
        }
        C5509b bVar = this.f13361o;
        if (bVar != null) {
            bVar.mo25292a(str, str2, colorFilter);
        }
    }

    /* renamed from: a */
    public void m25606a(boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f13360n = z;
            if (this.f13348b != null) {
                m25605b();
            }
        }
    }

    /* renamed from: a */
    public boolean m25612a(C5341e eVar) {
        if (this.f13348b == eVar) {
            return false;
        }
        m25596d();
        this.f13348b = eVar;
        m25598c(this.f13350d);
        m25604b(this.f13351e);
        m25581s();
        m25605b();
        m25617a();
        Iterator it = new ArrayList(this.f13353g).iterator();
        while (it.hasNext()) {
            ((AbstractC5348d) it.next()).mo25579a(eVar);
            it.remove();
        }
        this.f13353g.clear();
        eVar.m25647a(this.f13363q);
        this.f13349c.m25269d();
        return true;
    }

    /* renamed from: b */
    public final void m25605b() {
        this.f13361o = new C5509b(this, C5512d.C5514b.m25296a(this.f13348b), this.f13348b.m25633i(), this.f13348b);
    }

    /* renamed from: b */
    public void m25604b(float f) {
        this.f13351e = f;
        m25581s();
    }

    /* renamed from: b */
    public void m25603b(Animator.AnimatorListener animatorListener) {
        this.f13349c.removeListener(animatorListener);
    }

    /* renamed from: b */
    public void m25601b(@Nullable String str) {
        this.f13355i = str;
    }

    /* renamed from: b */
    public void m25600b(boolean z) {
        this.f13349c.setRepeatCount(z ? -1 : 0);
    }

    /* renamed from: c */
    public void m25599c() {
        this.f13353g.clear();
        this.f13349c.cancel();
    }

    /* renamed from: c */
    public void m25598c(float f) {
        this.f13350d = f;
        this.f13349c.m25273a(f < 0.0f);
        C5341e eVar = this.f13348b;
        if (eVar != null) {
            this.f13349c.setDuration(((float) eVar.m25641d()) / Math.abs(f));
        }
    }

    /* renamed from: c */
    public final void m25597c(boolean z) {
        if (this.f13361o == null) {
            this.f13353g.add(new C5346b(z));
        } else if (z) {
            this.f13349c.start();
        } else {
            this.f13349c.m25266g();
        }
    }

    /* renamed from: d */
    public final void m25596d() {
        m25583q();
        this.f13361o = null;
        this.f13354h = null;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        float f;
        C5340d.m25653a("Drawable#draw");
        if (this.f13361o != null) {
            float f2 = this.f13351e;
            float a = m25614a(canvas);
            if (f2 > a) {
                f = this.f13351e / a;
            } else {
                a = f2;
                f = 1.0f;
            }
            int i = (f > 1.0f ? 1 : (f == 1.0f ? 0 : -1));
            if (i > 0) {
                canvas.save();
                float width = this.f13348b.m25651a().width() / 2.0f;
                float height = this.f13348b.m25651a().height() / 2.0f;
                float f3 = width * a;
                float f4 = height * a;
                canvas.translate((m25588l() * width) - f3, (m25588l() * height) - f4);
                canvas.scale(f, f, f3, f4);
            }
            this.f13347a.reset();
            this.f13347a.preScale(a, a);
            this.f13361o.mo25337a(canvas, this.f13347a, this.f13362p);
            C5340d.m25652b("Drawable#draw");
            if (i > 0) {
                canvas.restore();
            }
        }
    }

    /* renamed from: e */
    public boolean m25595e() {
        return this.f13360n;
    }

    /* renamed from: f */
    public C5341e m25594f() {
        return this.f13348b;
    }

    @Nullable
    /* renamed from: g */
    public final Context m25593g() {
        Drawable.Callback callback = getCallback();
        if (callback != null && (callback instanceof View)) {
            return ((View) callback).getContext();
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f13362p;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        C5341e eVar = this.f13348b;
        return eVar == null ? -1 : (int) (eVar.m25651a().height() * m25588l());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        C5341e eVar = this.f13348b;
        return eVar == null ? -1 : (int) (eVar.m25651a().width() * m25588l());
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    /* renamed from: h */
    public final C5401a m25592h() {
        if (getCallback() == null) {
            return null;
        }
        if (this.f13357k == null) {
            this.f13357k = new C5401a(getCallback(), this.f13358l);
        }
        return this.f13357k;
    }

    /* renamed from: i */
    public final C5402b m25591i() {
        if (getCallback() == null) {
            return null;
        }
        C5402b bVar = this.f13354h;
        if (bVar != null && !bVar.m25503a(m25593g())) {
            this.f13354h.m25504a();
            this.f13354h = null;
        }
        if (this.f13354h == null) {
            this.f13354h = new C5402b(getCallback(), this.f13355i, this.f13356j, this.f13348b.m25634h());
        }
        return this.f13354h;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Nullable
    /* renamed from: j */
    public String m25590j() {
        return this.f13355i;
    }

    /* renamed from: k */
    public float m25589k() {
        return this.f13349c.m25267f();
    }

    /* renamed from: l */
    public float m25588l() {
        return this.f13351e;
    }

    @Nullable
    /* renamed from: m */
    public C5357k m25587m() {
        return this.f13359m;
    }

    /* renamed from: n */
    public boolean m25586n() {
        return this.f13349c.isRunning();
    }

    /* renamed from: o */
    public boolean m25585o() {
        return this.f13349c.getRepeatCount() == -1;
    }

    /* renamed from: p */
    public void m25584p() {
        m25597c(true);
    }

    /* renamed from: q */
    public void m25583q() {
        C5402b bVar = this.f13354h;
        if (bVar != null) {
            bVar.m25504a();
        }
    }

    /* renamed from: r */
    public void m25582r() {
        this.f13349c.m25265h();
    }

    /* renamed from: s */
    public final void m25581s() {
        if (this.f13348b != null) {
            float l = m25588l();
            setBounds(0, 0, (int) (this.f13348b.m25651a().width() * l), (int) (this.f13348b.m25651a().height() * l));
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, m37519to = 255) int i) {
        this.f13362p = i;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        throw new UnsupportedOperationException("Use addColorFilter instead.");
    }

    /* renamed from: t */
    public boolean m25580t() {
        return this.f13359m == null && this.f13348b.m25646b().size() > 0;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }
}
