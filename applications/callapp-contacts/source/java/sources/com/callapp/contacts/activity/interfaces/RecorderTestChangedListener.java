package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.recorder.enums.RecordConfiguration;
import com.callapp.contacts.recorder.recordertest.RecorderTestManager;
import kotlin.C18538n;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/RecorderTestChangedListener.class */
public interface RecorderTestChangedListener {

    /* renamed from: a */
    public static final EventType<RecorderTestChangedListener, C18538n<Long, RecordConfiguration.STATUS>> f23133a = _$$Lambda$CWsjKF3R2zvwUMrFUYrz1FBMcDU.INSTANCE;

    /* renamed from: b */
    public static final EventType<RecorderTestChangedListener, C18538n<Long, Float>> f23134b = _$$Lambda$za8RZzoEt7CeLbfTw84YvXIEGFs.INSTANCE;

    /* renamed from: c */
    public static final EventType<RecorderTestChangedListener, RecorderTestManager.RecorderTestManagerStatus> f23135c = _$$Lambda$fHS8wNYwxfGUOOrQQ2vBdKoKuUY.INSTANCE;

    void onRecorderTestChanged(C18538n<Long, RecordConfiguration.STATUS> c18538n);

    void onRecorderTestProgressChanged(C18538n<Long, Float> c18538n);

    void onRecorderTestStatusChanged(RecorderTestManager.RecorderTestManagerStatus recorderTestManagerStatus);
}
