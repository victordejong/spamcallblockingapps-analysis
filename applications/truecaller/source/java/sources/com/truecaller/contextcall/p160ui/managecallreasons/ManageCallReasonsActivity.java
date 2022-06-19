package com.truecaller.contextcall.p160ui.managecallreasons;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import com.razorpay.AnalyticsConstants;
import com.truecaller.contextcall.C3771R;
import com.truecaller.contextcall.utils.ContextCallAnalyticsContext;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1080o.p1081a.p1087c.AbstractC18561f;
import p193e.p194a.p1080o.p1081a.p1087c.C18550a;
import p193e.p194a.p1080o.p1102o.C18788a;
import s1.g;
import s1.h;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018�� \u001b2\u00020\u0001:\u0001\u001cB\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH��¢\u0006\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0012\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u001d\u0010\u0018\u001a\u00020\u00138B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001d"}, d2 = {"Lcom/truecaller/contextcall/ui/managecallreasons/ManageCallReasonsActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/MenuItem;", "menuItem", "", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "Lcom/truecaller/contextcall/ui/managecallreasons/HomeButtonBehaviour;", "behaviour", "pa", "(Lcom/truecaller/contextcall/ui/managecallreasons/HomeButtonBehaviour;)V", "d", "Lcom/truecaller/contextcall/ui/managecallreasons/HomeButtonBehaviour;", "homeButtonBehaviour", "Le/a/o/o/a;", "e", "Ls1/g;", "getBinding", "()Le/a/o/o/a;", "binding", "<init>", "()V", "f", C22021b.f61237c, "context-call_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.contextcall.ui.managecallreasons.ManageCallReasonsActivity */
/* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/ui/managecallreasons/ManageCallReasonsActivity.class */
public final class ManageCallReasonsActivity extends AbstractC18561f {

    /* renamed from: f */
    public static final C3785b f11438f = new C3785b(null);

    /* renamed from: d */
    public HomeButtonBehaviour f11439d = HomeButtonBehaviour.GO_BACK;

    /* renamed from: e */
    public final g f11440e = C25225a.m3982O1(h.c, new C3784a(this));

    /* renamed from: com.truecaller.contextcall.ui.managecallreasons.ManageCallReasonsActivity$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/ui/managecallreasons/ManageCallReasonsActivity$a.class */
    public static final class C3784a extends m implements a<C18788a> {

        /* renamed from: b */
        public final /* synthetic */ n3.b.a.h f11441b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3784a(n3.b.a.h hVar) {
            super(0);
            this.f11441b = hVar;
        }

        public Object invoke() {
            LayoutInflater layoutInflater = this.f11441b.getLayoutInflater();
            l.d(layoutInflater, "layoutInflater");
            View inflate = layoutInflater.inflate(C3771R.layout.activity_manage_call_reason_container, (ViewGroup) null, false);
            int i = C3771R.C3773id.container;
            FrameLayout frameLayout = (FrameLayout) inflate.findViewById(i);
            if (frameLayout != null) {
                i = C3771R.C3773id.toolbar;
                Toolbar toolbar = (Toolbar) inflate.findViewById(i);
                if (toolbar != null) {
                    return new C18788a((LinearLayout) inflate, frameLayout, toolbar);
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        }
    }

    /* renamed from: com.truecaller.contextcall.ui.managecallreasons.ManageCallReasonsActivity$b */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/ui/managecallreasons/ManageCallReasonsActivity$b.class */
    public static final class C3785b {
        public C3785b(f fVar) {
        }

        /* renamed from: a */
        public final Intent m35584a(Context context, ContextCallAnalyticsContext contextCallAnalyticsContext, boolean z) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(contextCallAnalyticsContext, "contextCallAnalyticsContext");
            Intent intent = new Intent(context, ManageCallReasonsActivity.class);
            intent.putExtra("enable_feature_flag", z);
            intent.putExtra("manage_call_reason_source", contextCallAnalyticsContext.name());
            return intent;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        ManageCallReasonsActivity.super.onCreate(bundle);
        C18788a c18788a = (C18788a) this.f11440e.getValue();
        l.d(c18788a, "binding");
        setContentView(c18788a.f52778a);
        setSupportActionBar(((C18788a) this.f11440e.getValue()).f52780c);
        AbstractC25393a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3553n(true);
        }
        if (bundle == null) {
            C26907a c26907a = new C26907a(getSupportFragmentManager());
            int i = C3771R.C3773id.container;
            Objects.requireNonNull(C18550a.f52310j);
            c26907a.m1120m(i, new C18550a(), null);
            c26907a.mo1126g();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        l.e(menuItem, "menuItem");
        if (menuItem.getItemId() == 16908332) {
            int ordinal = this.f11439d.ordinal();
            if (ordinal == 0) {
                onBackPressed();
            } else if (ordinal == 1) {
                finish();
            }
        }
        return ManageCallReasonsActivity.super.onOptionsItemSelected(menuItem);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: pa */
    public final void m35585pa(HomeButtonBehaviour homeButtonBehaviour) {
        AbstractC25393a supportActionBar;
        l.e(homeButtonBehaviour, "behaviour");
        int ordinal = homeButtonBehaviour.ordinal();
        if (ordinal == 0) {
            AbstractC25393a supportActionBar2 = getSupportActionBar();
            if (supportActionBar2 != null) {
                supportActionBar2.mo3547t(null);
            }
        } else if (ordinal == 1 && (supportActionBar = getSupportActionBar()) != null) {
            int i = C3771R.C3772drawable.ic_action_close;
            Object obj = C26467a.f74235a;
            supportActionBar.mo3547t(C26467a.C26470c.m1789b(this, i));
        }
        this.f11439d = homeButtonBehaviour;
    }
}
