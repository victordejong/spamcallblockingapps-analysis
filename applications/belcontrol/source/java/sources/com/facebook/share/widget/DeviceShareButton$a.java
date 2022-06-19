package com.facebook.share.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/facebook/share/widget/DeviceShareButton$a.class */
public class DeviceShareButton$a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ DeviceShareButton f2653a;

    public DeviceShareButton$a(DeviceShareButton deviceShareButton) {
        this.f2653a = deviceShareButton;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        DeviceShareButton.n(this.f2653a, view);
        DeviceShareButton.o(this.f2653a).i(this.f2653a.getShareContent());
    }
}
