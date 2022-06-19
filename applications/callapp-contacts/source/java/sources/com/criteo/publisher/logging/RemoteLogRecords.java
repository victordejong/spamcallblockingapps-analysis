package com.criteo.publisher.logging;

import com.google.gson.annotations.AbstractC15952b;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\b\u0097\b\u0018��:\u0003\u001d\u001e\u001fB\u001d\u0012\u0006\u0010\b\u001a\u00020\u0001\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0002\u001a\u00020\u0001HÆ\u0003¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J*\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0015\u001a\u00020\u0014HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0016R\u001c\u0010\b\u001a\u00020\u00018\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\b\u0010\u0017\u001a\u0004\b\u0018\u0010\u0003R\"\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\t\u0010\u0019\u001a\u0004\b\u001a\u0010\u0007¨\u0006 "}, m4298d2 = {"Lcom/criteo/publisher/logging/RemoteLogRecords;", "Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;", "component1", "()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;", "", "Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogRecord;", "component2", "()Ljava/util/List;", "context", "logRecords", "copy", "(Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;Ljava/util/List;)Lcom/criteo/publisher/logging/RemoteLogRecords;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;", "getContext", "Ljava/util/List;", "getLogRecords", "<init>", "(Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;Ljava/util/List;)V", "RemoteLogContext", "RemoteLogLevel", "RemoteLogRecord", "publisher-sdk_release"}, m4297k = 1, m4296mv = {1, 1, 15}, m4295pn = "", m4294xi = 0, m4293xs = "")
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/RemoteLogRecords.class */
public class RemoteLogRecords {
    @AbstractC15952b(m7988a = "context")

    /* renamed from: a */
    final C8391a f30106a;
    @AbstractC15952b(m7988a = "errors")

    /* renamed from: b */
    private final List<C8392b> f30107b;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0087\u0001\u0018�� \u00042\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, m4298d2 = {"Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;", "Ljava/lang/Enum;", "<init>", "(Ljava/lang/String;I)V", "Companion", "DEBUG", "INFO", "WARNING", "ERROR", "NONE", "publisher-sdk_release"}, m4297k = 1, m4296mv = {1, 1, 15}, m4295pn = "", m4294xi = 0, m4293xs = "")
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel.class */
    public enum RemoteLogLevel {
        DEBUG,
        INFO,
        WARNING,
        ERROR,
        NONE;
        
        public static final C8390a Companion = new C8390a(null);

        /* renamed from: com.criteo.publisher.logging.RemoteLogRecords$RemoteLogLevel$a */
        /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel$a.class */
        public static final class C8390a {
            private C8390a() {
            }

            public /* synthetic */ C8390a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* renamed from: a */
            public static RemoteLogLevel m25747a(int i) {
                return i != 3 ? i != 4 ? i != 5 ? i != 6 ? null : RemoteLogLevel.ERROR : RemoteLogLevel.WARNING : RemoteLogLevel.INFO : RemoteLogLevel.DEBUG;
            }
        }
    }

    /* renamed from: com.criteo.publisher.logging.RemoteLogRecords$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/RemoteLogRecords$a.class */
    public static final class C8391a {
        @AbstractC15952b(m7988a = "deviceId")

        /* renamed from: a */
        String f30108a;
        @AbstractC15952b(m7988a = "version")

        /* renamed from: b */
        private final String f30109b;
        @AbstractC15952b(m7988a = "bundleId")

        /* renamed from: c */
        private final String f30110c;
        @AbstractC15952b(m7988a = "sessionId")

        /* renamed from: d */
        private final String f30111d;
        @AbstractC15952b(m7988a = "profileId")

        /* renamed from: e */
        private final int f30112e;
        @AbstractC15952b(m7988a = "exception")

        /* renamed from: f */
        private final String f30113f;
        @AbstractC15952b(m7988a = "logId")

        /* renamed from: g */
        private final String f30114g;
        @AbstractC15952b(m7988a = "deviceOs")

        /* renamed from: h */
        private final String f30115h;

        public C8391a(String version, String bundleId, String str, String sessionId, int i, String str2, String str3, String str4) {
            C18524p.m3841c(version, "version");
            C18524p.m3841c(bundleId, "bundleId");
            C18524p.m3841c(sessionId, "sessionId");
            this.f30109b = version;
            this.f30110c = bundleId;
            this.f30108a = str;
            this.f30111d = sessionId;
            this.f30112e = i;
            this.f30113f = str2;
            this.f30114g = str3;
            this.f30115h = str4;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C8391a)) {
                    return false;
                }
                C8391a c8391a = (C8391a) obj;
                return C18524p.m3850a((Object) this.f30109b, (Object) c8391a.f30109b) && C18524p.m3850a((Object) this.f30110c, (Object) c8391a.f30110c) && C18524p.m3850a((Object) this.f30108a, (Object) c8391a.f30108a) && C18524p.m3850a((Object) this.f30111d, (Object) c8391a.f30111d) && this.f30112e == c8391a.f30112e && C18524p.m3850a((Object) this.f30113f, (Object) c8391a.f30113f) && C18524p.m3850a((Object) this.f30114g, (Object) c8391a.f30114g) && C18524p.m3850a((Object) this.f30115h, (Object) c8391a.f30115h);
            }
            return true;
        }

        public final int hashCode() {
            String str = this.f30109b;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f30110c;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f30108a;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f30111d;
            int hashCode4 = str4 != null ? str4.hashCode() : 0;
            int i2 = this.f30112e;
            String str5 = this.f30113f;
            int hashCode5 = str5 != null ? str5.hashCode() : 0;
            String str6 = this.f30114g;
            int hashCode6 = str6 != null ? str6.hashCode() : 0;
            String str7 = this.f30115h;
            if (str7 != null) {
                i = str7.hashCode();
            }
            return (((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i2) * 31) + hashCode5) * 31) + hashCode6) * 31) + i;
        }

        public final String toString() {
            return "RemoteLogContext(version=" + this.f30109b + ", bundleId=" + this.f30110c + ", deviceId=" + this.f30108a + ", sessionId=" + this.f30111d + ", profileId=" + this.f30112e + ", exceptionType=" + this.f30113f + ", logId=" + this.f30114g + ", deviceOs=" + this.f30115h + ")";
        }
    }

    /* renamed from: com.criteo.publisher.logging.RemoteLogRecords$b */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/RemoteLogRecords$b.class */
    public static final class C8392b {
        @AbstractC15952b(m7988a = "errorType")

        /* renamed from: a */
        private final RemoteLogLevel f30116a;
        @AbstractC15952b(m7988a = "messages")

        /* renamed from: b */
        private final List<String> f30117b;

        public C8392b(RemoteLogLevel level, List<String> messages) {
            C18524p.m3841c(level, "level");
            C18524p.m3841c(messages, "messages");
            this.f30116a = level;
            this.f30117b = messages;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C8392b)) {
                    return false;
                }
                C8392b c8392b = (C8392b) obj;
                return C18524p.m3850a(this.f30116a, c8392b.f30116a) && C18524p.m3850a(this.f30117b, c8392b.f30117b);
            }
            return true;
        }

        public final int hashCode() {
            RemoteLogLevel remoteLogLevel = this.f30116a;
            int i = 0;
            int hashCode = remoteLogLevel != null ? remoteLogLevel.hashCode() : 0;
            List<String> list = this.f30117b;
            if (list != null) {
                i = list.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public final String toString() {
            return "RemoteLogRecord(level=" + this.f30116a + ", messages=" + this.f30117b + ")";
        }
    }

    public RemoteLogRecords(C8391a context, List<C8392b> logRecords) {
        C18524p.m3841c(context, "context");
        C18524p.m3841c(logRecords, "logRecords");
        this.f30106a = context;
        this.f30107b = logRecords;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof RemoteLogRecords)) {
                return false;
            }
            RemoteLogRecords remoteLogRecords = (RemoteLogRecords) obj;
            return C18524p.m3850a(this.f30106a, remoteLogRecords.f30106a) && C18524p.m3850a(this.f30107b, remoteLogRecords.f30107b);
        }
        return true;
    }

    public int hashCode() {
        C8391a c8391a = this.f30106a;
        int i = 0;
        int hashCode = c8391a != null ? c8391a.hashCode() : 0;
        List<C8392b> list = this.f30107b;
        if (list != null) {
            i = list.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        return "RemoteLogRecords(context=" + this.f30106a + ", logRecords=" + this.f30107b + ")";
    }
}
