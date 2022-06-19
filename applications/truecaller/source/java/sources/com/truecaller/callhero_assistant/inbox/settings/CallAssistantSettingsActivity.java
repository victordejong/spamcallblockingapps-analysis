package com.truecaller.callhero_assistant.inbox.settings;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.FragmentManager;
import com.google.android.material.appbar.MaterialToolbar;
import com.truecaller.callhero_assistant.C3605R;
import kotlin.Metadata;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1188r3.AbstractC19897a;
import p193e.p194a.p1195s.p1199l.C20024a;
import p193e.p194a.p1195s.p1201n.p1203b.C20065a;
import s1.g;
import s1.h;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nR\u001d\u0010\u0010\u001a\u00020\u000b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/truecaller/callhero_assistant/inbox/settings/CallAssistantSettingsActivity;", "Le/a/r3/a;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "", "titleId", "setTitle", "(I)V", "Le/a/s/l/a;", "a", "Ls1/g;", "pa", "()Le/a/s/l/a;", "binding", "<init>", "()V", "callhero_assistant_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes17-dex2jar.jar:com/truecaller/callhero_assistant/inbox/settings/CallAssistantSettingsActivity.class */
public final class CallAssistantSettingsActivity extends AbstractC19897a {

    /* renamed from: a */
    public final g f10672a = C25225a.m3982O1(h.c, new C3608a(this));

    /* renamed from: com.truecaller.callhero_assistant.inbox.settings.CallAssistantSettingsActivity$a */
    /* loaded from: classes17-dex2jar.jar:com/truecaller/callhero_assistant/inbox/settings/CallAssistantSettingsActivity$a.class */
    public static final class C3608a extends m implements a<C20024a> {

        /* renamed from: b */
        public final /* synthetic */ n3.b.a.h f10673b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3608a(n3.b.a.h hVar) {
            super(0);
            this.f10673b = hVar;
        }

        public Object invoke() {
            LayoutInflater layoutInflater = this.f10673b.getLayoutInflater();
            l.d(layoutInflater, "layoutInflater");
            View inflate = layoutInflater.inflate(C3605R.layout.activity_call_assistant_settings, (ViewGroup) null, false);
            int i = 2114060301;
            FragmentContainerView fragmentContainerView = (FragmentContainerView) inflate.findViewById(C3605R.C3606id.fragmentContainer);
            if (fragmentContainerView != null) {
                i = 2114060324;
                MaterialToolbar findViewById = inflate.findViewById(C3605R.C3606id.toolbar);
                if (findViewById != null) {
                    return new C20024a((LinearLayout) inflate, fragmentContainerView, findViewById);
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        }
    }

    /* renamed from: com.truecaller.callhero_assistant.inbox.settings.CallAssistantSettingsActivity$b */
    /* loaded from: classes17-dex2jar.jar:com/truecaller/callhero_assistant/inbox/settings/CallAssistantSettingsActivity$b.class */
    public static final class View$OnClickListenerC3609b implements View.OnClickListener {
        public View$OnClickListenerC3609b() {
            CallAssistantSettingsActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            CallAssistantSettingsActivity.this.onBackPressed();
        }
    }

    public void onCreate(Bundle bundle) {
        CallAssistantSettingsActivity.super.onCreate(bundle);
        C20024a m35762pa = m35762pa();
        l.d(m35762pa, "binding");
        setContentView(m35762pa.f56578a);
        setSupportActionBar(m35762pa().f56579b);
        AbstractC25393a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3553n(true);
        }
        m35762pa().f56579b.setNavigationOnClickListener(new View$OnClickListenerC3609b());
        if (bundle == null) {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            l.d(supportFragmentManager, "supportFragmentManager");
            C26907a c26907a = new C26907a(supportFragmentManager);
            l.d(c26907a, "beginTransaction()");
            c26907a.f75332p = true;
            c26907a.m1120m(C3605R.C3606id.fragmentContainer, new C20065a(), null);
            c26907a.mo1127f();
        }
    }

    /* renamed from: pa */
    public final C20024a m35762pa() {
        return (C20024a) this.f10672a.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setTitle(int i) {
        CallAssistantSettingsActivity.super.setTitle(i);
        AbstractC25393a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3543x(i);
        }
    }
}
