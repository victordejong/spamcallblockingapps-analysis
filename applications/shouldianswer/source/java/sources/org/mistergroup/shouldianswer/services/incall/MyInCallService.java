package org.mistergroup.shouldianswer.services.incall;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.telecom.Call;
import android.telecom.CallAudioState;
import android.telecom.InCallService;
import java.lang.ref.WeakReference;
import java.util.Date;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.utils.C3104j;
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/incall/MyInCallService.class */
public final class MyInCallService extends InCallService {

    /* renamed from: a */
    private Date f7261a;

    public MyInCallService() {
        C3104j.m157a(C3104j.f9124a, "MyInCallService()", (String) null, 2, (Object) null);
        C2488c.f7274a.m892b(new WeakReference<>(this));
    }

    /* renamed from: a */
    public final Date m923a() {
        return this.f7261a;
    }

    /* renamed from: a */
    public final void m922a(Date date) {
        this.f7261a = date;
    }

    @Override // android.telecom.InCallService, android.app.Service
    public IBinder onBind(Intent intent) {
        C1694h.m3117b(intent, "intent");
        C3104j.m157a(C3104j.f9124a, "MyInCallService.onBind", (String) null, 2, (Object) null);
        C2488c.f7274a.m883e();
        return super.onBind(intent);
    }

    @Override // android.telecom.InCallService
    public void onBringToForeground(boolean z) {
        super.onBringToForeground(z);
    }

    @Override // android.telecom.InCallService
    public void onCallAdded(Call call) {
        C1694h.m3117b(call, "call");
        C2488c.f7274a.m907a(call);
    }

    @Override // android.telecom.InCallService
    public void onCallAudioStateChanged(CallAudioState callAudioState) {
        C1694h.m3117b(callAudioState, "audioState");
        super.onCallAudioStateChanged(callAudioState);
    }

    @Override // android.telecom.InCallService
    public void onCallRemoved(Call call) {
        C1694h.m3117b(call, "call");
        C2488c.f7274a.m893b(call);
        super.onCallRemoved(call);
    }

    @Override // android.telecom.InCallService
    public void onCanAddCallChanged(boolean z) {
        super.onCanAddCallChanged(z);
    }

    @Override // android.telecom.InCallService
    public void onConnectionEvent(Call call, String str, Bundle bundle) {
        C1694h.m3117b(call, "call");
        C1694h.m3117b(str, "event");
        C1694h.m3117b(bundle, "extras");
        super.onConnectionEvent(call, str, bundle);
    }

    @Override // android.telecom.InCallService
    public void onSilenceRinger() {
        super.onSilenceRinger();
    }

    @Override // android.telecom.InCallService, android.app.Service
    public boolean onUnbind(Intent intent) {
        C1694h.m3117b(intent, "intent");
        C3104j.m157a(C3104j.f9124a, "MyInCallService.onUnbind", (String) null, 2, (Object) null);
        C2488c.f7274a.m881f();
        return super.onUnbind(intent);
    }
}
