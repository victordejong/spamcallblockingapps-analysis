package io.grpc.internal;

import androidx.recyclerview.widget.RecyclerView;
import java.io.Closeable;
import java.util.zip.CRC32;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import java.util.zip.ZipException;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.p532v0.AbstractC9377i1;
import p530d.p531a.p532v0.C9486r;
/* loaded from: classes2-dex2jar.jar:io/grpc/internal/GzipInflatingBuffer.class */
public class GzipInflatingBuffer implements Closeable {

    /* renamed from: e */
    public int f38079e;

    /* renamed from: f */
    public int f38080f;

    /* renamed from: g */
    public Inflater f38081g;

    /* renamed from: j */
    public int f38084j;

    /* renamed from: k */
    public int f38085k;

    /* renamed from: l */
    public long f38086l;

    /* renamed from: a */
    public final C9486r f38075a = new C9486r();

    /* renamed from: b */
    public final CRC32 f38076b = new CRC32();

    /* renamed from: c */
    public final C10330b f38077c = new C10330b(this, null);

    /* renamed from: d */
    public final byte[] f38078d = new byte[RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN];

    /* renamed from: h */
    public State f38082h = State.HEADER;

    /* renamed from: i */
    public boolean f38083i = false;

    /* renamed from: m */
    public int f38087m = 0;

    /* renamed from: n */
    public int f38088n = 0;

    /* renamed from: o */
    public boolean f38089o = true;

    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/GzipInflatingBuffer$State.class */
    public enum State {
        HEADER,
        HEADER_EXTRA_LEN,
        HEADER_EXTRA,
        HEADER_NAME,
        HEADER_COMMENT,
        HEADER_CRC,
        INITIALIZE_INFLATER,
        INFLATING,
        INFLATER_NEEDS_INPUT,
        TRAILER
    }

    /* renamed from: io.grpc.internal.GzipInflatingBuffer$a */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/GzipInflatingBuffer$a.class */
    public static /* synthetic */ class C10329a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f38090a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x007d -> B:51:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0081 -> B:45:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0085 -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0089 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x008d -> B:49:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0091 -> B:43:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0095 -> B:39:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0099 -> B:33:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x009d -> B:47:0x0070). Please submit an issue!!! */
        static {
            int[] iArr = new int[State.values().length];
            f38090a = iArr;
            try {
                iArr[State.HEADER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f38090a[State.HEADER_EXTRA_LEN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f38090a[State.HEADER_EXTRA.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f38090a[State.HEADER_NAME.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f38090a[State.HEADER_COMMENT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f38090a[State.HEADER_CRC.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f38090a[State.INITIALIZE_INFLATER.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f38090a[State.INFLATING.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f38090a[State.INFLATER_NEEDS_INPUT.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f38090a[State.TRAILER.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    /* renamed from: io.grpc.internal.GzipInflatingBuffer$b */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/GzipInflatingBuffer$b.class */
    public class C10330b {
        public C10330b() {
        }

        public /* synthetic */ C10330b(GzipInflatingBuffer gzipInflatingBuffer, C10329a aVar) {
            this();
        }

        /* renamed from: a */
        public final void m489a(int i) {
            int i2;
            int i3 = GzipInflatingBuffer.this.f38080f - GzipInflatingBuffer.this.f38079e;
            if (i3 > 0) {
                int min = Math.min(i3, i);
                GzipInflatingBuffer.this.f38076b.update(GzipInflatingBuffer.this.f38078d, GzipInflatingBuffer.this.f38079e, min);
                GzipInflatingBuffer.m510a(GzipInflatingBuffer.this, min);
                i2 = i - min;
            } else {
                i2 = i;
            }
            if (i2 > 0) {
                byte[] bArr = new byte[RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN];
                int i4 = 0;
                while (i4 < i2) {
                    int min2 = Math.min(i2 - i4, (int) RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN);
                    GzipInflatingBuffer.this.f38075a.mo2357a(bArr, 0, min2);
                    GzipInflatingBuffer.this.f38076b.update(bArr, 0, min2);
                    i4 += min2;
                }
            }
            GzipInflatingBuffer.m507b(GzipInflatingBuffer.this, i);
        }

        /* renamed from: a */
        public final boolean m490a() {
            while (m480e() > 0) {
                if (m486b() == 0) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: b */
        public final int m486b() {
            int i;
            if (GzipInflatingBuffer.this.f38080f - GzipInflatingBuffer.this.f38079e > 0) {
                i = GzipInflatingBuffer.this.f38078d[GzipInflatingBuffer.this.f38079e] & 255;
                GzipInflatingBuffer.m510a(GzipInflatingBuffer.this, 1);
            } else {
                i = GzipInflatingBuffer.this.f38075a.readUnsignedByte();
            }
            GzipInflatingBuffer.this.f38076b.update(i);
            GzipInflatingBuffer.m507b(GzipInflatingBuffer.this, 1);
            return i;
        }

        /* renamed from: c */
        public final long m484c() {
            return m482d() | (m482d() << 16);
        }

        /* renamed from: d */
        public final int m482d() {
            return m486b() | (m486b() << 8);
        }

        /* renamed from: e */
        public final int m480e() {
            return (GzipInflatingBuffer.this.f38080f - GzipInflatingBuffer.this.f38079e) + GzipInflatingBuffer.this.f38075a.mo2358Y();
        }
    }

    /* renamed from: a */
    public static /* synthetic */ int m510a(GzipInflatingBuffer gzipInflatingBuffer, int i) {
        int i2 = gzipInflatingBuffer.f38079e + i;
        gzipInflatingBuffer.f38079e = i2;
        return i2;
    }

    /* renamed from: b */
    public static /* synthetic */ int m507b(GzipInflatingBuffer gzipInflatingBuffer, int i) {
        int i2 = gzipInflatingBuffer.f38087m + i;
        gzipInflatingBuffer.f38087m = i2;
        return i2;
    }

    /* renamed from: a */
    public void m512a(AbstractC9377i1 i1Var) {
        C4933n.m24775b(!this.f38083i, "GzipInflatingBuffer is closed");
        this.f38075a.m2641a(i1Var);
        this.f38089o = false;
    }

    /* renamed from: a */
    public final boolean m513a() {
        C4933n.m24775b(this.f38081g != null, "inflater is null");
        C4933n.m24775b(this.f38079e == this.f38080f, "inflaterInput has unconsumed bytes");
        int min = Math.min(this.f38075a.mo2358Y(), (int) RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN);
        if (min == 0) {
            return false;
        }
        this.f38079e = 0;
        this.f38080f = min;
        this.f38075a.mo2357a(this.f38078d, 0, min);
        this.f38081g.setInput(this.f38078d, this.f38079e, min);
        this.f38082h = State.INFLATING;
        return true;
    }

    /* renamed from: b */
    public int m509b() {
        int i = this.f38087m;
        this.f38087m = 0;
        return i;
    }

    /* renamed from: b */
    public final int m506b(byte[] bArr, int i, int i2) throws DataFormatException, ZipException {
        C4933n.m24775b(this.f38081g != null, "inflater is null");
        try {
            int totalIn = this.f38081g.getTotalIn();
            int inflate = this.f38081g.inflate(bArr, i, i2);
            int totalIn2 = this.f38081g.getTotalIn() - totalIn;
            this.f38087m += totalIn2;
            this.f38088n += totalIn2;
            this.f38079e += totalIn2;
            this.f38076b.update(bArr, i, inflate);
            if (this.f38081g.finished()) {
                this.f38086l = this.f38081g.getBytesWritten() & 4294967295L;
                this.f38082h = State.TRAILER;
            } else if (this.f38081g.needsInput()) {
                this.f38082h = State.INFLATER_NEEDS_INPUT;
            }
            return inflate;
        } catch (DataFormatException e) {
            throw new DataFormatException("Inflater data format exception: " + e.getMessage());
        }
    }

    /* renamed from: c */
    public int m505c() {
        int i = this.f38088n;
        this.f38088n = 0;
        return i;
    }

    /* renamed from: c */
    public int m503c(byte[] bArr, int i, int i2) throws DataFormatException, ZipException {
        int i3;
        C4933n.m24775b(!this.f38083i, "GzipInflatingBuffer is closed");
        boolean z = true;
        int i4 = 0;
        while (z && (i3 = i2 - i4) > 0) {
            switch (C10329a.f38090a[this.f38082h.ordinal()]) {
                case 1:
                    z = m497g();
                    break;
                case 2:
                    z = m493k();
                    break;
                case 3:
                    z = m494j();
                    break;
                case 4:
                    z = m492l();
                    break;
                case 5:
                    z = m496h();
                    break;
                case 6:
                    z = m495i();
                    break;
                case 7:
                    z = m500e();
                    break;
                case 8:
                    i4 += m506b(bArr, i + i4, i3);
                    if (this.f38082h != State.TRAILER) {
                        z = true;
                        break;
                    } else {
                        z = m491m();
                        break;
                    }
                case 9:
                    z = m513a();
                    break;
                case 10:
                    z = m491m();
                    break;
                default:
                    throw new AssertionError("Invalid state: " + this.f38082h);
            }
        }
        boolean z2 = true;
        if (z) {
            z2 = this.f38082h == State.HEADER && this.f38077c.m480e() < 10;
        }
        this.f38089o = z2;
        return i4;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.f38083i) {
            this.f38083i = true;
            this.f38075a.close();
            Inflater inflater = this.f38081g;
            if (inflater != null) {
                inflater.end();
                this.f38081g = null;
            }
        }
    }

    /* renamed from: d */
    public boolean m502d() {
        C4933n.m24775b(!this.f38083i, "GzipInflatingBuffer is closed");
        boolean z = true;
        if (this.f38077c.m480e() == 0) {
            z = this.f38082h != State.HEADER;
        }
        return z;
    }

    /* renamed from: e */
    public final boolean m500e() {
        Inflater inflater = this.f38081g;
        if (inflater == null) {
            this.f38081g = new Inflater(true);
        } else {
            inflater.reset();
        }
        this.f38076b.reset();
        int i = this.f38080f;
        int i2 = this.f38079e;
        int i3 = i - i2;
        if (i3 > 0) {
            this.f38081g.setInput(this.f38078d, i2, i3);
            this.f38082h = State.INFLATING;
            return true;
        }
        this.f38082h = State.INFLATER_NEEDS_INPUT;
        return true;
    }

    /* renamed from: f */
    public boolean m498f() {
        C4933n.m24775b(!this.f38083i, "GzipInflatingBuffer is closed");
        return this.f38089o;
    }

    /* renamed from: g */
    public final boolean m497g() throws ZipException {
        if (this.f38077c.m480e() < 10) {
            return false;
        }
        if (this.f38077c.m482d() != 35615) {
            throw new ZipException("Not in GZIP format");
        } else if (this.f38077c.m486b() == 8) {
            this.f38084j = this.f38077c.m486b();
            this.f38077c.m489a(6);
            this.f38082h = State.HEADER_EXTRA_LEN;
            return true;
        } else {
            throw new ZipException("Unsupported compression method");
        }
    }

    /* renamed from: h */
    public final boolean m496h() {
        if ((this.f38084j & 16) != 16) {
            this.f38082h = State.HEADER_CRC;
            return true;
        } else if (!this.f38077c.m490a()) {
            return false;
        } else {
            this.f38082h = State.HEADER_CRC;
            return true;
        }
    }

    /* renamed from: i */
    public final boolean m495i() throws ZipException {
        if ((this.f38084j & 2) != 2) {
            this.f38082h = State.INITIALIZE_INFLATER;
            return true;
        } else if (this.f38077c.m480e() < 2) {
            return false;
        } else {
            if ((65535 & ((int) this.f38076b.getValue())) == this.f38077c.m482d()) {
                this.f38082h = State.INITIALIZE_INFLATER;
                return true;
            }
            throw new ZipException("Corrupt GZIP header");
        }
    }

    /* renamed from: j */
    public final boolean m494j() {
        int e = this.f38077c.m480e();
        int i = this.f38085k;
        if (e < i) {
            return false;
        }
        this.f38077c.m489a(i);
        this.f38082h = State.HEADER_NAME;
        return true;
    }

    /* renamed from: k */
    public final boolean m493k() {
        if ((this.f38084j & 4) != 4) {
            this.f38082h = State.HEADER_NAME;
            return true;
        } else if (this.f38077c.m480e() < 2) {
            return false;
        } else {
            this.f38085k = this.f38077c.m482d();
            this.f38082h = State.HEADER_EXTRA;
            return true;
        }
    }

    /* renamed from: l */
    public final boolean m492l() {
        if ((this.f38084j & 8) != 8) {
            this.f38082h = State.HEADER_COMMENT;
            return true;
        } else if (!this.f38077c.m490a()) {
            return false;
        } else {
            this.f38082h = State.HEADER_COMMENT;
            return true;
        }
    }

    /* renamed from: m */
    public final boolean m491m() throws ZipException {
        if (this.f38081g != null && this.f38077c.m480e() <= 18) {
            this.f38081g.end();
            this.f38081g = null;
        }
        if (this.f38077c.m480e() < 8) {
            return false;
        }
        if (this.f38076b.getValue() == this.f38077c.m484c() && this.f38086l == this.f38077c.m484c()) {
            this.f38076b.reset();
            this.f38082h = State.HEADER;
            return true;
        }
        throw new ZipException("Corrupt GZIP trailer");
    }
}
