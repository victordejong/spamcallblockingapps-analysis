package com.callapp.contacts.recorder.interfaces;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/interfaces/CallRecorderEvent.class */
public interface CallRecorderEvent {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/interfaces/CallRecorderEvent$_CC.class */
    public final /* synthetic */ class _CC {
        public static void $default$onError(CallRecorderEvent callRecorderEvent, Bundle bundle) {
        }

        public static void $default$onRecordFileReady(CallRecorderEvent callRecorderEvent, Bundle bundle) {
        }
    }

    void onError(Bundle bundle);

    void onPreRecord(Bundle bundle);

    void onRecordFileReady(Bundle bundle);

    void onRecorderStarted(Bundle bundle);

    void onRecorderStopped(Bundle bundle);
}
