package com.facebook.referrals;

import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
/* loaded from: classes3-dex2jar.jar:com/facebook/referrals/b.class */
public class b extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    private a f20154a;

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.f20154a.a(i, i2, intent);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f20154a = new a(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f20154a.a();
    }
}
