package p193e.p1577m.p1578a.p1596c.p1634p1;

import android.net.Uri;
import com.huawei.hms.support.api.entity.core.JosStatusCodes;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketException;
/* renamed from: e.m.a.c.p1.g0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/g0.class */
public final class C24699g0 extends AbstractC24698g {

    /* renamed from: e */
    public final int f69200e = JosStatusCodes.RTN_CODE_COMMON_ERROR;

    /* renamed from: f */
    public final byte[] f69201f;

    /* renamed from: g */
    public final DatagramPacket f69202g;

    /* renamed from: h */
    public Uri f69203h;

    /* renamed from: i */
    public DatagramSocket f69204i;

    /* renamed from: j */
    public MulticastSocket f69205j;

    /* renamed from: k */
    public InetAddress f69206k;

    /* renamed from: l */
    public InetSocketAddress f69207l;

    /* renamed from: m */
    public boolean f69208m;

    /* renamed from: n */
    public int f69209n;

    /* renamed from: e.m.a.c.p1.g0$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/g0$a.class */
    public static final class C24700a extends IOException {
        public C24700a(IOException iOException) {
            super(iOException);
        }
    }

    public C24699g0() {
        super(true);
        byte[] bArr = new byte[2000];
        this.f69201f = bArr;
        this.f69202g = new DatagramPacket(bArr, 0, 2000);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    /* renamed from: b */
    public long mo4658b(C24742n c24742n) throws C24700a {
        Uri uri = c24742n.f69328a;
        this.f69203h = uri;
        String host = uri.getHost();
        int port = this.f69203h.getPort();
        m4766f(c24742n);
        try {
            this.f69206k = InetAddress.getByName(host);
            this.f69207l = new InetSocketAddress(this.f69206k, port);
            if (this.f69206k.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(this.f69207l);
                this.f69205j = multicastSocket;
                multicastSocket.joinGroup(this.f69206k);
                this.f69204i = this.f69205j;
            } else {
                this.f69204i = new DatagramSocket(this.f69207l);
            }
            try {
                this.f69204i.setSoTimeout(this.f69200e);
                this.f69208m = true;
                m4765g(c24742n);
                return -1L;
            } catch (SocketException e) {
                throw new C24700a(e);
            }
        } catch (IOException e2) {
            throw new C24700a(e2);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public void close() {
        this.f69203h = null;
        MulticastSocket multicastSocket = this.f69205j;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup(this.f69206k);
            } catch (IOException e) {
            }
            this.f69205j = null;
        }
        DatagramSocket datagramSocket = this.f69204i;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f69204i = null;
        }
        this.f69206k = null;
        this.f69207l = null;
        this.f69209n = 0;
        if (this.f69208m) {
            this.f69208m = false;
            m4767e();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public Uri getUri() {
        return this.f69203h;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public int read(byte[] bArr, int i, int i2) throws C24700a {
        if (i2 == 0) {
            return 0;
        }
        if (this.f69209n == 0) {
            try {
                this.f69204i.receive(this.f69202g);
                int length = this.f69202g.getLength();
                this.f69209n = length;
                m4768d(length);
            } catch (IOException e) {
                throw new C24700a(e);
            }
        }
        int length2 = this.f69202g.getLength();
        int i3 = this.f69209n;
        int min = Math.min(i3, i2);
        System.arraycopy(this.f69201f, length2 - i3, bArr, i, min);
        this.f69209n -= min;
        return min;
    }
}
