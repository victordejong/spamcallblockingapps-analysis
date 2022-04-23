package p530d.p531a.p532v0;

import io.grpc.ChannelLogger;
import io.grpc.InternalChannelz$ChannelTrace$Event;
import io.grpc.internal.ChannelTracer;
import java.text.MessageFormat;
import java.util.logging.Level;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.C9625z;
/* renamed from: d.a.v0.m */
/* loaded from: classes2-dex2jar.jar:d/a/v0/m.class */
public final class C9399m extends ChannelLogger {

    /* renamed from: a */
    public final ChannelTracer f36081a;

    /* renamed from: b */
    public final AbstractC9545x1 f36082b;

    /* renamed from: d.a.v0.m$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m$a.class */
    public static /* synthetic */ class C9400a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f36083a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ChannelLogger.ChannelLogLevel.values().length];
            f36083a = iArr;
            try {
                iArr[ChannelLogger.ChannelLogLevel.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f36083a[ChannelLogger.ChannelLogLevel.WARNING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public C9399m(ChannelTracer channelTracer, AbstractC9545x1 x1Var) {
        C4933n.m24794a(channelTracer, "tracer");
        this.f36081a = channelTracer;
        C4933n.m24794a(x1Var, "time");
        this.f36082b = x1Var;
    }

    /* renamed from: a */
    public static void m2839a(C9625z zVar, ChannelLogger.ChannelLogLevel channelLogLevel, String str) {
        Level b = m2836b(channelLogLevel);
        if (ChannelTracer.f38015e.isLoggable(b)) {
            ChannelTracer.m580a(zVar, b, str);
        }
    }

    /* renamed from: a */
    public static void m2838a(C9625z zVar, ChannelLogger.ChannelLogLevel channelLogLevel, String str, Object... objArr) {
        Level b = m2836b(channelLogLevel);
        if (ChannelTracer.f38015e.isLoggable(b)) {
            ChannelTracer.m580a(zVar, b, MessageFormat.format(str, objArr));
        }
    }

    /* renamed from: b */
    public static Level m2836b(ChannelLogger.ChannelLogLevel channelLogLevel) {
        int i = C9400a.f36083a[channelLogLevel.ordinal()];
        return i != 1 ? i != 2 ? Level.FINEST : Level.FINER : Level.FINE;
    }

    /* renamed from: c */
    public static InternalChannelz$ChannelTrace$Event.Severity m2834c(ChannelLogger.ChannelLogLevel channelLogLevel) {
        int i = C9400a.f36083a[channelLogLevel.ordinal()];
        return i != 1 ? i != 2 ? InternalChannelz$ChannelTrace$Event.Severity.CT_INFO : InternalChannelz$ChannelTrace$Event.Severity.CT_WARNING : InternalChannelz$ChannelTrace$Event.Severity.CT_ERROR;
    }

    @Override // io.grpc.ChannelLogger
    /* renamed from: a */
    public void mo688a(ChannelLogger.ChannelLogLevel channelLogLevel, String str) {
        m2839a(this.f36081a.m581a(), channelLogLevel, str);
        if (m2837a(channelLogLevel)) {
            m2835b(channelLogLevel, str);
        }
    }

    @Override // io.grpc.ChannelLogger
    /* renamed from: a */
    public void mo687a(ChannelLogger.ChannelLogLevel channelLogLevel, String str, Object... objArr) {
        mo688a(channelLogLevel, (m2837a(channelLogLevel) || ChannelTracer.f38015e.isLoggable(m2836b(channelLogLevel))) ? MessageFormat.format(str, objArr) : null);
    }

    /* renamed from: a */
    public final boolean m2837a(ChannelLogger.ChannelLogLevel channelLogLevel) {
        return channelLogLevel != ChannelLogger.ChannelLogLevel.DEBUG && this.f36081a.m577b();
    }

    /* renamed from: b */
    public final void m2835b(ChannelLogger.ChannelLogLevel channelLogLevel, String str) {
        if (channelLogLevel != ChannelLogger.ChannelLogLevel.DEBUG) {
            ChannelTracer channelTracer = this.f36081a;
            InternalChannelz$ChannelTrace$Event.C10296a aVar = new InternalChannelz$ChannelTrace$Event.C10296a();
            aVar.m644a(str);
            aVar.m645a(m2834c(channelLogLevel));
            aVar.m647a(this.f36082b.mo2517a());
            channelTracer.m576b(aVar.m648a());
        }
    }
}
