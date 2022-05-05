package okio;

import android.support.p001v4.media.session.PlaybackStateCompat;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018��B\t\b\u0016¢\u0006\u0004\b\u001c\u0010\u001dB\u0011\b��\u0012\u0006\u0010\u001a\u001a\u00020\u0001¢\u0006\u0004\b\u001c\u0010\u0017J\u001f\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H��¢\u0006\u0004\b\u0004\u0010\u0005J+\u0010\u0007\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00012\b\b\u0002\u0010\b\u001a\u00020\u00012\b\b\u0002\u0010\t\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0007\u0010\u000bJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H��¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0013\u0010\u0018\u001a\u00020\u0001*\u00020\u0001H\u0002¢\u0006\u0004\b\u0018\u0010\u0013J\u0013\u0010\u0019\u001a\u00020\u0001*\u00020\u0001H\u0002¢\u0006\u0004\b\u0019\u0010\u0013R\u0016\u0010\u001a\u001a\u00020\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u0007\u001a\u00020\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\u001bR\u0016\u0010\t\u001a\u00020\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u001bR\u0016\u0010\b\u001a\u00020\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\u001b¨\u0006\u001e"}, d2 = {"Lokio/Throttler;", "", "now", "byteCount", "byteCountOrWaitNanos$okio", "(JJ)J", "byteCountOrWaitNanos", "bytesPerSecond", "waitByteCount", "maxByteCount", "", "(JJJ)V", "Lokio/Sink;", "sink", "(Lokio/Sink;)Lokio/Sink;", "Lokio/Source;", "source", "(Lokio/Source;)Lokio/Source;", "take$okio", "(J)J", "take", "nanosToWait", "waitNanos", "(J)V", "bytesToNanos", "nanosToBytes", "allocatedUntil", "J", "<init>", "()V", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/Throttler.class */
public final class Throttler {

    /* renamed from: a */
    private long f24211a;

    /* renamed from: b */
    private long f24212b;

    /* renamed from: c */
    private long f24213c;

    /* renamed from: d */
    private long f24214d;

    public Throttler() {
        this(System.nanoTime());
    }

    public Throttler(long j) {
        this.f24214d = j;
        this.f24212b = PlaybackStateCompat.ACTION_PLAY_FROM_URI;
        this.f24213c = PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
    }

    /* renamed from: b */
    private final long m34b(long j) {
        return (j * 1000000000) / this.f24211a;
    }

    /* renamed from: c */
    private final long m33c(long j) {
        return (j * this.f24211a) / 1000000000;
    }

    /* renamed from: e */
    private final void m31e(long j) {
        long j2 = j / 1000000;
        wait(j2, (int) (j - (1000000 * j2)));
    }

    /* renamed from: a */
    public final long m35a(long j, long j2) {
        if (this.f24211a == 0) {
            return j2;
        }
        long max = Math.max(this.f24214d - j, 0L);
        long c = this.f24213c - m33c(max);
        if (c >= j2) {
            this.f24214d = j + max + m34b(j2);
            return j2;
        }
        long j3 = this.f24212b;
        if (c >= j3) {
            this.f24214d = j + m34b(this.f24213c);
            return c;
        }
        long min = Math.min(j3, j2);
        long b = max + m34b(min - this.f24213c);
        if (b != 0) {
            return -b;
        }
        this.f24214d = j + m34b(this.f24213c);
        return min;
    }

    /* renamed from: d */
    public final long m32d(long j) {
        long a;
        if (j > 0) {
            synchronized (this) {
                while (true) {
                    a = m35a(System.nanoTime(), j);
                    if (a < 0) {
                        m31e(-a);
                    }
                }
            }
            return a;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }
}
