package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.view.View;
import com.kedlin.cca.core.service.BackgroundWorker;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.MoreBackupFragment$1 */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$1.class */
public class MoreBackupFragment$1 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ MoreBackupFragment f3060a;

    public MoreBackupFragment$1(MoreBackupFragment moreBackupFragment) {
        this.f3060a = moreBackupFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        bc1.m5674d();
        BackgroundWorker.m4370f("get_device_list", this.f3060a, new 1(this), new Object[0]);
    }
}
