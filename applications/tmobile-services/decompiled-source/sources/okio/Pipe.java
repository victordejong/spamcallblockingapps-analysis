package okio;

import kotlin.Metadata;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u000e\u0018��B\u000f\u0012\u0006\u0010$\u001a\u00020#¢\u0006\u0004\b/\u00100J\r\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\r\u001a\u00020\nH\u0007¢\u0006\u0004\b\u000b\u0010\fJ-\u0010\u0011\u001a\u00020\u0001*\u00020\u00042\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000e¢\u0006\u0002\b\u000fH\u0082\b¢\u0006\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0014\u001a\u00020\u00138��@��X\u0080\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\"\u0010\u0019\u001a\u00020\u00188��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR$\u0010\u001f\u001a\u0004\u0018\u00010\u00048��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\t\"\u0004\b\"\u0010\u0007R\u001c\u0010$\u001a\u00020#8��@��X\u0080\u0004¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u0019\u0010\u0005\u001a\u00020\u00048G@\u0006¢\u0006\f\n\u0004\b\u0005\u0010 \u001a\u0004\b\u0005\u0010\tR\"\u0010(\u001a\u00020\u00188��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b(\u0010\u001a\u001a\u0004\b)\u0010\u001c\"\u0004\b*\u0010\u001eR\u0019\u0010\r\u001a\u00020\n8G@\u0006¢\u0006\f\n\u0004\b\r\u0010+\u001a\u0004\b\r\u0010\fR\"\u0010,\u001a\u00020\u00188��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b,\u0010\u001a\u001a\u0004\b-\u0010\u001c\"\u0004\b.\u0010\u001e¨\u00061"}, d2 = {"Lokio/Pipe;", "", "cancel", "()V", "Lokio/Sink;", "sink", "fold", "(Lokio/Sink;)V", "-deprecated_sink", "()Lokio/Sink;", "Lokio/Source;", "-deprecated_source", "()Lokio/Source;", "source", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "block", "forward", "(Lokio/Sink;Lkotlin/Function1;)V", "Lokio/Buffer;", "buffer", "Lokio/Buffer;", "getBuffer$okio", "()Lokio/Buffer;", "", "canceled", "Z", "getCanceled$okio", "()Z", "setCanceled$okio", "(Z)V", "foldedSink", "Lokio/Sink;", "getFoldedSink$okio", "setFoldedSink$okio", "", "maxBufferSize", "J", "getMaxBufferSize$okio", "()J", "sinkClosed", "getSinkClosed$okio", "setSinkClosed$okio", "Lokio/Source;", "sourceClosed", "getSourceClosed$okio", "setSourceClosed$okio", "<init>", "(J)V", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/Pipe.class */
public final class Pipe {
    @NotNull

    /* renamed from: a */
    private final Buffer f24177a;

    /* renamed from: b */
    private boolean f24178b;

    /* renamed from: c */
    private boolean f24179c;

    /* renamed from: d */
    private boolean f24180d;
    @Nullable

    /* renamed from: e */
    private Sink f24181e;
    @NotNull

    /* renamed from: f */
    private final Sink f24182f;

    /* renamed from: g */
    private final long f24183g;

    @NotNull
    /* renamed from: a */
    public final Buffer m109a() {
        return this.f24177a;
    }

    /* renamed from: b */
    public final boolean m108b() {
        return this.f24178b;
    }

    @Nullable
    /* renamed from: c */
    public final Sink m107c() {
        return this.f24181e;
    }

    /* renamed from: d */
    public final long m106d() {
        return this.f24183g;
    }

    /* renamed from: e */
    public final boolean m105e() {
        return this.f24179c;
    }

    /* renamed from: f */
    public final boolean m104f() {
        return this.f24180d;
    }

    /* renamed from: g */
    public final void m103g(boolean z) {
        this.f24179c = z;
    }

    /* renamed from: h */
    public final void m102h(boolean z) {
        this.f24180d = z;
    }

    @JvmName
    @NotNull
    /* renamed from: i */
    public final Sink m101i() {
        return this.f24182f;
    }
}
