package com.callapp.contacts.activity.base;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.callapp.contacts.util.CLog;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/TopBarFragmentActivity.class */
public abstract class TopBarFragmentActivity<Frag extends Fragment> extends BaseTopBarActivity {

    /* renamed from: a */
    private Frag f20379a;

    public Frag getFragment() {
        Frag frag = this.f20379a;
        if (frag != null) {
            return frag;
        }
        Frag frag2 = (Frag) getSupportFragmentManager().m43740a("top_bar_fragment");
        this.f20379a = frag2;
        if (frag2 == null) {
            this.f20379a = getNewFragment();
        }
        return this.f20379a;
    }

    protected abstract Frag getNewFragment();

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            Frag fragment = getFragment();
            this.f20379a = fragment;
            if (fragment == null) {
                CLog.m27611a(TopBarFragmentActivity.class, "Fragment is null");
                return;
            }
            fragment.setArguments(getIntent().getExtras());
            getSupportFragmentManager().m43765a().m43541a(2131362473, this.f20379a, "top_bar_fragment").mo43536b();
        }
    }
}
