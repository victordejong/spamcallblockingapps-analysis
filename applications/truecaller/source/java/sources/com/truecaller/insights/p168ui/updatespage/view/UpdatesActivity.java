package com.truecaller.insights.p168ui.updatespage.view;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.banner.BannerViewX;
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
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p419m.p421b.AbstractC8510a;
import p193e.p194a.p437c.p438a.p446c.p447a.AbstractC8774b;
import p193e.p194a.p437c.p438a.p477g.C9027e1;
import p193e.p194a.p437c.p438a.p477g.C9032g;
import p193e.p194a.p437c.p438a.p479i.C9116j;
import p193e.p194a.p437c.p438a.p514q.p515a.AbstractC9536b;
import p193e.p194a.p437c.p438a.p514q.p515a.C9533a;
import p193e.p194a.p437c.p438a.p514q.p515a.C9537c;
import p193e.p194a.p437c.p438a.p514q.p517c.AbstractC9572a;
import p193e.p194a.p437c.p438a.p514q.p517c.C9573b;
import p193e.p194a.p437c.p438a.p514q.p519d.C9577b;
import p193e.p194a.p437c.p438a.p514q.p519d.View$OnClickListenerC9576a;
import p193e.p194a.p437c.p548h.p549k.AbstractC10261a;
import p193e.p194a.p437c.p572l.p573a.AbstractC10451a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import s1.g;
import s1.u.i;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b%\u0010&J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u0011\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001d\u0010\u001c\u001a\u00020\u00178B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u001d\u0010$\u001a\u00020 8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\u0019\u001a\u0004\b\"\u0010#¨\u0006'"}, d2 = {"Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity;", "Ln3/b/a/h;", "Le/a/c/a/q/c/a;", "Le/a/c/a/c/a/b;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Le/a/c/a/q/a/b;", "o2", "()Le/a/c/a/q/a/b;", "Lcom/google/android/material/appbar/AppBarLayout;", "d8", "()Lcom/google/android/material/appbar/AppBarLayout;", "Ln3/v/a1$b;", "a", "Ln3/v/a1$b;", "getViewModelFactory", "()Ln3/v/a1$b;", "setViewModelFactory", "(Ln3/v/a1$b;)V", "viewModelFactory", "Le/a/c/a/q/c/b;", C22021b.f61237c, "Ls1/g;", "getUpdatesPageViewModel", "()Le/a/c/a/q/c/b;", "updatesPageViewModel", AbstractC2405c.f7629a, "Le/a/c/a/q/a/b;", "updatesPageComponent", "Le/a/c/a/g/g;", "d", "pa", "()Le/a/c/a/g/g;", "binding", "<init>", "()V", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.updatespage.view.UpdatesActivity */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/updatespage/view/UpdatesActivity.class */
public final class UpdatesActivity extends h implements AbstractC9572a, AbstractC8774b {
    @Inject

    /* renamed from: a */
    public C26986a1.AbstractC26987b f12931a;

    /* renamed from: c */
    public AbstractC9536b f12933c;

    /* renamed from: b */
    public final g f12932b = C25225a.m3978P1(new C4128b());

    /* renamed from: d */
    public final g f12934d = C25225a.m3982O1(s1.h.c, new C4127a(this));

    /* renamed from: com.truecaller.insights.ui.updatespage.view.UpdatesActivity$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/updatespage/view/UpdatesActivity$a.class */
    public static final class C4127a extends m implements a<C9032g> {

        /* renamed from: b */
        public final /* synthetic */ h f12935b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4127a(h hVar) {
            super(0);
            this.f12935b = hVar;
        }

        public Object invoke() {
            LayoutInflater layoutInflater = this.f12935b.getLayoutInflater();
            l.d(layoutInflater, "layoutInflater");
            CoordinatorLayout inflate = layoutInflater.inflate(C4078R.layout.activity_updates, (ViewGroup) null, false);
            int i = C4078R.C4080id.appBarLayout;
            AppBarLayout findViewById = inflate.findViewById(i);
            if (findViewById != null) {
                i = C4078R.C4080id.searchDisabledGroup;
                View findViewById2 = inflate.findViewById(i);
                if (findViewById2 != null) {
                    int i2 = C4078R.C4080id.back;
                    TintedImageView tintedImageView = (TintedImageView) findViewById2.findViewById(i2);
                    if (tintedImageView != null) {
                        i2 = C4078R.C4080id.bannerViewX;
                        BannerViewX bannerViewX = (BannerViewX) findViewById2.findViewById(i2);
                        if (bannerViewX != null) {
                            i2 = C4078R.C4080id.title;
                            TextView textView = (TextView) findViewById2.findViewById(i2);
                            if (textView != null) {
                                C9027e1 c9027e1 = new C9027e1((ConstraintLayout) findViewById2, tintedImageView, bannerViewX, textView);
                                i = C4078R.C4080id.searchFilterContainer;
                                LinearLayout linearLayout = (LinearLayout) inflate.findViewById(i);
                                if (linearLayout != null) {
                                    i = C4078R.C4080id.updatesContainer;
                                    FrameLayout frameLayout = (FrameLayout) inflate.findViewById(i);
                                    if (frameLayout != null) {
                                        return new C9032g(inflate, findViewById, c9027e1, linearLayout, frameLayout);
                                    }
                                }
                            }
                        }
                    }
                    throw new NullPointerException("Missing required view with ID: ".concat(findViewById2.getResources().getResourceName(i2)));
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        }
    }

    /* renamed from: com.truecaller.insights.ui.updatespage.view.UpdatesActivity$b */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/updatespage/view/UpdatesActivity$b.class */
    public static final class C4128b extends m implements a<C9573b> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4128b() {
            super(0);
            UpdatesActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [n3.v.c1, com.truecaller.insights.ui.updatespage.view.UpdatesActivity] */
        public Object invoke() {
            AbstractC27040y0 abstractC27040y0;
            ?? r0 = UpdatesActivity.this;
            C26986a1.AbstractC26987b abstractC26987b = r0.f12931a;
            if (abstractC26987b == null) {
                l.l("viewModelFactory");
                throw null;
            }
            C26993b1 viewModelStore = r0.getViewModelStore();
            String canonicalName = C9573b.class.getCanonicalName();
            if (canonicalName == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            String m8543z2 = C22128a.m8543z2("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
            AbstractC27040y0 abstractC27040y02 = viewModelStore.f75499a.get(m8543z2);
            if (C9573b.class.isInstance(abstractC27040y02)) {
                abstractC27040y0 = abstractC27040y02;
                if (abstractC26987b instanceof C26986a1.C26990e) {
                    ((C26986a1.C26990e) abstractC26987b).m1023a(abstractC27040y02);
                    abstractC27040y0 = abstractC27040y02;
                }
            } else {
                AbstractC27040y0 m1024b = abstractC26987b instanceof C26986a1.AbstractC26988c ? ((C26986a1.AbstractC26988c) abstractC26987b).m1024b(m8543z2, C9573b.class) : abstractC26987b.create(C9573b.class);
                AbstractC27040y0 put = viewModelStore.f75499a.put(m8543z2, m1024b);
                abstractC27040y0 = m1024b;
                if (put != null) {
                    put.onCleared();
                    abstractC27040y0 = m1024b;
                }
            }
            l.d(abstractC27040y0, "ViewModelProvider(this, …ageViewModel::class.java)");
            return (C9573b) abstractC27040y0;
        }
    }

    @Override // p193e.p194a.p437c.p438a.p446c.p447a.AbstractC8774b
    /* renamed from: d8 */
    public AppBarLayout mo28080d8() {
        AppBarLayout appBarLayout = m35148pa().f27473b;
        l.d(appBarLayout, "binding.appBarLayout");
        return appBarLayout;
    }

    @Override // p193e.p194a.p437c.p438a.p514q.p517c.AbstractC9572a
    /* renamed from: o2 */
    public AbstractC9536b mo27418o2() {
        return this.f12933c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        UpdatesActivity.super.onCreate(bundle);
        C10480a.m26076E2(this);
        C9032g m35148pa = m35148pa();
        l.d(m35148pa, "binding");
        setContentView(m35148pa.f27472a);
        Object m3820x0 = C25225a.m3820x0(AbstractApplicationC8442a.m28551L(), AbstractC10451a.class);
        l.d(m3820x0, "EntryPointAccessors.from…htsComponent::class.java)");
        AbstractC10451a abstractC10451a = (AbstractC10451a) m3820x0;
        AbstractC10261a abstractC10261a = (AbstractC10261a) C22128a.m8726C1(AbstractC10261a.class, "EntryPointAccessors.from…onsComponent::class.java)");
        AbstractC8412c m15209q = C18334g0.m15209q(this);
        AbstractC8510a abstractC8510a = (AbstractC8510a) C22128a.m8726C1(AbstractC8510a.class, "EntryPointAccessors.from…ntsComponent::class.java)");
        C9537c c9537c = new C9537c();
        C25225a.m3846s(abstractC10451a, AbstractC10451a.class);
        C25225a.m3846s(abstractC10261a, AbstractC10261a.class);
        C25225a.m3846s(m15209q, AbstractC8412c.class);
        C25225a.m3846s(abstractC8510a, AbstractC8510a.class);
        C9533a c9533a = new C9533a(c9537c, abstractC10451a, abstractC10261a, m15209q, abstractC8510a, null);
        this.f12931a = (C26986a1.AbstractC26987b) c9533a.f28881o.get();
        this.f12933c = c9533a;
        C9573b c9573b = (C9573b) this.f12932b.getValue();
        AbstractC27028u lifecycle = getLifecycle();
        l.d(lifecycle, "this.lifecycle");
        Objects.requireNonNull(c9573b);
        l.e(lifecycle, "lifecycle");
        lifecycle.mo988a(c9573b.f28977f);
        C9573b c9573b2 = (C9573b) this.f12932b.getValue();
        c9573b2.f28979h.mo26852b0(true);
        C9116j c9116j = c9573b2.f28978g;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        l.e("", "feature");
        l.e("", "eventCategory");
        l.e("", "eventInfo");
        l.e("", AnalyticsConstants.CONTEXT);
        l.e("", "actionType");
        l.e("", "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        l.e("page_view", "<set-?>");
        l.e("updates_page", "<set-?>");
        l.e(ViewAction.VIEW, "<set-?>");
        l.e("inbox_business_tab", "<set-?>");
        c9116j.m27867a(new C10529b(new SimpleAnalyticsModel("page_view", "updates_page", "", "inbox_business_tab", ViewAction.VIEW, "", 0L, null, false, 448, null), i.W0(linkedHashMap)));
        if (bundle == null) {
            C26907a c26907a = new C26907a(getSupportFragmentManager());
            FrameLayout frameLayout = m35148pa().f27475d;
            l.d(frameLayout, "binding.updatesContainer");
            int id = frameLayout.getId();
            Objects.requireNonNull(C9577b.f28987g);
            c26907a.m1131b(id, new C9577b());
            c26907a.mo1127f();
        }
        C9027e1 c9027e1 = m35148pa().f27474c;
        c9027e1.f27461b.setOnClickListener(new View$OnClickListenerC9576a(this));
        c9027e1.f27462c.setText(C4078R.string.updates);
        ConstraintLayout constraintLayout = c9027e1.f27460a;
        l.d(constraintLayout, "root");
        C19286f.m13684T(constraintLayout);
    }

    /* renamed from: pa */
    public final C9032g m35148pa() {
        return (C9032g) this.f12934d.getValue();
    }
}
