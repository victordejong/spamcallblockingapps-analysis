package com.truecaller.bizmon.newBusiness.onboarding.p149ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.newBusiness.components.NonSwipeViewPager;
import com.truecaller.bizmon.newBusiness.components.OnboardingViewPagerWithNavigator;
import com.truecaller.log.AssertionUtil;
import com.truecaller.placepicker.PlacePickerActivity;
import com.truecaller.placepicker.data.GeocodedPlace;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1002k4.C16506c;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7746s;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7747t;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7748u;
import p193e.p194a.p294b.p295a.p312c.p313a.C7749v;
import p193e.p194a.p294b.p295a.p312c.p313a.p314a.C7670b;
import p193e.p194a.p294b.p295a.p312c.p313a.p314a.C7673c;
import p193e.p194a.p294b.p295a.p312c.p313a.p314a.C7676e;
import p193e.p194a.p294b.p295a.p312c.p313a.p314a.C7684i;
import p193e.p194a.p294b.p295a.p312c.p313a.p314a.C7688j;
import p193e.p194a.p294b.p295a.p324g.C7805e;
import p193e.p194a.p294b.p355m.C8047a;
import p193e.p194a.p294b.p355m.C8070h1;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006B\u0007¢\u0006\u0004\bZ\u0010\u0013J!\u0010\f\u001a\u00020\u000b2\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0016\u001a\u00020\t2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001e\u0010\u0013J\u0017\u0010!\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u000bH\u0016¢\u0006\u0004\b#\u0010\u0013J\u000f\u0010$\u001a\u00020\u000bH\u0016¢\u0006\u0004\b$\u0010\u0013J\u0017\u0010&\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\u001fH\u0016¢\u0006\u0004\b&\u0010\"J\u0017\u0010(\u001a\u00020\u000b2\u0006\u0010'\u001a\u00020\tH\u0016¢\u0006\u0004\b(\u0010)J\u0017\u0010*\u001a\u00020\u000b2\u0006\u0010'\u001a\u00020\tH\u0016¢\u0006\u0004\b*\u0010)J\u000f\u0010+\u001a\u00020\u000bH\u0016¢\u0006\u0004\b+\u0010\u0013J\u000f\u0010,\u001a\u00020\u000bH\u0016¢\u0006\u0004\b,\u0010\u0013J\u000f\u0010-\u001a\u00020\u000bH\u0016¢\u0006\u0004\b-\u0010\u0013J\u0017\u0010.\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\u001fH\u0016¢\u0006\u0004\b.\u0010\"J\u0017\u00100\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020\tH\u0016¢\u0006\u0004\b0\u0010)J\u0011\u00102\u001a\u0004\u0018\u000101H\u0016¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\u000bH\u0016¢\u0006\u0004\b4\u0010\u0013J\u000f\u00105\u001a\u00020\u000bH\u0016¢\u0006\u0004\b5\u0010\u0013J!\u00108\u001a\u00020\u000b2\b\u00106\u001a\u0004\u0018\u00010\u00072\u0006\u00107\u001a\u00020\tH\u0016¢\u0006\u0004\b8\u0010\rJ!\u00109\u001a\u00020\u000b2\b\u00106\u001a\u0004\u0018\u00010\u00072\u0006\u00107\u001a\u00020\tH\u0016¢\u0006\u0004\b9\u0010\rJ\u0019\u0010:\u001a\u00020\u000b2\b\u00106\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b:\u0010;J)\u0010@\u001a\u00020\u000b2\u0006\u0010<\u001a\u00020\u001f2\u0006\u0010=\u001a\u00020\u001f2\b\u0010?\u001a\u0004\u0018\u00010>H\u0014¢\u0006\u0004\b@\u0010AJ\u0017\u0010C\u001a\u00020\u000b2\u0006\u0010B\u001a\u00020\tH\u0016¢\u0006\u0004\bC\u0010)R\u0016\u0010G\u001a\u00020D8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bE\u0010FR\u0016\u0010K\u001a\u00020H8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bI\u0010JR\"\u0010R\u001a\u00020L8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b.\u0010M\u001a\u0004\bN\u0010O\"\u0004\bP\u0010QR\u0018\u0010V\u001a\u0004\u0018\u00010S8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR\u0018\u0010Y\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010X¨\u0006["}, d2 = {"Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity;", "Ln3/b/a/h;", "Le/a/b/a/c/a/u;", "Le/a/b/a/c/a/a/b$b;", "Le/a/b/a/c/a/a/j$a;", "Le/a/b/a/c/a/a/i$a;", "Le/a/b/a/c/a/s;", "Lcom/truecaller/placepicker/data/GeocodedPlace;", "resolvedPincodePlace", "", "showAutcomplete", "Ls1/s;", "pa", "(Lcom/truecaller/placepicker/data/GeocodedPlace;Z)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "()V", "Landroid/view/Menu;", "menu", "onCreateOptionsMenu", "(Landroid/view/Menu;)Z", "Landroidx/fragment/app/Fragment;", "fragment", "onAttachFragment", "(Landroidx/fragment/app/Fragment;)V", "onSupportNavigateUp", "()Z", "onBackPressed", "", "index", "v4", "(I)V", "v1", "n1", "stringResId", "u5", "isVisible", "p3", "(Z)V", "U3", "a0", "b0", "c2", "a", "enable", "B7", "Landroidx/appcompat/widget/SearchView;", "O7", "()Landroidx/appcompat/widget/SearchView;", "f0", "j0", "geocodedPlace", "showAutocomplete", "K", "L8", "z5", "(Lcom/truecaller/placepicker/data/GeocodedPlace;)V", "requestCode", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", AnalyticsConstants.SHOW, "i7", "Le/a/b/a/c/a/v;", C22021b.f61237c, "Le/a/b/a/c/a/v;", "onboardingPagerAdapter", "Le/a/b/m/a;", "e", "Le/a/b/m/a;", "binding", "Le/a/b/a/c/a/t;", "Le/a/b/a/c/a/t;", "getPresenter", "()Le/a/b/a/c/a/t;", "setPresenter", "(Le/a/b/a/c/a/t;)V", "presenter", "Landroid/view/MenuItem;", AbstractC2405c.f7629a, "Landroid/view/MenuItem;", "searchMenuItem", "d", "Landroidx/appcompat/widget/SearchView;", "enabledSearchView", "<init>", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingActivity */
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingActivity.class */
public final class OnboardingActivity extends h implements AbstractC7748u, C7670b.AbstractC7672b, C7688j.AbstractC7689a, C7684i.AbstractC7685a, AbstractC7746s {
    @Inject

    /* renamed from: a */
    public AbstractC7747t f10327a;

    /* renamed from: b */
    public C7749v f10328b;

    /* renamed from: c */
    public MenuItem f10329c;

    /* renamed from: d */
    public SearchView f10330d;

    /* renamed from: e */
    public C8047a f10331e;

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7748u
    /* renamed from: B7 */
    public void mo29324B7(boolean z) {
        MenuItem menuItem = this.f10329c;
        if (menuItem != null) {
            menuItem.collapseActionView();
        }
        MenuItem menuItem2 = this.f10329c;
        if (menuItem2 != null) {
            menuItem2.setVisible(z);
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.p314a.C7684i.AbstractC7685a
    /* renamed from: K */
    public void mo29445K(GeocodedPlace geocodedPlace, boolean z) {
        m35862pa(geocodedPlace, z);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.p314a.C7688j.AbstractC7689a
    /* renamed from: L8 */
    public void mo29441L8(GeocodedPlace geocodedPlace, boolean z) {
        m35862pa(geocodedPlace, z);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7748u
    /* renamed from: O7 */
    public SearchView mo29323O7() {
        return this.f10330d;
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7748u
    /* renamed from: U3 */
    public void mo29322U3(boolean z) {
        C8047a c8047a = this.f10331e;
        if (c8047a != null) {
            c8047a.f24780b.setPreviousButtonVisible(z);
        } else {
            l.l("binding");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7748u
    /* renamed from: a */
    public void mo29321a(int i) {
        C19291g.m13589S1(this, i, null, 0, 6);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7748u
    /* renamed from: a0 */
    public void mo29320a0() {
        C8047a c8047a = this.f10331e;
        if (c8047a == null) {
            l.l("binding");
            throw null;
        }
        C8070h1 c8070h1 = c8047a.f24780b.f10306u;
        ProgressBar progressBar = c8070h1.f24919e;
        l.d(progressBar, "progressBar");
        C19286f.m13684T(progressBar);
        Button button = c8070h1.f24916b;
        l.d(button, "pageNextBtn");
        C19286f.m13687Q(button);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7748u
    /* renamed from: b0 */
    public void mo29319b0() {
        C8047a c8047a = this.f10331e;
        if (c8047a == null) {
            l.l("binding");
            throw null;
        }
        C8070h1 c8070h1 = c8047a.f24780b.f10306u;
        ProgressBar progressBar = c8070h1.f24919e;
        l.d(progressBar, "progressBar");
        C19286f.m13687Q(progressBar);
        Button button = c8070h1.f24916b;
        l.d(button, "pageNextBtn");
        C19286f.m13684T(button);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7748u
    /* renamed from: c2 */
    public void mo29318c2() {
        setResult(-1);
        finish();
        l.e(this, AnalyticsConstants.CONTEXT);
        startActivity(new Intent((Context) this, (Class<?>) OnboardingSuccessActivity.class));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p295a.p312c.p313a.p314a.C7670b.AbstractC7672b
    /* renamed from: f0 */
    public void mo29455f0() {
        setResult(0);
        finish();
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7746s
    /* renamed from: i7 */
    public void mo29326i7(boolean z) {
        SearchView searchView = this.f10330d;
        if (searchView != null) {
            C19286f.m13679Y(searchView, z, 0L, 2);
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.p314a.C7670b.AbstractC7672b
    /* renamed from: j0 */
    public void mo29454j0() {
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7748u
    /* renamed from: n1 */
    public void mo29317n1() {
        C8047a c8047a = this.f10331e;
        if (c8047a == null) {
            l.l("binding");
            throw null;
        }
        OnboardingViewPagerWithNavigator onboardingViewPagerWithNavigator = c8047a.f24780b;
        NonSwipeViewPager nonSwipeViewPager = onboardingViewPagerWithNavigator.f10306u.f24920f;
        l.d(nonSwipeViewPager, "binding.viewPager");
        onboardingViewPagerWithNavigator.m35872f1(nonSwipeViewPager.getCurrentItem() + 1);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        OnboardingActivity.super.onActivityResult(i, i2, intent);
        if (i == 10001 && i2 == -1) {
            GeocodedPlace geocodedPlace = intent != null ? (GeocodedPlace) intent.getParcelableExtra("selected_location") : null;
            Fragment c7684i = new C7684i();
            Bundle bundle = new Bundle();
            bundle.putParcelable("key_arg_geo_place", geocodedPlace);
            c7684i.setArguments(bundle);
            C8047a c8047a = this.f10331e;
            if (c8047a == null) {
                l.l("binding");
                throw null;
            }
            OnboardingViewPagerWithNavigator onboardingViewPagerWithNavigator = c8047a.f24780b;
            C7749v c7749v = this.f10328b;
            if (c7749v == null) {
                l.l("onboardingPagerAdapter");
                throw null;
            }
            onboardingViewPagerWithNavigator.m35871g1(c7684i, c7749v.mo1537c() - 1);
            OnboardingViewPagerWithNavigator onboardingViewPagerWithNavigator2 = c8047a.f24780b;
            C7749v c7749v2 = this.f10328b;
            if (c7749v2 != null) {
                onboardingViewPagerWithNavigator2.m35872f1(c7749v2.mo1537c() - 1);
            } else {
                l.l("onboardingPagerAdapter");
                throw null;
            }
        }
    }

    public void onAttachFragment(Fragment fragment) {
        l.e(fragment, "fragment");
        OnboardingActivity.super.onAttachFragment(fragment);
        if (fragment instanceof C7676e) {
            ((C7676e) fragment).f24065f = this;
        } else if (fragment instanceof C7688j) {
            l.e(this, "callback");
            ((C7688j) fragment).f24083c = this;
        } else if (!(fragment instanceof C7684i)) {
        } else {
            ((C7684i) fragment).f24077c = this;
        }
    }

    public void onBackPressed() {
        boolean z;
        C8047a c8047a = this.f10331e;
        if (c8047a == null) {
            l.l("binding");
            throw null;
        }
        OnboardingViewPagerWithNavigator onboardingViewPagerWithNavigator = c8047a.f24780b;
        NonSwipeViewPager nonSwipeViewPager = onboardingViewPagerWithNavigator.f10306u.f24920f;
        l.d(nonSwipeViewPager, "binding.viewPager");
        if (nonSwipeViewPager.getCurrentItem() > 0) {
            OnboardingViewPagerWithNavigator.AbstractC3494a abstractC3494a = onboardingViewPagerWithNavigator.f10305t;
            if (abstractC3494a != null) {
                abstractC3494a.mo29450xy();
            }
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        C7670b c7670b = new C7670b();
        c7670b.f24052a = this;
        c7670b.show(getSupportFragmentManager(), c7670b.getTag());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C18334g0.m15200u0(this);
        OnboardingActivity.super.onCreate(bundle);
        View inflate = LayoutInflater.from(this).inflate(C3478R.layout.activity_biz_onboarding, (ViewGroup) null, false);
        ConstraintLayout constraintLayout = (ConstraintLayout) inflate;
        int i = C3478R.C3480id.navigator;
        OnboardingViewPagerWithNavigator onboardingViewPagerWithNavigator = (OnboardingViewPagerWithNavigator) inflate.findViewById(i);
        if (onboardingViewPagerWithNavigator != null) {
            i = C3478R.C3480id.onboardingToolbar;
            Toolbar toolbar = (Toolbar) inflate.findViewById(i);
            if (toolbar != null) {
                C8047a c8047a = new C8047a((ConstraintLayout) inflate, constraintLayout, onboardingViewPagerWithNavigator, toolbar);
                l.d(c8047a, "ActivityBizOnboardingBin…ayoutInflater.from(this))");
                this.f10331e = c8047a;
                if (c8047a == null) {
                    l.l("binding");
                    throw null;
                }
                setContentView(c8047a.f24779a);
                AbstractC7747t abstractC7747t = (AbstractC7747t) ((C7805e) C18334g0.m15219l(this)).f24272M.get();
                this.f10327a = abstractC7747t;
                if (abstractC7747t == null) {
                    l.l("presenter");
                    throw null;
                }
                abstractC7747t.mo9029Y0(this);
                FragmentManager supportFragmentManager = getSupportFragmentManager();
                l.d(supportFragmentManager, "supportFragmentManager");
                C7749v c7749v = new C7749v(supportFragmentManager);
                this.f10328b = c7749v;
                C8047a c8047a2 = this.f10331e;
                if (c8047a2 == null) {
                    l.l("binding");
                    throw null;
                }
                c8047a2.f24780b.setAdapter(c7749v);
                C8047a c8047a3 = this.f10331e;
                if (c8047a3 == null) {
                    l.l("binding");
                    throw null;
                }
                Toolbar toolbar2 = c8047a3.f24781c;
                l.d(toolbar2, "onboardingToolbar");
                toolbar2.setTitle("");
                setSupportActionBar(c8047a3.f24781c);
                AbstractC25393a supportActionBar = getSupportActionBar();
                if (supportActionBar != null) {
                    supportActionBar.mo3553n(true);
                }
                AbstractC25393a supportActionBar2 = getSupportActionBar();
                if (supportActionBar2 != null) {
                    supportActionBar2.mo3548s(C3478R.C3479drawable.biz_toolbar_close);
                }
                mo29324B7(false);
                return;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onCreateOptionsMenu(Menu menu) {
        if (this.f10329c == null) {
            getMenuInflater().inflate(C3478R.C3482menu.menu_biz, menu);
            SearchView searchView = null;
            MenuItem findItem = menu != null ? menu.findItem(C3478R.C3480id.action_search) : null;
            this.f10329c = findItem;
            if (findItem != null) {
                searchView = findItem.getActionView();
            }
            Objects.requireNonNull(searchView, "null cannot be cast to non-null type androidx.appcompat.widget.SearchView");
            this.f10330d = searchView;
            mo29324B7(false);
        }
        return OnboardingActivity.super.onCreateOptionsMenu(menu);
    }

    public void onDestroy() {
        OnboardingActivity.super.onDestroy();
        AbstractC7747t abstractC7747t = this.f10327a;
        if (abstractC7747t != null) {
            abstractC7747t.mo9806c();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public boolean onSupportNavigateUp() {
        C7670b c7670b = new C7670b();
        c7670b.f24052a = this;
        c7670b.show(getSupportFragmentManager(), c7670b.getTag());
        return false;
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7748u
    /* renamed from: p3 */
    public void mo29316p3(boolean z) {
        C8047a c8047a = this.f10331e;
        if (c8047a != null) {
            c8047a.f24780b.setNextButtonVisible(z);
        } else {
            l.l("binding");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v62, types: [double] */
    /* JADX WARN: Type inference failed for: r0v68, types: [double] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r6v0, types: [androidx.activity.ComponentActivity, android.content.Context, java.lang.Object, com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingActivity, android.app.Activity] */
    /* renamed from: pa */
    public final void m35862pa(GeocodedPlace geocodedPlace, boolean z) {
        Double d;
        try {
            String string = getString(C3478R.string.google_maps_api_key);
            l.d(string, "getString(R.string.google_maps_api_key)");
            l.e(string, "apiKey");
            String str = C16506c.f46413a;
            l.e(str, "<set-?>");
            C16506c.f46414b = str;
            l.e(string, "<set-?>");
            C16506c.f46413a = string;
            ?? doubleValue = (geocodedPlace == null || (d = geocodedPlace.f14183d) == null) ? false : d.doubleValue();
            ?? r15 = false;
            if (geocodedPlace != null) {
                Double d2 = geocodedPlace.f14184e;
                r15 = false;
                if (d2 != null) {
                    r15 = d2.doubleValue();
                }
            }
            l.e((Object) this, "activity");
            GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.f5673d;
            l.d(googleApiAvailability, "GoogleApiAvailability.getInstance()");
            int mo39062e = googleApiAvailability.mo39062e(this, 13400000);
            if (mo39062e != 0) {
                if (!GooglePlayServicesUtilLight.isUserRecoverableError(mo39062e)) {
                    throw new GooglePlayServicesNotAvailableException(mo39062e);
                }
                googleApiAvailability.m39072f(this, mo39062e, 0, null).show();
                throw new GooglePlayServicesRepairableException(mo39062e, GooglePlayServicesUtilLight.getErrorString(mo39062e), new Intent());
            }
            Intent intent = new Intent((Context) this, PlacePickerActivity.class);
            intent.putExtra("latitude", doubleValue == true ? 1.0d : 0.0d);
            intent.putExtra("longitude", r15 == true ? 1.0d : 0.0d);
            intent.putExtra("forceRemoteGeocoding", false);
            intent.putExtra("toolbarTitle", (String) null);
            intent.putExtra("showAutocomplete", z);
            startActivityForResult(intent, 10001);
        } catch (Exception e) {
            if (!(e instanceof GooglePlayServicesNotAvailableException) && !(e instanceof GooglePlayServicesRepairableException)) {
                AssertionUtil.reportThrowableButNeverCrash(e);
                return;
            }
            AbstractC7747t abstractC7747t = this.f10327a;
            if (abstractC7747t != null) {
                abstractC7747t.mo29325o5();
            } else {
                l.l("presenter");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7748u
    /* renamed from: u5 */
    public void mo29315u5(int i) {
        C8047a c8047a = this.f10331e;
        if (c8047a != null) {
            c8047a.f24780b.setNextButtonText(i);
        } else {
            l.l("binding");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7748u
    /* renamed from: v1 */
    public void mo29314v1() {
        C8047a c8047a = this.f10331e;
        if (c8047a == null) {
            l.l("binding");
            throw null;
        }
        OnboardingViewPagerWithNavigator onboardingViewPagerWithNavigator = c8047a.f24780b;
        NonSwipeViewPager nonSwipeViewPager = onboardingViewPagerWithNavigator.f10306u.f24920f;
        l.d(nonSwipeViewPager, "binding.viewPager");
        onboardingViewPagerWithNavigator.m35872f1(nonSwipeViewPager.getCurrentItem() - 1);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7748u
    /* renamed from: v4 */
    public void mo29313v4(int i) {
        C8047a c8047a = this.f10331e;
        if (c8047a != null) {
            c8047a.f24780b.m35872f1(i);
        } else {
            l.l("binding");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.p314a.C7688j.AbstractC7689a
    /* renamed from: z5 */
    public void mo29440z5(GeocodedPlace geocodedPlace) {
        C8047a c8047a = this.f10331e;
        if (c8047a == null) {
            l.l("binding");
            throw null;
        }
        OnboardingViewPagerWithNavigator onboardingViewPagerWithNavigator = c8047a.f24780b;
        C7673c c7673c = new C7673c();
        C7749v c7749v = this.f10328b;
        if (c7749v == null) {
            l.l("onboardingPagerAdapter");
            throw null;
        }
        onboardingViewPagerWithNavigator.m35871g1(c7673c, c7749v.mo1537c() - 1);
        OnboardingViewPagerWithNavigator onboardingViewPagerWithNavigator2 = c8047a.f24780b;
        C7749v c7749v2 = this.f10328b;
        if (c7749v2 != null) {
            onboardingViewPagerWithNavigator2.m35872f1(c7749v2.mo1537c() - 1);
        } else {
            l.l("onboardingPagerAdapter");
            throw null;
        }
    }
}
