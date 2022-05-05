package org.spongycastle.openpgp;

import java.io.IOException;
import org.spongycastle.bcpg.BCPGInputStream;
import org.spongycastle.bcpg.MarkerPacket;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPMarker.class */
public class PGPMarker {

    /* renamed from: p */
    private MarkerPacket f1647p;

    public PGPMarker(BCPGInputStream bCPGInputStream) throws IOException {
        this.f1647p = (MarkerPacket) bCPGInputStream.readPacket();
    }
}
