package com.facebook.share.internal;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/facebook/share/internal/DeviceShareDialogFragment$a.class */
public class DeviceShareDialogFragment$a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ DeviceShareDialogFragment f2592a;

    public DeviceShareDialogFragment$a(DeviceShareDialogFragment deviceShareDialogFragment) {
        this.f2592a = deviceShareDialogFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        DeviceShareDialogFragment.j(this.f2592a).dismiss();
    }
}
