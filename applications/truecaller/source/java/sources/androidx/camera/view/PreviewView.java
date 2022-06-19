package androidx.camera.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.AttributeSet;
import android.util.Rational;
import android.util.Size;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.widget.FrameLayout;
import androidx.camera.view.PreviewView;
import androidx.lifecycle.LiveData;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import p1727n3.p1758e.p1767b.AbstractC25895b1;
import p1727n3.p1758e.p1767b.C25898c1;
import p1727n3.p1758e.p1767b.C25910f1;
import p1727n3.p1758e.p1767b.C25927h1;
import p1727n3.p1758e.p1767b.C26103y0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25938b0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25943c1;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26059z;
import p1727n3.p1758e.p1767b.p1768j1.C26053x0;
import p1727n3.p1758e.p1767b.p1768j1.RunnableC26044u0;
import p1727n3.p1758e.p1776d.AbstractC26132q;
import p1727n3.p1758e.p1776d.AbstractC26137v;
import p1727n3.p1758e.p1776d.C26111a0;
import p1727n3.p1758e.p1776d.C26119d;
import p1727n3.p1758e.p1776d.C26120e;
import p1727n3.p1758e.p1776d.C26135t;
import p1727n3.p1758e.p1776d.C26136u;
import p1727n3.p1758e.p1776d.C26139w;
import p1727n3.p1758e.p1776d.C26140x;
import p1727n3.p1758e.p1776d.C26145z;
import p1727n3.p1758e.p1776d.p1777b0.p1778a.p1779a.C26113a;
import p1727n3.p1758e.p1776d.p1777b0.p1778a.p1779a.C26115c;
import p1727n3.p1758e.p1776d.p1780c0.C26118a;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1868v.C27010k0;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/camera/view/PreviewView.class */
public final class PreviewView extends FrameLayout {

    /* renamed from: b */
    public AbstractC26137v f509b;

    /* renamed from: c */
    public final C26136u f510c;

    /* renamed from: f */
    public C26139w f513f;

    /* renamed from: g */
    public final ScaleGestureDetector f514g;

    /* renamed from: a */
    public EnumC0103b f508a = EnumC0103b.PERFORMANCE;

    /* renamed from: d */
    public final C27010k0<EnumC0106e> f511d = new C27010k0<>(EnumC0106e.IDLE);

    /* renamed from: e */
    public final AtomicReference<C26135t> f512e = new AtomicReference<>();

    /* renamed from: h */
    public final View.OnLayoutChangeListener f515h = new View.OnLayoutChangeListener() { // from class: n3.e.d.g
        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            PreviewView previewView = PreviewView.this;
            Objects.requireNonNull(previewView);
            if ((i3 - i == i7 - i5 && i4 - i2 == i8 - i6) ? false : true) {
                previewView.m43056a();
                previewView.getDisplay();
                previewView.getViewPort();
            }
        }
    };

    /* renamed from: i */
    public final C25898c1.AbstractC25902d f516i = new C0102a();

    /* renamed from: androidx.camera.view.PreviewView$a */
    /* loaded from: classes-dex2jar.jar:androidx/camera/view/PreviewView$a.class */
    public class C0102a implements C25898c1.AbstractC25902d {
        public C0102a() {
            PreviewView.this = r4;
        }

        @Override // p1727n3.p1758e.p1767b.C25898c1.AbstractC25902d
        /* renamed from: a */
        public void mo2914a(final C25910f1 c25910f1) {
            C26145z c26145z;
            if (!MediaSessionCompat.m43288L0()) {
                C26467a.m1797e(PreviewView.this.getContext()).execute(new Runnable() { // from class: n3.e.d.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        PreviewView.C0102a c0102a = PreviewView.C0102a.this;
                        PreviewView.this.f516i.mo2914a(c25910f1);
                    }
                });
                return;
            }
            C26103y0.m2724a("PreviewView", "Surface requested by Preview.", null);
            AbstractC25938b0 abstractC25938b0 = c25910f1.f72476c;
            Executor m1797e = C26467a.m1797e(PreviewView.this.getContext());
            final C26120e c26120e = new C26120e(this, abstractC25938b0, c25910f1);
            c25910f1.f72483j = c26120e;
            c25910f1.f72484k = m1797e;
            final C25910f1.AbstractC25917g abstractC25917g = c25910f1.f72482i;
            if (abstractC25917g != null) {
                m1797e.execute(new Runnable() { // from class: n3.e.b.v
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((C26120e) C25910f1.AbstractC25918h.this).m2702a(abstractC25917g);
                    }
                });
            }
            PreviewView previewView = PreviewView.this;
            EnumC0103b enumC0103b = previewView.f508a;
            boolean equals = c25910f1.f72476c.m2878d().m2741i().equals("androidx.camera.camera2.legacy");
            boolean z = C26113a.m2705a(C26115c.class) != null;
            boolean z2 = true;
            if (!c25910f1.f72475b) {
                z2 = true;
                if (Build.VERSION.SDK_INT > 24) {
                    z2 = true;
                    if (!equals) {
                        if (z) {
                            z2 = true;
                        } else {
                            int ordinal = enumC0103b.ordinal();
                            if (ordinal == 0) {
                                z2 = false;
                            } else if (ordinal != 1) {
                                throw new IllegalArgumentException("Invalid implementation mode: " + enumC0103b);
                            } else {
                                z2 = true;
                            }
                        }
                    }
                }
            }
            if (z2) {
                PreviewView previewView2 = PreviewView.this;
                c26145z = new C26145z(previewView2, previewView2.f510c);
            } else {
                PreviewView previewView3 = PreviewView.this;
                c26145z = new C26140x(previewView3, previewView3.f510c);
            }
            previewView.f509b = c26145z;
            AbstractC26059z m2878d = abstractC25938b0.m2878d();
            PreviewView previewView4 = PreviewView.this;
            C26135t c26135t = new C26135t(m2878d, previewView4.f511d, previewView4.f509b);
            PreviewView.this.f512e.set(c26135t);
            AbstractC25943c1<AbstractC25938b0.EnumC25939a> m2877e = abstractC25938b0.m2877e();
            Executor m1797e2 = C26467a.m1797e(PreviewView.this.getContext());
            C26053x0 c26053x0 = (C26053x0) m2877e;
            synchronized (c26053x0.f72724b) {
                C26053x0.C26054a c26054a = (C26053x0.C26054a) c26053x0.f72724b.get(c26135t);
                if (c26054a != null) {
                    c26054a.f72725a.set(false);
                }
                C26053x0.C26054a c26054a2 = new C26053x0.C26054a(m1797e2, c26135t);
                c26053x0.f72724b.put(c26135t, c26054a2);
                MediaSessionCompat.m43279O0().execute(new RunnableC26044u0(c26053x0, c26054a, c26054a2));
            }
            PreviewView.this.f509b.mo2684e(c25910f1, new C26119d(this, c26135t, abstractC25938b0));
        }
    }

    /* renamed from: androidx.camera.view.PreviewView$b */
    /* loaded from: classes-dex2jar.jar:androidx/camera/view/PreviewView$b.class */
    public enum EnumC0103b {
        PERFORMANCE(0),
        COMPATIBLE(1);
        

        /* renamed from: a */
        public final int f521a;

        EnumC0103b(int i) {
            this.f521a = i;
        }
    }

    /* renamed from: androidx.camera.view.PreviewView$c */
    /* loaded from: classes-dex2jar.jar:androidx/camera/view/PreviewView$c.class */
    public class C0104c extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        public C0104c() {
            PreviewView.this = r4;
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            Objects.requireNonNull(PreviewView.this);
            return true;
        }
    }

    /* renamed from: androidx.camera.view.PreviewView$d */
    /* loaded from: classes-dex2jar.jar:androidx/camera/view/PreviewView$d.class */
    public enum EnumC0105d {
        FILL_START(0),
        FILL_CENTER(1),
        FILL_END(2),
        FIT_START(3),
        FIT_CENTER(4),
        FIT_END(5);
        

        /* renamed from: a */
        public final int f530a;

        EnumC0105d(int i) {
            this.f530a = i;
        }
    }

    /* renamed from: androidx.camera.view.PreviewView$e */
    /* loaded from: classes-dex2jar.jar:androidx/camera/view/PreviewView$e.class */
    public enum EnumC0106e {
        IDLE,
        STREAMING
    }

    /* JADX WARN: Finally extract failed */
    public PreviewView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 0);
        C26136u c26136u = new C26136u();
        this.f510c = c26136u;
        this.f513f = new C26139w(c26136u);
        MediaSessionCompat.m43199t();
        Resources.Theme theme = context.getTheme();
        int[] iArr = C0107R.styleable.PreviewView;
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
        C26614s.m1565p(this, context, iArr, attributeSet, obtainStyledAttributes, 0, 0);
        try {
            int integer = obtainStyledAttributes.getInteger(C0107R.styleable.PreviewView_scaleType, c26136u.f72882g.f530a);
            EnumC0105d[] values = EnumC0105d.values();
            for (int i = 0; i < 6; i++) {
                EnumC0105d enumC0105d = values[i];
                if (enumC0105d.f530a == integer) {
                    setScaleType(enumC0105d);
                    int integer2 = obtainStyledAttributes.getInteger(C0107R.styleable.PreviewView_implementationMode, 0);
                    EnumC0103b[] values2 = EnumC0103b.values();
                    for (int i2 = 0; i2 < 2; i2++) {
                        EnumC0103b enumC0103b = values2[i2];
                        if (enumC0103b.f521a == integer2) {
                            setImplementationMode(enumC0103b);
                            obtainStyledAttributes.recycle();
                            this.f514g = new ScaleGestureDetector(context, new C0104c());
                            if (getBackground() != null) {
                                return;
                            }
                            Context context2 = getContext();
                            Object obj = C26467a.f74235a;
                            setBackgroundColor(C26467a.C26471d.m1787a(context2, 17170444));
                            return;
                        }
                    }
                    throw new IllegalArgumentException("Unknown implementation mode id " + integer2);
                }
            }
            throw new IllegalArgumentException("Unknown scale type id " + integer);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    private int getViewPortScaleType() {
        int ordinal = getScaleType().ordinal();
        if (ordinal != 0) {
            int i = 1;
            if (ordinal != 1) {
                i = 2;
                if (ordinal != 2) {
                    i = 3;
                    if (ordinal != 3) {
                        i = 3;
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                StringBuilder m8728C = C22128a.m8728C("Unexpected scale type: ");
                                m8728C.append(getScaleType());
                                throw new IllegalStateException(m8728C.toString());
                            }
                            i = 3;
                        }
                    }
                }
            }
            return i;
        }
        return 0;
    }

    /* renamed from: a */
    public void m43056a() {
        AbstractC26137v abstractC26137v = this.f509b;
        if (abstractC26137v != null) {
            abstractC26137v.m2693f();
        }
        C26139w c26139w = this.f513f;
        Size size = new Size(getWidth(), getHeight());
        int layoutDirection = getLayoutDirection();
        Objects.requireNonNull(c26139w);
        MediaSessionCompat.m43199t();
        synchronized (c26139w) {
            if (size.getWidth() != 0 && size.getHeight() != 0) {
                c26139w.f72889c = c26139w.f72888b.m2699a(size, layoutDirection);
                return;
            }
            c26139w.f72889c = null;
        }
    }

    public Bitmap getBitmap() {
        Bitmap bitmap;
        MediaSessionCompat.m43199t();
        AbstractC26137v abstractC26137v = this.f509b;
        if (abstractC26137v == null) {
            bitmap = null;
        } else {
            bitmap = abstractC26137v.mo2687b();
            if (bitmap == null) {
                bitmap = null;
            } else {
                C26136u c26136u = abstractC26137v.f72885c;
                Size size = new Size(abstractC26137v.f72884b.getWidth(), abstractC26137v.f72884b.getHeight());
                int layoutDirection = abstractC26137v.f72884b.getLayoutDirection();
                if (c26136u.m2694f()) {
                    Matrix m2696d = c26136u.m2696d();
                    RectF m2695e = c26136u.m2695e(size, layoutDirection);
                    Bitmap createBitmap = Bitmap.createBitmap(size.getWidth(), size.getHeight(), bitmap.getConfig());
                    Canvas canvas = new Canvas(createBitmap);
                    Matrix matrix = new Matrix();
                    matrix.postConcat(m2696d);
                    matrix.postScale(m2695e.width() / c26136u.f72876a.getWidth(), m2695e.height() / c26136u.f72876a.getHeight());
                    matrix.postTranslate(m2695e.left, m2695e.top);
                    canvas.drawBitmap(bitmap, matrix, new Paint(7));
                    bitmap = createBitmap;
                }
            }
        }
        return bitmap;
    }

    public AbstractC26132q getController() {
        MediaSessionCompat.m43199t();
        return null;
    }

    public EnumC0103b getImplementationMode() {
        MediaSessionCompat.m43199t();
        return this.f508a;
    }

    public AbstractC25895b1 getMeteringPointFactory() {
        MediaSessionCompat.m43199t();
        return this.f513f;
    }

    public C26118a getOutputTransform() {
        Matrix matrix;
        MediaSessionCompat.m43199t();
        try {
            matrix = this.f510c.m2697c(new Size(getWidth(), getHeight()), getLayoutDirection());
        } catch (IllegalStateException e) {
            matrix = null;
        }
        Rect rect = this.f510c.f72877b;
        if (matrix == null || rect == null) {
            C26103y0.m2724a("PreviewView", "Transform info is not ready", null);
            return null;
        }
        RectF rectF = C26111a0.f72835a;
        RectF rectF2 = new RectF(rect);
        Matrix matrix2 = new Matrix();
        matrix2.setRectToRect(C26111a0.f72835a, rectF2, Matrix.ScaleToFit.FILL);
        matrix.preConcat(matrix2);
        if (this.f509b instanceof C26145z) {
            matrix.postConcat(getMatrix());
        } else {
            C26103y0.m2720e("PreviewView", "PreviewView needs to be in COMPATIBLE mode for the transform to work correctly.", null);
        }
        return new C26118a(matrix, new Size(rect.width(), rect.height()));
    }

    public LiveData<EnumC0106e> getPreviewStreamState() {
        return this.f511d;
    }

    public EnumC0105d getScaleType() {
        MediaSessionCompat.m43199t();
        return this.f510c.f72882g;
    }

    public C25898c1.AbstractC25902d getSurfaceProvider() {
        MediaSessionCompat.m43199t();
        return this.f516i;
    }

    public C25927h1 getViewPort() {
        MediaSessionCompat.m43199t();
        if (getDisplay() == null) {
            return null;
        }
        int rotation = getDisplay().getRotation();
        MediaSessionCompat.m43199t();
        C25927h1 c25927h1 = null;
        if (getWidth() != 0) {
            if (getHeight() == 0) {
                c25927h1 = null;
            } else {
                Rational rational = new Rational(getWidth(), getHeight());
                int viewPortScaleType = getViewPortScaleType();
                int layoutDirection = getLayoutDirection();
                MediaSessionCompat.m43196u(rational, "The crop aspect ratio must be set.");
                c25927h1 = new C25927h1(viewPortScaleType, rational, rotation, layoutDirection);
            }
        }
        return c25927h1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        addOnLayoutChangeListener(this.f515h);
        AbstractC26137v abstractC26137v = this.f509b;
        if (abstractC26137v != null) {
            abstractC26137v.mo2686c();
        }
        getDisplay();
        getViewPort();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeOnLayoutChangeListener(this.f515h);
        AbstractC26137v abstractC26137v = this.f509b;
        if (abstractC26137v != null) {
            abstractC26137v.mo2685d();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean performClick() {
        return super.performClick();
    }

    public void setController(AbstractC26132q abstractC26132q) {
        MediaSessionCompat.m43199t();
        getDisplay();
        getViewPort();
    }

    public void setImplementationMode(EnumC0103b enumC0103b) {
        MediaSessionCompat.m43199t();
        this.f508a = enumC0103b;
    }

    public void setScaleType(EnumC0105d enumC0105d) {
        MediaSessionCompat.m43199t();
        this.f510c.f72882g = enumC0105d;
        m43056a();
        getDisplay();
        getViewPort();
    }
}
