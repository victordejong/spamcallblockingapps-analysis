package gogolook.callgogolook2.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/ShimmerTextView.class */
public class ShimmerTextView extends ImageView {

    /* renamed from: a */
    public Paint f13073a;

    /* renamed from: b */
    public String f13074b;

    /* renamed from: c */
    public int f13075c;

    /* renamed from: d */
    public float f13076d;

    /* renamed from: e */
    public Bitmap f13077e;

    /* renamed from: f */
    public Canvas f13078f;

    /* renamed from: g */
    public Rect f13079g;

    /* renamed from: h */
    public PorterDuffXfermode f13080h;

    /* renamed from: i */
    public int f13081i;

    /* renamed from: j */
    public int f13082j = 144;

    /* renamed from: k */
    public int f13083k = 35;

    /* renamed from: l */
    public int f13084l = -4079167;

    /* renamed from: m */
    public C5280a f13085m;

    /* renamed from: n */
    public C5280a f13086n;

    /* renamed from: o */
    public Bitmap f13087o;

    /* renamed from: gogolook.callgogolook2.view.ShimmerTextView$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/ShimmerTextView$a.class */
    public static class C5280a {

        /* renamed from: a */
        public Context f13088a;

        /* renamed from: b */
        public float f13089b;

        /* renamed from: c */
        public float f13090c;

        /* renamed from: d */
        public float f13091d;

        /* renamed from: e */
        public float f13092e;

        /* renamed from: f */
        public float f13093f;

        /* renamed from: g */
        public float f13094g;

        /* renamed from: h */
        public Bitmap f13095h;

        public C5280a(Context context, int i, float f, float f2, float f3, float f4, float f5, float f6) {
            this.f13088a = context;
            this.f13089b = f;
            this.f13090c = f2;
            this.f13091d = f3;
            this.f13092e = f4;
            this.f13093f = f5;
            this.f13094g = f6;
            this.f13095h = BitmapFactory.decodeResource(context.getResources(), i);
        }

        /* renamed from: a */
        public int m25887a() {
            return ShimmerTextView.m25895a(this.f13088a, this.f13090c);
        }

        /* renamed from: a */
        public Rect m25886a(int i, int i2) {
            int a = i2 - (ShimmerTextView.m25895a(this.f13088a, this.f13090c) / 2);
            return new Rect(i, a, ShimmerTextView.m25895a(this.f13088a, this.f13089b) + i, ShimmerTextView.m25895a(this.f13088a, this.f13090c) + a);
        }

        /* renamed from: b */
        public int m25884b() {
            return ShimmerTextView.m25895a(this.f13088a, this.f13094g);
        }

        /* renamed from: c */
        public int m25883c() {
            return ShimmerTextView.m25895a(this.f13088a, this.f13091d);
        }

        /* renamed from: d */
        public int m25882d() {
            return ShimmerTextView.m25895a(this.f13088a, this.f13093f);
        }

        /* renamed from: e */
        public int m25881e() {
            return ShimmerTextView.m25895a(this.f13088a, this.f13092e);
        }

        /* renamed from: f */
        public int m25880f() {
            return ShimmerTextView.m25895a(this.f13088a, this.f13089b);
        }
    }

    public ShimmerTextView(Context context) {
        super(context);
        m25890c();
    }

    public ShimmerTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m25890c();
    }

    public ShimmerTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m25890c();
    }

    /* renamed from: a */
    public static float m25894a(Context context, Float f) {
        return context.getResources().getDisplayMetrics().scaledDensity * f.floatValue();
    }

    /* renamed from: a */
    public static int m25896a(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    /* renamed from: a */
    public static int m25895a(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: a */
    public String m25900a() {
        return this.f13074b;
    }

    /* renamed from: a */
    public void m25899a(float f) {
        this.f13076d = f;
    }

    /* renamed from: a */
    public void m25898a(int i) {
        this.f13082j = i;
    }

    /* renamed from: a */
    public void m25897a(int i, float f, float f2, float f3, float f4, float f5, float f6) {
        this.f13086n = new C5280a(getContext(), i, f, f2, f3, f4, f5, f6);
    }

    /* renamed from: a */
    public void m25893a(String str) {
        this.f13074b = str;
    }

    /* renamed from: b */
    public void m25892b() {
        this.f13073a.reset();
        this.f13073a.setAntiAlias(true);
        this.f13073a.setColor(this.f13075c);
        this.f13073a.setTextSize(m25894a(getContext(), Float.valueOf(this.f13076d)));
        Paint.FontMetrics fontMetrics = this.f13073a.getFontMetrics();
        float f = fontMetrics.bottom;
        float f2 = fontMetrics.top;
        if (getLayoutParams().width == -2) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            String str = this.f13074b;
            layoutParams.width = (int) (str == null ? 0.0f : this.f13073a.measureText(str));
            if (this.f13085m != null) {
                getLayoutParams().width += this.f13085m.m25880f();
            }
            if (this.f13086n != null) {
                getLayoutParams().width += this.f13086n.m25880f();
            }
            if (getLayoutParams().height == -2) {
                getLayoutParams().height = (int) (f - f2);
                if (this.f13085m != null) {
                    getLayoutParams().height = Math.max(getLayoutParams().height, this.f13085m.m25887a());
                }
                if (this.f13086n != null) {
                    getLayoutParams().height = Math.max(getLayoutParams().height, this.f13086n.m25887a());
                }
            }
        }
        requestLayout();
    }

    /* renamed from: b */
    public void m25891b(int i) {
        this.f13075c = i;
    }

    /* renamed from: c */
    public final void m25890c() {
        this.f13073a = new Paint();
        this.f13080h = new PorterDuffXfermode(PorterDuff.Mode.SRC_IN);
        this.f13079g = new Rect();
        this.f13081i = m25896a(getContext());
        m25889c(this.f13084l);
    }

    /* renamed from: c */
    public void m25889c(int i) {
        this.f13084l = i;
        Bitmap bitmap = this.f13087o;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.f13087o.recycle();
            this.f13087o = null;
        }
        this.f13087o = Bitmap.createBitmap(64, 64, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(this.f13087o);
        canvas.drawColor(0, PorterDuff.Mode.CLEAR);
        this.f13073a.reset();
        this.f13073a.setShader(new RadialGradient(32.0f, 32.0f, 32.0f, this.f13084l, this.f13075c, Shader.TileMode.MIRROR));
        canvas.drawCircle(32.0f, 32.0f, 34.0f, this.f13073a);
    }

    /* renamed from: d */
    public void m25888d(int i) {
        this.f13083k = i;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (getWidth() != 0 && getHeight() != 0) {
            if (!(this.f13077e != null && getWidth() == this.f13077e.getWidth() && getHeight() == this.f13077e.getHeight())) {
                this.f13077e = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
                this.f13078f = new Canvas(this.f13077e);
            }
            this.f13078f.drawColor(0, PorterDuff.Mode.CLEAR);
            this.f13073a.reset();
            this.f13073a.setAntiAlias(true);
            this.f13073a.setColor(this.f13075c);
            this.f13073a.setTextSize(m25894a(getContext(), Float.valueOf(this.f13076d)));
            Paint.FontMetrics fontMetrics = this.f13073a.getFontMetrics();
            float height = (getHeight() - ((getHeight() - (fontMetrics.bottom - fontMetrics.top)) / 2.0f)) - fontMetrics.bottom;
            C5280a aVar = this.f13085m;
            if (aVar != null) {
                Canvas canvas2 = this.f13078f;
                Bitmap bitmap = aVar.f13095h;
                C5280a aVar2 = this.f13085m;
                canvas2.drawBitmap(bitmap, (Rect) null, aVar2.m25886a(aVar2.m25883c(), ((getHeight() + this.f13085m.m25881e()) - this.f13085m.m25884b()) / 2), this.f13073a);
                this.f13078f.drawText(m25900a(), this.f13085m.m25883c() + this.f13085m.m25880f() + this.f13085m.m25882d(), height, this.f13073a);
                C5280a aVar3 = this.f13086n;
                if (aVar3 != null) {
                    this.f13078f.drawBitmap(this.f13086n.f13095h, (Rect) null, this.f13086n.m25886a((int) (aVar3.m25883c() + this.f13085m.m25880f() + this.f13085m.m25882d() + this.f13073a.measureText(this.f13074b) + this.f13086n.m25883c()), ((getHeight() + this.f13086n.m25881e()) - this.f13086n.m25884b()) / 2), this.f13073a);
                }
            } else {
                this.f13078f.drawText(m25900a(), 0.0f, height, this.f13073a);
                if (this.f13086n != null) {
                    this.f13078f.drawBitmap(this.f13086n.f13095h, (Rect) null, this.f13086n.m25886a((int) (this.f13073a.measureText(this.f13074b) + this.f13086n.m25883c()), ((getHeight() + this.f13086n.m25881e()) - this.f13086n.m25884b()) / 2), this.f13073a);
                }
            }
            Rect rect = this.f13079g;
            int i = rect.left;
            int i2 = this.f13081i;
            rect.left = i + (i2 / this.f13082j);
            if (rect.left >= i2) {
                rect.left = -m25895a(getContext(), this.f13083k);
            }
            Rect rect2 = this.f13079g;
            rect2.top = 0;
            rect2.right = rect2.left + m25895a(getContext(), this.f13083k);
            this.f13079g.bottom = getHeight();
            this.f13073a.reset();
            this.f13073a.setAntiAlias(true);
            this.f13073a.setXfermode(this.f13080h);
            Bitmap bitmap2 = this.f13087o;
            if (bitmap2 != null && !bitmap2.isRecycled()) {
                this.f13078f.drawBitmap(this.f13087o, (Rect) null, this.f13079g, this.f13073a);
            }
            setImageBitmap(this.f13077e);
            postInvalidateDelayed(500L, 0, 0, getWidth(), getHeight());
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        postInvalidateDelayed(500L);
    }
}
