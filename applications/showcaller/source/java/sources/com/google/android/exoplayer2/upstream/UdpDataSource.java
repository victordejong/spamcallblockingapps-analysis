package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketException;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/UdpDataSource.class */
public final class UdpDataSource extends AbstractC5475g {

    /* renamed from: f */
    private final int f17714f;

    /* renamed from: g */
    private final byte[] f17715g;

    /* renamed from: h */
    private final DatagramPacket f17716h;

    /* renamed from: i */
    private Uri f17717i;

    /* renamed from: j */
    private DatagramSocket f17718j;

    /* renamed from: k */
    private MulticastSocket f17719k;

    /* renamed from: l */
    private InetAddress f17720l;

    /* renamed from: m */
    private InetSocketAddress f17721m;

    /* renamed from: n */
    private boolean f17722n;

    /* renamed from: o */
    private int f17723o;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/UdpDataSource$UdpDataSourceException.class */
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
        this.f17714f = i2;
        byte[] bArr = new byte[i];
        this.f17715g = bArr;
        this.f17716h = new DatagramPacket(bArr, 0, i);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: b */
    public long mo18949b(C5481l c5481l) {
        Uri uri = c5481l.f17746a;
        this.f17717i = uri;
        String host = uri.getHost();
        int port = this.f17717i.getPort();
        m19024f(c5481l);
        try {
            this.f17720l = InetAddress.getByName(host);
            this.f17721m = new InetSocketAddress(this.f17720l, port);
            if (this.f17720l.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(this.f17721m);
                this.f17719k = multicastSocket;
                multicastSocket.joinGroup(this.f17720l);
                this.f17718j = this.f17719k;
            } else {
                this.f17718j = new DatagramSocket(this.f17721m);
            }
            try {
                this.f17718j.setSoTimeout(this.f17714f);
                this.f17722n = true;
                m19023g(c5481l);
                return -1L;
            } catch (SocketException e) {
                throw new UdpDataSourceException(e);
            }
        } catch (IOException e2) {
            throw new UdpDataSourceException(e2);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: c */
    public Uri mo18948c() {
        return this.f17717i;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public void close() {
        this.f17717i = null;
        MulticastSocket multicastSocket = this.f17719k;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup(this.f17720l);
            } catch (IOException e) {
            }
            this.f17719k = null;
        }
        DatagramSocket datagramSocket = this.f17718j;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f17718j = null;
        }
        this.f17720l = null;
        this.f17721m = null;
        this.f17723o = 0;
        if (this.f17722n) {
            this.f17722n = false;
            m19025e();
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (this.f17723o == 0) {
            try {
                this.f17718j.receive(this.f17716h);
                int length = this.f17716h.getLength();
                this.f17723o = length;
                m19026d(length);
            } catch (IOException e) {
                throw new UdpDataSourceException(e);
            }
        }
        int length2 = this.f17716h.getLength();
        int i3 = this.f17723o;
        int min = Math.min(i3, i2);
        System.arraycopy(this.f17715g, length2 - i3, bArr, i, min);
        this.f17723o -= min;
        return min;
    }
}
