package p613k;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.Arrays;
/* renamed from: k.c */
/* loaded from: classes2-dex2jar.jar:k/c.class */
public class C10442c extends Drawable {

    /* renamed from: a */
    public final Rect f38661a;

    /* renamed from: b */
    public final C10444b f38662b;

    /* renamed from: c */
    public C10438b f38663c;

    /* renamed from: d */
    public boolean f38664d;

    /* renamed from: e */
    public C10435a f38665e;

    /* renamed from: f */
    public boolean f38666f;

    /* renamed from: g */
    public AbstractC10445c f38667g;

    /* renamed from: h */
    public float f38668h;

    /* renamed from: i */
    public float f38669i;

    /* renamed from: j */
    public boolean f38670j;

    /* renamed from: k */
    public C10435a[] f38671k;

    /* renamed from: l */
    public int f38672l;

    /* renamed from: m */
    public Paint f38673m;

    /* renamed from: n */
    public float f38674n;

    /* renamed from: o */
    public boolean f38675o;

    /* renamed from: p */
    public float f38676p;

    /* renamed from: q */
    public float f38677q;

    /* renamed from: r */
    public boolean f38678r;

    /* renamed from: s */
    public boolean f38679s;

    /* renamed from: k.c$a */
    /* loaded from: classes2-dex2jar.jar:k/c$a.class */
    public class C10443a implements AbstractC10445c {
        public C10443a() {
        }

        @Override // p613k.C10442c.AbstractC10445c
        public void onFinish() {
            if (C10442c.this.f38667g != null) {
                C10442c.this.f38667g.onFinish();
            }
        }
    }

    /* renamed from: k.c$b */
    /* loaded from: classes2-dex2jar.jar:k/c$b.class */
    public static class C10444b {

        /* renamed from: a */
        public ColorStateList f38681a;

        /* renamed from: b */
        public int f38682b;

        public C10444b(C10444b bVar, C10442c cVar, Resources resources) {
            this.f38681a = ColorStateList.valueOf(-65281);
            this.f38682b = -1;
            if (bVar != null) {
                this.f38681a = bVar.f38681a;
                this.f38682b = bVar.f38682b;
            }
        }
    }

    /* renamed from: k.c$c */
    /* loaded from: classes2-dex2jar.jar:k/c$c.class */
    public interface AbstractC10445c {
        void onFinish();
    }

    public C10442c(ColorStateList colorStateList) {
        this(new C10444b(null, null, null), null);
        if (colorStateList != null) {
            m148a(colorStateList);
            return;
        }
        throw new IllegalArgumentException("RippleDrawable requires a non-null color");
    }

    public C10442c(C10444b bVar, Resources resources) {
        this.f38661a = new Rect();
        this.f38672l = 0;
        this.f38674n = 1.0f;
        this.f38676p = 0.0f;
        this.f38677q = 0.0f;
        this.f38678r = false;
        this.f38679s = false;
        this.f38662b = new C10444b(bVar, this, resources);
        if (resources != null) {
            this.f38674n = resources.getDisplayMetrics().density;
        }
    }

    /* renamed from: a */
    public final int m146a(C10435a aVar) {
        C10435a[] aVarArr = this.f38671k;
        int i = this.f38672l;
        for (int i2 = 0; i2 < i; i2++) {
            if (aVarArr[i2] == aVar) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public void m150a(float f, float f2) {
        C10435a aVar = this.f38665e;
        if (aVar != null) {
            aVar.m177b(f, f2);
            return;
        }
        this.f38676p = f;
        this.f38677q = f2;
    }

    /* renamed from: a */
    public void m149a(int i) {
        if (i == -1 || i >= 0) {
            this.f38662b.f38682b = i;
            return;
        }
        throw new IllegalArgumentException("maxRadius must be RADIUS_AUTO or >= 0");
    }

    /* renamed from: a */
    public void m148a(ColorStateList colorStateList) {
        this.f38662b.f38681a = colorStateList;
        invalidateSelf();
    }

    /* renamed from: a */
    public final void m147a(Canvas canvas) {
        C10435a aVar = this.f38665e;
        if (aVar != null) {
            aVar.m179a(new C10443a());
        }
        C10438b bVar = this.f38663c;
        int i = this.f38672l;
        if (aVar != null || i > 0 || (bVar != null && bVar.m155g())) {
            float exactCenterX = this.f38661a.exactCenterX();
            float exactCenterY = this.f38661a.exactCenterY();
            canvas.translate(exactCenterX, exactCenterY);
            int colorForState = this.f38662b.f38681a.getColorForState(getState(), DrawableConstants.CtaButton.BACKGROUND_COLOR);
            int alpha = Color.alpha(colorForState) / 2;
            Paint d = m136d();
            d.setColor((colorForState & 16777215) | (alpha << 24));
            d.setColorFilter(null);
            d.setShader(null);
            if (bVar != null && bVar.m155g()) {
                bVar.m165a(canvas, d);
            }
            if (i > 0) {
                C10435a[] aVarArr = this.f38671k;
                for (int i2 = 0; i2 < i; i2++) {
                    aVarArr[i2].m181a(canvas, d);
                }
            }
            if (aVar != null) {
                aVar.m181a(canvas, d);
            }
            canvas.translate(-exactCenterX, -exactCenterY);
        }
    }

    /* renamed from: a */
    public final void m144a(boolean z) {
        if (this.f38666f != z) {
            this.f38666f = z;
            if (z) {
                m133g();
            } else {
                m132h();
            }
        }
    }

    /* renamed from: a */
    public final void m143a(boolean z, boolean z2) {
        if (this.f38664d != z) {
            this.f38664d = z;
            if (z) {
                m137c(z2);
            } else {
                m134f();
            }
        }
    }

    /* renamed from: a */
    public boolean m151a() {
        int i = this.f38672l;
        C10435a[] aVarArr = this.f38671k;
        for (int i2 = 0; i2 < i; i2++) {
            aVarArr[i2].m185a();
        }
        if (aVarArr != null) {
            Arrays.fill(aVarArr, 0, i, (Object) null);
        }
        this.f38672l = 0;
        return false;
    }

    /* renamed from: b */
    public final void m142b() {
        C10435a aVar = this.f38665e;
        if (aVar != null) {
            aVar.m185a();
            this.f38665e = null;
            this.f38666f = false;
        }
        C10438b bVar = this.f38663c;
        if (bVar != null) {
            bVar.m168a();
            this.f38663c = null;
            this.f38664d = false;
        }
        m151a();
        invalidateSelf();
    }

    /* renamed from: b */
    public void m141b(float f, float f2) {
        if (this.f38665e == null || this.f38663c == null) {
            this.f38668h = f;
            this.f38669i = f2;
            this.f38670j = true;
        }
        C10435a aVar = this.f38665e;
        if (aVar != null) {
            aVar.m184a(f, f2);
        }
    }

    /* renamed from: b */
    public void m140b(C10435a aVar) {
        C10435a[] aVarArr = this.f38671k;
        int i = this.f38672l;
        int a = m146a(aVar);
        if (a >= 0) {
            int i2 = a + 1;
            System.arraycopy(aVarArr, i2, aVarArr, a, i - i2);
            aVarArr[i - 1] = null;
            this.f38672l--;
            invalidateSelf();
        }
    }

    /* renamed from: b */
    public void m139b(boolean z) {
        this.f38679s = z;
    }

    /* renamed from: c */
    public Rect m138c() {
        return getBounds();
    }

    /* renamed from: c */
    public final void m137c(boolean z) {
        if (this.f38663c == null) {
            this.f38663c = new C10438b(this, this.f38661a);
        }
        this.f38663c.m167a(this.f38662b.f38682b, this.f38674n);
        this.f38663c.m162a(z);
    }

    /* renamed from: d */
    public final Paint m136d() {
        if (this.f38673m == null) {
            Paint paint = new Paint();
            this.f38673m = paint;
            paint.setAntiAlias(true);
            this.f38673m.setStyle(Paint.Style.FILL);
        }
        return this.f38673m;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect c = m138c();
        int save = canvas.save();
        if (Build.VERSION.SDK_INT < 14) {
            canvas.clipRect(c);
        }
        if (!this.f38679s || Build.VERSION.SDK_INT >= 11) {
            m147a(canvas);
            canvas.restoreToCount(save);
        }
    }

    /* renamed from: e */
    public final void m135e() {
        int i = this.f38672l;
        C10435a[] aVarArr = this.f38671k;
        for (int i2 = 0; i2 < i; i2++) {
            aVarArr[i2].m170h();
        }
        C10435a aVar = this.f38665e;
        if (aVar != null) {
            aVar.m170h();
        }
        C10438b bVar = this.f38663c;
        if (bVar != null) {
            bVar.m156f();
        }
    }

    /* renamed from: f */
    public final void m134f() {
        C10438b bVar = this.f38663c;
        if (bVar != null) {
            bVar.m158d();
        }
    }

    /* renamed from: g */
    public final void m133g() {
        float f;
        float f2;
        if (this.f38672l < 10) {
            if (this.f38665e == null) {
                if (this.f38670j) {
                    this.f38670j = false;
                    f2 = this.f38668h;
                    f = this.f38669i;
                } else {
                    f2 = this.f38661a.exactCenterX();
                    f = this.f38661a.exactCenterY();
                }
                this.f38665e = new C10435a(this, this.f38661a, f2, f);
                if (!this.f38678r) {
                    m150a(this.f38676p, this.f38677q);
                    this.f38678r = true;
                }
            }
            this.f38665e.m183a(this.f38662b.f38682b, this.f38674n);
            this.f38665e.m173e();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    /* renamed from: h */
    public final void m132h() {
        if (this.f38665e != null) {
            if (this.f38671k == null) {
                this.f38671k = new C10435a[10];
            }
            C10435a[] aVarArr = this.f38671k;
            int i = this.f38672l;
            this.f38672l = i + 1;
            C10435a aVar = this.f38665e;
            aVarArr[i] = aVar;
            aVar.m172f();
            this.f38665e = null;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        if (Build.VERSION.SDK_INT > 10) {
            super.jumpToCurrentState();
        }
        C10435a aVar = this.f38665e;
        if (aVar != null) {
            aVar.m171g();
        }
        C10438b bVar = this.f38663c;
        if (bVar != null) {
            bVar.m157e();
        }
        m151a();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        if (!this.f38675o) {
            this.f38661a.set(rect);
            m135e();
        }
        invalidateSelf();
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0078, code lost:
        if (r11 != false) goto L_0x007b;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onStateChange(int[] r5) {
        /*
            r4 = this;
            r0 = r4
            r1 = r5
            boolean r0 = super.onStateChange(r1)
            r6 = r0
            r0 = r5
            int r0 = r0.length
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = 0
            r12 = r0
        L_0x0018:
            r0 = r9
            r1 = r7
            if (r0 >= r1) goto L_0x004b
            r0 = r5
            r1 = r9
            r0 = r0[r1]
            r13 = r0
            r0 = r13
            r1 = 16842910(0x101009e, float:2.3694E-38)
            if (r0 != r1) goto L_0x002f
            r0 = 1
            r10 = r0
        L_0x002f:
            r0 = r13
            r1 = 16842908(0x101009c, float:2.3693995E-38)
            if (r0 != r1) goto L_0x003a
            r0 = 1
            r12 = r0
        L_0x003a:
            r0 = r13
            r1 = 16842919(0x10100a7, float:2.3694026E-38)
            if (r0 != r1) goto L_0x0045
            r0 = 1
            r11 = r0
        L_0x0045:
            int r9 = r9 + 1
            goto L_0x0018
        L_0x004b:
            r0 = r10
            if (r0 == 0) goto L_0x005b
            r0 = r11
            if (r0 == 0) goto L_0x005b
            r0 = 1
            r14 = r0
            goto L_0x005e
        L_0x005b:
            r0 = 0
            r14 = r0
        L_0x005e:
            r0 = r4
            r1 = r14
            r0.m144a(r1)
            r0 = r12
            if (r0 != 0) goto L_0x007b
            r0 = r8
            r14 = r0
            r0 = r10
            if (r0 == 0) goto L_0x007e
            r0 = r8
            r14 = r0
            r0 = r11
            if (r0 == 0) goto L_0x007e
        L_0x007b:
            r0 = 1
            r14 = r0
        L_0x007e:
            r0 = r4
            r1 = r14
            r2 = r12
            r0.m143a(r1, r2)
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p613k.C10442c.onStateChange(int[]):boolean");
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        this.f38675o = true;
        this.f38661a.set(i, i2, i3, i4);
        m135e();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (!z) {
            m142b();
        } else if (visible) {
            if (this.f38666f) {
                m133g();
            }
            if (this.f38664d) {
                m137c(false);
            }
            jumpToCurrentState();
        }
        return visible;
    }
}
