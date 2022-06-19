package com.sinch.verification.flashcall.verification.interceptor;

import android.telephony.PhoneStateListener;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, m4298d2 = {"Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallStateListener;", "Landroid/telephony/PhoneStateListener;", "listener", "Lcom/sinch/verification/flashcall/verification/interceptor/IncomingCallListener;", "(Lcom/sinch/verification/flashcall/verification/interceptor/IncomingCallListener;)V", "onCallStateChanged", "", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "", "phoneNumber", "", "verification-flashcall_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/flashcall/verification/interceptor/FlashCallStateListener.class */
public final class FlashCallStateListener extends PhoneStateListener {
    private final IncomingCallListener listener;

    public FlashCallStateListener(IncomingCallListener listener) {
        C18524p.m3841c(listener, "listener");
        this.listener = listener;
    }

    @Override // android.telephony.PhoneStateListener
    public final void onCallStateChanged(int i, String str) {
        super.onCallStateChanged(i, str);
        if (i == 1) {
            String str2 = str;
            boolean z = true;
            if (str2 != null) {
                z = str2.length() == 0;
            }
            if (z) {
                return;
            }
            this.listener.onIncomingCallRinging(str);
        }
    }
}
