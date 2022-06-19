package com.millennialmedia.internal.task.handshake;

import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.task.ThreadTask;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/task/handshake/HandshakeRequestTask.class */
public class HandshakeRequestTask extends ThreadTask {
    private static final String TAG = "HandshakeRequestTask";

    @Override // com.millennialmedia.internal.task.ThreadTask
    public void executeCommand() {
        Handshake.request(false);
    }

    @Override // com.millennialmedia.internal.task.ThreadTask
    public String getTagName() {
        return TAG;
    }
}
