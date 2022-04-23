package io.grpc.internal;

import io.grpc.ChannelLogger;
import io.grpc.InternalChannelz$ChannelTrace$Event;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.C9625z;
/* loaded from: classes2-dex2jar.jar:io/grpc/internal/ChannelTracer.class */
public final class ChannelTracer {

    /* renamed from: e */
    public static final Logger f38015e = Logger.getLogger(ChannelLogger.class.getName());

    /* renamed from: a */
    public final Object f38016a = new Object();

    /* renamed from: b */
    public final C9625z f38017b;

    /* renamed from: c */
    public final Collection<InternalChannelz$ChannelTrace$Event> f38018c;

    /* renamed from: d */
    public int f38019d;

    /* renamed from: io.grpc.internal.ChannelTracer$a */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/ChannelTracer$a.class */
    public static /* synthetic */ class C10314a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f38020a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[InternalChannelz$ChannelTrace$Event.Severity.values().length];
            f38020a = iArr;
            try {
                iArr[InternalChannelz$ChannelTrace$Event.Severity.CT_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f38020a[InternalChannelz$ChannelTrace$Event.Severity.CT_WARNING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public ChannelTracer(C9625z zVar, final int i, long j, String str) {
        C4933n.m24794a(str, "description");
        C4933n.m24794a(zVar, "logId");
        this.f38017b = zVar;
        if (i > 0) {
            this.f38018c = new ArrayDeque<InternalChannelz$ChannelTrace$Event>() { // from class: io.grpc.internal.ChannelTracer.1
                public boolean add(InternalChannelz$ChannelTrace$Event internalChannelz$ChannelTrace$Event) {
                    if (size() == i) {
                        removeFirst();
                    }
                    ChannelTracer.m578a(ChannelTracer.this);
                    return super.add((C103131) internalChannelz$ChannelTrace$Event);
                }
            };
        } else {
            this.f38018c = null;
        }
        InternalChannelz$ChannelTrace$Event.C10296a aVar = new InternalChannelz$ChannelTrace$Event.C10296a();
        aVar.m644a(str + " created");
        aVar.m645a(InternalChannelz$ChannelTrace$Event.Severity.CT_INFO);
        aVar.m647a(j);
        m579a(aVar.m648a());
    }

    /* renamed from: a */
    public static /* synthetic */ int m578a(ChannelTracer channelTracer) {
        int i = channelTracer.f38019d;
        channelTracer.f38019d = i + 1;
        return i;
    }

    /* renamed from: a */
    public static void m580a(C9625z zVar, Level level, String str) {
        if (f38015e.isLoggable(level)) {
            LogRecord logRecord = new LogRecord(level, "[" + zVar + "] " + str);
            logRecord.setLoggerName(f38015e.getName());
            logRecord.setSourceClassName(f38015e.getName());
            logRecord.setSourceMethodName("log");
            f38015e.log(logRecord);
        }
    }

    /* renamed from: a */
    public C9625z m581a() {
        return this.f38017b;
    }

    /* renamed from: a */
    public void m579a(InternalChannelz$ChannelTrace$Event internalChannelz$ChannelTrace$Event) {
        int i = C10314a.f38020a[internalChannelz$ChannelTrace$Event.f37958b.ordinal()];
        Level level = i != 1 ? i != 2 ? Level.FINEST : Level.FINER : Level.FINE;
        m576b(internalChannelz$ChannelTrace$Event);
        m580a(this.f38017b, level, internalChannelz$ChannelTrace$Event.f37957a);
    }

    /* renamed from: b */
    public void m576b(InternalChannelz$ChannelTrace$Event internalChannelz$ChannelTrace$Event) {
        synchronized (this.f38016a) {
            if (this.f38018c != null) {
                this.f38018c.add(internalChannelz$ChannelTrace$Event);
            }
        }
    }

    /* renamed from: b */
    public boolean m577b() {
        boolean z;
        synchronized (this.f38016a) {
            z = this.f38018c != null;
        }
        return z;
    }
}
