package com.truecaller.voip.manager.rtc;

import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/manager/rtc/ChannelJoin.class */
public abstract class ChannelJoin {

    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/manager/rtc/ChannelJoin$Failed.class */
    public static final class Failed extends ChannelJoin {

        /* renamed from: a */
        public final Reason f16375a;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/truecaller/voip/manager/rtc/ChannelJoin$Failed$Reason;", "", "<init>", "(Ljava/lang/String;I)V", "GET_TOKEN_FAILED", "RTC_JOIN_FAILED", "voip_release"}, k = 1, mv = {1, 4, 1})
        /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/manager/rtc/ChannelJoin$Failed$Reason.class */
        public enum Reason {
            GET_TOKEN_FAILED,
            RTC_JOIN_FAILED
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Failed(Reason reason) {
            super(null);
            l.e(reason, "reason");
            this.f16375a = reason;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof Failed) && l.a(this.f16375a, ((Failed) obj).f16375a);
            }
            return true;
        }

        public int hashCode() {
            Reason reason = this.f16375a;
            return reason != null ? reason.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Failed(reason=");
            m8728C.append(this.f16375a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: com.truecaller.voip.manager.rtc.ChannelJoin$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/manager/rtc/ChannelJoin$a.class */
    public static final class C4815a extends ChannelJoin {

        /* renamed from: a */
        public static final C4815a f16376a = new C4815a();

        public C4815a() {
            super(null);
        }
    }

    public ChannelJoin() {
    }

    public ChannelJoin(f fVar) {
    }
}
