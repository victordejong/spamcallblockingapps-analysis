package com.callerid.block.customview;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import com.callerid.block.R$color;
import com.callerid.block.R$styleable;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.util.C1199n0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Random;
/* loaded from: classes-dex2jar.jar:com/callerid/block/customview/GiftRainView.class */
public class GiftRainView extends View {

    /* renamed from: q */
    public static SparseArray<Bitmap> f4163q = new SparseArray<>();

    /* renamed from: b */
    private int f4164b;

    /* renamed from: c */
    private int[] f4165c;

    /* renamed from: d */
    private int f4166d;

    /* renamed from: e */
    private int f4167e;

    /* renamed from: f */
    private int f4168f;

    /* renamed from: g */
    private float f4169g;

    /* renamed from: h */
    private float f4170h;

    /* renamed from: j */
    private ArrayList<C0931d> f4172j;

    /* renamed from: l */
    private ValueAnimator f4174l;

    /* renamed from: m */
    private long f4175m;

    /* renamed from: n */
    private long f4176n;

    /* renamed from: o */
    private boolean f4177o;

    /* renamed from: p */
    private AbstractC0930c f4178p;

    /* renamed from: i */
    private Paint f4171i = new Paint();

    /* renamed from: k */
    private Matrix f4173k = new Matrix();

    /* renamed from: com.callerid.block.customview.GiftRainView$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/customview/GiftRainView$a.class */
    public class C0928a implements ValueAnimator.AnimatorUpdateListener {
        C0928a() {
            GiftRainView.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            long currentTimeMillis = System.currentTimeMillis();
            float f = ((float) (currentTimeMillis - GiftRainView.this.f4176n)) / 1000.0f;
            GiftRainView.this.f4176n = currentTimeMillis;
            for (int i = 0; i < GiftRainView.this.f4172j.size(); i++) {
                C0931d c0931d = (C0931d) GiftRainView.this.f4172j.get(i);
                c0931d.f4182b += c0931d.f4185e * f;
                if (c0931d.f4182b > GiftRainView.this.getHeight()) {
                    if (GiftRainView.this.f4177o) {
                        GiftRainView.this.f4172j.remove(i);
                    } else {
                        c0931d.f4182b = 0 - c0931d.f4187g;
                    }
                }
                c0931d.f4183c += c0931d.f4184d * f;
            }
            GiftRainView.this.invalidate();
        }
    }

    /* renamed from: com.callerid.block.customview.GiftRainView$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/customview/GiftRainView$b.class */
    public class C0929b extends AnimatorListenerAdapter {
        C0929b() {
            GiftRainView.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            Log.e("flag", "动画结束");
            GiftRainView.this.m10554g();
            GiftRainView.this.m10551j();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
        }
    }

    /* renamed from: com.callerid.block.customview.GiftRainView$c */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/customview/GiftRainView$c.class */
    public interface AbstractC0930c {
        /* renamed from: a */
        void m10550a();
    }

    /* renamed from: com.callerid.block.customview.GiftRainView$d */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/customview/GiftRainView$d.class */
    public class C0931d {

        /* renamed from: a */
        private float f4181a;

        /* renamed from: b */
        private float f4182b;

        /* renamed from: e */
        private float f4185e;

        /* renamed from: f */
        private int f4186f;

        /* renamed from: g */
        private int f4187g;

        /* renamed from: h */
        private Bitmap f4188h;

        /* renamed from: j */
        private Random f4190j = new Random();

        /* renamed from: c */
        private float f4183c = (((float) Math.random()) * 180.0f) - 90.0f;

        /* renamed from: d */
        private float f4184d = (((float) Math.random()) * 90.0f) - 45.0f;

        /* renamed from: i */
        private int f4189i = m10537m();

        public C0931d(float f, Bitmap bitmap, int i) {
            GiftRainView.this = r7;
            float f2 = r7.f4170h;
            double random = Math.random();
            double d = r7.f4169g - r7.f4170h;
            Double.isNaN(d);
            double d2 = f2 + ((float) (random * d));
            double width = bitmap.getWidth();
            Double.isNaN(width);
            Double.isNaN(d2);
            this.f4186f = (int) (width * d2);
            double height = bitmap.getHeight();
            Double.isNaN(height);
            Double.isNaN(d2);
            this.f4187g = (int) (height * d2);
            this.f4181a = m10536n(this.f4186f);
            this.f4182b = m10535o(this.f4187g);
            this.f4185e = i + (((float) Math.random()) * 550.0f);
        }

        /* renamed from: n */
        private float m10536n(int i) {
            return (this.f4190j.nextFloat() * (((GiftRainView.this.getWidth() - 15) - 15) - i)) + 15.0f;
        }

        /* renamed from: o */
        private float m10535o(int i) {
            return 0.0f - ((this.f4190j.nextFloat() * (GiftRainView.this.getHeight() - i)) + 15.0f);
        }

        /* renamed from: m */
        public int m10537m() {
            return new int[]{GiftRainView.this.getResources().getColor(R$color.ad110), GiftRainView.this.getResources().getColor(R$color.ad12), GiftRainView.this.getResources().getColor(R$color.ad3), GiftRainView.this.getResources().getColor(R$color.ad20), GiftRainView.this.getResources().getColor(R$color.ad6), GiftRainView.this.getResources().getColor(R$color.ad7), GiftRainView.this.getResources().getColor(R$color.ad21), GiftRainView.this.getResources().getColor(R$color.ad2), GiftRainView.this.getResources().getColor(R$color.ad8), GiftRainView.this.getResources().getColor(R$color.ad5), GiftRainView.this.getResources().getColor(R$color.ad16), GiftRainView.this.getResources().getColor(R$color.ad9), GiftRainView.this.getResources().getColor(R$color.ad13), GiftRainView.this.getResources().getColor(R$color.ad19), GiftRainView.this.getResources().getColor(R$color.ad11), GiftRainView.this.getResources().getColor(R$color.ad18), GiftRainView.this.getResources().getColor(R$color.ad4), GiftRainView.this.getResources().getColor(R$color.ad14), GiftRainView.this.getResources().getColor(R$color.ad10), GiftRainView.this.getResources().getColor(R$color.ad17), GiftRainView.this.getResources().getColor(R$color.ad23), GiftRainView.this.getResources().getColor(R$color.ad15), GiftRainView.this.getResources().getColor(R$color.ad22)}[new Random().nextInt(23)];
        }

        /* renamed from: p */
        public void m10534p(float f) {
            this.f4185e = f;
        }
    }

    public GiftRainView(Context context) {
        super(context, null);
        m10553h();
    }

    public GiftRainView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        if (isInEditMode()) {
            return;
        }
        if (attributeSet == null) {
            throw new IllegalArgumentException("Attributes should be provided to this view,");
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.DropDownStyle);
        this.f4166d = obtainStyledAttributes.getInt(1, 20);
        this.f4168f = obtainStyledAttributes.getInt(5, 100);
        this.f4170h = obtainStyledAttributes.getFloat(4, 0.5f);
        this.f4169g = obtainStyledAttributes.getFloat(3, 1.2f);
        this.f4167e = obtainStyledAttributes.getInt(0, 17170443);
        this.f4164b = obtainStyledAttributes.getInt(2, 8000);
        obtainStyledAttributes.recycle();
        m10553h();
    }

    /* renamed from: h */
    private void m10553h() {
        this.f4172j = new ArrayList<>();
        this.f4174l = ValueAnimator.ofFloat(0.0f, 1.0f);
        setLayerType(0, null);
        setBackgroundColor(this.f4167e);
        m10552i();
    }

    /* renamed from: i */
    private void m10552i() {
        this.f4174l.addUpdateListener(new C0928a());
        this.f4174l.addListener(new C0929b());
        this.f4174l.setDuration(this.f4164b);
    }

    /* renamed from: g */
    public void m10554g() {
        AbstractC0930c abstractC0930c = this.f4178p;
        if (abstractC0930c != null) {
            abstractC0930c.m10550a();
        }
    }

    public int getDuration() {
        return this.f4164b;
    }

    /* renamed from: j */
    public void m10551j() {
        this.f4172j.clear();
        invalidate();
        this.f4174l.cancel();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        for (int i = 0; i < this.f4172j.size(); i++) {
            C0931d c0931d = this.f4172j.get(i);
            this.f4173k.setTranslate((-c0931d.f4186f) / 2, (-c0931d.f4187g) / 2);
            this.f4173k.postRotate(c0931d.f4183c);
            this.f4173k.postTranslate((c0931d.f4186f / 2) + c0931d.f4181a, (c0931d.f4187g / 2) + c0931d.f4182b);
            this.f4171i.setStyle(Paint.Style.FILL_AND_STROKE);
            this.f4171i.setColorFilter(new PorterDuffColorFilter(c0931d.f4189i, PorterDuff.Mode.SRC_IN));
            canvas.drawBitmap(c0931d.f4188h, this.f4173k, this.f4171i);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f4172j.clear();
        long currentTimeMillis = System.currentTimeMillis();
        this.f4175m = currentTimeMillis;
        this.f4176n = currentTimeMillis;
    }

    public void setDuration(int i) {
        this.f4164b = i;
    }

    public void setGiftCount(int i) {
        int[] iArr = this.f4165c;
        if (iArr == null || iArr.length == 0) {
            return;
        }
        int abs = Math.abs(i - this.f4172j.size());
        int m9683n = C1199n0.m9683n(EZCallApplication.m10163c());
        for (int i2 = 0; i2 < abs; i2++) {
            Bitmap decodeResource = BitmapFactory.decodeResource(getResources(), this.f4165c[m9683n % 4]);
            C0931d c0931d = new C0931d(getWidth(), decodeResource, this.f4168f);
            if (c0931d.f4188h == null) {
                c0931d.f4188h = Bitmap.createScaledBitmap(decodeResource, c0931d.f4186f, c0931d.f4187g, true);
                f4163q.put(c0931d.f4186f, c0931d.f4188h);
            } else {
                c0931d.f4188h = f4163q.get(c0931d.f4186f);
            }
            this.f4172j.add(c0931d);
        }
    }

    public void setImages(int... iArr) {
        this.f4165c = iArr;
        setGiftCount(this.f4166d);
    }

    public void setSpeed(int i) {
        Iterator<C0931d> it = this.f4172j.iterator();
        while (it.hasNext()) {
            it.next().m10534p(i);
        }
    }
}
