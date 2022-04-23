package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.recorder.enums.RecordConfiguration;
import com.callapp.contacts.recorder.recordertest.RecorderTestManager;
import kotlin.n;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/RecorderTestChangedListener.class */
public interface RecorderTestChangedListener {

    /* renamed from: a  reason: collision with root package name */
    public static final EventType<RecorderTestChangedListener, n<Long, RecordConfiguration.STATUS>> f12959a = _$$Lambda$CWsjKF3R2zvwUMrFUYrz1FBMcDU.INSTANCE;

    /* renamed from: b  reason: collision with root package name */
    public static final EventType<RecorderTestChangedListener, n<Long, Float>> f12960b = _$$Lambda$za8RZzoEt7CeLbfTw84YvXIEGFs.INSTANCE;

    /* renamed from: c  reason: collision with root package name */
    public static final EventType<RecorderTestChangedListener, RecorderTestManager.RecorderTestManagerStatus> f12961c = _$$Lambda$fHS8wNYwxfGUOOrQQ2vBdKoKuUY.INSTANCE;

    void onRecorderTestChanged(n<Long, RecordConfiguration.STATUS> nVar);

    void onRecorderTestProgressChanged(n<Long, Float> nVar);

    void onRecorderTestStatusChanged(RecorderTestManager.RecorderTestManagerStatus recorderTestManagerStatus);
}
