package com.freshchat.consumer.sdk.p063m;

import android.content.DialogInterface;
/* renamed from: com.freshchat.consumer.sdk.m.h */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/m/h.class */
public class DialogInterface$OnClickListenerC1785h implements DialogInterface.OnClickListener {

    /* renamed from: pb */
    public final /* synthetic */ C1782f f4640pb;

    public DialogInterface$OnClickListenerC1785h(C1782f c1782f) {
        this.f4640pb = c1782f;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.f4640pb.m39574hM();
    }
}
