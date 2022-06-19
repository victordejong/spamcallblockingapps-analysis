package org.mistergroup.shouldianswer.p101ui.incall;

import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.p031e.p032a.AbstractC0670b;
import androidx.p031e.p032a.C0692e;
import com.google.android.flexbox.FlexItem;
import kotlin.C1775o;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2120ai;
import org.mistergroup.shouldianswer.utils.C3134x;
/* renamed from: org.mistergroup.shouldianswer.ui.incall.a */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/a.class */
public final class View$OnTouchListenerC2572a implements View.OnTouchListener {

    /* renamed from: i */
    private static final int f7545i = 0;

    /* renamed from: b */
    private float f7548b;

    /* renamed from: d */
    private final int f7550d;

    /* renamed from: g */
    private final AbstractC2120ai f7553g;

    /* renamed from: h */
    private final AbstractC1663b<Integer, C1775o> f7554h;

    /* renamed from: a */
    public static final C2573a f7544a = new C2573a(null);

    /* renamed from: j */
    private static final int f7546j = 1;

    /* renamed from: k */
    private static final int f7547k = 2;

    /* renamed from: c */
    private float f7549c = C3134x.f9269a.m27a();

    /* renamed from: e */
    private final int f7551e = -1;

    /* renamed from: f */
    private final int f7552f = -5636096;

    /* renamed from: org.mistergroup.shouldianswer.ui.incall.a$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/incall/a$a.class */
    public static final class C2573a {
        private C2573a() {
        }

        public /* synthetic */ C2573a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final int m770a() {
            return View$OnTouchListenerC2572a.f7546j;
        }

        /* renamed from: b */
        public final int m769b() {
            return View$OnTouchListenerC2572a.f7547k;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View$OnTouchListenerC2572a(AbstractC2120ai abstractC2120ai, AbstractC1663b<? super Integer, C1775o> abstractC1663b) {
        C1694h.m3117b(abstractC2120ai, "binding");
        C1694h.m3117b(abstractC1663b, "callback");
        this.f7553g = abstractC2120ai;
        this.f7554h = abstractC1663b;
        C3134x c3134x = C3134x.f9269a;
        View d = this.f7553g.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        Context context = d.getContext();
        C1694h.m3122a((Object) context, "binding.root.context");
        this.f7550d = c3134x.m26a(context, 2130968720);
    }

    /* renamed from: a */
    public final void m773a() {
        new C0692e(this.f7553g.f5564n, AbstractC0670b.f2206b, FlexItem.FLEX_GROW_DEFAULT).mo5727a(100.0f).mo5714a();
        this.f7553g.f5551T.setTextColor(this.f7551e);
        this.f7553g.f5550S.setTextColor(this.f7551e);
        this.f7553g.f5564n.setColorFilter(this.f7550d, PorterDuff.Mode.MULTIPLY);
        ImageView imageView = this.f7553g.f5564n;
        C1694h.m3122a((Object) imageView, "binding.imgAccept");
        imageView.getBackground().setColorFilter(this.f7551e, PorterDuff.Mode.MULTIPLY);
        ImageView imageView2 = this.f7553g.f5564n;
        C1694h.m3122a((Object) imageView2, "binding.imgAccept");
        imageView2.setRotation(FlexItem.FLEX_GROW_DEFAULT);
        this.f7553g.f5575y.setBackgroundColor(0);
        LinearLayout linearLayout = this.f7553g.f5573w;
        C1694h.m3122a((Object) linearLayout, "binding.llContent");
        linearLayout.setScaleX(1.0f);
        LinearLayout linearLayout2 = this.f7553g.f5573w;
        C1694h.m3122a((Object) linearLayout2, "binding.llContent");
        linearLayout2.setScaleY(1.0f);
        LinearLayout linearLayout3 = this.f7553g.f5573w;
        C1694h.m3122a((Object) linearLayout3, "binding.llContent");
        linearLayout3.setAlpha(1.0f);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        C1694h.m3117b(view, "view");
        C1694h.m3117b(motionEvent, "motionEvent");
        float y = motionEvent.getY() - this.f7548b;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f7548b = motionEvent.getY();
            return this.f7548b >= ((float) view.getMeasuredHeight()) - (this.f7549c * ((float) 150));
        }
        if (action != 1) {
            if (action == 2) {
                float abs = Math.abs((y / this.f7549c) / 50);
                float f = 1;
                float f2 = abs;
                if (abs > f) {
                    f2 = 1.0f;
                }
                float f3 = 0;
                float f4 = f2;
                if (f2 < f3) {
                    f4 = 0.0f;
                }
                float abs2 = Math.abs((y / this.f7549c) / 100);
                float f5 = abs2;
                if (abs2 > f) {
                    f5 = 1.0f;
                }
                float f6 = f5;
                if (f5 < f3) {
                    f6 = 0.0f;
                }
                float f7 = f - f4;
                float f8 = 255 * f4;
                int round = Math.round(f8);
                if (y > f3) {
                    LinearLayout linearLayout = this.f7553g.f5573w;
                    C1694h.m3122a((Object) linearLayout, "binding.llContent");
                    float f9 = f - (0.1f * f4);
                    linearLayout.setScaleX(f9);
                    LinearLayout linearLayout2 = this.f7553g.f5573w;
                    C1694h.m3122a((Object) linearLayout2, "binding.llContent");
                    linearLayout2.setScaleY(f9);
                    LinearLayout linearLayout3 = this.f7553g.f5573w;
                    C1694h.m3122a((Object) linearLayout3, "binding.llContent");
                    linearLayout3.setAlpha(1.0f);
                    int rgb = Color.rgb(Math.round((Color.red(this.f7551e) * f7) + (Color.red(this.f7552f) * f4)), Math.round((Color.green(this.f7551e) * f7) + (Color.green(this.f7552f) * f4)), Math.round((Color.blue(this.f7551e) * f7) + (Color.blue(this.f7552f) * f4)));
                    int rgb2 = Color.rgb(Math.round((Color.red(this.f7550d) * f7) + (Color.red(this.f7551e) * f4)), Math.round((Color.green(this.f7550d) * f7) + (Color.green(this.f7551e) * f4)), Math.round((Color.blue(this.f7550d) * f7) + (Color.blue(this.f7551e) * f4)));
                    ImageView imageView = this.f7553g.f5564n;
                    C1694h.m3122a((Object) imageView, "binding.imgAccept");
                    imageView.getBackground().setColorFilter(rgb, PorterDuff.Mode.MULTIPLY);
                    ImageView imageView2 = this.f7553g.f5564n;
                    C1694h.m3122a((Object) imageView2, "binding.imgAccept");
                    imageView2.setRotation(f4 * 135);
                    this.f7553g.f5564n.setColorFilter(rgb2, PorterDuff.Mode.MULTIPLY);
                    this.f7553g.f5575y.setBackgroundColor(Math.round(f8) << 24);
                    ImageView imageView3 = this.f7553g.f5564n;
                    C1694h.m3122a((Object) imageView3, "binding.imgAccept");
                    imageView3.setTranslationY(y / 3);
                } else {
                    LinearLayout linearLayout4 = this.f7553g.f5573w;
                    C1694h.m3122a((Object) linearLayout4, "binding.llContent");
                    float f10 = f - (0.1f * f6);
                    linearLayout4.setScaleX(f10);
                    LinearLayout linearLayout5 = this.f7553g.f5573w;
                    C1694h.m3122a((Object) linearLayout5, "binding.llContent");
                    linearLayout5.setScaleY(f10);
                    LinearLayout linearLayout6 = this.f7553g.f5573w;
                    C1694h.m3122a((Object) linearLayout6, "binding.llContent");
                    linearLayout6.setAlpha(f - f6);
                    int rgb3 = Color.rgb(Math.round((Color.red(this.f7551e) * f7) + (Color.red(this.f7550d) * f4)), Math.round((Color.green(this.f7551e) * f7) + (Color.green(this.f7550d) * f4)), Math.round((Color.blue(this.f7551e) * f7) + (Color.blue(this.f7550d) * f4)));
                    int rgb4 = Color.rgb(Math.round((Color.red(this.f7550d) * f7) + (Color.red(this.f7551e) * f4)), Math.round((Color.green(this.f7550d) * f7) + (Color.green(this.f7551e) * f4)), Math.round((Color.blue(this.f7550d) * f7) + (Color.blue(this.f7551e) * f4)));
                    ImageView imageView4 = this.f7553g.f5564n;
                    C1694h.m3122a((Object) imageView4, "binding.imgAccept");
                    imageView4.getBackground().setColorFilter(rgb3, PorterDuff.Mode.MULTIPLY);
                    ImageView imageView5 = this.f7553g.f5564n;
                    C1694h.m3122a((Object) imageView5, "binding.imgAccept");
                    imageView5.setRotation(FlexItem.FLEX_GROW_DEFAULT);
                    this.f7553g.f5564n.setColorFilter(rgb4, PorterDuff.Mode.MULTIPLY);
                    float f11 = -150;
                    float f12 = this.f7549c;
                    float f13 = y;
                    if (y < f11 * f12) {
                        f13 = f11 * f12;
                    }
                    ImageView imageView6 = this.f7553g.f5564n;
                    C1694h.m3122a((Object) imageView6, "binding.imgAccept");
                    imageView6.setTranslationY(f13);
                    this.f7553g.f5575y.setBackgroundColor(0);
                }
                int i = ((255 - round) << 24) + FlexItem.MAX_SIZE;
                this.f7553g.f5551T.setTextColor(i);
                this.f7553g.f5550S.setTextColor(i);
                return true;
            } else if (action != 3) {
                return true;
            }
        }
        int i2 = f7545i;
        float f14 = this.f7549c;
        if (y < (-100) * f14) {
            this.f7553g.f5575y.setBackgroundColor(0);
            LinearLayout linearLayout7 = this.f7553g.f5573w;
            C1694h.m3122a((Object) linearLayout7, "binding.llContent");
            linearLayout7.setScaleX(1.0f);
            LinearLayout linearLayout8 = this.f7553g.f5573w;
            C1694h.m3122a((Object) linearLayout8, "binding.llContent");
            linearLayout8.setScaleY(1.0f);
            i2 = f7546j;
        } else if (y > 60 * f14) {
            i2 = f7547k;
        } else {
            m773a();
        }
        this.f7554h.mo138a(Integer.valueOf(i2));
        return true;
    }
}
