package com.allinone.callerid.customview;

import android.annotation.SuppressLint;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Path;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.allinone.callerid.R$styleable;
/* renamed from: com.allinone.callerid.customview.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/b.class */
public class C2444b {

    /* renamed from: A */
    private float f8660A;

    /* renamed from: D */
    private float f8663D;

    /* renamed from: E */
    private float f8664E;

    /* renamed from: F */
    private int f8665F;

    /* renamed from: G */
    private int f8666G;

    /* renamed from: H */
    private int f8667H;

    /* renamed from: J */
    private int f8669J;

    /* renamed from: K */
    private boolean f8670K;

    /* renamed from: L */
    private View f8671L;

    /* renamed from: M */
    private AbstractC2443a f8672M;

    /* renamed from: n */
    private Drawable f8687n;

    /* renamed from: r */
    private int f8691r;

    /* renamed from: s */
    private int f8692s;

    /* renamed from: t */
    private int f8693t;

    /* renamed from: x */
    private float f8697x;

    /* renamed from: y */
    private float f8698y;

    /* renamed from: z */
    private float f8699z;

    /* renamed from: a */
    private final int f8674a = 0;

    /* renamed from: b */
    private final int f8675b = 1;

    /* renamed from: c */
    private final int f8676c = 2;

    /* renamed from: d */
    private final int f8677d = 3;

    /* renamed from: e */
    private final int f8678e = 4;

    /* renamed from: f */
    private int f8679f = 0;

    /* renamed from: g */
    private final int f8680g = 0;

    /* renamed from: h */
    private final int f8681h = 1;

    /* renamed from: i */
    private final int f8682i = 2;

    /* renamed from: j */
    private int f8683j = 0;

    /* renamed from: k */
    private int f8684k = 125;

    /* renamed from: l */
    private final int f8685l = 200;

    /* renamed from: m */
    private final int f8686m = 10;

    /* renamed from: o */
    private int f8688o = 0;

    /* renamed from: p */
    private int f8689p = 0;

    /* renamed from: q */
    private int f8690q = 15;

    /* renamed from: u */
    private Path f8694u = new Path();

    /* renamed from: v */
    private Paint f8695v = new Paint();

    /* renamed from: w */
    private Paint f8696w = new Paint();

    /* renamed from: I */
    private PaintFlagsDrawFilter f8668I = new PaintFlagsDrawFilter(0, 3);

    /* renamed from: N */
    private boolean f8673N = false;

    /* renamed from: B */
    private int f8661B = 20;

    /* renamed from: C */
    private int f8662C = this.f8684k / 10;

    @SuppressLint({"NewApi"})
    public C2444b(View view, AttributeSet attributeSet) {
        this.f8667H = -1;
        this.f8669J = 0;
        this.f8670K = true;
        this.f8672M = (AbstractC2443a) view;
        this.f8671L = view;
        view.setClickable(true);
        m27345p(0);
        if (Build.VERSION.SDK_INT >= 11) {
            view.setLayerType(1, null);
        }
        view.setWillNotDraw(false);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = view.getContext().obtainStyledAttributes(attributeSet, R$styleable.LButtonStyle);
            this.f8670K = obtainStyledAttributes.getBoolean(2, true);
            this.f8667H = obtainStyledAttributes.getInt(0, -1);
            Drawable drawable = obtainStyledAttributes.getDrawable(1);
            this.f8687n = drawable;
            if (drawable != null) {
                this.f8665F = drawable.getIntrinsicWidth();
                this.f8666G = this.f8687n.getIntrinsicHeight();
            }
            this.f8669J = obtainStyledAttributes.getInt(3, 0);
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: b */
    private int m27359b() {
        View view = this.f8671L;
        if (view == null) {
            return 0;
        }
        return view.getHeight();
    }

    /* renamed from: d */
    private int m27357d() {
        View view = this.f8671L;
        if (view == null) {
            return 0;
        }
        return view.getWidth();
    }

    /* renamed from: e */
    private void m27356e() {
        float width = this.f8671L.getWidth();
        float height = this.f8671L.getHeight();
        if (width <= 0.0f || height <= 0.0f) {
            return;
        }
        if (Math.min(width, height) / Math.max(width, height) > 0.8f) {
            this.f8683j = 0;
        } else if (width > height) {
            this.f8683j = 1;
        } else {
            this.f8683j = 2;
        }
        int i = this.f8669J;
        if (i == 0) {
            this.f8699z = Math.min(width, height) / 4.0f;
            if (this.f8683j == 0) {
                this.f8660A = Math.min(width, height) / 2.0f;
            } else {
                this.f8660A = Math.max(width, height) / 2.0f;
            }
            if (this.f8667H == -1) {
                this.f8667H = 805306368;
            }
        } else if (i == 1 || i == 2) {
            this.f8699z = height / 2.0f;
            this.f8660A = width;
            if (this.f8667H == -1) {
                this.f8667H = 822083583;
            }
        } else if (i == 3) {
            this.f8699z = Math.min(width, height) / 4.0f;
            this.f8660A = Math.max(width, height) / 2.0f;
            if (this.f8667H == -1) {
                this.f8667H = 822083583;
            }
        }
        float f = this.f8660A;
        float f2 = this.f8699z;
        this.f8697x = (f - f2) / this.f8661B;
        this.f8698y = (f - f2) / this.f8662C;
        m27355f();
    }

    /* renamed from: f */
    private void m27355f() {
        this.f8695v.setColor(Color.rgb(Color.red(this.f8667H), Color.green(this.f8667H), Color.blue(this.f8667H)));
        this.f8690q = Color.alpha(this.f8667H);
        this.f8696w.setColor(Color.rgb(Color.red(this.f8667H), Color.green(this.f8667H), Color.blue(this.f8667H)));
        this.f8696w.setAlpha(this.f8690q);
        this.f8695v.setAlpha(0);
        int i = this.f8690q;
        int i2 = i / this.f8661B;
        this.f8691r = i2;
        int i3 = i / this.f8662C;
        this.f8692s = i3;
        if (i2 < 1) {
            this.f8691r = 1;
        }
        if (i3 < 1) {
            this.f8692s = 1;
        }
        this.f8693t = this.f8692s;
    }

    /* renamed from: g */
    private void m27354g() {
        int i = this.f8679f;
        if (i == 0 || i == 3) {
            return;
        }
        if (i == 2) {
            this.f8689p += this.f8691r;
            this.f8699z += this.f8697x;
        } else if (i == 1) {
            this.f8689p += this.f8692s;
            this.f8699z += this.f8698y;
        } else if (i == 4) {
            this.f8689p -= this.f8693t;
            this.f8699z = this.f8660A;
        }
        int i2 = this.f8689p;
        int i3 = this.f8690q;
        if (i2 >= i3) {
            this.f8689p = i3;
        }
        if (this.f8689p < 0) {
            this.f8689p = 0;
        }
        this.f8695v.setAlpha(this.f8689p);
        float f = this.f8699z;
        float f2 = this.f8660A;
        if (f > f2) {
            this.f8699z = f2;
        }
        int i4 = this.f8689p;
        if (i4 <= 0 || i4 >= this.f8690q) {
            m27348m();
        }
        this.f8671L.invalidate();
    }

    /* renamed from: m */
    private void m27348m() {
        int i = this.f8679f;
        if (i != 1) {
            if (i == 2) {
                this.f8679f = 3;
                int i2 = this.f8669J;
                if (i2 == 1 || i2 == 2) {
                    this.f8699z = m27357d();
                }
            } else if (i != 3) {
                if (i == 4) {
                    if (this.f8670K && this.f8673N) {
                        AbstractC2443a abstractC2443a = this.f8672M;
                        if (abstractC2443a != null) {
                            abstractC2443a.mo27361a();
                        }
                        this.f8673N = false;
                    }
                    m27347n();
                }
            }
            this.f8671L.invalidate();
        }
        this.f8699z = this.f8660A;
        this.f8679f = 4;
        this.f8671L.invalidate();
    }

    /* renamed from: a */
    public void m27360a(Canvas canvas) {
        if (this.f8699z == 0.0f || this.f8660A == 0.0f) {
            m27356e();
        }
        canvas.setDrawFilter(this.f8668I);
        canvas.save();
        Drawable drawable = this.f8687n;
        if (drawable != null) {
            drawable.setBounds(0, 0, m27357d(), m27359b());
            this.f8687n.draw(canvas);
        } else {
            int i = this.f8688o;
            if (i != 0) {
                canvas.drawColor(i);
            }
        }
        int i2 = this.f8679f;
        if (i2 == 1 || i2 == 2) {
            int i3 = this.f8669J;
            if (i3 == 0) {
                this.f8694u.reset();
                this.f8694u.addCircle(this.f8663D, this.f8664E, this.f8699z, Path.Direction.CCW);
                canvas.drawPath(this.f8694u, this.f8696w);
                if (Build.VERSION.SDK_INT >= 26) {
                    canvas.clipPath(this.f8694u);
                } else {
                    canvas.clipPath(this.f8694u, Region.Op.XOR);
                }
                if (this.f8683j == 0) {
                    canvas.drawCircle(m27357d() / 2, m27359b() / 2, this.f8660A, this.f8695v);
                } else {
                    canvas.drawPaint(this.f8695v);
                }
            } else if (i3 == 1) {
                this.f8694u.reset();
                this.f8694u.addCircle(0.0f, m27359b() / 2, this.f8699z, Path.Direction.CCW);
                canvas.drawPath(this.f8694u, this.f8696w);
                if (Build.VERSION.SDK_INT >= 26) {
                    canvas.clipPath(this.f8694u);
                } else {
                    canvas.clipPath(this.f8694u, Region.Op.XOR);
                }
                canvas.drawCircle(0.0f, m27359b() / 2, this.f8660A, this.f8695v);
            } else if (i3 == 2) {
                this.f8694u.reset();
                this.f8694u.addCircle(m27357d(), m27359b() / 2, this.f8699z, Path.Direction.CCW);
                canvas.drawPath(this.f8694u, this.f8696w);
                if (Build.VERSION.SDK_INT >= 26) {
                    canvas.clipPath(this.f8694u);
                } else {
                    canvas.clipPath(this.f8694u, Region.Op.XOR);
                }
                canvas.drawCircle(m27357d(), m27359b() / 2, this.f8660A, this.f8695v);
            } else if (i3 == 3) {
                this.f8694u.reset();
                this.f8694u.addCircle(m27357d() / 2, m27359b() / 2, this.f8699z, Path.Direction.CCW);
                canvas.drawPath(this.f8694u, this.f8696w);
                if (Build.VERSION.SDK_INT >= 26) {
                    canvas.clipPath(this.f8694u);
                } else {
                    canvas.clipPath(this.f8694u, Region.Op.XOR);
                }
                canvas.drawCircle(m27357d() / 2, m27359b() / 2, this.f8660A, this.f8695v);
            }
        } else if (i2 == 3) {
            int i4 = this.f8669J;
            if (i4 != 0) {
                if (i4 == 1) {
                    canvas.drawCircle(0.0f, m27359b() / 2, m27357d(), this.f8695v);
                } else if (i4 == 2) {
                    canvas.drawCircle(m27357d(), m27359b() / 2, m27357d(), this.f8695v);
                } else if (i4 == 3) {
                    canvas.drawCircle(m27357d() / 2, m27359b() / 2, Math.max(m27357d(), m27359b()) / 2, this.f8695v);
                }
            } else if (this.f8683j == 0) {
                canvas.drawCircle(m27357d() / 2, m27359b() / 2, Math.min(m27357d(), m27359b()) / 2, this.f8695v);
            } else {
                canvas.drawPaint(this.f8695v);
            }
        } else if (i2 == 4) {
            int i5 = this.f8669J;
            if (i5 != 0) {
                if (i5 == 1) {
                    canvas.drawCircle(0.0f, m27359b() / 2, this.f8699z, this.f8695v);
                } else if (i5 == 2) {
                    canvas.drawCircle(m27357d(), m27359b() / 2, this.f8699z, this.f8695v);
                } else if (i5 == 3) {
                    canvas.drawCircle(m27357d() / 2, m27359b() / 2, this.f8699z, this.f8695v);
                }
            } else if (this.f8683j == 0) {
                canvas.drawCircle(m27357d() / 2, m27359b() / 2, this.f8699z, this.f8695v);
            } else {
                canvas.drawPaint(this.f8695v);
            }
        }
        canvas.restore();
        m27354g();
    }

    /* renamed from: c */
    public int[] m27358c(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode != 1073741824) {
            size = mode == Integer.MIN_VALUE ? Math.min(this.f8665F, size) : this.f8665F;
        }
        if (mode2 != 1073741824) {
            size2 = mode2 == Integer.MIN_VALUE ? Math.min(this.f8666G, size2) : this.f8666G;
        }
        return new int[]{size, size2};
    }

    /* renamed from: h */
    public boolean m27353h() {
        return this.f8665F > 0 && this.f8666G > 0;
    }

    /* renamed from: i */
    public void m27352i(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action == 3 || action == 4) {
                    if (this.f8679f == 2) {
                        this.f8679f = 1;
                    }
                }
            }
            int i = this.f8679f;
            if (i == 3) {
                m27348m();
            } else if (i == 2) {
                this.f8679f = 1;
            }
        } else {
            if (this.f8679f != 0) {
                m27347n();
            }
            this.f8663D = motionEvent.getX();
            this.f8664E = motionEvent.getY();
            int i2 = this.f8683j;
            if (i2 == 0) {
                this.f8663D = m27357d() / 2;
                this.f8664E = m27359b() / 2;
            } else if (i2 == 1) {
                this.f8664E = m27359b() / 2;
            } else if (i2 == 2) {
                this.f8663D = m27357d() / 2;
            }
            this.f8679f = 2;
        }
        this.f8671L.invalidate();
    }

    /* renamed from: j */
    public void m27351j(View view, int i) {
        if (i != 0) {
            m27347n();
        }
    }

    /* renamed from: k */
    public void m27350k(boolean z) {
        if (!z) {
            m27347n();
        }
    }

    /* renamed from: l */
    public void m27349l() {
        if (this.f8679f != 4) {
            this.f8679f = 1;
        }
        if (!this.f8670K) {
            AbstractC2443a abstractC2443a = this.f8672M;
            if (abstractC2443a == null) {
                return;
            }
            abstractC2443a.mo27361a();
        } else if (this.f8679f != 3) {
            this.f8673N = true;
        } else {
            AbstractC2443a abstractC2443a2 = this.f8672M;
            if (abstractC2443a2 == null) {
                return;
            }
            abstractC2443a2.mo27361a();
        }
    }

    /* renamed from: n */
    public void m27347n() {
        this.f8679f = 0;
        this.f8673N = false;
        this.f8699z = m27359b() / 4;
        this.f8689p = 0;
    }

    /* renamed from: o */
    public void m27346o(Drawable drawable) {
        this.f8687n = drawable;
        this.f8688o = 0;
        if (drawable != null) {
            this.f8665F = drawable.getIntrinsicWidth();
            this.f8666G = this.f8687n.getIntrinsicHeight();
        }
        this.f8671L.requestLayout();
        this.f8671L.invalidate();
    }

    /* renamed from: p */
    public void m27345p(int i) {
        this.f8687n = null;
        this.f8688o = i;
    }

    /* renamed from: q */
    public void m27344q(int i) {
        this.f8667H = i;
        m27355f();
    }

    /* renamed from: r */
    public void m27343r(boolean z) {
        this.f8670K = z;
    }

    /* renamed from: s */
    public void m27342s(int i) {
        this.f8669J = i;
        m27356e();
    }
}
