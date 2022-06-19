package com.facebook.referrals;

import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
/* renamed from: com.facebook.referrals.b */
/* loaded from: classes3-dex2jar.jar:com/facebook/referrals/b.class */
public class C10432b extends Fragment {

    /* renamed from: a */
    private C10431a f34125a;

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.f34125a.m22801a(i, i2, intent);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f34125a = new C10431a(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f34125a.m22802a();
    }
}
