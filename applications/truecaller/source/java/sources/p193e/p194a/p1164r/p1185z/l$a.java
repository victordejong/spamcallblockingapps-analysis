package p193e.p194a.p1164r.p1185z;

import android.telephony.PhoneStateListener;
import com.truecaller.wizard.verification.CallState;
/* renamed from: e.a.r.z.l$a */
/* loaded from: classes16-dex2jar.jar:e/a/r/z/l$a.class */
public final class l$a extends PhoneStateListener {

    /* renamed from: a */
    public final /* synthetic */ l f54851a;

    public l$a(l lVar) {
        this.f54851a = lVar;
    }

    @Override // android.telephony.PhoneStateListener
    public void onCallStateChanged(int i, String str) {
        if (i == 1) {
            ((s) this.f54851a.SA()).Pj(CallState.RINGING, str, (String) null);
        } else if (i != 2) {
        } else {
            ((s) this.f54851a.SA()).Pj(CallState.OFF_HOOK, str, (String) null);
        }
    }
}
