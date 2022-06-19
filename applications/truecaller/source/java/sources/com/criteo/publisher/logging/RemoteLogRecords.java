package com.criteo.publisher.logging;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import e.m.e.d0.b;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0097\b\u0018��:\u0003\u001d\u001e\u001fB\u001d\u0012\u0006\u0010\u0013\u001a\u00020\f\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0002\u001a\u00020\u0001HÖ\u0001¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0005\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u0005\u0010\u0006J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÆ\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fHÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0012J*\u0010\u0015\u001a\u00020��2\b\b\u0002\u0010\u0013\u001a\u00020\f2\u000e\b\u0002\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fHÆ\u0001¢\u0006\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0013\u001a\u00020\f8\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0017\u001a\u0004\b\u0018\u0010\u000eR\"\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f8\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u0019\u001a\u0004\b\u001a\u0010\u0012¨\u0006 "}, d2 = {"Lcom/criteo/publisher/logging/RemoteLogRecords;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;", "component1", "()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;", "", "Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogRecord;", "component2", "()Ljava/util/List;", AnalyticsConstants.CONTEXT, "logRecords", "copy", "(Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;Ljava/util/List;)Lcom/criteo/publisher/logging/RemoteLogRecords;", "Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;", "getContext", "Ljava/util/List;", "getLogRecords", "<init>", "(Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;Ljava/util/List;)V", "RemoteLogContext", "RemoteLogLevel", "RemoteLogRecord", "publisher-sdk_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/logging/RemoteLogRecords.class */
public class RemoteLogRecords {
    @b(AnalyticsConstants.CONTEXT)

    /* renamed from: a */
    private final C0902a f2447a;
    @b("errors")

    /* renamed from: b */
    private final List<C0903b> f2448b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0087\u0001\u0018�� \u00042\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;", "Ljava/lang/Enum;", "<init>", "(Ljava/lang/String;I)V", "Companion", "DEBUG", "INFO", "WARNING", "ERROR", "NONE", "publisher-sdk_release"}, k = 1, mv = {1, 4, 0})
    @Keep
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel.class */
    public enum RemoteLogLevel {
        DEBUG,
        INFO,
        WARNING,
        ERROR,
        NONE;
        
        public static final C0901a Companion = new C0901a(null);

        /* renamed from: com.criteo.publisher.logging.RemoteLogRecords$RemoteLogLevel$a */
        /* loaded from: classes-dex2jar.jar:com/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel$a.class */
        public static final class C0901a {
            public C0901a(f fVar) {
            }

            /* renamed from: a */
            public final RemoteLogLevel m42038a(int i) {
                return i != 3 ? i != 4 ? i != 5 ? i != 6 ? null : RemoteLogLevel.ERROR : RemoteLogLevel.WARNING : RemoteLogLevel.INFO : RemoteLogLevel.DEBUG;
            }
        }
    }

    /* renamed from: com.criteo.publisher.logging.RemoteLogRecords$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/logging/RemoteLogRecords$a.class */
    public static class C0902a {
        @b("version")

        /* renamed from: a */
        private final String f2449a;
        @b("bundleId")

        /* renamed from: b */
        private final String f2450b;
        @b("deviceId")

        /* renamed from: c */
        private String f2451c;
        @b("sessionId")

        /* renamed from: d */
        private final String f2452d;
        @b("profileId")

        /* renamed from: e */
        private final int f2453e;
        @b("exception")

        /* renamed from: f */
        private final String f2454f;
        @b("logId")

        /* renamed from: g */
        private final String f2455g;
        @b("deviceOs")

        /* renamed from: h */
        private final String f2456h;

        public C0902a(String str, String str2, String str3, String str4, int i, String str5, String str6, String str7) {
            l.f(str, "version");
            l.f(str2, "bundleId");
            l.f(str4, "sessionId");
            this.f2449a = str;
            this.f2450b = str2;
            this.f2451c = str3;
            this.f2452d = str4;
            this.f2453e = i;
            this.f2454f = str5;
            this.f2455g = str6;
            this.f2456h = str7;
        }

        /* renamed from: a */
        public void m42037a(String str) {
            this.f2451c = str;
        }

        /* renamed from: b */
        public String m42036b() {
            return this.f2451c;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C0902a)) {
                    return false;
                }
                C0902a c0902a = (C0902a) obj;
                return l.a(this.f2449a, c0902a.f2449a) && l.a(this.f2450b, c0902a.f2450b) && l.a(this.f2451c, c0902a.f2451c) && l.a(this.f2452d, c0902a.f2452d) && this.f2453e == c0902a.f2453e && l.a(this.f2454f, c0902a.f2454f) && l.a(this.f2455g, c0902a.f2455g) && l.a(this.f2456h, c0902a.f2456h);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f2449a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f2450b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f2451c;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f2452d;
            int hashCode4 = str4 != null ? str4.hashCode() : 0;
            int i2 = this.f2453e;
            String str5 = this.f2454f;
            int hashCode5 = str5 != null ? str5.hashCode() : 0;
            String str6 = this.f2455g;
            int hashCode6 = str6 != null ? str6.hashCode() : 0;
            String str7 = this.f2456h;
            if (str7 != null) {
                i = str7.hashCode();
            }
            return (((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i2) * 31) + hashCode5) * 31) + hashCode6) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("RemoteLogContext(version=");
            m8728C.append(this.f2449a);
            m8728C.append(", bundleId=");
            m8728C.append(this.f2450b);
            m8728C.append(", deviceId=");
            m8728C.append(this.f2451c);
            m8728C.append(", sessionId=");
            m8728C.append(this.f2452d);
            m8728C.append(", profileId=");
            m8728C.append(this.f2453e);
            m8728C.append(", exceptionType=");
            m8728C.append(this.f2454f);
            m8728C.append(", logId=");
            m8728C.append(this.f2455g);
            m8728C.append(", deviceOs=");
            return C22128a.m8618h(m8728C, this.f2456h, ")");
        }
    }

    /* renamed from: com.criteo.publisher.logging.RemoteLogRecords$b */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/logging/RemoteLogRecords$b.class */
    public static final class C0903b {
        @b("errorType")

        /* renamed from: a */
        private final RemoteLogLevel f2457a;
        @b("messages")

        /* renamed from: b */
        private final List<String> f2458b;

        public C0903b(RemoteLogLevel remoteLogLevel, List<String> list) {
            l.f(remoteLogLevel, "level");
            l.f(list, "messages");
            this.f2457a = remoteLogLevel;
            this.f2458b = list;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C0903b)) {
                    return false;
                }
                C0903b c0903b = (C0903b) obj;
                return l.a(this.f2457a, c0903b.f2457a) && l.a(this.f2458b, c0903b.f2458b);
            }
            return true;
        }

        public int hashCode() {
            RemoteLogLevel remoteLogLevel = this.f2457a;
            int i = 0;
            int hashCode = remoteLogLevel != null ? remoteLogLevel.hashCode() : 0;
            List<String> list = this.f2458b;
            if (list != null) {
                i = list.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("RemoteLogRecord(level=");
            m8728C.append(this.f2457a);
            m8728C.append(", messages=");
            return C22128a.m8602l(m8728C, this.f2458b, ")");
        }
    }

    public RemoteLogRecords(C0902a c0902a, List<C0903b> list) {
        l.f(c0902a, AnalyticsConstants.CONTEXT);
        l.f(list, "logRecords");
        this.f2447a = c0902a;
        this.f2448b = list;
    }

    /* renamed from: a */
    public C0902a m42039a() {
        return this.f2447a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof RemoteLogRecords)) {
                return false;
            }
            RemoteLogRecords remoteLogRecords = (RemoteLogRecords) obj;
            return l.a(this.f2447a, remoteLogRecords.f2447a) && l.a(this.f2448b, remoteLogRecords.f2448b);
        }
        return true;
    }

    public int hashCode() {
        C0902a c0902a = this.f2447a;
        int i = 0;
        int hashCode = c0902a != null ? c0902a.hashCode() : 0;
        List<C0903b> list = this.f2448b;
        if (list != null) {
            i = list.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RemoteLogRecords(context=");
        m8728C.append(this.f2447a);
        m8728C.append(", logRecords=");
        return C22128a.m8602l(m8728C, this.f2448b, ")");
    }
}
