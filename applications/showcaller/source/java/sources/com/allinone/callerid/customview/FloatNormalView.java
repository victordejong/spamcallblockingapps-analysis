package com.allinone.callerid.customview;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.p136b.C2216p;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3775j0;
import com.allinone.callerid.util.C3810q;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/FloatNormalView.class */
public class FloatNormalView extends LinearLayout {

    /* renamed from: d */
    private static WindowManager f8553d;

    /* renamed from: e */
    private static ImageView f8554e;

    /* renamed from: f */
    private static TextView f8555f;

    /* renamed from: g */
    private static TextView f8556g;

    /* renamed from: h */
    private static ViewPager f8557h;

    /* renamed from: i */
    private static LinearLayout f8558i;

    /* renamed from: j */
    private static Typeface f8559j;

    /* renamed from: k */
    private static C2216p f8560k;

    /* renamed from: l */
    private static List<View> f8561l;

    /* renamed from: m */
    private static ImageView[] f8562m;

    /* renamed from: n */
    private static int[] f8563n = {R$layout.step1, R$layout.step2, R$layout.step3};

    /* renamed from: o */
    private Context f8564o;

    /* renamed from: p */
    private View f8565p;

    /* renamed from: r */
    private float f8567r;

    /* renamed from: s */
    private float f8568s;

    /* renamed from: t */
    private float f8569t;

    /* renamed from: u */
    private float f8570u;

    /* renamed from: q */
    private WindowManager.LayoutParams f8566q = new WindowManager.LayoutParams();

    /* renamed from: v */
    private boolean f8571v = false;

    /* renamed from: w */
    private C3775j0 f8572w = C3775j0.m24166b();

    /* renamed from: com.allinone.callerid.customview.FloatNormalView$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/FloatNormalView$a.class */
    public class View$OnTouchListenerC2432a implements View.OnTouchListener {
        View$OnTouchListenerC2432a() {
            FloatNormalView.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                return false;
            }
            C3810q.m24071b().m24070c("yindao_huadong");
            return false;
        }
    }

    /* renamed from: com.allinone.callerid.customview.FloatNormalView$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/FloatNormalView$b.class */
    public class C2433b implements ViewPager.AbstractC1193i {
        C2433b() {
            FloatNormalView.this = r4;
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
        /* renamed from: a */
        public void mo4098a(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
        /* renamed from: c */
        public void mo4096c(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
        /* renamed from: d */
        public void mo4095d(int i) {
            int i2 = i;
            if (FloatNormalView.f8561l != null) {
                int length = i % FloatNormalView.f8562m.length;
                int length2 = FloatNormalView.f8562m.length;
                int i3 = 0;
                while (true) {
                    i2 = length;
                    if (i3 >= length2) {
                        break;
                    }
                    if (i3 == length) {
                        FloatNormalView.f8562m[i3].setImageResource(R$drawable.indicator_select);
                    } else {
                        FloatNormalView.f8562m[i3].setImageResource(R$drawable.indicator_no_select);
                    }
                    i3++;
                }
            }
            if (i2 == 0) {
                FloatNormalView.f8556g.setText(FloatNormalView.this.f8564o.getResources().getString(R$string.step));
            }
            if (i2 == 1) {
                FloatNormalView.f8556g.setText(FloatNormalView.this.f8564o.getResources().getString(R$string.step2));
            }
            if (i2 == 2) {
                FloatNormalView.f8556g.setText(FloatNormalView.this.f8564o.getResources().getString(R$string.step3));
            }
        }
    }

    /* renamed from: com.allinone.callerid.customview.FloatNormalView$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/FloatNormalView$c.class */
    public class View$OnClickListenerC2434c implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ Context f8575d;

        View$OnClickListenerC2434c(Context context) {
            FloatNormalView.this = r4;
            this.f8575d = context;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                FloatNormalView.this.f8572w.m24165c(this.f8575d);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.customview.FloatNormalView$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/FloatNormalView$d.class */
    public class View$OnTouchListenerC2435d implements View.OnTouchListener {
        View$OnTouchListenerC2435d() {
            FloatNormalView.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action != 2) {
                    return true;
                }
                FloatNormalView.this.f8569t = motionEvent.getRawX();
                FloatNormalView.this.f8570u = motionEvent.getRawY();
                FloatNormalView.this.m27391t();
                return true;
            } else if (FloatNormalView.this.f8571v) {
                FloatNormalView.m27400k(FloatNormalView.this, motionEvent.getRawX() - FloatNormalView.this.f8569t);
                FloatNormalView.m27398m(FloatNormalView.this, motionEvent.getRawY() - FloatNormalView.this.f8570u);
                return true;
            } else {
                FloatNormalView.this.f8571v = true;
                FloatNormalView.m27400k(FloatNormalView.this, motionEvent.getRawX() - FloatNormalView.this.f8566q.x);
                FloatNormalView.m27398m(FloatNormalView.this, motionEvent.getRawY() - FloatNormalView.this.f8566q.y);
                return true;
            }
        }
    }

    public FloatNormalView(Context context) {
        super(context);
        this.f8564o = null;
        this.f8565p = null;
        this.f8564o = context;
        LayoutInflater.from(context).inflate(R$layout.settingfloat, this);
        this.f8565p = findViewById(R$id.ll_float_normal);
        f8553d = (WindowManager) context.getSystemService("window");
        m27392s(this.f8565p, context);
        m27393r();
        m27394q();
    }

    /* renamed from: k */
    static /* synthetic */ float m27400k(FloatNormalView floatNormalView, float f) {
        float f2 = floatNormalView.f8567r + f;
        floatNormalView.f8567r = f2;
        return f2;
    }

    /* renamed from: m */
    static /* synthetic */ float m27398m(FloatNormalView floatNormalView, float f) {
        float f2 = floatNormalView.f8568s + f;
        floatNormalView.f8568s = f2;
        return f2;
    }

    /* renamed from: p */
    private void m27395p(Context context) {
        for (int i = 0; i < 3; i++) {
            f8561l.add(LayoutInflater.from(context).inflate(f8563n[i], (ViewGroup) null, false));
        }
    }

    /* renamed from: q */
    private void m27394q() {
        this.f8565p.setOnTouchListener(new View$OnTouchListenerC2435d());
    }

    /* renamed from: r */
    private void m27393r() {
        int width = f8553d.getDefaultDisplay().getWidth();
        int height = f8553d.getDefaultDisplay().getHeight();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f8566q.type = 2038;
        } else {
            this.f8566q.type = 2010;
        }
        WindowManager.LayoutParams layoutParams = this.f8566q;
        layoutParams.flags = 40;
        layoutParams.gravity = 8388659;
        layoutParams.x = width - (this.f8565p.getLayoutParams().width * 2);
        this.f8566q.y = (height / 2) + (this.f8565p.getLayoutParams().height * 2);
        WindowManager.LayoutParams layoutParams2 = this.f8566q;
        layoutParams2.width = -2;
        layoutParams2.height = -2;
        layoutParams2.format = -2;
        f8553d.addView(this, layoutParams2);
    }

    /* renamed from: s */
    private void m27392s(View view, Context context) {
        f8554e = (ImageView) view.findViewById(R$id.float_close);
        f8555f = (TextView) view.findViewById(R$id.tv_title);
        f8556g = (TextView) view.findViewById(R$id.tv_step);
        f8557h = (ViewPager) view.findViewById(R$id.f7402vp);
        f8558i = (LinearLayout) view.findViewById(R$id.ll_dot);
        Typeface m24359b = C3739f1.m24359b();
        f8559j = m24359b;
        f8555f.setTypeface(m24359b);
        f8556g.setTypeface(f8559j);
        View inflate = LayoutInflater.from(context).inflate(R$layout.step1, (ViewGroup) null, false);
        ((TextView) inflate.findViewById(R$id.tv_ram)).setTypeface(f8559j);
        ((TextView) inflate.findViewById(R$id.tv_safe)).setTypeface(f8559j);
        f8561l = new ArrayList();
        m27395p(this.f8564o);
        C2216p c2216p = new C2216p(f8561l);
        f8560k = c2216p;
        f8557h.setAdapter(c2216p);
        f8557h.setOnTouchListener(new View$OnTouchListenerC2432a());
        f8557h.m30744c(new C2433b());
        f8560k.m30708l();
        setBottomIndicator(this.f8564o);
        f8554e.setOnClickListener(new View$OnClickListenerC2434c(context));
    }

    private void setBottomIndicator(Context context) {
        f8562m = new ImageView[f8561l.size()];
        for (int i = 0; i < f8562m.length; i++) {
            ImageView imageView = new ImageView(context);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(20, 20);
            layoutParams.setMargins(5, 0, 5, 0);
            imageView.setLayoutParams(layoutParams);
            if (i == 0) {
                imageView.setImageResource(R$drawable.indicator_select);
            } else {
                imageView.setImageResource(R$drawable.indicator_no_select);
            }
            f8562m[i] = imageView;
            f8558i.addView(imageView);
        }
        f8557h.setCurrentItem(0);
    }

    /* renamed from: t */
    public void m27391t() {
        WindowManager.LayoutParams layoutParams = this.f8566q;
        layoutParams.x = (int) (this.f8569t - this.f8567r);
        layoutParams.y = (int) (this.f8570u - this.f8568s);
        f8553d.updateViewLayout(this, layoutParams);
    }
}
