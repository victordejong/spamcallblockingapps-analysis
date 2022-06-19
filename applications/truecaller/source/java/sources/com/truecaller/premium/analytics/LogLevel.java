package com.truecaller.premium.analytics;

import com.huawei.hms.push.constant.RemoteMessageConst;
import kotlin.Metadata;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\r\b\u0086\u0001\u0018�� \t2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/truecaller/premium/analytics/LogLevel;", "", "", RemoteMessageConst.Notification.PRIORITY, "I", "getPriority", "()I", "<init>", "(Ljava/lang/String;II)V", "Companion", "a", "VERBOSE", "DEBUG", "CORE", "NONE", "premium_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/analytics/LogLevel.class */
public enum LogLevel {
    VERBOSE(3),
    DEBUG(2),
    CORE(1),
    NONE(0);
    
    public static final C4339a Companion = new C4339a(null);
    private final int priority;

    /* renamed from: com.truecaller.premium.analytics.LogLevel$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/premium/analytics/LogLevel$a.class */
    public static final class C4339a {
        public C4339a(f fVar) {
        }
    }

    LogLevel(int i) {
        this.priority = i;
    }

    public final int getPriority() {
        return this.priority;
    }
}
