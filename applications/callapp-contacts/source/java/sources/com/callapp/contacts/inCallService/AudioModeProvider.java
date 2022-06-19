package com.callapp.contacts.inCallService;

import android.os.Build;
import android.telecom.CallAudioState;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.manager.ProximityManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/inCallService/AudioModeProvider.class */
public class AudioModeProvider {

    /* renamed from: b */
    public CallAudioState f25203b;

    /* renamed from: d */
    private static AudioModeProvider f25201d = new AudioModeProvider();

    /* renamed from: c */
    public static int[] f25200c = {1, 4, 8};

    /* renamed from: e */
    private int f25204e = 1;

    /* renamed from: f */
    private boolean f25205f = false;

    /* renamed from: a */
    public int f25202a = 15;

    /* renamed from: g */
    private final List<AudioModeListener> f25206g = new ArrayList();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/inCallService/AudioModeProvider$AudioModeListener.class */
    public interface AudioModeListener {
        void onAudioMode(int i);

        void onMute(boolean z);
    }

    public AudioModeProvider() {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f25203b = new CallAudioState(false, 1, 15);
        }
    }

    public static AudioModeProvider get() {
        return f25201d;
    }

    /* renamed from: a */
    public final void m28970a(CallAudioState callAudioState, boolean z) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(this.f25206g);
        if (!this.f25203b.equals(callAudioState)) {
            this.f25203b = callAudioState;
            this.f25204e = callAudioState.getRoute();
            Iterator it2 = copyOnWriteArrayList.iterator();
            while (it2.hasNext()) {
                ((AudioModeListener) it2.next()).onAudioMode(this.f25204e);
            }
        }
        if (this.f25205f != z) {
            this.f25205f = z;
            Iterator it3 = copyOnWriteArrayList.iterator();
            while (it3.hasNext()) {
                ((AudioModeListener) it3.next()).onMute(this.f25205f);
            }
        }
        if (PhoneManager.get().getConnectingOrActiveCall() != null) {
            ProximityManager.get().m28509b();
            NotificationManager.get().m28531e();
        }
    }

    /* renamed from: a */
    public final void m28969a(AudioModeListener audioModeListener) {
        if (!this.f25206g.contains(audioModeListener)) {
            this.f25206g.add(audioModeListener);
            audioModeListener.onAudioMode(this.f25204e);
            audioModeListener.onMute(this.f25205f);
        }
    }

    /* renamed from: b */
    public final void m28968b(AudioModeListener audioModeListener) {
        if (this.f25206g.contains(audioModeListener)) {
            this.f25206g.remove(audioModeListener);
        }
    }

    public int getAudioMode() {
        return this.f25204e;
    }

    public CallAudioState getCallAudioState() {
        return this.f25203b;
    }

    public boolean getMute() {
        return this.f25205f;
    }

    public int getSupportedModes() {
        return this.f25202a;
    }

    public boolean isAnyBluetoothConnected() {
        return Build.VERSION.SDK_INT >= 28 && this.f25203b.getSupportedBluetoothDevices() != null && this.f25203b.getSupportedBluetoothDevices().size() > 0;
    }

    public boolean isBluetoothOn() {
        return this.f25204e == 2;
    }

    public boolean isHeadSetOn() {
        return this.f25204e == 4;
    }

    public boolean isMoreThenOneBluetoothDevices() {
        return Build.VERSION.SDK_INT >= 28 && this.f25203b.getSupportedBluetoothDevices() != null && this.f25203b.getSupportedBluetoothDevices().size() > 1;
    }

    public boolean isSpeakerOn() {
        return this.f25204e == 8;
    }
}
