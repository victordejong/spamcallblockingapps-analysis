package com.mixpanel.android.java_websocket.framing;

import com.mixpanel.android.java_websocket.exceptions.InvalidDataException;
import com.mixpanel.android.java_websocket.exceptions.InvalidFrameException;
import com.mixpanel.android.java_websocket.framing.Framedata;
import com.mixpanel.android.java_websocket.util.Charsetfunctions;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/java_websocket/framing/FramedataImpl1.class */
public class FramedataImpl1 implements FrameBuilder {
    protected static byte[] emptyarray = new byte[0];
    protected boolean fin;
    protected Framedata.Opcode optcode;
    protected boolean transferemasked;
    private ByteBuffer unmaskedpayload;

    public FramedataImpl1() {
    }

    public FramedataImpl1(Framedata.Opcode opcode) {
        this.optcode = opcode;
        this.unmaskedpayload = ByteBuffer.wrap(emptyarray);
    }

    public FramedataImpl1(Framedata framedata) {
        this.fin = framedata.isFin();
        this.optcode = framedata.getOpcode();
        this.unmaskedpayload = framedata.getPayloadData();
        this.transferemasked = framedata.getTransfereMasked();
    }

    @Override // com.mixpanel.android.java_websocket.framing.Framedata
    public void append(Framedata framedata) throws InvalidFrameException {
        ByteBuffer payloadData = framedata.getPayloadData();
        if (this.unmaskedpayload == null) {
            this.unmaskedpayload = ByteBuffer.allocate(payloadData.remaining());
            payloadData.mark();
            this.unmaskedpayload.put(payloadData);
            payloadData.reset();
        } else {
            payloadData.mark();
            this.unmaskedpayload.position(this.unmaskedpayload.limit());
            this.unmaskedpayload.limit(this.unmaskedpayload.capacity());
            if (payloadData.remaining() > this.unmaskedpayload.remaining()) {
                ByteBuffer allocate = ByteBuffer.allocate(payloadData.remaining() + this.unmaskedpayload.capacity());
                this.unmaskedpayload.flip();
                allocate.put(this.unmaskedpayload);
                allocate.put(payloadData);
                this.unmaskedpayload = allocate;
            } else {
                this.unmaskedpayload.put(payloadData);
            }
            this.unmaskedpayload.rewind();
            payloadData.reset();
        }
        this.fin = framedata.isFin();
    }

    @Override // com.mixpanel.android.java_websocket.framing.Framedata
    public Framedata.Opcode getOpcode() {
        return this.optcode;
    }

    @Override // com.mixpanel.android.java_websocket.framing.Framedata
    public ByteBuffer getPayloadData() {
        return this.unmaskedpayload;
    }

    @Override // com.mixpanel.android.java_websocket.framing.Framedata
    public boolean getTransfereMasked() {
        return this.transferemasked;
    }

    @Override // com.mixpanel.android.java_websocket.framing.Framedata
    public boolean isFin() {
        return this.fin;
    }

    @Override // com.mixpanel.android.java_websocket.framing.FrameBuilder
    public void setFin(boolean z) {
        this.fin = z;
    }

    @Override // com.mixpanel.android.java_websocket.framing.FrameBuilder
    public void setOptcode(Framedata.Opcode opcode) {
        this.optcode = opcode;
    }

    @Override // com.mixpanel.android.java_websocket.framing.FrameBuilder
    public void setPayload(ByteBuffer byteBuffer) throws InvalidDataException {
        this.unmaskedpayload = byteBuffer;
    }

    @Override // com.mixpanel.android.java_websocket.framing.FrameBuilder
    public void setTransferemasked(boolean z) {
        this.transferemasked = z;
    }

    public String toString() {
        return "Framedata{ optcode:" + getOpcode() + ", fin:" + isFin() + ", payloadlength:[pos:" + this.unmaskedpayload.position() + ", len:" + this.unmaskedpayload.remaining() + "], payload:" + Arrays.toString(Charsetfunctions.utf8Bytes(new String(this.unmaskedpayload.array()))) + "}";
    }
}
