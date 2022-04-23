package com.asus.laterhandle;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
/* loaded from: classes-dex2jar.jar:com/asus/laterhandle/e.class */
final class e extends f implements Animation.AnimationListener {

    /* renamed from: a  reason: collision with root package name */
    private static int f2927a = 2000;

    /* renamed from: b  reason: collision with root package name */
    private static int f2928b = 200;
    private Animation c;
    private Animation d;
    private Animation e;
    private Animation o;
    private Animation p;
    private RelativeLayout q;
    private ImageView r;
    private ImageView s;
    private ImageView t;
    private ImageView u;
    private ImageView v;
    private Bitmap w;
    private Handler x = new Handler();

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Context context, View view) {
        super(context, view);
    }

    @Override // com.asus.laterhandle.f
    protected final void a() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, 0, 0, 2006, 16778496, -3);
        layoutParams.setTitle("ScreenshotAnimation");
        this.g.addView(this.j, layoutParams);
    }

    @Override // com.asus.laterhandle.c
    public final boolean a(Bundle bundle, Intent intent) {
        this.m = new d(this.f, bundle, this.n, intent);
        this.i = f();
        this.j.post(new Runnable() { // from class: com.asus.laterhandle.e.1
            @Override // java.lang.Runnable
            public final void run() {
                e.this.r.setLayerType(2, null);
                e.this.r.buildLayer();
                e.this.r.startAnimation(e.this.c);
                e.this.s.buildLayer();
                e.this.s.startAnimation(e.this.d);
                e.this.t.buildLayer();
                e.this.t.startAnimation(e.this.e);
                e.this.u.buildLayer();
                e.this.u.startAnimation(e.this.o);
                e.this.v.buildLayer();
                e.this.v.startAnimation(e.this.p);
            }
        });
        return true;
    }

    @Override // com.asus.laterhandle.f
    protected final void b() {
        this.q = new RelativeLayout(this.f);
        this.j.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.j.addView(this.q);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        this.g.getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        int hypot = ((int) Math.hypot(i, i2)) + 10;
        f2927a = hypot;
        if (hypot % f2928b != 0) {
            f2927a = ((f2927a / f2928b) + 1) * f2928b;
        }
        this.r = new ImageView(this.f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(15);
        layoutParams.setMargins((i - (f2928b * 2)) / 2, 0, 0, 0);
        this.w = Bitmap.createBitmap(f2928b * 2, f2928b * 2, Bitmap.Config.ARGB_8888);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setColor(-65536);
        paint.setStyle(Paint.Style.FILL);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.XOR));
        Paint paint2 = new Paint();
        paint2.setColor(-16777216);
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.XOR));
        Canvas canvas = new Canvas(this.w);
        canvas.drawRect(0.0f, 0.0f, f2928b * 2, f2928b * 2, paint2);
        canvas.drawCircle(f2928b, f2928b, f2928b, paint);
        this.r.setImageBitmap(this.w);
        this.q.addView(this.r, layoutParams);
        this.s = new ImageView(this.f);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, 1);
        layoutParams2.setMargins(0, (i2 / 2) - f2927a, 0, 0);
        layoutParams2.addRule(10);
        this.s.setBackgroundColor(-16777216);
        this.q.addView(this.s, layoutParams2);
        this.t = new ImageView(this.f);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, 1);
        layoutParams3.setMargins(0, 0, 0, ((i2 / 2) - f2927a) + 1);
        layoutParams3.addRule(12);
        this.t.setBackgroundColor(-16777216);
        this.q.addView(this.t, layoutParams3);
        this.u = new ImageView(this.f);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(1, -1);
        layoutParams4.setMargins((i / 2) - f2927a, 0, 0, 0);
        layoutParams4.addRule(9);
        this.u.setBackgroundColor(-16777216);
        this.q.addView(this.u, layoutParams4);
        this.v = new ImageView(this.f);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(1, -1);
        layoutParams5.setMargins(0, 0, (i / 2) - f2927a, 0);
        layoutParams5.addRule(11);
        this.v.setBackgroundColor(-16777216);
        this.q.addView(this.v, layoutParams5);
        this.j.setFocusable(true);
        this.j.setOnTouchListener(new View.OnTouchListener() { // from class: com.asus.laterhandle.e.2
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        this.q.setFocusable(true);
        this.q.setOnTouchListener(new View.OnTouchListener() { // from class: com.asus.laterhandle.e.3
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        this.q.requestFocus();
    }

    @Override // com.asus.laterhandle.f
    protected final void c() {
        this.g.getDefaultDisplay().getMetrics(new DisplayMetrics());
        this.c = new ScaleAnimation(f2927a / f2928b, 0.0f, f2927a / f2928b, 0.0f, 1, 0.5f, 1, 0.5f);
        this.c.setDuration(500L);
        this.c.setAnimationListener(this);
        this.c.setRepeatCount(1);
        this.c.setRepeatMode(2);
        this.c.setFillAfter(true);
        this.d = new ScaleAnimation(1.0f, 1.0f, 1.0f, (float) (f2927a + 0.5d), 1, 0.5f, 1, 0.0f);
        this.d.setDuration(500L);
        this.d.setRepeatCount(1);
        this.d.setRepeatMode(2);
        this.e = new ScaleAnimation(1.0f, 1.0f, 1.0f, (float) (f2927a + 0.5d), 1, 0.5f, 1, 1.0f);
        this.e.setDuration(500L);
        this.e.setRepeatCount(1);
        this.e.setRepeatMode(2);
        this.o = new ScaleAnimation(1.0f, (float) (f2927a + 0.2d), 1.0f, 1.0f, 1, 0.0f, 1, 0.0f);
        this.o.setDuration(500L);
        this.o.setRepeatCount(1);
        this.o.setRepeatMode(2);
        this.p = new ScaleAnimation(1.0f, (float) (f2927a + 0.2d), 1.0f, 1.0f, 1, 1.0f, 1, 0.0f);
        this.p.setDuration(500L);
        this.p.setRepeatCount(1);
        this.p.setRepeatMode(2);
    }

    @Override // com.asus.laterhandle.f
    public final void d() {
        super.d();
        if (this.w != null) {
            this.w.recycle();
            this.w = null;
        }
        this.r.setImageBitmap(null);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        new Thread(new Runnable() { // from class: com.asus.laterhandle.e.4
            @Override // java.lang.Runnable
            public final void run() {
                if (e.this.m != null) {
                    e.this.e();
                }
                e.this.x.post(new Runnable() { // from class: com.asus.laterhandle.e.4.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        e.this.d();
                    }
                });
            }
        }).start();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
