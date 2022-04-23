package com.privacystar.core.p011ui.debug.network;

import android.content.DialogInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.privacystar.core.ui.debug.network.CustNetworkRequest$$Lambda$1 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/network/CustNetworkRequest$$Lambda$1.class */
public final /* synthetic */ class CustNetworkRequest$$Lambda$1 implements DialogInterface.OnClickListener {
    static final DialogInterface.OnClickListener $instance = new CustNetworkRequest$$Lambda$1();

    private CustNetworkRequest$$Lambda$1() {
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
    }
}
