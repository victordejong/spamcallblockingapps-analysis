package p092c;

import io.objectbox.model.PropertyFlags;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18273i;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0012\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u000b\b��\u0018�� \u00192\u00020\u0001:\u0001\u0019B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B/\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0002\u0010\u000bJ\u0006\u0010\u000e\u001a\u00020\u000fJ\b\u0010\u0010\u001a\u0004\u0018\u00010��J\u000e\u0010\u0011\u001a\u00020��2\u0006\u0010\u0012\u001a\u00020��J\u0006\u0010\u0013\u001a\u00020��J\u000e\u0010\u0014\u001a\u00020��2\u0006\u0010\u0015\u001a\u00020\u0006J\u0006\u0010\u0016\u001a\u00020��J\u0016\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020��2\u0006\u0010\u0015\u001a\u00020\u0006R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0012\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0014\u0010\f\u001a\u0004\u0018\u00010��8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0014\u0010\r\u001a\u0004\u0018\u00010��8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��¨\u0006\u001a"}, m4298d2 = {"Lokio/Segment;", "", "()V", "data", "", "pos", "", "limit", "shared", "", "owner", "([BIIZZ)V", "next", "prev", "compact", "", "pop", "push", "segment", "sharedCopy", "split", "byteCount", "unsharedCopy", "writeTo", "sink", "Companion", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: c.y */
/* loaded from: classes-dex2jar.jar:c/y.class */
public final class C3229y {

    /* renamed from: h */
    public static final C3230a f11633h = new C3230a(null);

    /* renamed from: a */
    public final byte[] f11634a;

    /* renamed from: b */
    public int f11635b;

    /* renamed from: c */
    public int f11636c;

    /* renamed from: d */
    public boolean f11637d;

    /* renamed from: e */
    public boolean f11638e;

    /* renamed from: f */
    public C3229y f11639f;

    /* renamed from: g */
    public C3229y f11640g;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0006"}, m4298d2 = {"Lokio/Segment$Companion;", "", "()V", "SHARE_MINIMUM", "", "SIZE", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: c.y$a */
    /* loaded from: classes-dex2jar.jar:c/y$a.class */
    public static final class C3230a {
        private C3230a() {
        }

        public /* synthetic */ C3230a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public C3229y() {
        this.f11634a = new byte[PropertyFlags.UNSIGNED];
        this.f11638e = true;
        this.f11637d = false;
    }

    public C3229y(byte[] data, int i, int i2, boolean z, boolean z2) {
        C18524p.m3840d(data, "data");
        this.f11634a = data;
        this.f11635b = i;
        this.f11636c = i2;
        this.f11637d = z;
        this.f11638e = z2;
    }

    /* renamed from: a */
    public final C3229y m39104a() {
        this.f11637d = true;
        return new C3229y(this.f11634a, this.f11635b, this.f11636c, true, false);
    }

    /* renamed from: a */
    public final C3229y m39103a(C3229y segment) {
        C18524p.m3840d(segment, "segment");
        segment.f11640g = this;
        segment.f11639f = this.f11639f;
        C3229y c3229y = this.f11639f;
        C18524p.m3851a(c3229y);
        c3229y.f11640g = segment;
        this.f11639f = segment;
        return segment;
    }

    /* renamed from: a */
    public final void m39102a(C3229y sink, int i) {
        C18524p.m3840d(sink, "sink");
        if (sink.f11638e) {
            int i2 = sink.f11636c;
            if (i2 + i > 8192) {
                if (sink.f11637d) {
                    throw new IllegalArgumentException();
                }
                int i3 = sink.f11635b;
                if ((i2 + i) - i3 > 8192) {
                    throw new IllegalArgumentException();
                }
                byte[] bArr = sink.f11634a;
                C18273i.m4223a(bArr, bArr, 0, i3, i2);
                sink.f11636c -= sink.f11635b;
                sink.f11635b = 0;
            }
            byte[] bArr2 = this.f11634a;
            byte[] bArr3 = sink.f11634a;
            int i4 = sink.f11636c;
            int i5 = this.f11635b;
            C18273i.m4223a(bArr2, bArr3, i4, i5, i5 + i);
            sink.f11636c += i;
            this.f11635b += i;
            return;
        }
        throw new IllegalStateException("only owner can write".toString());
    }

    /* renamed from: b */
    public final C3229y m39101b() {
        byte[] bArr = this.f11634a;
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        C18524p.m3843b(copyOf, "java.util.Arrays.copyOf(this, size)");
        return new C3229y(copyOf, this.f11635b, this.f11636c, false, true);
    }

    /* renamed from: c */
    public final C3229y m39100c() {
        C3229y c3229y = this.f11639f;
        if (c3229y == this) {
            c3229y = null;
        }
        C3229y c3229y2 = this.f11640g;
        C18524p.m3851a(c3229y2);
        c3229y2.f11639f = this.f11639f;
        C3229y c3229y3 = this.f11639f;
        C18524p.m3851a(c3229y3);
        c3229y3.f11640g = this.f11640g;
        this.f11639f = null;
        this.f11640g = null;
        return c3229y;
    }
}
