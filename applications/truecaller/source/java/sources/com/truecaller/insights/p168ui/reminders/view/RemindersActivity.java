package com.truecaller.insights.p168ui.reminders.view;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.p183ui.view.TintedImageView;
import java.util.LinkedHashMap;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1859r.p1860a.C26907a;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p419m.p421b.AbstractC8510a;
import p193e.p194a.p437c.p438a.p446c.AbstractC8780b;
import p193e.p194a.p437c.p438a.p446c.p447a.AbstractC8774b;
import p193e.p194a.p437c.p438a.p477g.C9025e;
import p193e.p194a.p437c.p438a.p479i.C9116j;
import p193e.p194a.p437c.p438a.p498n.p499a.AbstractC9374b;
import p193e.p194a.p437c.p438a.p498n.p499a.C9371a;
import p193e.p194a.p437c.p438a.p498n.p499a.C9375c;
import p193e.p194a.p437c.p438a.p498n.p501c.AbstractC9415a;
import p193e.p194a.p437c.p438a.p498n.p501c.C9417c;
import p193e.p194a.p437c.p438a.p498n.p505e.C9427a;
import p193e.p194a.p437c.p438a.p498n.p505e.C9428b;
import p193e.p194a.p437c.p438a.p498n.p505e.C9431e;
import p193e.p194a.p437c.p438a.p498n.p505e.RunnableC9429c;
import p193e.p194a.p437c.p438a.p498n.p505e.View$OnClickListenerC9430d;
import p193e.p194a.p437c.p548h.p549k.AbstractC10261a;
import p193e.p194a.p437c.p572l.p573a.AbstractC10451a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import s1.g;
import s1.u.i;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007¢\u0006\u0004\b)\u0010*J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u0011\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u001d\u0010\u001b\u001a\u00020\u00168B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\"\u0010#\u001a\u00020\u001c8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001d\u0010(\u001a\u00020$8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010\u0018\u001a\u0004\b&\u0010'¨\u0006+"}, d2 = {"Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;", "Ln3/b/a/h;", "Le/a/c/a/n/c/a;", "Le/a/c/a/c/a/b;", "Le/a/c/a/c/b;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Le/a/c/a/n/a/b;", "Q8", "()Le/a/c/a/n/a/b;", "Lcom/google/android/material/appbar/AppBarLayout;", "d8", "()Lcom/google/android/material/appbar/AppBarLayout;", "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;", "b7", "()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;", AbstractC2405c.f7629a, "Le/a/c/a/n/a/b;", "remindersPageComponent", "Le/a/c/a/g/e;", "d", "Ls1/g;", "pa", "()Le/a/c/a/g/e;", "binding", "Ln3/v/a1$b;", "a", "Ln3/v/a1$b;", "getViewModelFactory", "()Ln3/v/a1$b;", "setViewModelFactory", "(Ln3/v/a1$b;)V", "viewModelFactory", "Le/a/c/a/n/c/c;", C22021b.f61237c, "qa", "()Le/a/c/a/n/c/c;", "remindersPageViewModel", "<init>", "()V", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.reminders.view.RemindersActivity */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/reminders/view/RemindersActivity.class */
public final class RemindersActivity extends h implements AbstractC9415a, AbstractC8774b, AbstractC8780b {

    /* renamed from: e */
    public static final /* synthetic */ int f12896e = 0;
    @Inject

    /* renamed from: a */
    public C26986a1.AbstractC26987b f12897a;

    /* renamed from: c */
    public AbstractC9374b f12899c;

    /* renamed from: b */
    public final g f12898b = C25225a.m3978P1(new C4124b());

    /* renamed from: d */
    public final g f12900d = C25225a.m3982O1(s1.h.c, new C4123a(this));

    /* renamed from: com.truecaller.insights.ui.reminders.view.RemindersActivity$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/reminders/view/RemindersActivity$a.class */
    public static final class C4123a extends m implements a<C9025e> {

        /* renamed from: b */
        public final /* synthetic */ h f12901b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4123a(h hVar) {
            super(0);
            this.f12901b = hVar;
        }

        public Object invoke() {
            LayoutInflater layoutInflater = this.f12901b.getLayoutInflater();
            l.d(layoutInflater, "layoutInflater");
            CoordinatorLayout inflate = layoutInflater.inflate(C4078R.layout.activity_reminders, (ViewGroup) null, false);
            int i = C4078R.C4080id.appBarLayout;
            AppBarLayout findViewById = inflate.findViewById(i);
            if (findViewById != null) {
                i = C4078R.C4080id.backBtn;
                TintedImageView tintedImageView = (TintedImageView) inflate.findViewById(i);
                if (tintedImageView != null) {
                    i = C4078R.C4080id.emptyState;
                    ConstraintLayout constraintLayout = (ConstraintLayout) inflate.findViewById(i);
                    if (constraintLayout != null) {
                        i = C4078R.C4080id.emptyStateDesc;
                        TextView textView = (TextView) inflate.findViewById(i);
                        if (textView != null) {
                            i = C4078R.C4080id.emptyStateImg;
                            ImageView imageView = (ImageView) inflate.findViewById(i);
                            if (imageView != null) {
                                i = C4078R.C4080id.emptyStateTitle;
                                TextView textView2 = (TextView) inflate.findViewById(i);
                                if (textView2 != null) {
                                    i = C4078R.C4080id.remindersContainer;
                                    FrameLayout frameLayout = (FrameLayout) inflate.findViewById(i);
                                    if (frameLayout != null) {
                                        i = C4078R.C4080id.scrollUp;
                                        FloatingActionButton findViewById2 = inflate.findViewById(i);
                                        if (findViewById2 != null) {
                                            i = C4078R.C4080id.titleTv;
                                            TextView textView3 = (TextView) inflate.findViewById(i);
                                            if (textView3 != null) {
                                                return new C9025e(inflate, findViewById, tintedImageView, constraintLayout, textView, imageView, textView2, frameLayout, findViewById2, textView3);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        }
    }

    /* renamed from: com.truecaller.insights.ui.reminders.view.RemindersActivity$b */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/reminders/view/RemindersActivity$b.class */
    public static final class C4124b extends m implements a<C9417c> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4124b() {
            super(0);
            RemindersActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [com.truecaller.insights.ui.reminders.view.RemindersActivity, n3.v.c1] */
        public Object invoke() {
            AbstractC27040y0 abstractC27040y0;
            ?? r0 = RemindersActivity.this;
            C26986a1.AbstractC26987b abstractC26987b = r0.f12897a;
            if (abstractC26987b == null) {
                l.l("viewModelFactory");
                throw null;
            }
            C26993b1 viewModelStore = r0.getViewModelStore();
            String canonicalName = C9417c.class.getCanonicalName();
            if (canonicalName == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            String m8543z2 = C22128a.m8543z2("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
            AbstractC27040y0 abstractC27040y02 = viewModelStore.f75499a.get(m8543z2);
            if (C9417c.class.isInstance(abstractC27040y02)) {
                abstractC27040y0 = abstractC27040y02;
                if (abstractC26987b instanceof C26986a1.C26990e) {
                    ((C26986a1.C26990e) abstractC26987b).m1023a(abstractC27040y02);
                    abstractC27040y0 = abstractC27040y02;
                }
            } else {
                AbstractC27040y0 m1024b = abstractC26987b instanceof C26986a1.AbstractC26988c ? ((C26986a1.AbstractC26988c) abstractC26987b).m1024b(m8543z2, C9417c.class) : abstractC26987b.create(C9417c.class);
                AbstractC27040y0 put = viewModelStore.f75499a.put(m8543z2, m1024b);
                abstractC27040y0 = m1024b;
                if (put != null) {
                    put.onCleared();
                    abstractC27040y0 = m1024b;
                }
            }
            l.d(abstractC27040y0, "ViewModelProvider(this, …ageViewModel::class.java)");
            return (C9417c) abstractC27040y0;
        }
    }

    @Override // p193e.p194a.p437c.p438a.p498n.p501c.AbstractC9415a
    /* renamed from: Q8 */
    public AbstractC9374b mo27575Q8() {
        return this.f12899c;
    }

    @Override // p193e.p194a.p437c.p438a.p446c.AbstractC8780b
    /* renamed from: b7 */
    public FloatingActionButton mo28075b7() {
        FloatingActionButton floatingActionButton = m35158pa().f27451f;
        l.d(floatingActionButton, "binding.scrollUp");
        return floatingActionButton;
    }

    @Override // p193e.p194a.p437c.p438a.p446c.p447a.AbstractC8774b
    /* renamed from: d8 */
    public AppBarLayout mo28080d8() {
        AppBarLayout appBarLayout = m35158pa().f27447b;
        l.d(appBarLayout, "binding.appBarLayout");
        return appBarLayout;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        RemindersActivity.super.onCreate(bundle);
        C10480a.m26076E2(this);
        C9025e m35158pa = m35158pa();
        l.d(m35158pa, "binding");
        setContentView(m35158pa.f27446a);
        Object m3820x0 = C25225a.m3820x0(AbstractApplicationC8442a.m28551L(), AbstractC10451a.class);
        l.d(m3820x0, "EntryPointAccessors.from…htsComponent::class.java)");
        AbstractC10451a abstractC10451a = (AbstractC10451a) m3820x0;
        AbstractC10261a abstractC10261a = (AbstractC10261a) C22128a.m8726C1(AbstractC10261a.class, "EntryPointAccessors.from…onsComponent::class.java)");
        AbstractC8412c m15209q = C18334g0.m15209q(this);
        AbstractC8510a abstractC8510a = (AbstractC8510a) C22128a.m8726C1(AbstractC8510a.class, "EntryPointAccessors.from…ntsComponent::class.java)");
        C9375c c9375c = new C9375c();
        C25225a.m3846s(abstractC10451a, AbstractC10451a.class);
        C25225a.m3846s(abstractC10261a, AbstractC10261a.class);
        C25225a.m3846s(m15209q, AbstractC8412c.class);
        C25225a.m3846s(abstractC8510a, AbstractC8510a.class);
        C9371a c9371a = new C9371a(c9375c, abstractC10451a, abstractC10261a, m15209q, abstractC8510a, null);
        this.f12897a = (C26986a1.AbstractC26987b) c9371a.f28489p.get();
        this.f12899c = c9371a;
        C9417c m35157qa = m35157qa();
        AbstractC27028u lifecycle = getLifecycle();
        l.d(lifecycle, "this.lifecycle");
        Objects.requireNonNull(m35157qa);
        l.e(lifecycle, "lifecycle");
        lifecycle.mo988a(m35157qa.f28598f);
        C9417c m35157qa2 = m35157qa();
        m35157qa2.f28600h.mo26825p(true);
        C9116j c9116j = m35157qa2.f28599g;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        l.e("", "feature");
        l.e("", "eventCategory");
        l.e("", "eventInfo");
        l.e("", AnalyticsConstants.CONTEXT);
        l.e("", "actionType");
        l.e("", "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        l.e("page_view", "<set-?>");
        l.e("reminders_page", "<set-?>");
        l.e(ViewAction.VIEW, "<set-?>");
        l.e("inbox_business_tab", "<set-?>");
        c9116j.m27867a(new C10529b(new SimpleAnalyticsModel("page_view", "reminders_page", "", "inbox_business_tab", ViewAction.VIEW, "", 0L, null, false, 448, null), i.W0(linkedHashMap)));
        if (bundle == null) {
            C26907a c26907a = new C26907a(getSupportFragmentManager());
            FrameLayout frameLayout = m35158pa().f27450e;
            l.d(frameLayout, "binding.remindersContainer");
            int id = frameLayout.getId();
            Objects.requireNonNull(C9431e.f28639f);
            c26907a.m1131b(id, new C9431e());
            c26907a.mo1127f();
        }
        m35158pa().f27448c.setOnClickListener(new View$OnClickListenerC9430d(this));
        m35157qa().f28596d.m42867f(this, new C9427a(new C9428b(this)));
        C9025e m35158pa2 = m35158pa();
        l.d(m35158pa2, "binding");
        m35158pa2.f27446a.postDelayed(new RunnableC9429c(this), 500L);
    }

    /* renamed from: pa */
    public final C9025e m35158pa() {
        return (C9025e) this.f12900d.getValue();
    }

    /* renamed from: qa */
    public final C9417c m35157qa() {
        return (C9417c) this.f12898b.getValue();
    }
}
