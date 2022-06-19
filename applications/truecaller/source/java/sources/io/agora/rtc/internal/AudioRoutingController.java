package io.agora.rtc.internal;

import android.bluetooth.BluetoothA2dp;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothHeadset;
import android.bluetooth.BluetoothProfile;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.media.MediaRouter;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.text.TextUtils;
import com.tenor.android.core.constant.StringConstant;
import io.agora.rtc.Constants;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/internal/AudioRoutingController.class */
public class AudioRoutingController {
    private static final int BLUETOOTH = 5;
    private static final int BLUETOOTH_RESET_BT_DELAY = 3000;
    private static final int BLUETOOTH_SCO_TIMEOUT_MS = 3000;
    private static final int BT_SCO_STATE_CONNECTED = 1;
    private static final int BT_SCO_STATE_CONNECTING = 0;
    private static final int BT_SCO_STATE_DISCONNECTED = 3;
    private static final int BT_SCO_STATE_DISCONNECTING = 2;
    public static final int CMD_DEFAULT_DEVICE = 10;
    public static final int CMD_FORCE_TO_SPEAKER = 11;
    public static final int CMD_MUTE_VIDEO_ALL = 14;
    public static final int CMD_MUTE_VIDEO_LOCAL = 12;
    public static final int CMD_MUTE_VIDEO_REMOTES = 13;
    private static final int EARPIECE = 1;
    public static final int EVT_AUDIO_ADM_ROUTING_UPDATE = 114;
    private static final int EVT_BT_HEADSET_A2DP = 2;
    private static final int EVT_BT_HEADSET_HFP = 4;
    private static final int EVT_BT_SCO = 3;
    private static final int EVT_HEADSET = 1;
    public static final int EVT_PHONE_STATE_CHANGED = 22;
    public static final int EVT_USING_COMM_PARAMETERS = 112;
    public static final int EVT_USING_NORM_PARAMETERS = 113;
    private static final int HEADSET = 0;
    private static final int MAX_SCO_CONNECT_ATTEMPS = 3;
    public static final int OFF = 0;

    /* renamed from: ON */
    public static final int f70737ON = 1;
    private static final int SPEAKER = 3;
    private static final int STOP = 4;
    private static final String TAG = "AudioRoute";
    public static final int UNSET = -1;

    /* renamed from: am */
    public AudioManager f70738am;
    private AudioDeviceList mAvailDevices;
    private BluetoothAdapter mBTAdapter;
    private BluetoothHeadset mBTHeadset;
    private BluetoothProfile.ServiceListener mBTHeadsetListener;
    private BTHeadsetBroadcastReceiver mBTHeadsetReceiver;
    private BluetoothA2dp mBtA2dp;
    private WeakReference<Context> mContext;
    private EventHandler mEventHandler;
    private HeadsetBroadcastReceiver mHeadsetReceiver;
    private WeakReference<AudioRoutingListener> mListener;
    private int mScoConnectionAttemps;
    private AudioRouteState mState;
    private StopState mStopState = null;
    private SpeakerState mSpeakerState = null;
    private EarpieceState mEarpieceState = null;
    private BTState mBTState = null;
    private HeadsetState mHeadsetState = null;
    private int mTargetRoute = -1;
    private boolean mIsBTHeadsetPlugged = false;
    private boolean mVideoDisabled = true;
    private boolean mMuteLocal = false;
    private boolean mMuteRemotes = false;
    private boolean mPhoneInCall = false;
    private boolean mHfpEnable = false;
    private boolean mA2dpEnable = false;
    private int mStreamType = 0;
    private int mChannelProfile = 1;
    private int mBtScoState = 3;
    private int dynamic_timeout = 0;
    private int mLastNotifiedRouting = -1;
    private final Runnable TryConnectBtScoRunnable = new Runnable() { // from class: io.agora.rtc.internal.AudioRoutingController.1
        @Override // java.lang.Runnable
        public void run() {
            AudioRoutingController.this.tryToConnectBtSco();
        }
    };
    private final Runnable TrytoResetBTRunnable = new Runnable() { // from class: io.agora.rtc.internal.AudioRoutingController.2
        @Override // java.lang.Runnable
        public void run() {
            if (AudioRoutingController.this.f70738am.isBluetoothA2dpOn() || AudioRoutingController.this.f70738am.isBluetoothScoOn()) {
                return;
            }
            Logging.m3711d(AudioRoutingController.TAG, "bluetooth routing start failed a2dp:false sco:false");
            if (AudioRoutingController.this.mListener.get() == null) {
                return;
            }
            ((AudioRoutingListener) AudioRoutingController.this.mListener.get()).onAudioRoutingError(Constants.ERR_AUDIO_BT_NO_ROUTE);
        }
    };

    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/internal/AudioRoutingController$AudioDeviceList.class */
    public static class AudioDeviceList {
        public int mBTRoute;
        public int mDefaultRoute;
        public int mForcedRoute;
        public int mHeadSetRoute;
    }

    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/internal/AudioRoutingController$AudioRouteState.class */
    public interface AudioRouteState {
        void btPlugInProcess(int i, int i2);

        void btPlugOutProcess(int i, int i2);

        void btScoConnectProcess(int i, int i2);

        void btScoDisConnectProcess(int i, int i2);

        void commStreamEvtProcess(int i, int i2);

        void forceEarpieceProcess(int i, int i2);

        void forceSpkProcess(int i, int i2);

        void headSetPlugInProcess(int i, int i2);

        void headSetPlugOutProcess(int i, int i2);

        void musicStreamEvtProcess(int i, int i2);

        void phoneChangeEvtProcess(int i, int i2);

        void switchtoTargetRoute();
    }

    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver.class */
    public class BTHeadsetBroadcastReceiver extends BroadcastReceiver {
        private boolean isRegistered;

        private BTHeadsetBroadcastReceiver() {
            AudioRoutingController.this = r4;
            this.isRegistered = false;
        }

        public boolean getRegistered() {
            return this.isRegistered;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            try {
                if (action.equals("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED")) {
                    int intExtra = intent.getIntExtra("android.bluetooth.profile.extra.STATE", -99);
                    int intExtra2 = intent.getIntExtra("android.bluetooth.profile.extra.PREVIOUS_STATE", -99);
                    Logging.m3711d(AudioRoutingController.TAG, "Receive Event ACTION_CONNECTION_STATE_CHANGED prev " + intExtra2 + ", " + intExtra);
                    BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                    if (intExtra == 0) {
                        Logging.m3706i(AudioRoutingController.TAG, "Receive Event Bluetooth device " + bluetoothDevice + " disconnected");
                        AudioRoutingController.this.sendEvent(4, 0);
                    } else if (intExtra != 2) {
                        Logging.m3706i(AudioRoutingController.TAG, "Receive hfp Event Bluetooth device " + bluetoothDevice + " unknown event, state=" + intExtra);
                    } else {
                        BluetoothDevice bluetoothDevice2 = AudioRoutingController.this.mBTHeadset.getConnectedDevices().get(0);
                        Logging.m3706i(AudioRoutingController.TAG, "Receive Event Bluetooth device " + bluetoothDevice2.getName() + " connected");
                        AudioRoutingController.this.sendEvent(4, 1);
                    }
                } else if (action.equals("android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED")) {
                    int intExtra3 = intent.getIntExtra("android.bluetooth.profile.extra.STATE", -99);
                    int intExtra4 = intent.getIntExtra("android.bluetooth.profile.extra.PREVIOUS_STATE", -99);
                    Logging.m3711d(AudioRoutingController.TAG, "Receive Event a2dp ACTION_CONNECTION_STATE_CHANGED prev " + intExtra4 + ", " + intExtra3);
                    BluetoothDevice bluetoothDevice3 = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                    if (intExtra3 == 0) {
                        AudioRoutingController.this.sendEvent(2, 0);
                    } else if (intExtra3 != 2) {
                        Logging.m3706i(AudioRoutingController.TAG, "Receive a2dp Event Bluetooth device " + bluetoothDevice3 + " unknown event, state=" + intExtra3);
                    } else {
                        AudioRoutingController.this.sendEvent(2, 1);
                    }
                } else if (action.equals("android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED")) {
                    int intExtra5 = intent.getIntExtra("android.bluetooth.profile.extra.STATE", -99);
                    int intExtra6 = intent.getIntExtra("android.bluetooth.profile.extra.PREVIOUS_STATE", -99);
                    Logging.m3711d(AudioRoutingController.TAG, "Receive Event ACTION_AUDIO_STATE_CHANGED prev " + intExtra6 + ", " + intExtra5);
                    BluetoothDevice bluetoothDevice4 = AudioRoutingController.this.mBTHeadset.getConnectedDevices().get(0);
                    switch (intExtra5) {
                        case 10:
                            Logging.m3706i(AudioRoutingController.TAG, "Receive Event Bluetooth audio device " + bluetoothDevice4.getName() + " disconnected");
                            break;
                        case 11:
                            Logging.m3706i(AudioRoutingController.TAG, "Receive Event Bluetooth audio device " + bluetoothDevice4.getName() + " connecting");
                            break;
                        case 12:
                            Logging.m3706i(AudioRoutingController.TAG, "Receive Event Bluetooth audio device " + bluetoothDevice4.getName() + " connected");
                            break;
                        default:
                            Logging.m3706i(AudioRoutingController.TAG, "Receive Event Bluetooth audio device " + bluetoothDevice4.getName() + " event, state=" + intExtra5);
                            break;
                    }
                } else if (action.equals("android.media.ACTION_SCO_AUDIO_STATE_UPDATED")) {
                    int intExtra7 = intent.getIntExtra("android.media.extra.SCO_AUDIO_STATE", -99);
                    int intExtra8 = intent.getIntExtra("android.media.extra.SCO_AUDIO_PREVIOUS_STATE", -99);
                    Logging.m3711d(AudioRoutingController.TAG, "Receive Event ACTION_SCO_AUDIO_STATE_UPDATED prev " + intExtra8 + ", " + intExtra7);
                    if (intExtra7 == -1) {
                        Logging.m3706i(AudioRoutingController.TAG, "Receive Event Bluetooth SCO action error");
                    } else if (intExtra7 == 0) {
                        Logging.m3706i(AudioRoutingController.TAG, "Receive Event Bluetooth SCO audio disabled");
                        AudioRoutingController.this.mBtScoState = 3;
                        AudioRoutingController.this.sendEvent(3, 0);
                    } else if (intExtra7 != 1) {
                        if (intExtra7 != 2) {
                            Logging.m3706i(AudioRoutingController.TAG, "Receive Event Bluetooth SCO unknown state=" + intExtra7);
                        } else {
                            Logging.m3706i(AudioRoutingController.TAG, "Receive Event SCO audio enabling");
                        }
                    } else if (AudioRoutingController.this.mBTHeadset != null) {
                        Logging.m3706i(AudioRoutingController.TAG, "Receive Event Bluetooth SCO audio enable");
                        AudioRoutingController.this.mBtScoState = 1;
                        AudioRoutingController.this.sendEvent(3, 1);
                    } else {
                        Logging.m3706i(AudioRoutingController.TAG, "Receive Event SCO device connected,but BT profile not connectted Miss this event");
                    }
                } else if (action.equals("android.bluetooth.adapter.action.STATE_CHANGED")) {
                    int intExtra9 = intent.getIntExtra("android.bluetooth.adapter.extra.STATE", -99);
                    int intExtra10 = intent.getIntExtra("android.bluetooth.adapter.extra.PREVIOUS_STATE", -99);
                    Logging.m3711d(AudioRoutingController.TAG, "Receive Event BluetoothAdapter.ACTION_STATE_CHANGED prev " + intExtra10 + ", " + intExtra9);
                    if (intExtra9 == 10) {
                        AudioRoutingController.this.sendEvent(4, 0);
                        AudioRoutingController.this.sendEvent(2, 0);
                    }
                }
            } catch (Exception e) {
                Logging.m3708e(AudioRoutingController.TAG, "BT broadcast receiver onReceive fail ", e);
            }
        }

        public void setRegistered(boolean z) {
            this.isRegistered = z;
        }
    }

    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/internal/AudioRoutingController$EventHandler.class */
    public class EventHandler extends Handler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EventHandler(Looper looper) {
            super(looper);
            AudioRoutingController.this = r4;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            int i2 = message.arg1;
            boolean z = true;
            if (i == 1) {
                if (i2 >= 0) {
                    AudioRoutingController.this.mState.headSetPlugInProcess(i, i2);
                    return;
                } else {
                    AudioRoutingController.this.mState.headSetPlugOutProcess(i, i2);
                    return;
                }
            }
            if (i != 2) {
                if (i == 3) {
                    if (i2 == 1) {
                        AudioRoutingController.this.mState.btScoConnectProcess(i, i2);
                        return;
                    } else {
                        AudioRoutingController.this.mState.btScoDisConnectProcess(i, i2);
                        return;
                    }
                } else if (i != 4) {
                    if (i == 22) {
                        AudioRoutingController.this.mState.phoneChangeEvtProcess(i, i2);
                        return;
                    }
                    switch (i) {
                        case 11:
                            if (i2 == 0) {
                                AudioRoutingController.this.mState.forceEarpieceProcess(i, i2);
                                return;
                            } else {
                                AudioRoutingController.this.mState.forceSpkProcess(i, i2);
                                return;
                            }
                        case 12:
                            AudioRoutingController.this.mMuteLocal = i2 > 0;
                            return;
                        case 13:
                            AudioRoutingController.this.mMuteRemotes = i2 > 0;
                            return;
                        case 14:
                            AudioRoutingController audioRoutingController = AudioRoutingController.this;
                            if (i2 <= 0) {
                                z = false;
                            }
                            audioRoutingController.mVideoDisabled = z;
                            return;
                        default:
                            switch (i) {
                                case 112:
                                    AudioRoutingController.this.mState.commStreamEvtProcess(i, i2);
                                    return;
                                case 113:
                                    AudioRoutingController.this.mState.musicStreamEvtProcess(i, i2);
                                    return;
                                case 114:
                                    AudioRoutingController audioRoutingController2 = AudioRoutingController.this;
                                    int routeToState = audioRoutingController2.routeToState(audioRoutingController2.mTargetRoute);
                                    if (i2 == AudioRoutingController.this.mTargetRoute || routeToState == -1) {
                                        return;
                                    }
                                    AudioRoutingController.this.mTargetRoute = i2;
                                    AudioRoutingController.this.changeState(routeToState);
                                    return;
                                default:
                                    return;
                            }
                    }
                }
            }
            if (i2 == 1) {
                AudioRoutingController.this.mState.btPlugInProcess(i, i2);
            } else {
                AudioRoutingController.this.mState.btPlugOutProcess(i, i2);
            }
        }
    }

    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver.class */
    public class HeadsetBroadcastReceiver extends BroadcastReceiver {
        private boolean isRegistered;

        private HeadsetBroadcastReceiver() {
            AudioRoutingController.this = r4;
            this.isRegistered = false;
        }

        public boolean getRegistered() {
            return this.isRegistered;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!intent.getAction().equalsIgnoreCase("android.intent.action.HEADSET_PLUG") || !intent.hasExtra("state")) {
                return;
            }
            int intExtra = intent.getIntExtra("state", -1);
            if (intExtra == 1) {
                if (intent.getIntExtra("microphone", -1) == 1) {
                    Logging.m3706i(AudioRoutingController.TAG, "Receive Event Headset w/ mic connected");
                    AudioRoutingController.this.sendEvent(1, 0);
                    return;
                }
                Logging.m3706i(AudioRoutingController.TAG, "Receive Event Headset w/o mic connected");
                AudioRoutingController.this.sendEvent(1, 2);
            } else if (intExtra == 0) {
                Logging.m3706i(AudioRoutingController.TAG, "Receive Event Headset disconnected");
                AudioRoutingController.this.sendEvent(1, -1);
            } else {
                Logging.m3706i(AudioRoutingController.TAG, "Receive Event Headset unknown event detected, state=" + intExtra);
            }
        }

        public void setRegistered(boolean z) {
            this.isRegistered = z;
        }
    }

    public AudioRoutingController(Context context, AudioRoutingListener audioRoutingListener) {
        this.f70738am = null;
        this.mContext = new WeakReference<>(context);
        this.mListener = new WeakReference<>(audioRoutingListener);
        this.f70738am = getAudioManager();
    }

    private String btStateAsString(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? C22128a.m8611i2("Unknown ", i) : "SCO_DISCONNECTED" : "SCO_DISCONNECTING" : "SCO_CONNECTED" : "SCO_CONNECTING";
    }

    public void cancelTimer() {
        Logging.m3711d(TAG, "cancel bluetooth timer");
        this.dynamic_timeout = 0;
        this.mScoConnectionAttemps = 0;
        this.mEventHandler.removeCallbacks(this.TryConnectBtScoRunnable);
    }

    public void changeState(int i) {
        if (i == 0) {
            if (this.mHeadsetState == null) {
                this.mHeadsetState = new HeadsetState(this, (RunnableC253181) null);
            }
            this.mState = this.mHeadsetState;
            Logging.m3711d(TAG, "--------------------Comming to HEADSET----------------- ");
        } else if (i == 1) {
            if (this.mEarpieceState == null) {
                this.mEarpieceState = new EarpieceState(this, (RunnableC253181) null);
            }
            this.mState = this.mEarpieceState;
            Logging.m3711d(TAG, "--------------------Comming to EARPIECE---------------- ");
        } else if (i == 3) {
            if (this.mSpeakerState == null) {
                this.mSpeakerState = new SpeakerState(this, (RunnableC253181) null);
            }
            this.mState = this.mSpeakerState;
            Logging.m3711d(TAG, "--------------------Comming to SPEAKER----------------- ");
        } else if (i == 4) {
            if (this.mStopState == null) {
                this.mStopState = new StopState(this, (RunnableC253181) null);
            }
            this.mState = this.mStopState;
            Logging.m3711d(TAG, "--------------------Comming to STOP-------------------- ");
        } else if (i != 5) {
            Logging.m3711d(TAG, "--------------------Comming to UNKNOWN STATE----------- ");
            if (this.mSpeakerState == null) {
                this.mSpeakerState = new SpeakerState(this, (RunnableC253181) null);
            }
            this.mState = this.mSpeakerState;
        } else {
            if (this.mBTState == null) {
                this.mBTState = new BTState(this, (RunnableC253181) null);
            }
            this.mState = this.mBTState;
            Logging.m3711d(TAG, "--------------------Comming to BLUETOOTH--------------- ");
        }
        this.mState.switchtoTargetRoute();
    }

    private void changeStateByPriority() {
        if (getBtDeviceList() > 0) {
            checkNeedResetBT();
            if (this.mStreamType == 0) {
                enableBtSco();
            }
            changeState(5);
            return;
        }
        AudioDeviceList audioDeviceList = this.mAvailDevices;
        if (audioDeviceList.mHeadSetRoute != -1) {
            changeState(0);
            return;
        }
        int i = audioDeviceList.mForcedRoute;
        if (i != -1) {
            changeState(i);
        } else {
            changeState(audioDeviceList.mDefaultRoute);
        }
    }

    private void checkFallbackA2dpIfNeed() {
        AudioRoutingListener audioRoutingListener;
        if (this.mA2dpEnable && (audioRoutingListener = this.mListener.get()) != null) {
            audioRoutingListener.onAudioBtProfileChanged(2);
            notifyAudioRoutingChanged(5);
            Logging.m3706i(TAG, "set A2DP profile only to fallback !");
        }
    }

    private void checkNeedResetBT() {
        this.mEventHandler.postDelayed(this.TrytoResetBTRunnable, 3000L);
    }

    private void clearBTResource() {
        BluetoothAdapter bluetoothAdapter = this.mBTAdapter;
        if (bluetoothAdapter != null) {
            int profileConnectionState = bluetoothAdapter.getProfileConnectionState(1);
            this.mBTAdapter.closeProfileProxy(1, this.mBTHeadset);
            if (profileConnectionState != 2) {
                cancelTimer();
                this.mBTHeadset = null;
            }
            int profileConnectionState2 = this.mBTAdapter.getProfileConnectionState(2);
            this.mBTAdapter.closeProfileProxy(2, this.mBtA2dp);
            if (profileConnectionState2 != 2) {
                this.mBtA2dp = null;
            }
        }
        if (this.mBTHeadsetListener != null) {
            this.mBTHeadsetListener = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void connectBTSco() {
        /*
            r4 = this;
            r0 = r4
            android.bluetooth.BluetoothHeadset r0 = r0.mBTHeadset     // Catch: java.lang.reflect.InvocationTargetException -> L20 java.lang.IllegalAccessException -> L28 java.lang.NoSuchMethodException -> L30
            java.lang.Class r0 = r0.getClass()     // Catch: java.lang.reflect.InvocationTargetException -> L20 java.lang.IllegalAccessException -> L28 java.lang.NoSuchMethodException -> L30
            java.lang.String r1 = "connectAudio"
            r2 = 0
            java.lang.Class[] r2 = new java.lang.Class[r2]     // Catch: java.lang.reflect.InvocationTargetException -> L20 java.lang.IllegalAccessException -> L28 java.lang.NoSuchMethodException -> L30
            java.lang.reflect.Method r0 = r0.getMethod(r1, r2)     // Catch: java.lang.reflect.InvocationTargetException -> L20 java.lang.IllegalAccessException -> L28 java.lang.NoSuchMethodException -> L30
            r1 = r4
            android.bluetooth.BluetoothHeadset r1 = r1.mBTHeadset     // Catch: java.lang.reflect.InvocationTargetException -> L20 java.lang.IllegalAccessException -> L28 java.lang.NoSuchMethodException -> L30
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.reflect.InvocationTargetException -> L20 java.lang.IllegalAccessException -> L28 java.lang.NoSuchMethodException -> L30
            java.lang.Object r0 = r0.invoke(r1, r2)     // Catch: java.lang.reflect.InvocationTargetException -> L20 java.lang.IllegalAccessException -> L28 java.lang.NoSuchMethodException -> L30
            r5 = r0
            goto L37
        L20:
            r5 = move-exception
            r0 = r5
            r0.printStackTrace()
            goto L35
        L28:
            r5 = move-exception
            r0 = r5
            r0.printStackTrace()
            goto L35
        L30:
            r5 = move-exception
            r0 = r5
            r0.printStackTrace()
        L35:
            r0 = 0
            r5 = r0
        L37:
            r0 = r5
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L4c
            java.lang.String r0 = "AudioRoute"
            java.lang.String r1 = "SCO connected successfully "
            io.agora.rtc.internal.Logging.m3711d(r0, r1)
            goto L54
        L4c:
            java.lang.String r0 = "AudioRoute"
            java.lang.String r1 = "SCO connected failed "
            io.agora.rtc.internal.Logging.m3711d(r0, r1)
        L54:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.agora.rtc.internal.AudioRoutingController.connectBTSco():void");
    }

    private void disConnectBTSco() {
        try {
            this.mBTHeadset.getClass().getMethod("disconnectAudio", new Class[0]).invoke(this.mBTHeadset, new Object[0]);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
        }
    }

    public void disableBtSco() {
        if (this.f70738am.isBluetoothScoAvailableOffCall() && this.f70738am.isBluetoothScoOn()) {
            this.f70738am.setBluetoothScoOn(false);
            this.f70738am.stopBluetoothSco();
        }
    }

    public void enableBtSco() {
        if (this.f70738am.isBluetoothScoAvailableOffCall() && !this.f70738am.isBluetoothScoOn()) {
            this.f70738am.startBluetoothSco();
            this.f70738am.setBluetoothScoOn(true);
        }
    }

    private AudioManager getAudioManager() {
        Context context = this.mContext.get();
        if (context == null) {
            return null;
        }
        return (AudioManager) context.getSystemService("audio");
    }

    public String getAudioRouteDesc(int i) {
        switch (i) {
            case -1:
                return "UNSET";
            case 0:
                return "Headset";
            case 1:
                return "Earpiece";
            case 2:
                return "HeadsetOnly";
            case 3:
                return "Speakerphone";
            case 4:
                return "Loudspeaker";
            case 5:
                return "HeadsetBluetooth";
            default:
                return "Unknown";
        }
    }

    public int getBtDeviceList() {
        List<BluetoothDevice> connectedDevices;
        try {
            if (!this.mA2dpEnable && !this.mHfpEnable) {
                return 0;
            }
            BluetoothHeadset bluetoothHeadset = this.mBTHeadset;
            if (bluetoothHeadset == null || (connectedDevices = bluetoothHeadset.getConnectedDevices()) == null || connectedDevices.size() <= 0) {
                return 1;
            }
            for (BluetoothDevice bluetoothDevice : connectedDevices) {
                if (bluetoothDevice != null) {
                    Logging.m3706i(TAG, "device name: " + bluetoothDevice.getName());
                }
            }
            return 1;
        } catch (Exception e) {
            Logging.m3708e(TAG, "getBtDeviceList fail ", e);
            return 0;
        }
    }

    private String getEventDesc(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 11 ? i != 112 ? i != 113 ? "unkown event" : "music stream event" : "communication stream event" : "set forcespeakerphone event" : "bt hfp connect/disconnect event" : "sco connect/disconnect event" : "bt a2dp connect/disconnect event" : "headset connect/disconnect event";
    }

    private boolean isAudioOnly() {
        return this.mVideoDisabled || (this.mMuteLocal && this.mMuteRemotes);
    }

    private boolean isBTConnected() {
        if (this.mBTAdapter == null) {
            this.mBTAdapter = BluetoothAdapter.getDefaultAdapter();
        }
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        this.mBTAdapter = defaultAdapter;
        return 2 == defaultAdapter.getProfileConnectionState(1) || 2 == this.mBTAdapter.getProfileConnectionState(2);
    }

    private boolean isBtScoConnected() {
        try {
            List<BluetoothDevice> connectedDevices = this.mBTHeadset.getConnectedDevices();
            if (connectedDevices.size() > 0) {
                BluetoothDevice bluetoothDevice = connectedDevices.get(0);
                Boolean bool = null;
                if (Build.VERSION.SDK_INT <= 26) {
                    try {
                        try {
                            bool = this.mBTHeadset.getClass().getMethod("isAudioOn", new Class[0]).invoke(this.mBTHeadset, new Object[0]);
                        } catch (InvocationTargetException e) {
                            e.printStackTrace();
                            bool = null;
                        }
                    } catch (IllegalAccessException e2) {
                        e2.printStackTrace();
                        bool = null;
                    } catch (NoSuchMethodException e3) {
                        e3.printStackTrace();
                        bool = null;
                    }
                }
                if (!this.mBTHeadset.isAudioConnected(bluetoothDevice) && (bool == null || !bool.booleanValue())) {
                    Logging.m3711d(TAG, "SCO is not connected with " + bluetoothDevice.getName());
                    return false;
                }
                Logging.m3711d(TAG, "SCO connected with " + bluetoothDevice.getName());
                return true;
            }
        } catch (Exception e4) {
            Logging.m3708e(TAG, "getBtDeviceList fail ", e4);
        }
        Logging.m3704w(TAG, "no bluetooth device connected.");
        return false;
    }

    public boolean isHeadSetConnected() {
        AudioManager audioManager = this.f70738am;
        if (audioManager == null) {
            return false;
        }
        return audioManager.isWiredHeadsetOn();
    }

    public boolean isSpeakerEnable() {
        AudioManager audioManager = this.f70738am;
        if (audioManager == null) {
            return true;
        }
        return audioManager.isSpeakerphoneOn();
    }

    private String modeAsString(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? C22128a.m8611i2("Unknown ", i) : "MODE_IN_COMMUNICATION" : "MODE_IN_CALL" : "MODE_RINGTONE" : "MODE_NORMAL";
    }

    public void notifyAudioBtProfileChanged() {
        BluetoothAdapter bluetoothAdapter = this.mBTAdapter;
        int i = 2;
        if (bluetoothAdapter != null) {
            if (2 == bluetoothAdapter.getProfileConnectionState(1)) {
                this.mHfpEnable = true;
            } else {
                this.mHfpEnable = false;
            }
            StringBuilder m8728C = C22128a.m8728C("BT headset  mHfpEnable ");
            m8728C.append(this.mHfpEnable);
            Logging.m3706i(TAG, m8728C.toString());
            if (2 == this.mBTAdapter.getProfileConnectionState(2)) {
                this.mA2dpEnable = true;
            } else {
                this.mA2dpEnable = false;
            }
            StringBuilder m8728C2 = C22128a.m8728C("BT headset  mA2dpEnable ");
            m8728C2.append(this.mA2dpEnable);
            Logging.m3706i(TAG, m8728C2.toString());
        } else {
            this.mHfpEnable = false;
            this.mA2dpEnable = false;
        }
        AudioRoutingListener audioRoutingListener = this.mListener.get();
        if (audioRoutingListener == null) {
            Logging.m3704w(TAG, "failed to get audio routing listener");
            return;
        }
        boolean z = this.mHfpEnable;
        if (!this.mA2dpEnable) {
            i = 0;
        }
        int i2 = i | (z ? 1 : 0) | 0;
        audioRoutingListener.onAudioBtProfileChanged(i2);
        Logging.m3706i(TAG, "BT headset  btProfile " + i2);
    }

    public void notifyAudioRoutingChanged(int i) {
        AudioRoutingListener audioRoutingListener = this.mListener.get();
        if (audioRoutingListener != null) {
            audioRoutingListener.onAudioRoutingChanged(i);
        } else {
            Logging.m3704w(TAG, "failed to get audio routing listener");
        }
    }

    private void resetBtAdapter() {
        Context context = this.mContext.get();
        if (this.mBTAdapter != null && hasPermission(context, "android.permission.BLUETOOTH_ADMIN")) {
            this.mBTAdapter.disable();
            try {
                Thread.sleep(500L);
            } catch (Exception e) {
                Logging.m3708e(TAG, "resetBtAdapter failed:", e);
            }
            this.mBTAdapter.enable();
            Logging.m3706i(TAG, "resetBtAdapter Happened!");
        }
    }

    public int routeToState(int i) {
        Logging.m3706i(TAG, "routeToState  " + i);
        int i2 = 5;
        if (i == 0) {
            i2 = 0;
        } else if (i == 1) {
            i2 = 1;
        } else if (i == 3) {
            i2 = 3;
        } else if (i != 5) {
            Logging.m3711d(TAG, "unknown routing:  " + i);
            i2 = -1;
        }
        return i2;
    }

    private int setTargetRouteByPriority() {
        try {
            if (this.mAvailDevices.mBTRoute != -1 && isBTConnected() && sysRouteToBt()) {
                return 5;
            }
            if (this.mAvailDevices.mHeadSetRoute != -1 && isHeadSetConnected()) {
                return 0;
            }
            AudioDeviceList audioDeviceList = this.mAvailDevices;
            int i = audioDeviceList.mForcedRoute;
            return i != -1 ? i : audioDeviceList.mDefaultRoute;
        } catch (Exception e) {
            Logging.m3708e(TAG, "fatal error setTargetRouteByPriority", e);
            return -1;
        }
    }

    public void startTimer() {
        this.dynamic_timeout += 3000;
        StringBuilder m8728C = C22128a.m8728C("audio route start bluetooth timer ");
        m8728C.append(this.dynamic_timeout);
        m8728C.append(", times:");
        m8728C.append(this.mScoConnectionAttemps);
        Logging.m3711d(TAG, m8728C.toString());
        this.mEventHandler.postDelayed(this.TryConnectBtScoRunnable, 3000L);
    }

    public boolean sysRouteToBt() {
        Context context = this.mContext.get();
        boolean z = true;
        if (Build.VERSION.SDK_INT >= 24) {
            z = true;
            if (context != null) {
                z = ((MediaRouter) context.getSystemService("media_router")).getSelectedRoute(1).getDeviceType() == 3;
            }
        }
        return z;
    }

    public void tryToConnectBtSco() {
        if (this.mBTHeadset == null) {
            Logging.m3704w(TAG, "no bluetooth profile connected");
        } else if (isBtScoConnected()) {
        } else {
            int i = this.mScoConnectionAttemps + 1;
            this.mScoConnectionAttemps = i;
            if (i >= 3) {
                Logging.m3709e(TAG, "start bluetooth sco timeout, actual routing: ");
                this.f70738am.setMode(0);
                this.f70738am.stopBluetoothSco();
                this.f70738am.setBluetoothScoOn(false);
                if (this.mListener.get() != null) {
                    this.mListener.get().onAudioRoutingError(1030);
                }
                checkFallbackA2dpIfNeed();
                return;
            }
            startTimer();
            StringBuilder m8728C = C22128a.m8728C("Attemp retry sco connected  times:");
            m8728C.append(this.mScoConnectionAttemps);
            m8728C.append("[");
            m8728C.append(btStateAsString(this.mBtScoState));
            m8728C.append("]");
            Logging.m3711d(TAG, m8728C.toString());
            this.f70738am.stopBluetoothSco();
            this.f70738am.setBluetoothScoOn(false);
            enableBtSco();
            StringBuilder m8728C2 = C22128a.m8728C("start bluetooth sco on ? ");
            m8728C2.append(this.f70738am.isBluetoothScoOn());
            m8728C2.append(",audiomode:");
            m8728C2.append(this.f70738am.getMode());
            Logging.m3709e(TAG, m8728C2.toString());
        }
    }

    public void changeAvailDevices(int i, int i2) {
        if (i != 1) {
            if (i == 2 || i == 4) {
                if (this.mA2dpEnable || this.mHfpEnable) {
                    this.mAvailDevices.mBTRoute = 5;
                } else {
                    this.mAvailDevices.mBTRoute = -1;
                }
            } else if (i == 10) {
                this.mAvailDevices.mDefaultRoute = i2;
            } else if (i != 11) {
                Logging.m3706i(TAG, "No device changed!");
            } else if (i2 == 0) {
                this.mAvailDevices.mForcedRoute = 1;
            } else {
                this.mAvailDevices.mForcedRoute = 3;
            }
        } else if (i2 >= 0) {
            this.mAvailDevices.mHeadSetRoute = i2 > 0 ? 2 : 0;
        } else {
            this.mAvailDevices.mHeadSetRoute = -1;
        }
        StringBuilder m8720E = C22128a.m8720E("event device changed!", i, "  mAvailDevices.mDefaultRoute");
        m8720E.append(this.mAvailDevices.mDefaultRoute);
        Logging.m3706i(TAG, m8720E.toString());
    }

    public void clearListenerNativeHandle() {
        Logging.m3711d(TAG, "clearListenerNativeHandle");
        AudioRoutingListener audioRoutingListener = this.mListener.get();
        if (audioRoutingListener != null) {
            audioRoutingListener.onAudioRoutingDestroyed();
        } else {
            Logging.m3704w(TAG, "failed to get audio routing listener");
        }
    }

    public boolean hasPermission(Context context, String str) {
        return context.checkPermission(str, Process.myPid(), Process.myUid()) == 0;
    }

    public int initialize() {
        BluetoothAdapter defaultAdapter;
        Logging.m3706i(TAG, "initialize +");
        AudioDeviceList audioDeviceList = new AudioDeviceList();
        this.mAvailDevices = audioDeviceList;
        audioDeviceList.mDefaultRoute = -1;
        audioDeviceList.mForcedRoute = -1;
        audioDeviceList.mHeadSetRoute = -1;
        audioDeviceList.mBTRoute = -1;
        Context context = this.mContext.get();
        if (context == null || this.f70738am == null) {
            Logging.m3709e(TAG, "Initilize Failed cause of invalid context or invalid audiomanager");
            return -1;
        }
        Looper myLooper = Looper.myLooper();
        if (myLooper != null) {
            this.mEventHandler = new EventHandler(myLooper);
        } else {
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper != null) {
                this.mEventHandler = new EventHandler(mainLooper);
            } else {
                this.mEventHandler = null;
            }
        }
        if (this.mHeadsetReceiver == null) {
            this.mHeadsetReceiver = new HeadsetBroadcastReceiver();
        }
        changeState(4);
        if (!this.mHeadsetReceiver.getRegistered()) {
            context.registerReceiver(this.mHeadsetReceiver, new IntentFilter("android.intent.action.HEADSET_PLUG"));
            this.mHeadsetReceiver.setRegistered(true);
        }
        if (this.mBTHeadsetListener != null) {
            Logging.m3704w(TAG, "Bluetooth service Listener already been initialized");
        } else {
            try {
                this.mBTHeadsetListener = new BluetoothProfile.ServiceListener() { // from class: io.agora.rtc.internal.AudioRoutingController.3
                    @Override // android.bluetooth.BluetoothProfile.ServiceListener
                    public void onServiceConnected(int i, BluetoothProfile bluetoothProfile) {
                        Logging.m3706i(AudioRoutingController.TAG, C22128a.m8591n2("onServiceConnected ", i, " =? headset(", 1, ")"));
                        if (i != 1) {
                            if (i != 2) {
                                return;
                            }
                            AudioRoutingController.this.mBtA2dp = (BluetoothA2dp) bluetoothProfile;
                            return;
                        }
                        Logging.m3706i(AudioRoutingController.TAG, "on BT service connected: " + i + StringConstant.SPACE + bluetoothProfile);
                        AudioRoutingController.this.mBTHeadset = (BluetoothHeadset) bluetoothProfile;
                    }

                    @Override // android.bluetooth.BluetoothProfile.ServiceListener
                    public void onServiceDisconnected(int i) {
                        Logging.m3706i(AudioRoutingController.TAG, C22128a.m8591n2("onServiceDisconnected ", i, " =? headset(", 1, ")"));
                        if (i != 1) {
                            if (i != 2) {
                                return;
                            }
                            AudioRoutingController.this.mA2dpEnable = false;
                            AudioRoutingController.this.mBtA2dp = null;
                            return;
                        }
                        AudioRoutingController.this.f70738am.setBluetoothScoOn(false);
                        AudioRoutingController.this.f70738am.stopBluetoothSco();
                        AudioRoutingController.this.cancelTimer();
                        AudioRoutingController.this.mBTHeadset = null;
                        AudioRoutingController.this.mHfpEnable = false;
                    }
                };
            } catch (Exception e) {
                StringBuilder m8728C = C22128a.m8728C("initialize failed: unable to create BluetoothProfile.ServiceListener, err=");
                m8728C.append(e.getMessage());
                Logging.m3709e(TAG, m8728C.toString());
            }
        }
        if (!hasPermission(context, "android.permission.BLUETOOTH")) {
            Logging.m3704w(TAG, "lacks BLUETOOTH permission");
            return 0;
        }
        try {
            if (this.mBTHeadsetReceiver == null) {
                this.mBTHeadsetReceiver = new BTHeadsetBroadcastReceiver();
            }
            defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            this.mBTAdapter = defaultAdapter;
        } catch (Exception e2) {
            StringBuilder m8728C2 = C22128a.m8728C("unable to create BluetoothHeadsetBroadcastReceiver, err:");
            m8728C2.append(e2.getMessage());
            Logging.m3709e(TAG, m8728C2.toString());
        }
        if (defaultAdapter == null || this.mBTHeadsetListener == null) {
            Logging.m3709e(TAG, "initialize: failed to get bluetooth adapter!!");
            return 0;
        }
        defaultAdapter.getProfileProxy(context.getApplicationContext(), this.mBTHeadsetListener, 1);
        this.mBTAdapter.getProfileProxy(context.getApplicationContext(), this.mBTHeadsetListener, 2);
        if (2 == this.mBTAdapter.getProfileConnectionState(1)) {
            this.mHfpEnable = true;
        }
        if (2 == this.mBTAdapter.getProfileConnectionState(2)) {
            this.mA2dpEnable = true;
        }
        Logging.m3706i(TAG, "BT headset setup: mA2dpEnable = " + this.mA2dpEnable + " mHfpEnable " + this.mHfpEnable + StringConstant.SPACE + this.mBTHeadset);
        IntentFilter intentFilter = new IntentFilter("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED");
        intentFilter.addAction("android.media.ACTION_SCO_AUDIO_STATE_UPDATED");
        intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        if (!this.mBTHeadsetReceiver.getRegistered()) {
            Intent registerReceiver = context.registerReceiver(this.mBTHeadsetReceiver, intentFilter);
            this.mBTHeadsetReceiver.setRegistered(true);
            if (registerReceiver != null && TextUtils.equals(registerReceiver.getAction(), "android.media.ACTION_SCO_AUDIO_STATE_UPDATED")) {
                if (registerReceiver.getIntExtra("android.media.extra.SCO_AUDIO_STATE", 0) != 1) {
                    Logging.m3706i(TAG, "initial Bluetooth SCO device unconnected");
                    this.mBtScoState = 3;
                } else {
                    Logging.m3706i(TAG, "initial Bluetooth SCO device connected");
                    this.mBtScoState = 1;
                    this.mAvailDevices.mBTRoute = 5;
                }
            }
        }
        getBtDeviceList();
        Logging.m3706i(TAG, "initialize -");
        return 0;
    }

    public void muteAudioStream(boolean z) {
        try {
            if (z) {
                this.f70738am.adjustStreamVolume(3, -100, 0);
            } else {
                this.f70738am.adjustStreamVolume(3, 100, 0);
            }
        } catch (Exception e) {
            Logging.m3709e(TAG, "muteAudioStream: " + e);
        }
    }

    public void sendEvent(int i, int i2) {
        StringBuilder m8728C = C22128a.m8728C("sendEvent: [");
        m8728C.append(getEventDesc(i));
        m8728C.append("], Parameters: ");
        m8728C.append(i2);
        m8728C.append("... ");
        m8728C.append(this.mEventHandler);
        Logging.m3711d(TAG, m8728C.toString());
        EventHandler eventHandler = this.mEventHandler;
        if (eventHandler != null) {
            this.mEventHandler.sendMessage(eventHandler.obtainMessage(i, i2, 0));
        }
    }

    public void startMonitoring(int i, int i2) {
        this.mContext.get();
        Logging.m3706i(TAG, "--------------Comming to startMonitoring--------------------");
        notifyAudioBtProfileChanged();
        changeAvailDevices(10, i);
        this.mChannelProfile = i2;
        if (this.mAvailDevices.mDefaultRoute == -1) {
            if (i2 != 0 || !isAudioOnly()) {
                changeAvailDevices(10, 3);
                this.f70738am.setSpeakerphoneOn(false);
                this.f70738am.setSpeakerphoneOn(true);
            } else {
                changeAvailDevices(10, 1);
                this.f70738am.setSpeakerphoneOn(false);
            }
        }
        this.mTargetRoute = -1;
        if (getBtDeviceList() > 0) {
            this.mAvailDevices.mBTRoute = 5;
        }
        int targetRouteByPriority = setTargetRouteByPriority();
        StringBuilder m8728C = C22128a.m8728C("mDefaultRoute: ,");
        m8728C.append(this.mAvailDevices.mDefaultRoute);
        m8728C.append("  mAvailDevices.mForcedRoute :");
        m8728C.append(this.mAvailDevices.mForcedRoute);
        Logging.m3706i(TAG, m8728C.toString());
        Logging.m3706i(TAG, "mBtRoute: " + getAudioRouteDesc(this.mAvailDevices.mBTRoute) + ",mAvailDevices.mHeadSetRoute :" + getAudioRouteDesc(this.mAvailDevices.mHeadSetRoute));
        if (targetRouteByPriority == 5) {
            checkNeedResetBT();
        }
        changeState(targetRouteByPriority);
    }

    public void stopMonitoring() {
        Logging.m3706i(TAG, "Stop Mornitor State process");
        changeState(4);
    }

    public void uninitialize() {
        Logging.m3711d(TAG, "uninitialize");
        try {
            clearBTResource();
            Context context = this.mContext.get();
            if (context != null) {
                HeadsetBroadcastReceiver headsetBroadcastReceiver = this.mHeadsetReceiver;
                if (headsetBroadcastReceiver != null && headsetBroadcastReceiver.getRegistered()) {
                    context.unregisterReceiver(this.mHeadsetReceiver);
                    this.mHeadsetReceiver.setRegistered(false);
                }
                BTHeadsetBroadcastReceiver bTHeadsetBroadcastReceiver = this.mBTHeadsetReceiver;
                if (bTHeadsetBroadcastReceiver != null && bTHeadsetBroadcastReceiver.getRegistered()) {
                    context.unregisterReceiver(this.mBTHeadsetReceiver);
                    this.mBTHeadsetReceiver.setRegistered(false);
                }
            }
            this.mHeadsetReceiver = null;
            this.mBTHeadsetReceiver = null;
        } catch (Exception e) {
            Logging.m3708e(TAG, "AudioRoutingController uninitialize fail: ", e);
        }
    }
}
