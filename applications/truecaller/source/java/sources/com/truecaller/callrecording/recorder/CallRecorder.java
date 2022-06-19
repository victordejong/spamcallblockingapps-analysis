package com.truecaller.callrecording.recorder;

import java.io.IOException;
import kotlin.Metadata;
/* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/recorder/CallRecorder.class */
public interface CallRecorder {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;", "", "<init>", "(Ljava/lang/String;I)V", "INITIALIZING", "READY", "RECORDING", "ERROR", "STOPPED", "callrecorder_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/recorder/CallRecorder$RecordingState.class */
    public enum RecordingState {
        INITIALIZING,
        READY,
        RECORDING,
        ERROR,
        STOPPED
    }

    /* renamed from: com.truecaller.callrecording.recorder.CallRecorder$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/recorder/CallRecorder$a.class */
    public interface AbstractC3629a {
        void onError(Exception exc);
    }

    /* renamed from: a */
    void mo17515a() throws Exception;

    /* renamed from: b */
    boolean mo17529b();

    void start() throws IOException, IllegalStateException;

    void stop() throws IOException, IllegalStateException;
}
