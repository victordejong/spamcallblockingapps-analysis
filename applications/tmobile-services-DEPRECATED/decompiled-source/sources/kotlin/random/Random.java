package kotlin.random;

import com.google.firebase.messaging.Constants;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http2.Http2Connection;
import org.jetbrains.annotations.NotNull;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\b\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\b\b'\u0018�� %:\u0001%B\u0007¢\u0006\u0004\b#\u0010$J\u0017\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H&¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ+\u0010\n\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\f\u001a\u00020\u00012\b\b\u0002\u0010\r\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\n\u0010\u000eJ\u0017\u0010\n\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\n\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0015J\u001f\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u001b\u0010\u0004J\u001f\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u001b\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0014\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010!J\u001f\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0016\u001a\u00020\u001e2\u0006\u0010\u0014\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010\"¨\u0006&"}, d2 = {"Lkotlin/random/Random;", "", "bitCount", "nextBits", "(I)I", "", "nextBoolean", "()Z", "", "array", "nextBytes", "([B)[B", "fromIndex", "toIndex", "([BII)[B", "size", "(I)[B", "", "nextDouble", "()D", "until", "(D)D", Constants.MessagePayloadKeys.FROM, "(DD)D", "", "nextFloat", "()F", "nextInt", "()I", "(II)I", "", "nextLong", "()J", "(J)J", "(JJ)J", "<init>", "()V", "Default", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/random/Random.class */
public abstract class Random {

    /* renamed from: b */
    public static final Default f20774b = new Default(null);

    /* renamed from: a */
    private static final Random f20773a = PlatformImplementationsKt.f20672a.mo1889b();

    @Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\b\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\t\b\u0086\u0003\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b&\u0010'J\u0017\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ'\u0010\u000b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\u000fJ\u0017\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0016J\u001f\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001c\u0010\u0005J\u001f\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001c\u0010\u001eJ\u000f\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b \u0010!J\u0017\u0010 \u001a\u00020\u001f2\u0006\u0010\u0015\u001a\u00020\u001fH\u0016¢\u0006\u0004\b \u0010\"J\u001f\u0010 \u001a\u00020\u001f2\u0006\u0010\u0017\u001a\u00020\u001f2\u0006\u0010\u0015\u001a\u00020\u001fH\u0016¢\u0006\u0004\b \u0010#R\u0016\u0010$\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006("}, d2 = {"Lkotlin/random/Random$Default;", "Lkotlin/random/Random;", "", "bitCount", "nextBits", "(I)I", "", "nextBoolean", "()Z", "", "array", "nextBytes", "([B)[B", "fromIndex", "toIndex", "([BII)[B", "size", "(I)[B", "", "nextDouble", "()D", "until", "(D)D", Constants.MessagePayloadKeys.FROM, "(DD)D", "", "nextFloat", "()F", "nextInt", "()I", "(II)I", "", "nextLong", "()J", "(J)J", "(JJ)J", "defaultRandom", "Lkotlin/random/Random;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/random/Random$Default.class */
    public static final class Default extends Random {
        private Default() {
        }

        public /* synthetic */ Default(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // kotlin.random.Random
        /* renamed from: b */
        public int mo1755b(int i) {
            return Random.f20773a.mo1755b(i);
        }

        @Override // kotlin.random.Random
        /* renamed from: c */
        public boolean mo1766c() {
            return Random.f20773a.mo1766c();
        }

        @Override // kotlin.random.Random
        @NotNull
        /* renamed from: d */
        public byte[] mo1765d(@NotNull byte[] array) {
            Intrinsics.m1830e(array, "array");
            return Random.f20773a.mo1765d(array);
        }

        @Override // kotlin.random.Random
        @NotNull
        /* renamed from: e */
        public byte[] mo1764e(@NotNull byte[] array, int i, int i2) {
            Intrinsics.m1830e(array, "array");
            return Random.f20773a.mo1764e(array, i, i2);
        }

        @Override // kotlin.random.Random
        /* renamed from: f */
        public double mo1763f() {
            return Random.f20773a.mo1763f();
        }

        @Override // kotlin.random.Random
        /* renamed from: g */
        public float mo1762g() {
            return Random.f20773a.mo1762g();
        }

        @Override // kotlin.random.Random
        /* renamed from: h */
        public int mo1754h() {
            return Random.f20773a.mo1754h();
        }

        @Override // kotlin.random.Random
        /* renamed from: i */
        public int mo1761i(int i) {
            return Random.f20773a.mo1761i(i);
        }

        @Override // kotlin.random.Random
        /* renamed from: j */
        public int mo1753j(int i, int i2) {
            return Random.f20773a.mo1753j(i, i2);
        }

        @Override // kotlin.random.Random
        /* renamed from: k */
        public long mo1760k() {
            return Random.f20773a.mo1760k();
        }
    }

    /* renamed from: b */
    public abstract int mo1755b(int i);

    /* renamed from: c */
    public boolean mo1766c() {
        boolean z = true;
        if (mo1755b(1) == 0) {
            z = false;
        }
        return z;
    }

    @NotNull
    /* renamed from: d */
    public byte[] mo1765d(@NotNull byte[] array) {
        Intrinsics.m1830e(array, "array");
        return mo1764e(array, 0, array.length);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0102  */
    @org.jetbrains.annotations.NotNull
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] mo1764e(@org.jetbrains.annotations.NotNull byte[] r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.random.Random.mo1764e(byte[], int, int):byte[]");
    }

    /* renamed from: f */
    public double mo1763f() {
        return PlatformRandomKt.m1768a(mo1755b(26), mo1755b(27));
    }

    /* renamed from: g */
    public float mo1762g() {
        return mo1755b(24) / ((float) Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE);
    }

    /* renamed from: h */
    public int mo1754h() {
        return mo1755b(32);
    }

    /* renamed from: i */
    public int mo1761i(int i) {
        return mo1753j(0, i);
    }

    /* renamed from: j */
    public int mo1753j(int i, int i2) {
        int i3;
        int h;
        RandomKt.m1758b(i, i2);
        int i4 = i2 - i;
        if (i4 > 0 || i4 == Integer.MIN_VALUE) {
            if (((-i4) & i4) == i4) {
                i3 = mo1755b(RandomKt.m1757c(i4));
            } else {
                do {
                    h = mo1754h() >>> 1;
                    i3 = h % i4;
                } while ((h - i3) + (i4 - 1) < 0);
            }
            return i + i3;
        }
        while (true) {
            int h2 = mo1754h();
            if (i <= h2 && i2 > h2) {
                return h2;
            }
        }
    }

    /* renamed from: k */
    public long mo1760k() {
        return (mo1754h() << 32) + mo1754h();
    }
}
