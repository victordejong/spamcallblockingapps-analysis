package kotlinx.coroutines.test;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.internal.ThreadSafeHeap;
import kotlinx.coroutines.internal.ThreadSafeHeapNode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B'\u0012\n\u0010\t\u001a\u00060\u0002j\u0002`\u001e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e\u0012\b\b\u0002\u0010 \u001a\u00020\u000e¢\u0006\u0004\b!\u0010\"J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020��H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rR\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R(\u0010\u0012\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00118\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010\u0018\u001a\u00020\u00058\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\t\u001a\u00060\u0002j\u0002`\u001e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u001fR\u0016\u0010 \u001a\u00020\u000e8��@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b \u0010\u0010¨\u0006#"}, d2 = {"Lkotlinx/coroutines/test/TimedRunnableObsolete;", "Ljava/lang/Comparable;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "other", "", "compareTo", "(Lkotlinx/coroutines/test/TimedRunnableObsolete;)I", "", "run", "()V", "", "toString", "()Ljava/lang/String;", "", "count", "J", "Lkotlinx/coroutines/internal/ThreadSafeHeap;", "heap", "Lkotlinx/coroutines/internal/ThreadSafeHeap;", "getHeap", "()Lkotlinx/coroutines/internal/ThreadSafeHeap;", "setHeap", "(Lkotlinx/coroutines/internal/ThreadSafeHeap;)V", FirebaseAnalytics.Param.INDEX, "I", "getIndex", "()I", "setIndex", "(I)V", "Lkotlinx/coroutines/Runnable;", "Ljava/lang/Runnable;", "time", "<init>", "(Ljava/lang/Runnable;JJ)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/test/TimedRunnableObsolete.class */
public final class TimedRunnableObsolete implements Comparable<TimedRunnableObsolete>, Runnable, ThreadSafeHeapNode {
    @Nullable

    /* renamed from: f */
    private ThreadSafeHeap<?> f24114f;

    /* renamed from: g */
    private int f24115g;

    /* renamed from: h */
    private final Runnable f24116h;

    /* renamed from: i */
    private final long f24117i;
    @JvmField

    /* renamed from: j */
    public final long f24118j;

    public TimedRunnableObsolete(@NotNull Runnable runnable, long j, long j2) {
        this.f24116h = runnable;
        this.f24117i = j;
        this.f24118j = j2;
    }

    public /* synthetic */ TimedRunnableObsolete(Runnable runnable, long j, long j2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(runnable, (i & 2) != 0 ? 0L : j, (i & 4) != 0 ? 0L : j2);
    }

    @Override // kotlinx.coroutines.internal.ThreadSafeHeapNode
    /* renamed from: a */
    public void mo240a(@Nullable ThreadSafeHeap<?> threadSafeHeap) {
        this.f24114f = threadSafeHeap;
    }

    @Override // kotlinx.coroutines.internal.ThreadSafeHeapNode
    @Nullable
    /* renamed from: b */
    public ThreadSafeHeap<?> mo239b() {
        return this.f24114f;
    }

    @Override // kotlinx.coroutines.internal.ThreadSafeHeapNode
    /* renamed from: e */
    public void mo238e(int i) {
        this.f24115g = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Unknown variable types count: 4 */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int compareTo(@org.jetbrains.annotations.NotNull kotlinx.coroutines.test.TimedRunnableObsolete r6) {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f24118j
            r7 = r0
            r0 = r6
            long r0 = r0.f24118j
            r9 = r0
            r0 = r7
            r11 = r0
            r0 = r9
            r13 = r0
            r0 = r7
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0025
            r0 = r5
            long r0 = r0.f24117i
            r11 = r0
            r0 = r6
            long r0 = r0.f24117i
            r13 = r0
        L_0x0025:
            r0 = r11
            r1 = r13
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.test.TimedRunnableObsolete.compareTo(kotlinx.coroutines.test.TimedRunnableObsolete):int");
    }

    @Override // kotlinx.coroutines.internal.ThreadSafeHeapNode
    public int getIndex() {
        return this.f24115g;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f24116h.run();
    }

    @NotNull
    public String toString() {
        return "TimedRunnable(time=" + this.f24118j + ", run=" + this.f24116h + ')';
    }
}
