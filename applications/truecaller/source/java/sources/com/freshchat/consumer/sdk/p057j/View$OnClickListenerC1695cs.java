package com.freshchat.consumer.sdk.p057j;

import android.net.Uri;
import android.view.View;
import com.freshchat.consumer.sdk.util.DeepLinkUtils;
/* renamed from: com.freshchat.consumer.sdk.j.cs */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/cs.class */
public class View$OnClickListenerC1695cs implements View.OnClickListener {

    /* renamed from: iC */
    public final /* synthetic */ C1615ak f4487iC;

    /* renamed from: iD */
    public final /* synthetic */ Uri f4488iD;

    public View$OnClickListenerC1695cs(C1615ak c1615ak, Uri uri) {
        this.f4487iC = c1615ak;
        this.f4488iD = uri;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        DeepLinkUtils.m39281b(this.f4487iC.context, this.f4488iD);
    }
}
