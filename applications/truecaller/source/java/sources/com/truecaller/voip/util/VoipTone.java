package com.truecaller.voip.util;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\f\b\u0080\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0019\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\rR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lcom/truecaller/voip/util/VoipTone;", "", "", "toneGeneratorType", "I", "getToneGeneratorType", "()I", "", "playsInLoop", "Z", "getPlaysInLoop", "()Z", "<init>", "(Ljava/lang/String;IIZ)V", "NO_TONE", "RINGING", "WAITING", "BUSY", "ACK", "voip_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/util/VoipTone.class */
public enum VoipTone {
    NO_TONE(-1, false),
    RINGING(23, true),
    WAITING(22, true),
    BUSY(96, false),
    ACK(19, false);
    
    private final boolean playsInLoop;
    private final int toneGeneratorType;

    VoipTone(int i, boolean z) {
        this.toneGeneratorType = i;
        this.playsInLoop = z;
    }

    public final boolean getPlaysInLoop() {
        return this.playsInLoop;
    }

    public final int getToneGeneratorType() {
        return this.toneGeneratorType;
    }
}
