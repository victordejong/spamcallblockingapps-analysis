package p193e.p194a.p1164r.p1185z;

import android.telephony.PhoneStateListener;
import com.truecaller.wizard.verification.CallState;
/* renamed from: e.a.r.z.l$b */
/* loaded from: classes16-dex2jar.jar:e/a/r/z/l$b.class */
public final class l$b extends PhoneStateListener {

    /* renamed from: a */
    public final /* synthetic */ l f54852a;

    /* renamed from: b */
    public final /* synthetic */ int f54853b;

    public l$b(l lVar, int i) {
        this.f54852a = lVar;
        this.f54853b = i;
    }

    @Override // android.telephony.PhoneStateListener
    public void onCallStateChanged(int i, String str) {
        if (i == 1) {
            this.f54852a.SA().Pj(CallState.RINGING, str, String.valueOf(this.f54853b));
        } else if (i != 2) {
        } else {
            this.f54852a.SA().Pj(CallState.OFF_HOOK, str, String.valueOf(this.f54853b));
        }
    }
}
