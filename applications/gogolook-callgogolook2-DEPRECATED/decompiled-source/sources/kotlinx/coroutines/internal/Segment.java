package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.internal.Segment;
import p459j.p460a.p541n0.C13032a;
import p626l.C14986p;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u000e\n\u0002\u0010��\b \u0018��*\u000e\b��\u0010\u0001*\b\u0012\u0004\u0012\u00028��0��2\u00020\u001cB\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00018��¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\n\u001a\u00020\t2\b\u0010\u0007\u001a\u0004\u0018\u00018��2\b\u0010\b\u001a\u0004\u0018\u00018��¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00028��H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00028��H\u0002¢\u0006\u0004\b\u0010\u0010\u000fJ\r\u0010\u0011\u001a\u00020\r¢\u0006\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0015\u0010\f\u001a\u0004\u0018\u00018��8F@\u0006¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\t8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, m815d2 = {"Lkotlinx/coroutines/internal/Segment;", ExifInterface.LATITUDE_SOUTH, "", "id", "prev", "<init>", "(JLkotlinx/coroutines/internal/Segment;)V", "expected", C13032a.f29462d, "", "casNext", "(Lkotlinx/coroutines/internal/Segment;Lkotlinx/coroutines/internal/Segment;)Z", "next", "", "moveNextToRight", "(Lkotlinx/coroutines/internal/Segment;)V", "movePrevToLeft", "remove", "()V", "J", "getId", "()J", "getNext", "()Lkotlinx/coroutines/internal/Segment;", "getRemoved", "()Z", "removed", "kotlinx-coroutines-core", ""}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/internal/Segment.class */
public abstract class Segment<S extends Segment<S>> {
    public static final AtomicReferenceFieldUpdater _next$FU = AtomicReferenceFieldUpdater.newUpdater(Segment.class, Object.class, "_next");
    public static final AtomicReferenceFieldUpdater prev$FU = AtomicReferenceFieldUpdater.newUpdater(Segment.class, Object.class, "prev");
    public volatile Object _next = null;

    /* renamed from: id */
    public final long f32926id;
    public volatile Object prev;

    public Segment(long j, S s) {
        this.f32926id = j;
        this.prev = null;
        this.prev = s;
    }

    private final void moveNextToRight(S s) {
        Segment segment;
        do {
            Object obj = this._next;
            if (obj != null) {
                segment = (Segment) obj;
                if (s.f32926id <= segment.f32926id) {
                    return;
                }
            } else {
                throw new C14986p("null cannot be cast to non-null type S");
            }
        } while (!_next$FU.compareAndSet(this, segment, s));
    }

    private final void movePrevToLeft(S s) {
        Segment segment;
        do {
            segment = (Segment) this.prev;
            if (segment == null || segment.f32926id <= s.f32926id) {
                return;
            }
        } while (!prev$FU.compareAndSet(this, segment, s));
    }

    public final boolean casNext(S s, S s2) {
        return _next$FU.compareAndSet(this, s, s2);
    }

    public final long getId() {
        return this.f32926id;
    }

    public final S getNext() {
        return (S) ((Segment) this._next);
    }

    public abstract boolean getRemoved();

    /* JADX WARN: Multi-variable type inference failed */
    public final void remove() {
        Segment segment;
        Segment next;
        Segment segment2;
        if (!DebugKt.getASSERTIONS_ENABLED() || getRemoved()) {
            Segment segment3 = (Segment) this._next;
            if (segment3 != null && (segment = (Segment) this.prev) != 0) {
                segment.moveNextToRight(segment3);
                S s = segment;
                while (s.getRemoved() && (segment2 = (Segment) s.prev) != 0) {
                    segment2.moveNextToRight(segment3);
                    s = segment2;
                }
                segment3.movePrevToLeft(s);
                Segment segment4 = segment3;
                while (segment4.getRemoved() && (next = segment4.getNext()) != null) {
                    next.movePrevToLeft(s);
                    segment4 = next;
                }
                return;
            }
            return;
        }
        throw new AssertionError();
    }
}
