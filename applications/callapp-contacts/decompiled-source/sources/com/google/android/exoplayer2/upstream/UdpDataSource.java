package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/UdpDataSource.class */
public final class UdpDataSource extends d {

    /* renamed from: a  reason: collision with root package name */
    private final int f22125a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f22126b;

    /* renamed from: c  reason: collision with root package name */
    private final DatagramPacket f22127c;

    /* renamed from: d  reason: collision with root package name */
    private Uri f22128d;
    private DatagramSocket e;
    private MulticastSocket f;
    private InetAddress g;
    private InetSocketAddress h;
    private boolean i;
    private int j;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/UdpDataSource$UdpDataSourceException.class */
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
        this.f22125a = i2;
        byte[] bArr = new byte[i];
        this.f22126b = bArr;
        this.f22127c = new DatagramPacket(bArr, 0, i);
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public final int a(byte[] bArr, int i, int i2) throws UdpDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        if (this.j == 0) {
            try {
                this.e.receive(this.f22127c);
                int length = this.f22127c.getLength();
                this.j = length;
                a(length);
            } catch (IOException e) {
                throw new UdpDataSourceException(e);
            }
        }
        int length2 = this.f22127c.getLength();
        int i3 = this.j;
        int min = Math.min(i3, i2);
        System.arraycopy(this.f22126b, length2 - i3, bArr, i, min);
        this.j -= min;
        return min;
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final long a(j jVar) throws UdpDataSourceException {
        Uri uri = jVar.f22204a;
        this.f22128d = uri;
        String host = uri.getHost();
        int port = this.f22128d.getPort();
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
                this.e.setSoTimeout(this.f22125a);
                this.i = true;
                b(jVar);
                return -1L;
            } catch (SocketException e) {
                throw new UdpDataSourceException(e);
            }
        } catch (IOException e2) {
            throw new UdpDataSourceException(e2);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final Uri a() {
        return this.f22128d;
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final void c() {
        this.f22128d = null;
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
