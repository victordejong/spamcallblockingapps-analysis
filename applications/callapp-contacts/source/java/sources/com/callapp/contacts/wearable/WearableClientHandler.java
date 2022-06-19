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
import com.google.android.gms.tasks.AbstractC14181d;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14188k;
import com.google.android.gms.wearable.AbstractC14221b;
import com.google.android.gms.wearable.AbstractC14223c;
import com.google.android.gms.wearable.AbstractC14358l;
import com.google.android.gms.wearable.AbstractC14361n;
import com.google.android.gms.wearable.C14363p;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutionException;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/wearable/WearableClientHandler.class */
public class WearableClientHandler implements AudioModeProvider.AudioModeListener, ManagedLifecycle, CallStateListener, AbstractC14181d<AbstractC14223c>, AbstractC14221b.AbstractC14222a, AbstractC14358l.AbstractC14359a {

    /* renamed from: a */
    public byte[] f28530a;

    /* renamed from: b */
    public String f28531b;

    /* renamed from: c */
    public String f28532c;

    /* renamed from: e */
    private AbstractC14221b f28533e;

    /* renamed from: g */
    private Set<AbstractC14361n> f28535g;

    /* renamed from: h */
    private AbstractC14358l f28536h;

    /* renamed from: i */
    private int f28537i;

    /* renamed from: k */
    private boolean f28539k;

    /* renamed from: f */
    private final Object f28534f = new Object();

    /* renamed from: j */
    private CallState f28538j = CallState.PRE_CALL;

    /* renamed from: l */
    private List<String> f28540l = new CopyOnWriteArrayList();

    /* renamed from: m */
    private Runnable f28541m = new Runnable() { // from class: com.callapp.contacts.wearable.WearableClientHandler.1
        @Override // java.lang.Runnable
        public void run() {
            WearableClientHandler.this.m26862a("/callapp/keep_alive", new byte[0]);
            CallAppApplication.get().m31869a(WearableClientHandler.this.f28541m, 5000L);
            CLog.m27611a(WearableClientHandler.class, "server keep alive");
        }
    };

    public WearableClientHandler() {
        CLog.m27611a(WearableClientHandler.class, "Init WearableClientHandler");
        AbstractC14221b m11342b = C14363p.m11342b(CallAppApplication.get());
        this.f28533e = m11342b;
        m11342b.mo11437a(this, "watch_client");
        this.f28533e.mo11436a("watch_client").mo11489a(this);
    }

    /* renamed from: a */
    private void m26865a(int i) {
        m26862a("/callapp/state_path", new byte[]{(byte) i, (byte) this.f28537i});
    }

    /* renamed from: a */
    private static byte[] m26861a(boolean z) {
        return new byte[]{m26858b(z)};
    }

    /* renamed from: b */
    private static byte m26858b(boolean z) {
        return z ? (byte) 1 : (byte) 0;
    }

    /* renamed from: b */
    private void m26860b() {
        this.f28539k = true;
        this.f28541m.run();
    }

    /* renamed from: c */
    private void m26857c() {
        this.f28539k = false;
        CallAppApplication.get().m31861c(this.f28541m);
    }

    /* renamed from: d */
    private void m26855d() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < Prefs.f26311bi.length; i++) {
            sb.append(Prefs.f26311bi[i].get());
            sb.append(",");
        }
        m26862a("/callapp/quick_sms_array", sb.deleteCharAt(sb.length() - 1).toString().getBytes());
    }

    /* renamed from: e */
    private void m26853e() {
        this.f28536h.mo11346a((AbstractC14358l.AbstractC14359a) this);
        AudioModeProvider.get().m28969a(this);
        PhoneStateManager.get().addListener(this);
    }

    /* renamed from: f */
    private void m26852f() {
        AbstractC14358l abstractC14358l = this.f28536h;
        if (abstractC14358l != null) {
            abstractC14358l.mo11344b(this);
            this.f28536h = null;
        }
        AudioModeProvider.get().m28968b(this);
        PhoneStateManager.get().removeListener(this);
    }

    /* renamed from: g */
    private static void m26851g() {
        if (!Prefs.f26364ci.get().booleanValue()) {
            AnalyticsManager.get().m28450a(Constants.WEARABLE, "Showing wearable notification");
            Prefs.f26364ci.set(Boolean.TRUE);
        }
    }

    private String getAllSupportedAudioNames() {
        this.f28540l.clear();
        CallAudioState callAudioState = AudioModeProvider.get().getCallAudioState();
        int[] iArr = AudioModeProvider.f25200c;
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            if ((callAudioState.getSupportedRouteMask() & i2) != 0) {
                this.f28540l.add(i2 != 1 ? i2 != 4 ? i2 != 8 ? "" : CallAppApplication.get().getString(2131886283) : CallAppApplication.get().getString(2131886281) : CallAppApplication.get().getString(2131886282));
            }
        }
        for (BluetoothDevice bluetoothDevice : callAudioState.getSupportedBluetoothDevices()) {
            this.f28540l.add(bluetoothDevice.getName());
        }
        return C$r8$backportedMethods$utility$String$2$joinIterable.join(", ", this.f28540l);
    }

    /* renamed from: h */
    private void m26850h() {
        m26857c();
        m26862a("/callapp/end_overlay_path", new byte[0]);
        this.f28530a = null;
        this.f28531b = null;
        this.f28540l.clear();
        this.f28532c = null;
    }

    /* renamed from: i */
    private void m26849i() {
        if (!PhoneManager.get().m28250a()) {
            m26862a("/callapp/quick_hang_failed", new byte[0]);
        }
    }

    /* renamed from: a */
    public final void m26866a() {
        if (isWearConnected()) {
            m26862a("/callapp/default_dialer_path", m26861a(PhoneManager.get().isDefaultSystemPhoneApp()));
        }
    }

    @Override // com.google.android.gms.wearable.AbstractC14221b.AbstractC14222a, com.google.android.gms.wearable.AbstractC14209a.AbstractC14210a
    /* renamed from: a */
    public final void mo11363a(AbstractC14223c abstractC14223c) {
        synchronized (this.f28534f) {
            this.f28535g = abstractC14223c.getNodes();
        }
        if (!isWearConnected()) {
            m26852f();
            CLog.m27611a(WearableClientHandler.class, "onCapabilityChanged: " + abstractC14223c + " no connections");
            return;
        }
        this.f28536h = C14363p.m11343a(CallAppApplication.get());
        m26851g();
        m26853e();
        m26855d();
        CLog.m27611a(WearableClientHandler.class, "onCapabilityChanged: " + abstractC14223c + " size " + this.f28535g.size());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x009c, code lost:
        if (r0.equals("is_default_dialer") == false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0255, code lost:
        if (r0.equals("/callapp/draw_permission_path") == false) goto L53;
     */
    @Override // com.google.android.gms.wearable.AbstractC14355k.AbstractC14356a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo11348a(com.google.android.gms.wearable.AbstractC14360m r6) {
        /*
            Method dump skipped, instructions count: 1011
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.wearable.WearableClientHandler.mo11348a(com.google.android.gms.wearable.m):void");
    }

    /* renamed from: a */
    public final void m26862a(final String str, final byte[] bArr) {
        if (isWearConnected()) {
            new Task() { // from class: com.callapp.contacts.wearable.WearableClientHandler.2
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    if (WearableClientHandler.this.isWearConnected()) {
                        synchronized (WearableClientHandler.this.f28534f) {
                            for (AbstractC14361n abstractC14361n : WearableClientHandler.this.f28535g) {
                                AbstractC14185h<Integer> mo11345a = WearableClientHandler.this.f28536h.mo11345a(abstractC14361n.getId(), str, bArr);
                                CLog.m27611a(WearableClientHandler.class, "sendMessageToWear node: " + abstractC14361n.getId());
                                try {
                                    try {
                                        Integer num = (Integer) C14188k.m11468a((AbstractC14185h<Object>) mo11345a);
                                        CLog.m27611a(WearableClientHandler.class, "Message sent: " + num + " path: " + str);
                                    } catch (InterruptedException e) {
                                        CLog.m27611a(WearableClientHandler.class, "Interrupt occurred: ".concat(String.valueOf(e)));
                                    }
                                } catch (ExecutionException e2) {
                                    CLog.m27611a(WearableClientHandler.class, "Task failed: ".concat(String.valueOf(e2)));
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
        this.f28533e.mo11438a((AbstractC14221b.AbstractC14222a) this);
        this.f28536h.mo11344b(this);
        AudioModeProvider.get().m28968b(this);
        PhoneStateManager.get().removeListener(this);
        m26850h();
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }

    public boolean isWearConnected() {
        boolean m26068b;
        synchronized (this.f28534f) {
            m26068b = CollectionUtils.m26068b(this.f28535g);
        }
        return m26068b;
    }

    @Override // com.callapp.contacts.inCallService.AudioModeProvider.AudioModeListener
    public void onAudioMode(int i) {
        this.f28537i = i;
        m26865a(this.f28538j.ordinal());
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(CallData callData) {
        CallData lastCall;
        CLog.m27611a(WearableClientHandler.class, "onCallStateChanged " + callData.getState());
        if (this.f28538j != callData.getState()) {
            CallState state = callData.getState();
            this.f28538j = state;
            if (state.isRinging()) {
                AnalyticsManager.get().m28450a(Constants.WEARABLE, this.f28538j.isIncoming() ? "incoming call" : "outgoing call");
                if (StringUtils.m26045b((CharSequence) callData.getNumber().m26101a())) {
                    m26862a("/callapp/start_overlay_path", new byte[0]);
                    if (!this.f28539k) {
                        m26860b();
                    }
                }
            }
            if (this.f28538j.isPostCall()) {
                AnalyticsManager.get().m28450a(Constants.WEARABLE, "call end");
                m26850h();
            } else if (this.f28538j.isDisconnected() && (lastCall = PhoneStateManager.get().getLastCall()) != null) {
                this.f28538j = lastCall.getState();
            }
            m26865a(this.f28538j.ordinal());
        }
    }

    @Override // com.google.android.gms.tasks.AbstractC14181d
    public void onComplete(AbstractC14185h<AbstractC14223c> abstractC14185h) {
        if (abstractC14185h.mo11478b()) {
            mo11363a(abstractC14185h.mo11475d());
        } else {
            CLog.m27611a(WearableClientHandler.class, "Capability request failed to return any results.");
        }
    }

    @Override // com.callapp.contacts.inCallService.AudioModeProvider.AudioModeListener
    public void onMute(boolean z) {
    }
}
