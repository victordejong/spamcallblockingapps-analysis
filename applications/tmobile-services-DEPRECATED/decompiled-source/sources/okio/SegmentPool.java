package okio;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u0011\n\u0002\b\u0005\bÀ\u0002\u0018��B\t\b\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\t\u0010\nR\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u000e\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u00020\u000b8\u0006@\u0006X\u0086D¢\u0006\f\n\u0004\b\u0010\u0010\r\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0014\u001a\u00020\u000b8F@\u0006¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0012R$\u0010\u0016\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00010\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"Lokio/SegmentPool;", "Ljava/util/concurrent/atomic/AtomicReference;", "Lokio/Segment;", "firstRef", "()Ljava/util/concurrent/atomic/AtomicReference;", "segment", "", "recycle", "(Lokio/Segment;)V", "take", "()Lokio/Segment;", "", "HASH_BUCKET_COUNT", "I", "LOCK", "Lokio/Segment;", "MAX_SIZE", "getMAX_SIZE", "()I", "getByteCount", "byteCount", "", "hashBuckets", "[Ljava/util/concurrent/atomic/AtomicReference;", "<init>", "()V", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/SegmentPool.class */
public final class SegmentPool {

    /* renamed from: a */
    private static final int f24203a = 65536;

    /* renamed from: c */
    private static final int f24205c;

    /* renamed from: d */
    private static final AtomicReference<Segment>[] f24206d;

    /* renamed from: e */
    public static final SegmentPool f24207e = new SegmentPool();

    /* renamed from: b */
    private static final Segment f24204b = new Segment(new byte[0], 0, 0, false, false);

    static {
        int highestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        f24205c = highestOneBit;
        AtomicReference<Segment>[] atomicReferenceArr = new AtomicReference[highestOneBit];
        for (int i = 0; i < highestOneBit; i++) {
            atomicReferenceArr[i] = new AtomicReference<>();
        }
        f24206d = atomicReferenceArr;
    }

    private SegmentPool() {
    }

    /* renamed from: a */
    private final AtomicReference<Segment> m52a() {
        Thread currentThread = Thread.currentThread();
        Intrinsics.m1831d(currentThread, "Thread.currentThread()");
        return f24206d[(int) (currentThread.getId() & (f24205c - 1))];
    }

    @JvmStatic
    /* renamed from: b */
    public static final void m51b(@NotNull Segment segment) {
        AtomicReference<Segment> a;
        Segment segment2;
        Intrinsics.m1830e(segment, "segment");
        if (!(segment.f24201f == null && segment.f24202g == null)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        } else if (!segment.f24199d && (segment2 = (a = f24207e.m52a()).get()) != f24204b) {
            int i = segment2 != null ? segment2.f24198c : 0;
            if (i < f24203a) {
                segment.f24201f = segment2;
                segment.f24197b = 0;
                segment.f24198c = i + 8192;
                if (!a.compareAndSet(segment2, segment)) {
                    segment.f24201f = null;
                }
            }
        }
    }

    @JvmStatic
    @NotNull
    /* renamed from: c */
    public static final Segment m50c() {
        AtomicReference<Segment> a = f24207e.m52a();
        Segment andSet = a.getAndSet(f24204b);
        if (andSet == f24204b) {
            return new Segment();
        }
        if (andSet == null) {
            a.set(null);
            return new Segment();
        }
        a.set(andSet.f24201f);
        andSet.f24201f = null;
        andSet.f24198c = 0;
        return andSet;
    }
}
