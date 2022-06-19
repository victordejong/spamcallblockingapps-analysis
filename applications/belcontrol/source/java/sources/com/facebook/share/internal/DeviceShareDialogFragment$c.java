package com.facebook.share.internal;
/* loaded from: classes-dex2jar.jar:com/facebook/share/internal/DeviceShareDialogFragment$c.class */
public class DeviceShareDialogFragment$c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ DeviceShareDialogFragment f2593a;

    public DeviceShareDialogFragment$c(DeviceShareDialogFragment deviceShareDialogFragment) {
        this.f2593a = deviceShareDialogFragment;
    }

    @Override // java.lang.Runnable
    public void run() {
        DeviceShareDialogFragment.j(this.f2593a).dismiss();
    }
}
