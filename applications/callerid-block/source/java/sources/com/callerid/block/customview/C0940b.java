package com.callerid.block.customview;

import android.annotation.SuppressLint;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.callerid.block.R$styleable;
/* renamed from: com.callerid.block.customview.b */
/* loaded from: classes-dex2jar.jar:com/callerid/block/customview/b.class */
public class C0940b {

    /* renamed from: A */
    private boolean f4266A;

    /* renamed from: B */
    private View f4267B;

    /* renamed from: C */
    private AbstractC0939a f4268C;

    /* renamed from: d */
    private Drawable f4273d;

    /* renamed from: h */
    private int f4277h;

    /* renamed from: i */
    private int f4278i;

    /* renamed from: j */
    private int f4279j;

    /* renamed from: n */
    private float f4283n;

    /* renamed from: o */
    private float f4284o;

    /* renamed from: p */
    private float f4285p;

    /* renamed from: q */
    private float f4286q;

    /* renamed from: t */
    private float f4289t;

    /* renamed from: u */
    private float f4290u;

    /* renamed from: v */
    private int f4291v;

    /* renamed from: w */
    private int f4292w;

    /* renamed from: x */
    private int f4293x;

    /* renamed from: z */
    private int f4295z;

    /* renamed from: a */
    private int f4270a = 0;

    /* renamed from: b */
    private int f4271b = 0;

    /* renamed from: c */
    private int f4272c = 125;

    /* renamed from: e */
    private int f4274e = 0;

    /* renamed from: f */
    private int f4275f = 0;

    /* renamed from: g */
    private int f4276g = 15;

    /* renamed from: k */
    private Path f4280k = new Path();

    /* renamed from: l */
    private Paint f4281l = new Paint();

    /* renamed from: m */
    private Paint f4282m = new Paint();

    /* renamed from: y */
    private PaintFlagsDrawFilter f4294y = new PaintFlagsDrawFilter(0, 3);

    /* renamed from: D */
    private boolean f4269D = false;

    /* renamed from: r */
    private int f4287r = 20;

    /* renamed from: s */
    private int f4288s = this.f4272c / 10;

    @SuppressLint({"NewApi"})
    public C0940b(View view, AttributeSet attributeSet) {
        this.f4293x = -1;
        this.f4295z = 0;
        this.f4266A = true;
        this.f4268C = (AbstractC0939a) view;
        this.f4267B = view;
        view.setClickable(true);
        m10494p(0);
        if (Build.VERSION.SDK_INT >= 11) {
            view.setLayerType(1, null);
        }
        view.setWillNotDraw(false);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = view.getContext().obtainStyledAttributes(attributeSet, R$styleable.LButtonStyle);
            this.f4266A = obtainStyledAttributes.getBoolean(2, true);
            this.f4293x = obtainStyledAttributes.getInt(0, -1);
            Drawable drawable = obtainStyledAttributes.getDrawable(1);
            this.f4273d = drawable;
            if (drawable != null) {
                this.f4291v = drawable.getIntrinsicWidth();
                this.f4292w = this.f4273d.getIntrinsicHeight();
            }
            this.f4295z = obtainStyledAttributes.getInt(3, 0);
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: b */
    private int m10508b() {
        View view = this.f4267B;
        if (view == null) {
            return 0;
        }
        return view.getHeight();
    }

    /* renamed from: d */
    private int m10506d() {
        View view = this.f4267B;
        if (view == null) {
            return 0;
        }
        return view.getWidth();
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x008f, code lost:
        if (r4.f4293x == (-1)) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a6, code lost:
        if (r4.f4293x == (-1)) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a9, code lost:
        r4.f4293x = 822083583;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m10505e() {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.customview.C0940b.m10505e():void");
    }

    /* renamed from: f */
    private void m10504f() {
        this.f4281l.setColor(Color.rgb(Color.red(this.f4293x), Color.green(this.f4293x), Color.blue(this.f4293x)));
        this.f4276g = Color.alpha(this.f4293x);
        this.f4282m.setColor(Color.rgb(Color.red(this.f4293x), Color.green(this.f4293x), Color.blue(this.f4293x)));
        this.f4282m.setAlpha(this.f4276g);
        this.f4281l.setAlpha(0);
        int i = this.f4276g;
        int i2 = i / this.f4287r;
        this.f4277h = i2;
        int i3 = i / this.f4288s;
        this.f4278i = i3;
        if (i2 < 1) {
            this.f4277h = 1;
        }
        if (i3 < 1) {
            this.f4278i = 1;
        }
        this.f4279j = this.f4278i;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b0  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m10503g() {
        /*
            Method dump skipped, instructions count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.customview.C0940b.m10503g():void");
    }

    /* renamed from: m */
    private void m10497m() {
        int i = this.f4270a;
        if (i != 1) {
            if (i == 2) {
                this.f4270a = 3;
                int i2 = this.f4295z;
                if (i2 == 1 || i2 == 2) {
                    this.f4285p = m10506d();
                }
            } else if (i != 3) {
                if (i == 4) {
                    if (this.f4266A && this.f4269D) {
                        AbstractC0939a abstractC0939a = this.f4268C;
                        if (abstractC0939a != null) {
                            abstractC0939a.m10510a();
                        }
                        this.f4269D = false;
                    }
                    m10496n();
                }
            }
            this.f4267B.invalidate();
        }
        this.f4285p = this.f4286q;
        this.f4270a = 4;
        this.f4267B.invalidate();
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0084, code lost:
        if (r0 != 3) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00e0, code lost:
        if (r6.f4271b == 0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x030c, code lost:
        if (r6.f4271b == 0) goto L66;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m10509a(android.graphics.Canvas r7) {
        /*
            Method dump skipped, instructions count: 795
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.customview.C0940b.m10509a(android.graphics.Canvas):void");
    }

    /* renamed from: c */
    public int[] m10507c(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode != 1073741824) {
            size = mode == Integer.MIN_VALUE ? Math.min(this.f4291v, size) : this.f4291v;
        }
        if (mode2 != 1073741824) {
            size2 = mode2 == Integer.MIN_VALUE ? Math.min(this.f4292w, size2) : this.f4292w;
        }
        return new int[]{size, size2};
    }

    /* renamed from: h */
    public boolean m10502h() {
        return this.f4291v > 0 && this.f4292w > 0;
    }

    /* renamed from: i */
    public void m10501i(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action == 3 || action == 4) {
                    if (this.f4270a == 2) {
                        this.f4270a = 1;
                    }
                }
            }
            int i = this.f4270a;
            if (i == 3) {
                m10497m();
            } else if (i == 2) {
                this.f4270a = 1;
            }
        } else {
            if (this.f4270a != 0) {
                m10496n();
            }
            this.f4289t = motionEvent.getX();
            this.f4290u = motionEvent.getY();
            int i2 = this.f4271b;
            if (i2 == 0) {
                this.f4289t = m10506d() / 2;
            } else if (i2 != 1) {
                if (i2 == 2) {
                    this.f4289t = m10506d() / 2;
                }
                this.f4270a = 2;
            }
            this.f4290u = m10508b() / 2;
            this.f4270a = 2;
        }
        this.f4267B.invalidate();
    }

    /* renamed from: j */
    public void m10500j(View view, int i) {
        if (i != 0) {
            m10496n();
        }
    }

    /* renamed from: k */
    public void m10499k(boolean z) {
        if (!z) {
            m10496n();
        }
    }

    /* renamed from: l */
    public void m10498l() {
        AbstractC0939a abstractC0939a;
        if (this.f4270a != 4) {
            this.f4270a = 1;
        }
        if (!this.f4266A) {
            abstractC0939a = this.f4268C;
            if (abstractC0939a == null) {
                return;
            }
        } else if (this.f4270a != 3) {
            this.f4269D = true;
            return;
        } else {
            abstractC0939a = this.f4268C;
            if (abstractC0939a == null) {
                return;
            }
        }
        abstractC0939a.m10510a();
    }

    /* renamed from: n */
    public void m10496n() {
        this.f4270a = 0;
        this.f4269D = false;
        this.f4285p = m10508b() / 4;
        this.f4275f = 0;
    }

    /* renamed from: o */
    public void m10495o(Drawable drawable) {
        this.f4273d = drawable;
        this.f4274e = 0;
        if (drawable != null) {
            this.f4291v = drawable.getIntrinsicWidth();
            this.f4292w = this.f4273d.getIntrinsicHeight();
        }
        this.f4267B.requestLayout();
        this.f4267B.invalidate();
    }

    /* renamed from: p */
    public void m10494p(int i) {
        this.f4273d = null;
        this.f4274e = i;
    }

    /* renamed from: q */
    public void m10493q(int i) {
        this.f4293x = i;
        m10504f();
    }

    /* renamed from: r */
    public void m10492r(boolean z) {
        this.f4266A = z;
    }

    /* renamed from: s */
    public void m10491s(int i) {
        this.f4295z = i;
        m10505e();
    }
}
