package com.mixpanel.android.java_websocket.framing;

import com.mixpanel.android.java_websocket.exceptions.InvalidDataException;
import com.mixpanel.android.java_websocket.exceptions.InvalidFrameException;
import com.mixpanel.android.java_websocket.framing.Framedata;
import com.mixpanel.android.java_websocket.util.Charsetfunctions;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/java_websocket/framing/CloseFrameBuilder.class */
public class CloseFrameBuilder extends FramedataImpl1 implements CloseFrame {
    static final ByteBuffer emptybytebuffer = ByteBuffer.allocate(0);
    private int code;
    private String reason;

    public CloseFrameBuilder() {
        super(Framedata.Opcode.CLOSING);
        setFin(true);
    }

    public CloseFrameBuilder(int i) throws InvalidDataException {
        super(Framedata.Opcode.CLOSING);
        setFin(true);
        setCodeAndMessage(i, "");
    }

    public CloseFrameBuilder(int i, String str) throws InvalidDataException {
        super(Framedata.Opcode.CLOSING);
        setFin(true);
        setCodeAndMessage(i, str);
    }

    private void initCloseCode() throws InvalidFrameException {
        this.code = 1005;
        ByteBuffer payloadData = super.getPayloadData();
        payloadData.mark();
        if (payloadData.remaining() >= 2) {
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.position(2);
            allocate.putShort(payloadData.getShort());
            allocate.position(0);
            this.code = allocate.getInt();
            if (this.code == 1006 || this.code == 1015 || this.code == 1005 || this.code > 4999 || this.code < 1000 || this.code == 1004) {
                throw new InvalidFrameException("closecode must not be sent over the wire: " + this.code);
            }
        }
        payloadData.reset();
    }

    private void initMessage() throws InvalidDataException {
        if (this.code == 1005) {
            this.reason = Charsetfunctions.stringUtf8(super.getPayloadData());
            return;
        }
        ByteBuffer payloadData = super.getPayloadData();
        int position = payloadData.position();
        try {
            try {
                payloadData.position(payloadData.position() + 2);
                this.reason = Charsetfunctions.stringUtf8(payloadData);
                payloadData.position(position);
            } catch (IllegalArgumentException e) {
                throw new InvalidFrameException(e);
            }
        } catch (Throwable th) {
            payloadData.position(position);
            throw th;
        }
    }

    private void setCodeAndMessage(int i, String str) throws InvalidDataException {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        int i2 = i;
        if (i == 1015) {
            str2 = "";
            i2 = 1005;
        }
        if (i2 != 1005) {
            byte[] utf8Bytes = Charsetfunctions.utf8Bytes(str2);
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.putInt(i2);
            allocate.position(2);
            ByteBuffer allocate2 = ByteBuffer.allocate(utf8Bytes.length + 2);
            allocate2.put(allocate);
            allocate2.put(utf8Bytes);
            allocate2.rewind();
            setPayload(allocate2);
        } else if (str2.length() > 0) {
            throw new InvalidDataException(1002, "A close frame must have a closecode if it has a reason");
        }
    }

    @Override // com.mixpanel.android.java_websocket.framing.CloseFrame
    public int getCloseCode() {
        return this.code;
    }

    @Override // com.mixpanel.android.java_websocket.framing.CloseFrame
    public String getMessage() {
        return this.reason;
    }

    @Override // com.mixpanel.android.java_websocket.framing.FramedataImpl1, com.mixpanel.android.java_websocket.framing.Framedata
    public ByteBuffer getPayloadData() {
        return this.code == 1005 ? emptybytebuffer : super.getPayloadData();
    }

    @Override // com.mixpanel.android.java_websocket.framing.FramedataImpl1, com.mixpanel.android.java_websocket.framing.FrameBuilder
    public void setPayload(ByteBuffer byteBuffer) throws InvalidDataException {
        super.setPayload(byteBuffer);
        initCloseCode();
        initMessage();
    }

    @Override // com.mixpanel.android.java_websocket.framing.FramedataImpl1
    public String toString() {
        return super.toString() + "code: " + this.code;
    }
}
