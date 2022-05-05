package p459j.p460a.p560q0;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.view.MotionEvent;
import androidx.appcompat.widget.TooltipCompatHandler;
import p459j.p460a.p582w0.C14167t;
/* renamed from: j.a.q0.b */
/* loaded from: classes3-dex2jar.jar:j/a/q0/b.class */
public class C13381b {

    /* renamed from: a */
    public float f30098a;

    /* renamed from: b */
    public float f30099b;

    /* renamed from: c */
    public float f30100c;

    /* renamed from: d */
    public float f30101d;

    /* renamed from: e */
    public float f30102e;

    /* renamed from: f */
    public float f30103f;

    /* renamed from: g */
    public int f30104g;

    /* renamed from: h */
    public int f30105h;

    /* renamed from: k */
    public AbstractC13383c f30108k;

    /* renamed from: n */
    public RectF f30111n;

    /* renamed from: i */
    public int f30106i = -1;

    /* renamed from: j */
    public boolean f30107j = false;

    /* renamed from: l */
    public C13385e f30109l = null;

    /* renamed from: m */
    public String[] f30110m = null;

    /* renamed from: o */
    public int f30112o = 0;

    /* renamed from: p */
    public Handler f30113p = new HandlerC13382a(Looper.getMainLooper());

    /* renamed from: j.a.q0.b$a */
    /* loaded from: classes3-dex2jar.jar:j/a/q0/b$a.class */
    public class HandlerC13382a extends Handler {
        public HandlerC13382a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            C13381b bVar = C13381b.this;
            int i = bVar.f30112o;
            if (i == 1) {
                bVar.f30103f = (float) (bVar.f30103f + ((1.0f - C13381b.this.f30103f) * 0.2d));
                if (C13381b.this.f30103f > 0.9d) {
                    C13381b.this.f30103f = 1.0f;
                    C13381b.this.m4105a(2);
                }
                C13381b.this.f30108k.invalidate();
                C13381b.this.m4103a(10L);
            } else if (i != 2 && i == 3) {
                bVar.f30103f = (float) (bVar.f30103f - (C13381b.this.f30103f * 0.2d));
                if (C13381b.this.f30103f < 0.1d) {
                    C13381b.this.f30103f = 0.0f;
                    C13381b.this.m4105a(0);
                }
                C13381b.this.f30108k.invalidate();
                C13381b.this.m4103a(10L);
            }
        }
    }

    public C13381b(Context context, AbstractC13383c cVar, C13385e eVar) {
        this.f30108k = null;
        this.f30101d = context.getResources().getDisplayMetrics().density;
        this.f30102e = context.getResources().getDisplayMetrics().scaledDensity;
        m4096a(eVar);
        this.f30108k = cVar;
        float f = this.f30101d;
        this.f30098a = 10.0f * f;
        this.f30099b = 3.0f * f;
        this.f30100c = f * 5.0f;
    }

    /* renamed from: a */
    public int m4108a() {
        return this.f30112o;
    }

    /* renamed from: a */
    public final int m4107a(float f) {
        String[] strArr = this.f30110m;
        if (strArr == null || strArr.length == 0) {
            return 0;
        }
        RectF rectF = this.f30111n;
        float f2 = rectF.top;
        if (f < this.f30099b + f2) {
            return 0;
        }
        float height = rectF.height();
        float f3 = this.f30099b;
        if (f >= (f2 + height) - f3) {
            return this.f30110m.length - 1;
        }
        RectF rectF2 = this.f30111n;
        return (int) (((f - rectF2.top) - f3) / ((rectF2.height() - (this.f30099b * 2.0f)) / this.f30110m.length));
    }

    /* renamed from: a */
    public final void m4105a(int i) {
        if (i >= 0 && i <= 3) {
            this.f30112o = i;
            int i2 = this.f30112o;
            if (i2 == 0) {
                this.f30113p.removeMessages(0);
            } else if (i2 == 1) {
                this.f30103f = 0.0f;
                m4103a(0L);
            } else if (i2 == 2) {
                this.f30113p.removeMessages(0);
            } else if (i2 == 3) {
                this.f30103f = 1.0f;
                m4103a(TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS);
            }
        }
    }

    /* renamed from: a */
    public void m4104a(int i, int i2, int i3, int i4) {
        this.f30104g = i;
        this.f30105h = i2;
        float f = i;
        float f2 = this.f30099b;
        this.f30111n = new RectF((f - f2) - this.f30098a, f2, f - f2, i2 - f2);
    }

    /* renamed from: a */
    public final void m4103a(long j) {
        this.f30113p.removeMessages(0);
        this.f30113p.sendEmptyMessageAtTime(0, SystemClock.uptimeMillis() + j);
    }

    /* renamed from: a */
    public void m4102a(Canvas canvas) {
        if (this.f30112o != 0) {
            Paint paint = new Paint();
            paint.setColor(-16777216);
            int i = 0;
            paint.setAlpha(0);
            paint.setAntiAlias(true);
            RectF rectF = this.f30111n;
            float f = this.f30101d;
            canvas.drawRoundRect(rectF, f * 5.0f, f * 5.0f, paint);
            String[] strArr = this.f30110m;
            if (strArr != null && strArr.length > 0) {
                if (this.f30106i >= 0) {
                    Paint paint2 = new Paint();
                    paint2.setColor(-16777216);
                    paint2.setAlpha(96);
                    paint2.setAntiAlias(true);
                    paint2.setShadowLayer(3.0f, 0.0f, 0.0f, Color.argb(64, 0, 0, 0));
                    Paint paint3 = new Paint();
                    paint3.setColor(-1);
                    paint3.setAntiAlias(true);
                    paint3.setTextSize(this.f30102e * 50.0f);
                    float measureText = paint3.measureText(this.f30110m[this.f30106i]);
                    float descent = ((this.f30100c * 2.0f) + paint3.descent()) - paint3.ascent();
                    int i2 = this.f30104g;
                    float f2 = (i2 - descent) / 2.0f;
                    int i3 = this.f30105h;
                    RectF rectF2 = new RectF(f2, (i3 - descent) / 2.0f, ((i2 - descent) / 2.0f) + descent, ((i3 - descent) / 2.0f) + descent);
                    float f3 = this.f30101d;
                    canvas.drawRoundRect(rectF2, f3 * 5.0f, f3 * 5.0f, paint2);
                    canvas.drawText(this.f30110m[this.f30106i], (rectF2.left + ((descent - measureText) / 2.0f)) - 1.0f, ((rectF2.top + this.f30100c) - paint3.ascent()) + 1.0f, paint3);
                }
                Paint paint4 = new Paint();
                paint4.setColor(C14167t.m2310f());
                paint4.setAlpha((int) (this.f30103f * 255.0f));
                paint4.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
                paint4.setAntiAlias(true);
                paint4.setTextSize(this.f30102e * 12.0f);
                float height = (this.f30111n.height() - (this.f30099b * 2.0f)) / this.f30110m.length;
                float descent2 = (height - (paint4.descent() - paint4.ascent())) / 2.0f;
                while (true) {
                    String[] strArr2 = this.f30110m;
                    if (i < strArr2.length) {
                        float measureText2 = (this.f30098a - paint4.measureText(strArr2[i])) / 2.0f;
                        String str = this.f30110m[i];
                        RectF rectF3 = this.f30111n;
                        canvas.drawText(str, rectF3.left + measureText2, (((rectF3.top + this.f30099b) + (i * height)) + descent2) - paint4.ascent(), paint4);
                        i++;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public void m4096a(C13385e eVar) {
        this.f30109l = eVar;
        C13385e eVar2 = this.f30109l;
        if (eVar2 != null) {
            this.f30110m = (String[]) eVar2.getSections();
        }
    }

    /* renamed from: a */
    public boolean m4106a(float f, float f2) {
        boolean z;
        RectF rectF = this.f30111n;
        if (f >= rectF.left) {
            float f3 = rectF.top;
            if (f2 >= f3 && f2 <= f3 + rectF.height()) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: a */
    public boolean m4101a(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (!(actionMasked == 3 || actionMasked == 4)) {
                        return false;
                    }
                } else if (!this.f30107j) {
                    return false;
                } else {
                    if (!m4106a(motionEvent.getX(), motionEvent.getY())) {
                        return true;
                    }
                    this.f30106i = m4107a(motionEvent.getY());
                    C13385e eVar = this.f30109l;
                    if (eVar == null) {
                        return true;
                    }
                    this.f30108k.setSelection(eVar.getPositionForSection(this.f30106i));
                    return true;
                }
            }
            if (!this.f30107j) {
                return false;
            }
            this.f30107j = false;
            this.f30106i = -1;
            this.f30108k.invalidate();
            return false;
        } else if (this.f30112o == 0 || !m4106a(motionEvent.getX(), motionEvent.getY())) {
            return false;
        } else {
            m4105a(2);
            this.f30107j = true;
            this.f30106i = m4107a(motionEvent.getY());
            C13385e eVar2 = this.f30109l;
            if (eVar2 == null) {
                return true;
            }
            this.f30108k.setSelection(eVar2.getPositionForSection(this.f30106i));
            return true;
        }
    }

    /* renamed from: b */
    public void m4095b() {
        if (this.f30112o == 2) {
            m4105a(3);
        }
    }

    /* renamed from: c */
    public void m4093c() {
        int i = this.f30112o;
        if (i == 0) {
            m4105a(1);
        } else if (i == 3) {
            m4105a(3);
        }
    }
}
