package org.spongycastle.bcpg;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/InputStreamPacket.class */
public class InputStreamPacket extends Packet {

    /* renamed from: in */
    private BCPGInputStream f981in;

    public InputStreamPacket(BCPGInputStream bCPGInputStream) {
        this.f981in = bCPGInputStream;
    }

    public BCPGInputStream getInputStream() {
        return this.f981in;
    }
}
