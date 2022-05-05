package okio;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0012\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\t\b��\u0018�� !:\u0001!B\t\b\u0016¢\u0006\u0004\b\u001f\u0010\u0003B1\b\u0016\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u001c\u001a\u00020\n\u0012\u0006\u0010\u0015\u001a\u00020\n\u0012\u0006\u0010\u001e\u001a\u00020\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001f\u0010 J\r\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0004\u001a\u0004\u0018\u00010��¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\u0007\u001a\u00020��2\u0006\u0010\u0006\u001a\u00020��¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\t\u001a\u00020��¢\u0006\u0004\b\t\u0010\u0005J\u0015\u0010\f\u001a\u00020��2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000e\u001a\u00020��¢\u0006\u0004\b\u000e\u0010\u0005J\u001d\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020��2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00020\u00128\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0017\u001a\u0004\u0018\u00010��8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001a\u001a\u00020\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001c\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u0016R\u0018\u0010\u001d\u001a\u0004\u0018\u00010��8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u0018R\u0016\u0010\u001e\u001a\u00020\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001b¨\u0006\""}, d2 = {"Lokio/Segment;", "", "compact", "()V", "pop", "()Lokio/Segment;", "segment", "push", "(Lokio/Segment;)Lokio/Segment;", "sharedCopy", "", "byteCount", "split", "(I)Lokio/Segment;", "unsharedCopy", "sink", "writeTo", "(Lokio/Segment;I)V", "", "data", "[B", "limit", "I", "next", "Lokio/Segment;", "", "owner", "Z", "pos", "prev", "shared", "<init>", "([BIIZZ)V", "Companion", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/Segment.class */
public final class Segment {
    @JvmField
    @NotNull

    /* renamed from: a */
    public final byte[] f24196a;
    @JvmField

    /* renamed from: b */
    public int f24197b;
    @JvmField

    /* renamed from: c */
    public int f24198c;
    @JvmField

    /* renamed from: d */
    public boolean f24199d;
    @JvmField

    /* renamed from: e */
    public boolean f24200e;
    @JvmField
    @Nullable

    /* renamed from: f */
    public Segment f24201f;
    @JvmField
    @Nullable

    /* renamed from: g */
    public Segment f24202g;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0002\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003R\u0016\u0010\u0004\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0004\u0010\u0003¨\u0006\u0007"}, d2 = {"Lokio/Segment$Companion;", "", "SHARE_MINIMUM", "I", "SIZE", "<init>", "()V", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okio/Segment$Companion.class */
    public static final class Companion {
        private Companion() {
        }
    }

    public Segment() {
        this.f24196a = new byte[8192];
        this.f24200e = true;
        this.f24199d = false;
    }

    public Segment(@NotNull byte[] data, int i, int i2, boolean z, boolean z2) {
        Intrinsics.m1830e(data, "data");
        this.f24196a = data;
        this.f24197b = i;
        this.f24198c = i2;
        this.f24199d = z;
        this.f24200e = z2;
    }

    /* renamed from: a */
    public final void m59a() {
        int i = 0;
        if (this.f24202g != this) {
            Segment segment = this.f24202g;
            Intrinsics.m1832c(segment);
            if (segment.f24200e) {
                int i2 = this.f24198c - this.f24197b;
                Segment segment2 = this.f24202g;
                Intrinsics.m1832c(segment2);
                int i3 = segment2.f24198c;
                Segment segment3 = this.f24202g;
                Intrinsics.m1832c(segment3);
                if (!segment3.f24199d) {
                    Segment segment4 = this.f24202g;
                    Intrinsics.m1832c(segment4);
                    i = segment4.f24197b;
                }
                if (i2 <= (8192 - i3) + i) {
                    Segment segment5 = this.f24202g;
                    Intrinsics.m1832c(segment5);
                    m53g(segment5, i2);
                    m58b();
                    SegmentPool.m51b(this);
                    return;
                }
                return;
            }
            return;
        }
        throw new IllegalStateException("cannot compact".toString());
    }

    @Nullable
    /* renamed from: b */
    public final Segment m58b() {
        Segment segment = this.f24201f;
        if (segment == this) {
            segment = null;
        }
        Segment segment2 = this.f24202g;
        Intrinsics.m1832c(segment2);
        segment2.f24201f = this.f24201f;
        Segment segment3 = this.f24201f;
        Intrinsics.m1832c(segment3);
        segment3.f24202g = this.f24202g;
        this.f24201f = null;
        this.f24202g = null;
        return segment;
    }

    @NotNull
    /* renamed from: c */
    public final Segment m57c(@NotNull Segment segment) {
        Intrinsics.m1830e(segment, "segment");
        segment.f24202g = this;
        segment.f24201f = this.f24201f;
        Segment segment2 = this.f24201f;
        Intrinsics.m1832c(segment2);
        segment2.f24202g = segment;
        this.f24201f = segment;
        return segment;
    }

    @NotNull
    /* renamed from: d */
    public final Segment m56d() {
        this.f24199d = true;
        return new Segment(this.f24196a, this.f24197b, this.f24198c, true, false);
    }

    @NotNull
    /* renamed from: e */
    public final Segment m55e(int i) {
        Segment segment;
        if (i > 0 && i <= this.f24198c - this.f24197b) {
            if (i >= 1024) {
                segment = m56d();
            } else {
                segment = SegmentPool.m50c();
                byte[] bArr = this.f24196a;
                byte[] bArr2 = segment.f24196a;
                int i2 = this.f24197b;
                ArraysKt___ArraysJvmKt.m2301e(bArr, bArr2, 0, i2, i2 + i, 2, null);
            }
            segment.f24198c = segment.f24197b + i;
            this.f24197b += i;
            Segment segment2 = this.f24202g;
            Intrinsics.m1832c(segment2);
            segment2.m57c(segment);
            return segment;
        }
        throw new IllegalArgumentException("byteCount out of range".toString());
    }

    @NotNull
    /* renamed from: f */
    public final Segment m54f() {
        byte[] bArr = this.f24196a;
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        Intrinsics.m1831d(copyOf, "java.util.Arrays.copyOf(this, size)");
        return new Segment(copyOf, this.f24197b, this.f24198c, false, true);
    }

    /* renamed from: g */
    public final void m53g(@NotNull Segment sink, int i) {
        Intrinsics.m1830e(sink, "sink");
        if (sink.f24200e) {
            int i2 = sink.f24198c;
            if (i2 + i > 8192) {
                if (!sink.f24199d) {
                    int i3 = sink.f24197b;
                    if ((i2 + i) - i3 <= 8192) {
                        byte[] bArr = sink.f24196a;
                        ArraysKt___ArraysJvmKt.m2301e(bArr, bArr, 0, i3, i2, 2, null);
                        sink.f24198c -= sink.f24197b;
                        sink.f24197b = 0;
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else {
                    throw new IllegalArgumentException();
                }
            }
            byte[] bArr2 = this.f24196a;
            byte[] bArr3 = sink.f24196a;
            int i4 = sink.f24198c;
            int i5 = this.f24197b;
            ArraysKt___ArraysJvmKt.m2303c(bArr2, bArr3, i4, i5, i5 + i);
            sink.f24198c += i;
            this.f24197b += i;
            return;
        }
        throw new IllegalStateException("only owner can write".toString());
    }
}
