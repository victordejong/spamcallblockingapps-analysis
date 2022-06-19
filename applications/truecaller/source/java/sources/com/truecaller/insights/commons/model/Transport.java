package com.truecaller.insights.commons.model;

import kotlin.Metadata;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0001\u0018�� \t2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/truecaller/insights/commons/model/Transport;", "", "", "value", "I", "getValue", "()I", "<init>", "(Ljava/lang/String;II)V", "Companion", "a", "DEFAULT", "SMS", "IM", "insights-common_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/commons/model/Transport.class */
public enum Transport {
    DEFAULT(-1),
    SMS(0),
    IM(2);
    
    public static final C4055a Companion = new C4055a(null);
    private final int value;

    /* renamed from: com.truecaller.insights.commons.model.Transport$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/commons/model/Transport$a.class */
    public static final class C4055a {
        public C4055a(f fVar) {
        }

        /* renamed from: a */
        public final Transport m35284a(int i) {
            Transport transport;
            Transport[] values = Transport.values();
            int i2 = 0;
            while (true) {
                if (i2 >= 3) {
                    transport = null;
                    break;
                }
                transport = values[i2];
                if (transport.getValue() == i) {
                    break;
                }
                i2++;
            }
            if (transport == null) {
                transport = Transport.SMS;
            }
            return transport;
        }
    }

    Transport(int i) {
        this.value = i;
    }

    public final int getValue() {
        return this.value;
    }
}
