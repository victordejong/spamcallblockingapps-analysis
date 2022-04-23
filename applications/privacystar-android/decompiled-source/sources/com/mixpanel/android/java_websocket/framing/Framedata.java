package com.mixpanel.android.java_websocket.framing;

import com.mixpanel.android.java_websocket.exceptions.InvalidFrameException;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/java_websocket/framing/Framedata.class */
public interface Framedata {

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/java_websocket/framing/Framedata$Opcode.class */
    public enum Opcode {
        CONTINUOUS,
        TEXT,
        BINARY,
        PING,
        PONG,
        CLOSING
    }

    void append(Framedata framedata) throws InvalidFrameException;

    Opcode getOpcode();

    ByteBuffer getPayloadData();

    boolean getTransfereMasked();

    boolean isFin();
}
