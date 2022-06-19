package androidx.media2.exoplayer.external.upstream;

import android.net.Uri;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/UdpDataSource.class */
public final class UdpDataSource extends AbstractC1966d {

    /* renamed from: a */
    private final int f7926a;

    /* renamed from: b */
    private final byte[] f7927b;

    /* renamed from: c */
    private final DatagramPacket f7928c;

    /* renamed from: d */
    private Uri f7929d;

    /* renamed from: e */
    private DatagramSocket f7930e;

    /* renamed from: f */
    private MulticastSocket f7931f;

    /* renamed from: g */
    private InetAddress f7932g;

    /* renamed from: h */
    private InetSocketAddress f7933h;

    /* renamed from: i */
    private boolean f7934i;

    /* renamed from: j */
    private int f7935j;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/UdpDataSource$UdpDataSourceException.class */
    public static final class UdpDataSourceException extends IOException {
        public UdpDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public UdpDataSource() {
        this(2000);
    }

    public UdpDataSource(int i) {
        this(i, 8000);
    }

    public UdpDataSource(int i, int i2) {
        super(true);
        this.f7926a = i2;
        byte[] bArr = new byte[i];
        this.f7927b = bArr;
        this.f7928c = new DatagramPacket(bArr, 0, i);
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final int mo41197a(byte[] bArr, int i, int i2) throws UdpDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        if (this.f7935j == 0) {
            try {
                this.f7930e.receive(this.f7928c);
                int length = this.f7928c.getLength();
                this.f7935j = length;
                m41743a(length);
            } catch (IOException e) {
                throw new UdpDataSourceException(e);
            }
        }
        int length2 = this.f7928c.getLength();
        int i3 = this.f7935j;
        int min = Math.min(i3, i2);
        System.arraycopy(this.f7927b, length2 - i3, bArr, i, min);
        this.f7935j -= min;
        return min;
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final long mo41199a(C1971h c1971h) throws UdpDataSourceException {
        Uri uri = c1971h.f7952a;
        this.f7929d = uri;
        String host = uri.getHost();
        int port = this.f7929d.getPort();
        m41741d();
        try {
            this.f7932g = InetAddress.getByName(host);
            this.f7933h = new InetSocketAddress(this.f7932g, port);
            if (this.f7932g.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(this.f7933h);
                this.f7931f = multicastSocket;
                multicastSocket.joinGroup(this.f7932g);
                this.f7930e = this.f7931f;
            } else {
                this.f7930e = new DatagramSocket(this.f7933h);
            }
            try {
                this.f7930e.setSoTimeout(this.f7926a);
                this.f7934i = true;
                m41742b(c1971h);
                return -1L;
            } catch (SocketException e) {
                throw new UdpDataSourceException(e);
            }
        } catch (IOException e2) {
            throw new UdpDataSourceException(e2);
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final Uri mo41200a() {
        return this.f7929d;
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: c */
    public final void mo41196c() {
        this.f7929d = null;
        MulticastSocket multicastSocket = this.f7931f;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup(this.f7932g);
            } catch (IOException e) {
            }
            this.f7931f = null;
        }
        DatagramSocket datagramSocket = this.f7930e;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f7930e = null;
        }
        this.f7932g = null;
        this.f7933h = null;
        this.f7935j = 0;
        if (this.f7934i) {
            this.f7934i = false;
            m41740e();
        }
    }
}
