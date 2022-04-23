package com.callapp.contacts.wearable;

import android.bluetooth.BluetoothDevice;
import android.telecom.CallAudioState;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.inCallService.AudioModeProvider;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.call.CallState;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.tasks.d;
import com.google.android.gms.tasks.h;
import com.google.android.gms.tasks.k;
import com.google.android.gms.wearable.b;
import com.google.android.gms.wearable.c;
import com.google.android.gms.wearable.l;
import com.google.android.gms.wearable.n;
import com.google.android.gms.wearable.p;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutionException;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/wearable/WearableClientHandler.class */
public class WearableClientHandler implements AudioModeProvider.AudioModeListener, ManagedLifecycle, CallStateListener, d<c>, b.a, l.a {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f16387a;

    /* renamed from: b  reason: collision with root package name */
    public String f16388b;

    /* renamed from: c  reason: collision with root package name */
    public String f16389c;
    private b e;
    private Set<n> g;
    private l h;
    private int i;
    private boolean k;
    private final Object f = new Object();
    private CallState j = CallState.PRE_CALL;
    private List<String> l = new CopyOnWriteArrayList();
    private Runnable m = new Runnable() { // from class: com.callapp.contacts.wearable.WearableClientHandler.1
        @Override // java.lang.Runnable
        public void run() {
            WearableClientHandler.this.a("/callapp/keep_alive", new byte[0]);
            CallAppApplication.get().a(WearableClientHandler.this.m, 5000L);
            CLog.a(WearableClientHandler.class, "server keep alive");
        }
    };

    public WearableClientHandler() {
        CLog.a(WearableClientHandler.class, "Init WearableClientHandler");
        b b2 = p.b(CallAppApplication.get());
        this.e = b2;
        b2.a(this, "watch_client");
        this.e.a("watch_client").a(this);
    }

    private void a(int i) {
        a("/callapp/state_path", new byte[]{(byte) i, (byte) this.i});
    }

    private static byte[] a(boolean z) {
        return new byte[]{b(z)};
    }

    private static byte b(boolean z) {
        return z ? (byte) 1 : (byte) 0;
    }

    private void b() {
        this.k = true;
        this.m.run();
    }

    private void c() {
        this.k = false;
        CallAppApplication.get().c(this.m);
    }

    private void d() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < Prefs.bi.length; i++) {
            sb.append(Prefs.bi[i].get());
            sb.append(",");
        }
        a("/callapp/quick_sms_array", sb.deleteCharAt(sb.length() - 1).toString().getBytes());
    }

    private void e() {
        this.h.a((l.a) this);
        AudioModeProvider.get().a(this);
        PhoneStateManager.get().addListener(this);
    }

    private void f() {
        l lVar = this.h;
        if (lVar != null) {
            lVar.b(this);
            this.h = null;
        }
        AudioModeProvider.get().b(this);
        PhoneStateManager.get().removeListener(this);
    }

    private static void g() {
        if (!Prefs.ci.get().booleanValue()) {
            AnalyticsManager.get().a(Constants.WEARABLE, "Showing wearable notification");
            Prefs.ci.set(Boolean.TRUE);
        }
    }

    private String getAllSupportedAudioNames() {
        this.l.clear();
        CallAudioState callAudioState = AudioModeProvider.get().getCallAudioState();
        int[] iArr = AudioModeProvider.f14420c;
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            if ((callAudioState.getSupportedRouteMask() & i2) != 0) {
                this.l.add(i2 != 1 ? i2 != 4 ? i2 != 8 ? "" : CallAppApplication.get().getString(2131886283) : CallAppApplication.get().getString(2131886281) : CallAppApplication.get().getString(2131886282));
            }
        }
        for (BluetoothDevice bluetoothDevice : callAudioState.getSupportedBluetoothDevices()) {
            this.l.add(bluetoothDevice.getName());
        }
        return C$r8$backportedMethods$utility$String$2$joinIterable.join(", ", this.l);
    }

    private void h() {
        c();
        a("/callapp/end_overlay_path", new byte[0]);
        this.f16387a = null;
        this.f16388b = null;
        this.l.clear();
        this.f16389c = null;
    }

    private void i() {
        if (!PhoneManager.get().a()) {
            a("/callapp/quick_hang_failed", new byte[0]);
        }
    }

    public final void a() {
        if (isWearConnected()) {
            a("/callapp/default_dialer_path", a(PhoneManager.get().isDefaultSystemPhoneApp()));
        }
    }

    @Override // com.google.android.gms.wearable.b.a, com.google.android.gms.wearable.a.AbstractC0483a
    public final void a(c cVar) {
        synchronized (this.f) {
            this.g = cVar.getNodes();
        }
        if (isWearConnected()) {
            this.h = p.a(CallAppApplication.get());
            g();
            e();
            d();
            CLog.a(WearableClientHandler.class, "onCapabilityChanged: " + cVar + " size " + this.g.size());
            return;
        }
        f();
        CLog.a(WearableClientHandler.class, "onCapabilityChanged: " + cVar + " no connections");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x009c, code lost:
        if (r0.equals("is_default_dialer") == false) goto L_0x0078;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0255, code lost:
        if (r0.equals("/callapp/draw_permission_path") == false) goto L_0x0248;
     */
    @Override // com.google.android.gms.wearable.k.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.google.android.gms.wearable.m r6) {
        /*
            Method dump skipped, instructions count: 1011
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.wearable.WearableClientHandler.a(com.google.android.gms.wearable.m):void");
    }

    public final void a(final String str, final byte[] bArr) {
        if (isWearConnected()) {
            new Task() { // from class: com.callapp.contacts.wearable.WearableClientHandler.2
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    if (WearableClientHandler.this.isWearConnected()) {
                        synchronized (WearableClientHandler.this.f) {
                            for (n nVar : WearableClientHandler.this.g) {
                                h<Integer> a2 = WearableClientHandler.this.h.a(nVar.getId(), str, bArr);
                                CLog.a(WearableClientHandler.class, "sendMessageToWear node: " + nVar.getId());
                                try {
                                    try {
                                        Integer num = (Integer) k.a((h<Object>) a2);
                                        CLog.a(WearableClientHandler.class, "Message sent: " + num + " path: " + str);
                                    } catch (InterruptedException e) {
                                        CLog.a(WearableClientHandler.class, "Interrupt occurred: ".concat(String.valueOf(e)));
                                    }
                                } catch (ExecutionException e2) {
                                    CLog.a(WearableClientHandler.class, "Task failed: ".concat(String.valueOf(e2)));
                                }
                            }
                        }
                    }
                }
            }.execute();
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        this.e.a((b.a) this);
        this.h.b(this);
        AudioModeProvider.get().b(this);
        PhoneStateManager.get().removeListener(this);
        h();
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }

    public boolean isWearConnected() {
        boolean b2;
        synchronized (this.f) {
            b2 = CollectionUtils.b(this.g);
        }
        return b2;
    }

    @Override // com.callapp.contacts.inCallService.AudioModeProvider.AudioModeListener
    public void onAudioMode(int i) {
        this.i = i;
        a(this.j.ordinal());
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(CallData callData) {
        CallData lastCall;
        CLog.a(WearableClientHandler.class, "onCallStateChanged " + callData.getState());
        if (this.j != callData.getState()) {
            CallState state = callData.getState();
            this.j = state;
            if (state.isRinging()) {
                AnalyticsManager.get().a(Constants.WEARABLE, this.j.isIncoming() ? "incoming call" : "outgoing call");
                if (StringUtils.b((CharSequence) callData.getNumber().a())) {
                    a("/callapp/start_overlay_path", new byte[0]);
                    if (!this.k) {
                        b();
                    }
                }
            }
            if (this.j.isPostCall()) {
                AnalyticsManager.get().a(Constants.WEARABLE, "call end");
                h();
            } else if (this.j.isDisconnected() && (lastCall = PhoneStateManager.get().getLastCall()) != null) {
                this.j = lastCall.getState();
            }
            a(this.j.ordinal());
        }
    }

    @Override // com.google.android.gms.tasks.d
    public void onComplete(h<c> hVar) {
        if (hVar.b()) {
            a(hVar.d());
        } else {
            CLog.a(WearableClientHandler.class, "Capability request failed to return any results.");
        }
    }

    @Override // com.callapp.contacts.inCallService.AudioModeProvider.AudioModeListener
    public void onMute(boolean z) {
    }
}
