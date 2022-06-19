package com.truecaller.tagger.tagPicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import androidx.activity.ComponentActivity;
import androidx.fragment.app.Fragment;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.tagger.C4604R;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1859r.p1860a.C26907a;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p1727n3.p1868v.C27042z0;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p614c3.C10932f;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p798g5.p801d0.C14470a;
import p193e.p194a.p798g5.p802e0.AbstractC14477b;
import p193e.p194a.p798g5.p802e0.C14479d;
import p193e.p194a.p798g5.p802e0.C14482g;
import p193e.p194a.p798g5.p802e0.View$OnClickListenerC14484i;
import p193e.p194a.p798g5.p802e0.ViewTreeObserver$OnPreDrawListenerC14481f;
import p193e.p194a.p916i5.AbstractC15317d;
import p193e.p194a.p916i5.C15314a;
import s1.g;
import s1.h;
import s1.z.b.a;
import s1.z.c.d0;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b$\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bR\u001d\u0010\u000e\u001a\u00020\t8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001d\u0010\u001f\u001a\u00020\u001b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u000b\u001a\u0004\b\u001d\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006%"}, d2 = {"Lcom/truecaller/tagger/tagPicker/TaggerActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "finish", "()V", "Lcom/truecaller/tagger/tagPicker/TaggerViewModel;", "e", "Ls1/g;", "getTagViewModel", "()Lcom/truecaller/tagger/tagPicker/TaggerViewModel;", "tagViewModel", "Landroid/animation/ValueAnimator$AnimatorUpdateListener;", "h", "Landroid/animation/ValueAnimator$AnimatorUpdateListener;", "mTransitionUpdateListener", "Le/a/q2/a;", "d", "Le/a/q2/a;", "getAnalytics", "()Le/a/q2/a;", "setAnalytics", "(Le/a/q2/a;)V", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Le/a/g5/d0/a;", "g", "qa", "()Le/a/g5/d0/a;", "binding", "Landroid/graphics/drawable/ColorDrawable;", "f", "Landroid/graphics/drawable/ColorDrawable;", "windowBackground", "<init>", "tagger_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes14-dex2jar.jar:com/truecaller/tagger/tagPicker/TaggerActivity.class */
public final class TaggerActivity extends AbstractC14477b {

    /* renamed from: i */
    public static final /* synthetic */ int f15275i = 0;
    @Inject

    /* renamed from: d */
    public AbstractC19462a f15276d;

    /* renamed from: e */
    public final g f15277e = new C27042z0(d0.a(TaggerViewModel.class), new C4611c(this), new C4610b(this));

    /* renamed from: f */
    public final ColorDrawable f15278f = new ColorDrawable(0);

    /* renamed from: g */
    public final g f15279g = C25225a.m3982O1(h.c, new C4609a(this));

    /* renamed from: h */
    public final ValueAnimator.AnimatorUpdateListener f15280h = new C4613e();

    /* renamed from: com.truecaller.tagger.tagPicker.TaggerActivity$a */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/tagger/tagPicker/TaggerActivity$a.class */
    public static final class C4609a extends m implements a<C14470a> {

        /* renamed from: b */
        public final /* synthetic */ n3.b.a.h f15281b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4609a(n3.b.a.h hVar) {
            super(0);
            this.f15281b = hVar;
        }

        public Object invoke() {
            LayoutInflater layoutInflater = this.f15281b.getLayoutInflater();
            l.d(layoutInflater, "layoutInflater");
            View inflate = layoutInflater.inflate(C4604R.layout.activity_tagger, (ViewGroup) null, false);
            Objects.requireNonNull(inflate, "rootView");
            FrameLayout frameLayout = (FrameLayout) inflate;
            return new C14470a(frameLayout, frameLayout);
        }
    }

    /* renamed from: com.truecaller.tagger.tagPicker.TaggerActivity$b */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/tagger/tagPicker/TaggerActivity$b.class */
    public static final class C4610b extends m implements a<C26986a1.AbstractC26987b> {

        /* renamed from: b */
        public final /* synthetic */ ComponentActivity f15282b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4610b(ComponentActivity componentActivity) {
            super(0);
            this.f15282b = componentActivity;
        }

        public Object invoke() {
            return this.f15282b.getDefaultViewModelProviderFactory();
        }
    }

    /* renamed from: com.truecaller.tagger.tagPicker.TaggerActivity$c */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/tagger/tagPicker/TaggerActivity$c.class */
    public static final class C4611c extends m implements a<C26993b1> {

        /* renamed from: b */
        public final /* synthetic */ ComponentActivity f15283b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4611c(ComponentActivity componentActivity) {
            super(0);
            this.f15283b = componentActivity;
        }

        public Object invoke() {
            C26993b1 viewModelStore = this.f15283b.getViewModelStore();
            l.d(viewModelStore, "viewModelStore");
            return viewModelStore;
        }
    }

    /* renamed from: com.truecaller.tagger.tagPicker.TaggerActivity$d */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/tagger/tagPicker/TaggerActivity$d.class */
    public static final class C4612d extends AnimatorListenerAdapter {
        public C4612d() {
            TaggerActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [com.truecaller.tagger.tagPicker.TaggerActivity, android.app.Activity] */
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            l.e(animator, "animation");
            TaggerActivity.super.finish();
            TaggerActivity.this.overridePendingTransition(0, 0);
        }
    }

    /* renamed from: com.truecaller.tagger.tagPicker.TaggerActivity$e */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/tagger/tagPicker/TaggerActivity$e.class */
    public static final class C4613e implements ValueAnimator.AnimatorUpdateListener {
        public C4613e() {
            TaggerActivity.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            l.d(valueAnimator, "animation");
            float animatedFraction = valueAnimator.getAnimatedFraction();
            TaggerActivity taggerActivity = TaggerActivity.this;
            int i = TaggerActivity.f15275i;
            FrameLayout frameLayout = taggerActivity.m34622qa().f41666b;
            l.d(frameLayout, "binding.fragmentContainer");
            Object animatedValue = valueAnimator.getAnimatedValue();
            Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
            frameLayout.setY(((Float) animatedValue).floatValue());
            TaggerActivity.this.f15278f.setColor(Color.argb((int) (255 * animatedFraction * 0.2f), 0, 0, 0));
            TaggerActivity.this.f15278f.invalidateSelf();
        }
    }

    public void finish() {
        FrameLayout frameLayout = m34622qa().f41666b;
        l.d(frameLayout, "binding.fragmentContainer");
        ValueAnimator ofFloat = ValueAnimator.ofFloat(frameLayout.getHeight(), 0.0f);
        l.d(ofFloat, "animator");
        ofFloat.setDuration(getResources().getInteger(17694720));
        ofFloat.setInterpolator(new DecelerateInterpolator(1.0f));
        ofFloat.addUpdateListener(this.f15280h);
        ofFloat.addListener(new C4612d());
        ofFloat.reverse();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    public void onCreate(Bundle bundle) {
        Fragment fragment;
        Resources.Theme theme = getTheme();
        l.d(theme, "theme");
        C17422k.m16065n(theme, false, 1);
        l.e(this, "$this$setTaggerTheme");
        C15314a c15314a = C15314a.f43582g;
        AbstractC15317d m18938a = C15314a.m18938a();
        if ((m18938a instanceof AbstractC15317d.C15321d) || (m18938a instanceof AbstractC15317d.C15319b)) {
            setTheme(C4604R.style.ThemeX_Dark_Tagger);
        } else if (!(m18938a instanceof AbstractC15317d.C15320c) && !(m18938a instanceof AbstractC15317d.C15318a)) {
            setTheme(C4604R.style.ThemeX_Light_Tagger);
        } else {
            setTheme(C4604R.style.ThemeX_Light_Tagger);
        }
        TaggerActivity.super.onCreate(bundle);
        getWindow().setBackgroundDrawable(this.f15278f);
        C14470a m34622qa = m34622qa();
        l.d(m34622qa, "binding");
        setContentView(m34622qa.f41665a);
        if (C10932f.m25491a()) {
            C12864a2.m22569Y(this);
        }
        Intent intent = getIntent();
        if (intent == null) {
            finish();
            fragment = null;
        } else {
            TaggerViewModel taggerViewModel = (TaggerViewModel) this.f15277e.getValue();
            int intExtra = intent.getIntExtra("search_type", 999);
            int intExtra2 = intent.getIntExtra("tag_context", 0);
            Contact contact = (Contact) intent.getParcelableExtra(AnalyticsConstants.CONTACT);
            char longExtra = intent.getLongExtra("initial_tag", Long.MIN_VALUE);
            if (contact != null) {
                C8551c mo20025b = taggerViewModel.f15294i.mo20025b(contact);
                longExtra = 0;
                if (mo20025b != null) {
                    longExtra = mo20025b.f26350a;
                }
            }
            taggerViewModel.f15287b.mo1001j(new C14479d(intExtra2, taggerViewModel.m34620d(longExtra), intExtra, contact));
            fragment = new View$OnClickListenerC14484i();
        }
        if (fragment != null) {
            C26907a c26907a = new C26907a(getSupportFragmentManager());
            c26907a.m1120m(C4604R.C4606id.fragment_container, fragment, null);
            c26907a.mo1127f();
        }
        FrameLayout frameLayout = m34622qa().f41666b;
        l.d(frameLayout, "binding.fragmentContainer");
        frameLayout.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC14481f(this));
        ((TaggerViewModel) this.f15277e.getValue()).f15292g.m42867f(this, new C14482g(this));
    }

    /* renamed from: qa */
    public final C14470a m34622qa() {
        return (C14470a) this.f15279g.getValue();
    }
}
