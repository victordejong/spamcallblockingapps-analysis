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
public final class UdpDataSource extends AbstractC11562d {

    /* renamed from: a */
    private final int f38380a;

    /* renamed from: b */
    private final byte[] f38381b;

    /* renamed from: c */
    private final DatagramPacket f38382c;

    /* renamed from: d */
    private Uri f38383d;

    /* renamed from: e */
    private DatagramSocket f38384e;

    /* renamed from: f */
    private MulticastSocket f38385f;

    /* renamed from: g */
    private InetAddress f38386g;

    /* renamed from: h */
    private InetSocketAddress f38387h;

    /* renamed from: i */
    private boolean f38388i;

    /* renamed from: j */
    private int f38389j;

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
        this.f38380a = i2;
        byte[] bArr = new byte[i];
        this.f38381b = bArr;
        this.f38382c = new DatagramPacket(bArr, 0, i);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11563e
    /* renamed from: a */
    public final int mo20033a(byte[] bArr, int i, int i2) throws UdpDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        if (this.f38389j == 0) {
            try {
                this.f38384e.receive(this.f38382c);
                int length = this.f38382c.getLength();
                this.f38389j = length;
                m20084a(length);
            } catch (IOException e) {
                throw new UdpDataSourceException(e);
            }
        }
        int length2 = this.f38382c.getLength();
        int i3 = this.f38389j;
        int min = Math.min(i3, i2);
        System.arraycopy(this.f38381b, length2 - i3, bArr, i, min);
        this.f38389j -= min;
        return min;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final long mo20035a(C11570j c11570j) throws UdpDataSourceException {
        Uri uri = c11570j.f38512a;
        this.f38383d = uri;
        String host = uri.getHost();
        int port = this.f38383d.getPort();
        m20082d();
        try {
            this.f38386g = InetAddress.getByName(host);
            this.f38387h = new InetSocketAddress(this.f38386g, port);
            if (this.f38386g.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(this.f38387h);
                this.f38385f = multicastSocket;
                multicastSocket.joinGroup(this.f38386g);
                this.f38384e = this.f38385f;
            } else {
                this.f38384e = new DatagramSocket(this.f38387h);
            }
            try {
                this.f38384e.setSoTimeout(this.f38380a);
                this.f38388i = true;
                m20083b(c11570j);
                return -1L;
            } catch (SocketException e) {
                throw new UdpDataSourceException(e);
            }
        } catch (IOException e2) {
            throw new UdpDataSourceException(e2);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final Uri mo20036a() {
        return this.f38383d;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: c */
    public final void mo20031c() {
        this.f38383d = null;
        MulticastSocket multicastSocket = this.f38385f;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup(this.f38386g);
            } catch (IOException e) {
            }
            this.f38385f = null;
        }
        DatagramSocket datagramSocket = this.f38384e;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f38384e = null;
        }
        this.f38386g = null;
        this.f38387h = null;
        this.f38389j = 0;
        if (this.f38388i) {
            this.f38388i = false;
            m20081e();
        }
    }
}
