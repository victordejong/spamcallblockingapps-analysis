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
public final class UdpDataSource extends d {

    /* renamed from: a  reason: collision with root package name */
    private final int f4046a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f4047b;

    /* renamed from: c  reason: collision with root package name */
    private final DatagramPacket f4048c;

    /* renamed from: d  reason: collision with root package name */
    private Uri f4049d;
    private DatagramSocket e;
    private MulticastSocket f;
    private InetAddress g;
    private InetSocketAddress h;
    private boolean i;
    private int j;

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
        this.f4046a = i2;
        byte[] bArr = new byte[i];
        this.f4047b = bArr;
        this.f4048c = new DatagramPacket(bArr, 0, i);
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final int a(byte[] bArr, int i, int i2) throws UdpDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        if (this.j == 0) {
            try {
                this.e.receive(this.f4048c);
                int length = this.f4048c.getLength();
                this.j = length;
                a(length);
            } catch (IOException e) {
                throw new UdpDataSourceException(e);
            }
        }
        int length2 = this.f4048c.getLength();
        int i3 = this.j;
        int min = Math.min(i3, i2);
        System.arraycopy(this.f4047b, length2 - i3, bArr, i, min);
        this.j -= min;
        return min;
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final long a(h hVar) throws UdpDataSourceException {
        Uri uri = hVar.f4064a;
        this.f4049d = uri;
        String host = uri.getHost();
        int port = this.f4049d.getPort();
        d();
        try {
            this.g = InetAddress.getByName(host);
            this.h = new InetSocketAddress(this.g, port);
            if (this.g.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(this.h);
                this.f = multicastSocket;
                multicastSocket.joinGroup(this.g);
                this.e = this.f;
            } else {
                this.e = new DatagramSocket(this.h);
            }
            try {
                this.e.setSoTimeout(this.f4046a);
                this.i = true;
                b(hVar);
                return -1L;
            } catch (SocketException e) {
                throw new UdpDataSourceException(e);
            }
        } catch (IOException e2) {
            throw new UdpDataSourceException(e2);
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final Uri a() {
        return this.f4049d;
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final void c() {
        this.f4049d = null;
        MulticastSocket multicastSocket = this.f;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup(this.g);
            } catch (IOException e) {
            }
            this.f = null;
        }
        DatagramSocket datagramSocket = this.e;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.e = null;
        }
        this.g = null;
        this.h = null;
        this.j = 0;
        if (this.i) {
            this.i = false;
            e();
        }
    }
}
