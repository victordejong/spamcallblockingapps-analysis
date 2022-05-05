package okio;

import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u000f\u0010\u0003\u001a\u00020��H\u0007¢\u0006\u0004\b\u0001\u0010\u0002\u001a\u0011\u0010\u0005\u001a\u00020\u0004*\u00020��¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u0011\u0010\u0005\u001a\u00020\b*\u00020\u0007¢\u0006\u0004\b\u0005\u0010\t¨\u0006\n"}, d2 = {"Lokio/Sink;", "blackhole", "()Lokio/Sink;", "blackholeSink", "Lokio/BufferedSink;", "buffer", "(Lokio/Sink;)Lokio/BufferedSink;", "Lokio/Source;", "Lokio/BufferedSource;", "(Lokio/Source;)Lokio/BufferedSource;", "okio"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "okio/Okio")
/* loaded from: classes2-dex2jar.jar:okio/Okio__OkioKt.class */
public final /* synthetic */ class Okio__OkioKt {
    @JvmName
    @NotNull
    /* renamed from: a */
    public static final Sink m124a() {
        return new BlackholeSink();
    }

    @NotNull
    /* renamed from: b */
    public static final BufferedSink m123b(@NotNull Sink buffer) {
        Intrinsics.m1830e(buffer, "$this$buffer");
        return new RealBufferedSink(buffer);
    }

    @NotNull
    /* renamed from: c */
    public static final BufferedSource m122c(@NotNull Source buffer) {
        Intrinsics.m1830e(buffer, "$this$buffer");
        return new RealBufferedSource(buffer);
    }
}
