package com.facebook.login;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.ActivityC0664d;
import androidx.fragment.app.Fragment;
import com.facebook.common.C1974a;
import com.facebook.login.C2141j;
/* renamed from: com.facebook.login.k */
/* loaded from: classes-dex2jar.jar:com/facebook/login/k.class */
public class C2150k extends Fragment {

    /* renamed from: a */
    private String f6318a;

    /* renamed from: b */
    private C2141j f6319b;

    /* renamed from: c */
    private C2141j.C2145c f6320c;

    /* renamed from: a */
    public void m15137a(C2141j.C2147d c2147d) {
        this.f6320c = null;
        int i = c2147d.f6306a == C2141j.C2147d.EnumC2149a.CANCEL ? 0 : -1;
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.facebook.LoginFragment:Result", c2147d);
        Intent intent = new Intent();
        intent.putExtras(bundle);
        if (m19914z()) {
            m19922r().setResult(i, intent);
            m19922r().finish();
        }
    }

    /* renamed from: b */
    private void m15135b(Activity activity) {
        ComponentName callingActivity = activity.getCallingActivity();
        if (callingActivity == null) {
            return;
        }
        this.f6318a = callingActivity.getPackageName();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: I */
    public void mo875I() {
        super.mo875I();
        if (this.f6318a != null) {
            this.f6319b.m15187a(this.f6320c);
            return;
        }
        Log.e("LoginFragment", "Cannot call LoginFragment with a null calling package. This can occur if the launchMode of the caller is singleInstance.");
        m19922r().finish();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: J */
    public void mo15139J() {
        super.mo15139J();
        View findViewById = m20016G() == null ? null : m20016G().findViewById(C1974a.C1977c.com_facebook_login_fragment_progress_bar);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: K */
    public void mo954K() {
        this.f6319b.m15172f();
        super.mo954K();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(m15134d(), viewGroup, false);
        final View findViewById = inflate.findViewById(C1974a.C1977c.com_facebook_login_fragment_progress_bar);
        this.f6319b.m15189a(new C2141j.AbstractC2143a() { // from class: com.facebook.login.k.2
            @Override // com.facebook.login.C2141j.AbstractC2143a
            /* renamed from: a */
            public void mo15131a() {
                findViewById.setVisibility(0);
            }

            @Override // com.facebook.login.C2141j.AbstractC2143a
            /* renamed from: b */
            public void mo15130b() {
                findViewById.setVisibility(8);
            }
        });
        return inflate;
    }

    /* renamed from: a */
    protected C2141j m15138a() {
        return new C2141j(this);
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo952a(int i, int i2, Intent intent) {
        super.mo952a(i, i2, intent);
        this.f6319b.m15191a(i, i2, intent);
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo3149a(Bundle bundle) {
        Bundle bundleExtra;
        super.mo3149a(bundle);
        if (bundle != null) {
            this.f6319b = (C2141j) bundle.getParcelable("loginClient");
            this.f6319b.m15190a(this);
        } else {
            this.f6319b = m15138a();
        }
        this.f6319b.m15188a(new C2141j.AbstractC2144b() { // from class: com.facebook.login.k.1
            @Override // com.facebook.login.C2141j.AbstractC2144b
            /* renamed from: a */
            public void mo15132a(C2141j.C2147d c2147d) {
                C2150k.this.m15137a(c2147d);
            }
        });
        ActivityC0664d r = m19922r();
        if (r == null) {
            return;
        }
        m15135b(r);
        Intent intent = r.getIntent();
        if (intent == null || (bundleExtra = intent.getBundleExtra("com.facebook.LoginFragment:Request")) == null) {
            return;
        }
        this.f6320c = (C2141j.C2145c) bundleExtra.getParcelable("request");
    }

    /* renamed from: d */
    protected int m15134d() {
        return C1974a.C1978d.com_facebook_login_fragment;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: e */
    public void mo3147e(Bundle bundle) {
        super.mo3147e(bundle);
        bundle.putParcelable("loginClient", this.f6319b);
    }

    /* renamed from: f */
    public C2141j m15133f() {
        return this.f6319b;
    }
}
