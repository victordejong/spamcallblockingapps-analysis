package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/to3.class */
public final class to3 extends AbstractC7169y4 {

    /* renamed from: f */
    private final byte[] f30094f;

    /* renamed from: g */
    private final DatagramPacket f30095g;

    /* renamed from: h */
    private Uri f30096h;

    /* renamed from: i */
    private DatagramSocket f30097i;

    /* renamed from: j */
    private MulticastSocket f30098j;

    /* renamed from: k */
    private InetAddress f30099k;

    /* renamed from: l */
    private InetSocketAddress f30100l;

    /* renamed from: m */
    private boolean f30101m;

    /* renamed from: n */
    private int f30102n;

    public to3(int i) {
        super(true);
        byte[] bArr = new byte[2000];
        this.f30094f = bArr;
        this.f30095g = new DatagramPacket(bArr, 0, 2000);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7207z5
    /* renamed from: c */
    public final int mo8335c(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (this.f30102n == 0) {
            try {
                this.f30097i.receive(this.f30095g);
                int length = this.f30095g.getLength();
                this.f30102n = length;
                m8961r(length);
            } catch (SocketTimeoutException e) {
                throw new zzlq(e, 2002);
            } catch (IOException e2) {
                throw new zzlq(e2, 2001);
            }
        }
        int length2 = this.f30095g.getLength();
        int i3 = this.f30102n;
        int min = Math.min(i3, i2);
        System.arraycopy(this.f30094f, length2 - i3, bArr, i, min);
        this.f30102n -= min;
        return min;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: e */
    public final long mo8334e(C6472fb c6472fb) {
        Uri uri = c6472fb.f22761a;
        this.f30096h = uri;
        String host = uri.getHost();
        int port = this.f30096h.getPort();
        m8963p(c6472fb);
        try {
            this.f30099k = InetAddress.getByName(host);
            this.f30100l = new InetSocketAddress(this.f30099k, port);
            if (this.f30099k.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(this.f30100l);
                this.f30098j = multicastSocket;
                multicastSocket.joinGroup(this.f30099k);
                this.f30097i = this.f30098j;
            } else {
                this.f30097i = new DatagramSocket(this.f30100l);
            }
            this.f30097i.setSoTimeout(8000);
            this.f30101m = true;
            m8962q(c6472fb);
            return -1L;
        } catch (IOException e) {
            throw new zzlq(e, 2001);
        } catch (SecurityException e2) {
            throw new zzlq(e2, 2006);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: g */
    public final void mo8333g() {
        this.f30096h = null;
        MulticastSocket multicastSocket = this.f30098j;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup(this.f30099k);
            } catch (IOException e) {
            }
            this.f30098j = null;
        }
        DatagramSocket datagramSocket = this.f30097i;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f30097i = null;
        }
        this.f30099k = null;
        this.f30100l = null;
        this.f30102n = 0;
        if (this.f30101m) {
            this.f30101m = false;
            m8960s();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    public final Uri zzi() {
        return this.f30096h;
    }
}
