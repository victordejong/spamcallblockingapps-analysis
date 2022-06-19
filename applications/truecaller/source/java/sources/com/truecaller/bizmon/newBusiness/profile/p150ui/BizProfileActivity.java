package com.truecaller.bizmon.newBusiness.profile.p150ui;

import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.bizmon.C3478R;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p294b.p295a.p296a.p297a.C7520d;
import p193e.p194a.p294b.p295a.p296a.p297a.C7559k;
import p193e.p194a.p294b.p295a.p324g.C7805e;
import p193e.p194a.p294b.p355m.C8050b;
import p193e.p194a.p682e.C12864a2;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\"B\u0007¢\u0006\u0004\b/\u0010\u0011J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00122\b\u0010\u0014\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001f\u0010\u0011J\u000f\u0010 \u001a\u00020\u0006H\u0002¢\u0006\u0004\b \u0010\u0011R\u001d\u0010&\u001a\u00020!8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R\"\u0010.\u001a\u00020'8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-¨\u00060"}, d2 = {"Lcom/truecaller/bizmon/newBusiness/profile/ui/BizProfileActivity;", "Ln3/b/a/h;", "Le/a/b/a/a/a/k$b;", "Le/a/b/a/a/a/d$c;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroidx/fragment/app/Fragment;", "fragment", "onAttachFragment", "(Landroidx/fragment/app/Fragment;)V", "", "onSupportNavigateUp", "()Z", "onBackPressed", "()V", "", "foregroundColor", "backgroundColor", "I9", "(ILjava/lang/Integer;)V", "", "url", "position", "k4", "(Ljava/lang/String;I)V", "desc", "g3", "(Ljava/lang/String;)V", "U0", "d0", "Le/a/b/m/b;", C22021b.f61237c, "Ls1/g;", "pa", "()Le/a/b/m/b;", "binding", "Le/a/p5/h0;", "a", "Le/a/p5/h0;", "getThemedResourceProvider", "()Le/a/p5/h0;", "setThemedResourceProvider", "(Le/a/p5/h0;)V", "themedResourceProvider", "<init>", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.bizmon.newBusiness.profile.ui.BizProfileActivity */
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/profile/ui/BizProfileActivity.class */
public final class BizProfileActivity extends h implements C7559k.AbstractC7561b, C7520d.AbstractC7523c {
    @Inject

    /* renamed from: a */
    public AbstractC19233h0 f10345a;

    /* renamed from: b */
    public final g f10346b = C25225a.m3982O1(s1.h.c, new C3508a(this));

    /* renamed from: com.truecaller.bizmon.newBusiness.profile.ui.BizProfileActivity$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/profile/ui/BizProfileActivity$a.class */
    public static final class C3508a extends m implements a<C8050b> {

        /* renamed from: b */
        public final /* synthetic */ h f10347b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3508a(h hVar) {
            super(0);
            this.f10347b = hVar;
        }

        public Object invoke() {
            LayoutInflater layoutInflater = this.f10347b.getLayoutInflater();
            l.d(layoutInflater, "layoutInflater");
            View inflate = layoutInflater.inflate(C3478R.layout.activity_biz_profile, (ViewGroup) null, false);
            int i = C3478R.C3480id.contentLayout;
            FrameLayout frameLayout = (FrameLayout) inflate.findViewById(i);
            if (frameLayout != null) {
                i = C3478R.C3480id.toolbar;
                Toolbar toolbar = (Toolbar) inflate.findViewById(i);
                if (toolbar != null) {
                    return new C8050b((ConstraintLayout) inflate, frameLayout, toolbar);
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        }
    }

    /* renamed from: com.truecaller.bizmon.newBusiness.profile.ui.BizProfileActivity$b */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/profile/ui/BizProfileActivity$b.class */
    public static final class C3509b {
        /* renamed from: a */
        public static final Intent m35853a(Context context) {
            return C22128a.m8581q0(context, AnalyticsConstants.CONTEXT, context, BizProfileActivity.class);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p295a.p296a.p297a.C7559k.AbstractC7561b
    /* renamed from: I9 */
    public void mo29514I9(int i, Integer num) {
        C8050b m35854pa = m35854pa();
        if (num == null) {
            Toolbar toolbar = m35854pa.f24788c;
            l.d(toolbar, "toolbar");
            toolbar.setBackground(null);
            Window window = getWindow();
            l.d(window, "window");
            window.setStatusBarColor(0);
        } else {
            m35854pa.f24788c.setBackgroundColor(num.intValue());
            Window window2 = getWindow();
            l.d(window2, "window");
            window2.setStatusBarColor(C12864a2.m22536v(num.intValue()));
        }
        Toolbar toolbar2 = m35854pa.f24788c;
        l.d(toolbar2, "toolbar");
        Drawable navigationIcon = toolbar2.getNavigationIcon();
        if (navigationIcon != null) {
            navigationIcon.setTint(i);
            navigationIcon.setTintMode(PorterDuff.Mode.SRC_IN);
        }
        Toolbar toolbar3 = m35854pa.f24788c;
        l.d(toolbar3, "toolbar");
        Drawable overflowIcon = toolbar3.getOverflowIcon();
        if (overflowIcon != null) {
            overflowIcon.setTint(i);
            overflowIcon.setTintMode(PorterDuff.Mode.SRC_IN);
        }
    }

    @Override // p193e.p194a.p294b.p295a.p296a.p297a.C7520d.AbstractC7523c
    /* renamed from: U0 */
    public void mo29532U0() {
        m35855d0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d0 */
    public final void m35855d0() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        l.d(supportFragmentManager, "supportFragmentManager");
        if (supportFragmentManager.m42940M() == 0) {
            setResult(0);
            finish();
            return;
        }
        Toolbar toolbar = m35854pa().f24788c;
        l.d(toolbar, "binding.toolbar");
        toolbar.setTitle("");
        getSupportFragmentManager().m42921c0();
    }

    @Override // p193e.p194a.p294b.p295a.p296a.p297a.C7520d.AbstractC7523c
    /* renamed from: g3 */
    public void mo29531g3(String str) {
        l.e(str, "desc");
        Toolbar toolbar = m35854pa().f24788c;
        l.d(toolbar, "binding.toolbar");
        toolbar.setTitle(str);
    }

    @Override // p193e.p194a.p294b.p295a.p296a.p297a.C7559k.AbstractC7561b
    /* renamed from: k4 */
    public void mo29513k4(String str, int i) {
        l.e(str, "url");
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        l.d(supportFragmentManager, "supportFragmentManager");
        C26907a c26907a = new C26907a(supportFragmentManager);
        l.d(c26907a, "beginTransaction()");
        int i2 = C3478R.C3480id.contentLayout;
        Objects.requireNonNull(C7520d.f23814n);
        C7520d c7520d = new C7520d();
        Bundle bundle = new Bundle();
        bundle.putInt("key_selected_index", i);
        c7520d.setArguments(bundle);
        c26907a.m1120m(i2, c7520d, null);
        c26907a.m1128e(null);
        c26907a.mo1127f();
        AbstractC19233h0 abstractC19233h0 = this.f10345a;
        if (abstractC19233h0 != null) {
            mo29514I9(abstractC19233h0.mo13758l(C3478R.attr.tcx_textSecondary), null);
        } else {
            l.l("themedResourceProvider");
            throw null;
        }
    }

    public void onAttachFragment(Fragment fragment) {
        l.e(fragment, "fragment");
        BizProfileActivity.super.onAttachFragment(fragment);
        if (fragment instanceof C7559k) {
            ((C7559k) fragment).f23876e = this;
        } else if (!(fragment instanceof C7520d)) {
        } else {
            ((C7520d) fragment).f23818d = this;
        }
    }

    public void onBackPressed() {
        m35855d0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        BizProfileActivity.super.onCreate(bundle);
        this.f10345a = (AbstractC19233h0) ((C7805e) C18334g0.m15219l(this)).f24262C.get();
        C8050b m35854pa = m35854pa();
        l.d(m35854pa, "binding");
        setContentView(m35854pa.f24786a);
        if (bundle == null) {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            l.d(supportFragmentManager, "supportFragmentManager");
            C26907a c26907a = new C26907a(supportFragmentManager);
            l.d(c26907a, "beginTransaction()");
            c26907a.m1120m(C3478R.C3480id.contentLayout, new C7559k(), null);
            c26907a.mo1127f();
        }
        C8050b m35854pa2 = m35854pa();
        Toolbar toolbar = m35854pa2.f24788c;
        l.d(toolbar, "toolbar");
        toolbar.setTitle("");
        setSupportActionBar(m35854pa2.f24788c);
        AbstractC25393a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3553n(true);
        }
    }

    public boolean onSupportNavigateUp() {
        m35855d0();
        return false;
    }

    /* renamed from: pa */
    public final C8050b m35854pa() {
        return (C8050b) this.f10346b.getValue();
    }
}
