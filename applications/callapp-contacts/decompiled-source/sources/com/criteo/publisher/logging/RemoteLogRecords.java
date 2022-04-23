package com.criteo.publisher.logging;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\b\u0097\b\u0018��:\u0003\u001d\u001e\u001fB\u001d\u0012\u0006\u0010\b\u001a\u00020\u0001\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0002\u001a\u00020\u0001HÆ\u0003¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J*\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0015\u001a\u00020\u0014HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0016R\u001c\u0010\b\u001a\u00020\u00018\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\b\u0010\u0017\u001a\u0004\b\u0018\u0010\u0003R\"\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\t\u0010\u0019\u001a\u0004\b\u001a\u0010\u0007¨\u0006 "}, d2 = {"Lcom/criteo/publisher/logging/RemoteLogRecords;", "Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;", "component1", "()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;", "", "Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogRecord;", "component2", "()Ljava/util/List;", "context", "logRecords", "copy", "(Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;Ljava/util/List;)Lcom/criteo/publisher/logging/RemoteLogRecords;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;", "getContext", "Ljava/util/List;", "getLogRecords", "<init>", "(Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;Ljava/util/List;)V", "RemoteLogContext", "RemoteLogLevel", "RemoteLogRecord", "publisher-sdk_release"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/RemoteLogRecords.class */
public class RemoteLogRecords {
    @com.google.gson.annotations.b(a = "context")

    /* renamed from: a  reason: collision with root package name */
    final a f17435a;
    @com.google.gson.annotations.b(a = "errors")

    /* renamed from: b  reason: collision with root package name */
    private final List<b> f17436b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0087\u0001\u0018�� \u00042\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;", "Ljava/lang/Enum;", "<init>", "(Ljava/lang/String;I)V", "Companion", "DEBUG", "INFO", "WARNING", "ERROR", "NONE", "publisher-sdk_release"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel.class */
    public enum RemoteLogLevel {
        DEBUG,
        INFO,
        WARNING,
        ERROR,
        NONE;
        
        public static final a Companion = new a(null);

        /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel$a.class */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public static RemoteLogLevel a(int i) {
                return i != 3 ? i != 4 ? i != 5 ? i != 6 ? null : RemoteLogLevel.ERROR : RemoteLogLevel.WARNING : RemoteLogLevel.INFO : RemoteLogLevel.DEBUG;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/RemoteLogRecords$a.class */
    public static final class a {
        @com.google.gson.annotations.b(a = "deviceId")

        /* renamed from: a  reason: collision with root package name */
        String f17437a;
        @com.google.gson.annotations.b(a = "version")

        /* renamed from: b  reason: collision with root package name */
        private final String f17438b;
        @com.google.gson.annotations.b(a = "bundleId")

        /* renamed from: c  reason: collision with root package name */
        private final String f17439c;
        @com.google.gson.annotations.b(a = "sessionId")

        /* renamed from: d  reason: collision with root package name */
        private final String f17440d;
        @com.google.gson.annotations.b(a = "profileId")
        private final int e;
        @com.google.gson.annotations.b(a = "exception")
        private final String f;
        @com.google.gson.annotations.b(a = "logId")
        private final String g;
        @com.google.gson.annotations.b(a = "deviceOs")
        private final String h;

        public a(String version, String bundleId, String str, String sessionId, int i, String str2, String str3, String str4) {
            p.c(version, "version");
            p.c(bundleId, "bundleId");
            p.c(sessionId, "sessionId");
            this.f17438b = version;
            this.f17439c = bundleId;
            this.f17437a = str;
            this.f17440d = sessionId;
            this.e = i;
            this.f = str2;
            this.g = str3;
            this.h = str4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return p.a((Object) this.f17438b, (Object) aVar.f17438b) && p.a((Object) this.f17439c, (Object) aVar.f17439c) && p.a((Object) this.f17437a, (Object) aVar.f17437a) && p.a((Object) this.f17440d, (Object) aVar.f17440d) && this.e == aVar.e && p.a((Object) this.f, (Object) aVar.f) && p.a((Object) this.g, (Object) aVar.g) && p.a((Object) this.h, (Object) aVar.h);
        }

        public final int hashCode() {
            String str = this.f17438b;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f17439c;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f17437a;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f17440d;
            int hashCode4 = str4 != null ? str4.hashCode() : 0;
            int i2 = this.e;
            String str5 = this.f;
            int hashCode5 = str5 != null ? str5.hashCode() : 0;
            String str6 = this.g;
            int hashCode6 = str6 != null ? str6.hashCode() : 0;
            String str7 = this.h;
            if (str7 != null) {
                i = str7.hashCode();
            }
            return (((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i2) * 31) + hashCode5) * 31) + hashCode6) * 31) + i;
        }

        public final String toString() {
            return "RemoteLogContext(version=" + this.f17438b + ", bundleId=" + this.f17439c + ", deviceId=" + this.f17437a + ", sessionId=" + this.f17440d + ", profileId=" + this.e + ", exceptionType=" + this.f + ", logId=" + this.g + ", deviceOs=" + this.h + ")";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/RemoteLogRecords$b.class */
    public static final class b {
        @com.google.gson.annotations.b(a = "errorType")

        /* renamed from: a  reason: collision with root package name */
        private final RemoteLogLevel f17441a;
        @com.google.gson.annotations.b(a = "messages")

        /* renamed from: b  reason: collision with root package name */
        private final List<String> f17442b;

        public b(RemoteLogLevel level, List<String> messages) {
            p.c(level, "level");
            p.c(messages, "messages");
            this.f17441a = level;
            this.f17442b = messages;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return p.a(this.f17441a, bVar.f17441a) && p.a(this.f17442b, bVar.f17442b);
        }

        public final int hashCode() {
            RemoteLogLevel remoteLogLevel = this.f17441a;
            int i = 0;
            int hashCode = remoteLogLevel != null ? remoteLogLevel.hashCode() : 0;
            List<String> list = this.f17442b;
            if (list != null) {
                i = list.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public final String toString() {
            return "RemoteLogRecord(level=" + this.f17441a + ", messages=" + this.f17442b + ")";
        }
    }

    public RemoteLogRecords(a context, List<b> logRecords) {
        p.c(context, "context");
        p.c(logRecords, "logRecords");
        this.f17435a = context;
        this.f17436b = logRecords;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RemoteLogRecords)) {
            return false;
        }
        RemoteLogRecords remoteLogRecords = (RemoteLogRecords) obj;
        return p.a(this.f17435a, remoteLogRecords.f17435a) && p.a(this.f17436b, remoteLogRecords.f17436b);
    }

    public int hashCode() {
        a aVar = this.f17435a;
        int i = 0;
        int hashCode = aVar != null ? aVar.hashCode() : 0;
        List<b> list = this.f17436b;
        if (list != null) {
            i = list.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        return "RemoteLogRecords(context=" + this.f17435a + ", logRecords=" + this.f17436b + ")";
    }
}
