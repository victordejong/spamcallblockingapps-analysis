package com.callapp.contacts.activity.base;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.callapp.contacts.util.CLog;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/TopBarFragmentActivity.class */
public abstract class TopBarFragmentActivity<Frag extends Fragment> extends BaseTopBarActivity {

    /* renamed from: a  reason: collision with root package name */
    private Frag f11166a;

    public Frag getFragment() {
        Frag frag = this.f11166a;
        if (frag != null) {
            return frag;
        }
        Frag frag2 = (Frag) getSupportFragmentManager().a("top_bar_fragment");
        this.f11166a = frag2;
        if (frag2 == null) {
            this.f11166a = getNewFragment();
        }
        return this.f11166a;
    }

    protected abstract Frag getNewFragment();

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            Frag fragment = getFragment();
            this.f11166a = fragment;
            if (fragment != null) {
                fragment.setArguments(getIntent().getExtras());
                getSupportFragmentManager().a().a(2131362473, this.f11166a, "top_bar_fragment").b();
                return;
            }
            CLog.a(TopBarFragmentActivity.class, "Fragment is null");
        }
    }
}
