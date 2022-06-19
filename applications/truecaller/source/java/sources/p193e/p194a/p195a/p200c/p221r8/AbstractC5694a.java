package p193e.p194a.p195a.p200c.p221r8;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButton;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.insights.p168ui.C4078R;
import java.util.Objects;
import p193e.p194a.p1059m3.C18154d1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p195a.p200c.p201a.C5011a;
import p193e.p194a.p195a.p200c.p201a.C5036k;
import p193e.p194a.p195a.p200c.p201a.C5053t;
import p193e.p194a.p195a.p200c.p216n8.C5589a;
import p193e.p194a.p195a.p200c.p221r8.C5701c;
import p193e.p194a.p437c.p438a.p477g.C9054n0;
import s1.z.c.l;
/* renamed from: e.a.a.c.r8.a */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/r8/a.class */
public abstract class AbstractC5694a<T extends C5701c> extends AbstractC5702d<T> {

    /* renamed from: d */
    public final int f19146d;

    /* renamed from: e */
    public final LayoutInflater f19147e;

    /* renamed from: e.a.a.c.r8.a$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/r8/a$a.class */
    public static abstract class AbstractC5695a extends AbstractC5694a<C5701c> {
        public AbstractC5695a(int i, int i2, Context context) {
            super(i, i2, context);
        }

        @Override // p193e.p194a.p195a.p200c.p221r8.AbstractC5702d
        /* renamed from: e */
        public C5701c mo32778e() {
            View inflate = this.f19147e.inflate(this.f19146d, (ViewGroup) null);
            C5701c c5701c = new C5701c(inflate);
            inflate.setTag(c5701c);
            return c5701c;
        }
    }

    /* renamed from: e.a.a.c.r8.a$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/r8/a$b.class */
    public static class C5696b extends AbstractC5694a<C5589a> {

        /* renamed from: f */
        public Context f19148f;

        public C5696b(int i, int i2, Context context) {
            super(i, i2, context);
            this.f19148f = context;
        }

        @Override // p193e.p194a.p195a.p200c.p221r8.AbstractC5702d
        /* renamed from: d */
        public void mo32772d(C5701c c5701c) {
            Objects.requireNonNull((C5589a) c5701c);
        }

        @Override // p193e.p194a.p195a.p200c.p221r8.AbstractC5702d
        /* renamed from: e */
        public C5701c mo32778e() {
            Context context = this.f19148f;
            l.e(context, AnalyticsConstants.CONTEXT);
            View inflate = LayoutInflater.from(context).inflate(C2752R.layout.view_info_card_container, (ViewGroup) null, false);
            View findViewById = inflate.findViewById(C2752R.C2754id.smart_card_container);
            if (findViewById != null) {
                int i = C4078R.C4080id.barrierInfo1Bottom;
                Barrier barrier = (Barrier) findViewById.findViewById(i);
                if (barrier != null) {
                    i = C4078R.C4080id.barrierInfo2Start;
                    Barrier barrier2 = (Barrier) findViewById.findViewById(i);
                    if (barrier2 != null) {
                        i = C4078R.C4080id.barrierInfo4Start;
                        Barrier barrier3 = (Barrier) findViewById.findViewById(i);
                        if (barrier3 != null) {
                            i = C4078R.C4080id.buttonAction1;
                            MaterialButton findViewById2 = findViewById.findViewById(i);
                            if (findViewById2 != null) {
                                i = C4078R.C4080id.buttonAction2;
                                MaterialButton findViewById3 = findViewById.findViewById(i);
                                if (findViewById3 != null) {
                                    i = C4078R.C4080id.buttonDelete;
                                    ImageView imageView = (ImageView) findViewById.findViewById(i);
                                    if (imageView != null) {
                                        i = C4078R.C4080id.dataContainer;
                                        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById.findViewById(i);
                                        if (constraintLayout != null) {
                                            i = C4078R.C4080id.imageCategoryIcon;
                                            ImageView imageView2 = (ImageView) findViewById.findViewById(i);
                                            if (imageView2 != null) {
                                                i = C4078R.C4080id.textCategory;
                                                TextView textView = (TextView) findViewById.findViewById(i);
                                                if (textView != null) {
                                                    i = C4078R.C4080id.textInfo1Name;
                                                    TextView textView2 = (TextView) findViewById.findViewById(i);
                                                    if (textView2 != null) {
                                                        i = C4078R.C4080id.textInfo1Value;
                                                        TextView textView3 = (TextView) findViewById.findViewById(i);
                                                        if (textView3 != null) {
                                                            i = C4078R.C4080id.textInfo2Name;
                                                            TextView textView4 = (TextView) findViewById.findViewById(i);
                                                            if (textView4 != null) {
                                                                i = C4078R.C4080id.textInfo2Value;
                                                                TextView textView5 = (TextView) findViewById.findViewById(i);
                                                                if (textView5 != null) {
                                                                    i = C4078R.C4080id.textInfo3Name;
                                                                    TextView textView6 = (TextView) findViewById.findViewById(i);
                                                                    if (textView6 != null) {
                                                                        i = C4078R.C4080id.textInfo3Value;
                                                                        TextView textView7 = (TextView) findViewById.findViewById(i);
                                                                        if (textView7 != null) {
                                                                            i = C4078R.C4080id.textInfo4Name;
                                                                            TextView textView8 = (TextView) findViewById.findViewById(i);
                                                                            if (textView8 != null) {
                                                                                i = C4078R.C4080id.textInfo4Value;
                                                                                TextView textView9 = (TextView) findViewById.findViewById(i);
                                                                                if (textView9 != null) {
                                                                                    i = C4078R.C4080id.textRightTitle;
                                                                                    TextView textView10 = (TextView) findViewById.findViewById(i);
                                                                                    if (textView10 != null) {
                                                                                        i = C4078R.C4080id.textStatus;
                                                                                        TextView textView11 = (TextView) findViewById.findViewById(i);
                                                                                        if (textView11 != null) {
                                                                                            i = C4078R.C4080id.textSubtitle;
                                                                                            TextView textView12 = (TextView) findViewById.findViewById(i);
                                                                                            if (textView12 != null) {
                                                                                                i = C4078R.C4080id.textTitle;
                                                                                                TextView textView13 = (TextView) findViewById.findViewById(i);
                                                                                                if (textView13 != null) {
                                                                                                    C18154d1 c18154d1 = new C18154d1((ConstraintLayout) inflate, new C9054n0((ConstraintLayout) findViewById, barrier, barrier2, barrier3, findViewById2, findViewById3, imageView, constraintLayout, imageView2, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13));
                                                                                                    l.d(c18154d1, "ViewInfoCardContainerBin…(context), parent, false)");
                                                                                                    C5589a c5589a = new C5589a(c18154d1, this.f19148f);
                                                                                                    c18154d1.f51168a.setTag(c5589a);
                                                                                                    return c5589a;
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                throw new NullPointerException("Missing required view with ID: ".concat(findViewById.getResources().getResourceName(i)));
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(C2752R.C2754id.smart_card_container)));
        }
    }

    /* renamed from: e.a.a.c.r8.a$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/r8/a$c.class */
    public static class C5697c extends AbstractC5694a<C5011a> {
        public C5697c(int i, int i2, Context context) {
            super(i, i2, context);
        }

        @Override // p193e.p194a.p195a.p200c.p221r8.AbstractC5702d
        /* renamed from: d */
        public void mo32772d(C5701c c5701c) {
            View m34003b = ((C5011a) c5701c).m34003b();
            if (m34003b != null) {
                C19286f.m13689O(m34003b);
            }
        }

        @Override // p193e.p194a.p195a.p200c.p221r8.AbstractC5702d
        /* renamed from: e */
        public C5701c mo32778e() {
            View inflate = this.f19147e.inflate(this.f19146d, (ViewGroup) null);
            C5011a c5011a = new C5011a(inflate);
            inflate.setTag(c5011a);
            return c5011a;
        }
    }

    /* renamed from: e.a.a.c.r8.a$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/r8/a$d.class */
    public static class C5698d extends AbstractC5694a<C5036k> {
        public C5698d(int i, int i2, Context context) {
            super(i, i2, context);
        }

        @Override // p193e.p194a.p195a.p200c.p221r8.AbstractC5702d
        /* renamed from: d */
        public void mo32772d(C5701c c5701c) {
            Objects.requireNonNull((C5036k) c5701c);
        }

        @Override // p193e.p194a.p195a.p200c.p221r8.AbstractC5702d
        /* renamed from: e */
        public C5701c mo32778e() {
            View inflate = this.f19147e.inflate(this.f19146d, (ViewGroup) null);
            C5036k c5036k = new C5036k(inflate);
            inflate.setTag(c5036k);
            return c5036k;
        }
    }

    /* renamed from: e.a.a.c.r8.a$e */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/r8/a$e.class */
    public static class C5699e extends AbstractC5694a<C5053t> {
        public C5699e(int i, int i2, Context context) {
            super(i, i2, context);
        }

        @Override // p193e.p194a.p195a.p200c.p221r8.AbstractC5702d
        /* renamed from: d */
        public void mo32772d(C5701c c5701c) {
            View m34003b = ((C5053t) c5701c).m34003b();
            if (m34003b != null) {
                C19286f.m13689O(m34003b);
            }
        }

        @Override // p193e.p194a.p195a.p200c.p221r8.AbstractC5702d
        /* renamed from: e */
        public C5701c mo32778e() {
            View inflate = this.f19147e.inflate(this.f19146d, (ViewGroup) null);
            C5053t c5053t = new C5053t(inflate);
            inflate.setTag(c5053t);
            return c5053t;
        }
    }

    public AbstractC5694a(int i, int i2, Context context) {
        super(i);
        this.f19146d = i2;
        this.f19147e = LayoutInflater.from(context);
    }
}
