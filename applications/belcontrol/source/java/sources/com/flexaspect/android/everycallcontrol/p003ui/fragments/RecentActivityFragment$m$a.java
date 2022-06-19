package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.flexaspect.android.everycallcontrol.ui.fragments.RecentActivityFragment;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.RecentActivityFragment$m$a */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$m$a.class */
public class RecentActivityFragment$m$a implements View.OnClickListener {

    /* renamed from: a */
    public Uri f3092a;

    /* renamed from: b */
    public Context f3093b;

    public RecentActivityFragment$m$a(RecentActivityFragment.m mVar, Context context) {
        this.f3093b = context;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f3092a == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW", this.f3092a);
        if (intent.resolveActivity(this.f3093b.getPackageManager()) == null) {
            return;
        }
        this.f3093b.startActivity(intent);
    }
}
