package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.text.TextUtils;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.Socket;
import java.net.SocketException;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aau.class */
final class aau implements drp {

    /* renamed from: a */
    private static final Pattern f7682a = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: b */
    private static final AtomicReference<byte[]> f7683b = new AtomicReference<>();

    /* renamed from: d */
    private final int f7685d;

    /* renamed from: e */
    private final int f7686e;

    /* renamed from: f */
    private final String f7687f;

    /* renamed from: h */
    private final dsa<? super aau> f7689h;

    /* renamed from: i */
    private drq f7690i;

    /* renamed from: j */
    private HttpURLConnection f7691j;

    /* renamed from: k */
    private InputStream f7692k;

    /* renamed from: l */
    private boolean f7693l;

    /* renamed from: m */
    private long f7694m;

    /* renamed from: n */
    private long f7695n;

    /* renamed from: o */
    private long f7696o;

    /* renamed from: p */
    private long f7697p;

    /* renamed from: q */
    private int f7698q;

    /* renamed from: c */
    private SSLSocketFactory f7684c = new aax(this);

    /* renamed from: r */
    private Set<Socket> f7699r = new HashSet();

    /* renamed from: g */
    private final drv f7688g = new drv();

    public aau(String str, dsa<? super aau> dsaVar, int i, int i2, int i3) {
        this.f7687f = drz.m8773a(str);
        this.f7689h = dsaVar;
        this.f7685d = i;
        this.f7686e = i2;
        this.f7698q = i3;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* renamed from: a */
    private static long m13700a(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField("Content-Length");
        char c = 65535;
        if (!TextUtils.isEmpty(headerField)) {
            try {
                c = Long.parseLong(headerField);
            } catch (NumberFormatException e) {
                C3556uu.m6749c(new StringBuilder(String.valueOf(headerField).length() + 28).append("Unexpected Content-Length [").append(headerField).append("]").toString());
                c = 65535;
            }
        }
        String headerField2 = httpURLConnection.getHeaderField("Content-Range");
        char c2 = c;
        if (!TextUtils.isEmpty(headerField2)) {
            Matcher matcher = f7682a.matcher(headerField2);
            c2 = c;
            if (matcher.find()) {
                try {
                    ?? parseLong = (Long.parseLong(matcher.group(2)) - Long.parseLong(matcher.group(1))) + 1;
                    if (c < 0) {
                        c2 = parseLong;
                    } else {
                        c2 = c;
                        if (c != parseLong) {
                            C3556uu.m6745e(new StringBuilder(String.valueOf(headerField).length() + 26 + String.valueOf(headerField2).length()).append("Inconsistent headers [").append(headerField).append("] [").append(headerField2).append("]").toString());
                            c2 = Math.max((long) c, (long) parseLong);
                        }
                    }
                } catch (NumberFormatException e2) {
                    C3556uu.m6749c(new StringBuilder(String.valueOf(headerField2).length() + 27).append("Unexpected Content-Range [").append(headerField2).append("]").toString());
                    c2 = c;
                }
            }
        }
        return c2;
    }

    /* renamed from: a */
    public final void m13699a(Socket socket) {
        this.f7699r.add(socket);
    }

    /* renamed from: c */
    private final void m13698c() {
        if (this.f7691j != null) {
            try {
                this.f7691j.disconnect();
            } catch (Exception e) {
                C3556uu.m6748c("Unexpected error while disconnecting", e);
            }
            this.f7691j = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.drp
    /* renamed from: a */
    public final int mo8808a(byte[] bArr, int i, int i2) {
        int i3;
        try {
            if (this.f7696o != this.f7694m) {
                byte[] andSet = f7683b.getAndSet(null);
                byte[] bArr2 = andSet;
                if (andSet == null) {
                    bArr2 = new byte[4096];
                }
                while (this.f7696o != this.f7694m) {
                    int read = this.f7692k.read(bArr2, 0, (int) Math.min(this.f7694m - this.f7696o, bArr2.length));
                    if (Thread.interrupted()) {
                        throw new InterruptedIOException();
                    }
                    if (read == -1) {
                        throw new EOFException();
                    }
                    this.f7696o += read;
                    if (this.f7689h != null) {
                        this.f7689h.mo8766a((dsa<? super aau>) this, read);
                    }
                }
                f7683b.set(bArr2);
            }
            if (i2 == 0) {
                i3 = 0;
            } else {
                int i4 = i2;
                if (this.f7695n != -1) {
                    long j = this.f7695n - this.f7697p;
                    if (j == 0) {
                        i3 = -1;
                    } else {
                        i4 = (int) Math.min(i2, j);
                    }
                }
                int read2 = this.f7692k.read(bArr, i, i4);
                if (read2 != -1) {
                    this.f7697p += read2;
                    i3 = read2;
                    if (this.f7689h != null) {
                        this.f7689h.mo8766a((dsa<? super aau>) this, read2);
                        i3 = read2;
                    }
                } else if (this.f7695n != -1) {
                    throw new EOFException();
                } else {
                    i3 = -1;
                }
            }
            return i3;
        } catch (IOException e) {
            throw new zzoa(e, this.f7690i, 2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:135:0x0210 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x022b A[Catch: IOException -> 0x00ba, TRY_ENTER, TryCatch #1 {IOException -> 0x00ba, blocks: (B:3:0x000f, B:7:0x0046, B:9:0x0057, B:11:0x0065, B:13:0x008a, B:15:0x0092, B:26:0x00f1, B:29:0x0122, B:31:0x015a, B:33:0x0164, B:35:0x0173, B:37:0x0180, B:40:0x018b, B:42:0x0196, B:44:0x01a3, B:46:0x01c3, B:61:0x01fc, B:63:0x0210, B:64:0x021c, B:67:0x0223, B:68:0x022b, B:70:0x0245, B:72:0x024f, B:74:0x025f, B:76:0x0268, B:77:0x026d, B:78:0x026e, B:78:0x026e, B:79:0x0271, B:81:0x028b, B:82:0x02ad, B:84:0x02af), top: B:132:0x000f }] */
    /* JADX WARN: Type inference failed for: r0v145, types: [long] */
    /* JADX WARN: Type inference failed for: r0v151, types: [long] */
    @Override // com.google.android.gms.internal.ads.drp
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo8811a(com.google.android.gms.internal.ads.drq r8) {
        /*
            Method dump skipped, instructions count: 1007
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aau.mo8811a(com.google.android.gms.internal.ads.drq):long");
    }

    @Override // com.google.android.gms.internal.ads.drp
    /* renamed from: a */
    public final Uri mo8812a() {
        return this.f7691j == null ? null : Uri.parse(this.f7691j.getURL().toString());
    }

    /* renamed from: a */
    public final void m13703a(int i) {
        this.f7698q = i;
        for (Socket socket : this.f7699r) {
            if (!socket.isClosed()) {
                try {
                    socket.setReceiveBufferSize(this.f7698q);
                } catch (SocketException e) {
                    C3556uu.m6746d("Failed to update receive buffer size.", e);
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    @Override // com.google.android.gms.internal.ads.drp
    /* renamed from: b */
    public final void mo8807b() {
        try {
            if (this.f7692k != null) {
                HttpURLConnection httpURLConnection = this.f7691j;
                char c = this.f7695n == -1 ? this.f7695n : this.f7695n - this.f7697p;
                if (dsn.f15576a == 19 || dsn.f15576a == 20) {
                    try {
                        InputStream inputStream = httpURLConnection.getInputStream();
                        if (c != -1 ? c > 2048 : inputStream.read() != -1) {
                            String name = inputStream.getClass().getName();
                            if (name.equals("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream") || name.equals("com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream")) {
                                Method declaredMethod = inputStream.getClass().getSuperclass().getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
                                declaredMethod.setAccessible(true);
                                declaredMethod.invoke(inputStream, new Object[0]);
                            }
                        }
                    } catch (Exception e) {
                    }
                }
                try {
                    this.f7692k.close();
                } catch (IOException e2) {
                    throw new zzoa(e2, this.f7690i, 3);
                }
            }
        } finally {
            this.f7692k = null;
            m13698c();
            if (this.f7693l) {
                this.f7693l = false;
                if (this.f7689h != null) {
                    this.f7689h.mo8767a(this);
                }
            }
            this.f7699r.clear();
        }
    }
}
