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

    /* renamed from: b  reason: collision with root package name */
    public CallAudioState f14423b;

    /* renamed from: d  reason: collision with root package name */
    private static AudioModeProvider f14421d = new AudioModeProvider();

    /* renamed from: c  reason: collision with root package name */
    public static int[] f14420c = {1, 4, 8};
    private int e = 1;
    private boolean f = false;

    /* renamed from: a  reason: collision with root package name */
    public int f14422a = 15;
    private final List<AudioModeListener> g = new ArrayList();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/inCallService/AudioModeProvider$AudioModeListener.class */
    public interface AudioModeListener {
        void onAudioMode(int i);

        void onMute(boolean z);
    }

    public AudioModeProvider() {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f14423b = new CallAudioState(false, 1, 15);
        }
    }

    public static AudioModeProvider get() {
        return f14421d;
    }

    public final void a(CallAudioState callAudioState, boolean z) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(this.g);
        if (!this.f14423b.equals(callAudioState)) {
            this.f14423b = callAudioState;
            this.e = callAudioState.getRoute();
            Iterator it2 = copyOnWriteArrayList.iterator();
            while (it2.hasNext()) {
                ((AudioModeListener) it2.next()).onAudioMode(this.e);
            }
        }
        if (this.f != z) {
            this.f = z;
            Iterator it3 = copyOnWriteArrayList.iterator();
            while (it3.hasNext()) {
                ((AudioModeListener) it3.next()).onMute(this.f);
            }
        }
        if (PhoneManager.get().getConnectingOrActiveCall() != null) {
            ProximityManager.get().b();
            NotificationManager.get().e();
        }
    }

    public final void a(AudioModeListener audioModeListener) {
        if (!this.g.contains(audioModeListener)) {
            this.g.add(audioModeListener);
            audioModeListener.onAudioMode(this.e);
            audioModeListener.onMute(this.f);
        }
    }

    public final void b(AudioModeListener audioModeListener) {
        if (this.g.contains(audioModeListener)) {
            this.g.remove(audioModeListener);
        }
    }

    public int getAudioMode() {
        return this.e;
    }

    public CallAudioState getCallAudioState() {
        return this.f14423b;
    }

    public boolean getMute() {
        return this.f;
    }

    public int getSupportedModes() {
        return this.f14422a;
    }

    public boolean isAnyBluetoothConnected() {
        return Build.VERSION.SDK_INT >= 28 && this.f14423b.getSupportedBluetoothDevices() != null && this.f14423b.getSupportedBluetoothDevices().size() > 0;
    }

    public boolean isBluetoothOn() {
        return this.e == 2;
    }

    public boolean isHeadSetOn() {
        return this.e == 4;
    }

    public boolean isMoreThenOneBluetoothDevices() {
        return Build.VERSION.SDK_INT >= 28 && this.f14423b.getSupportedBluetoothDevices() != null && this.f14423b.getSupportedBluetoothDevices().size() > 1;
    }

    public boolean isSpeakerOn() {
        return this.e == 8;
    }
}
