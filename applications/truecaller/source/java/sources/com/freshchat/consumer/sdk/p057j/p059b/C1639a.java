package com.freshchat.consumer.sdk.p057j.p059b;

import android.os.SystemClock;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
/* renamed from: com.freshchat.consumer.sdk.j.b.a */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/b/a.class */
public class C1639a {

    /* renamed from: km */
    private long f4387km;

    /* renamed from: kn */
    private long f4388kn;

    /* renamed from: ko */
    private long f4389ko;
    private long offset = -2147483648L;

    /* renamed from: a */
    private void m40135a(byte[] bArr, int i, long j) {
        long j2 = j / 1000;
        long j3 = j2 + 2208988800L;
        int i2 = i + 1;
        bArr[i] = (byte) (j3 >> 24);
        int i3 = i2 + 1;
        bArr[i2] = (byte) (j3 >> 16);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (j3 >> 8);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (j3 >> 0);
        long j4 = ((j - (j2 * 1000)) * 4294967296L) / 1000;
        int i6 = i5 + 1;
        bArr[i5] = (byte) (j4 >> 24);
        int i7 = i6 + 1;
        bArr[i6] = (byte) (j4 >> 16);
        bArr[i7] = (byte) (j4 >> 8);
        bArr[i7 + 1] = (byte) (Math.random() * 255.0d);
    }

    /* renamed from: b */
    private long m40134b(byte[] bArr, int i) {
        byte b = bArr[i];
        byte b2 = bArr[i + 1];
        byte b3 = bArr[i + 2];
        byte b4 = bArr[i + 3];
        byte b5 = b;
        if ((b & 128) == 128) {
            b5 = (b & Byte.MAX_VALUE) + 128;
        }
        byte b6 = b2;
        if ((b2 & 128) == 128) {
            b6 = (b2 & Byte.MAX_VALUE) + 128;
        }
        byte b7 = b3;
        if ((b3 & 128) == 128) {
            b7 = (b3 & Byte.MAX_VALUE) + 128;
        }
        byte b8 = b4;
        if ((b4 & 128) == 128) {
            b8 = (b4 & Byte.MAX_VALUE) + 128;
        }
        return (b5 << 24) + (b6 << 16) + (b7 << 8) + b8;
    }

    /* renamed from: c */
    private long m40132c(byte[] bArr, int i) {
        return ((m40134b(bArr, i + 4) * 1000) / 4294967296L) + ((m40134b(bArr, i) - 2208988800L) * 1000);
    }

    /* renamed from: c */
    public boolean m40133c(String str, int i) {
        try {
            DatagramSocket datagramSocket = new DatagramSocket();
            datagramSocket.setSoTimeout(i);
            byte[] bArr = new byte[48];
            DatagramPacket datagramPacket = new DatagramPacket(bArr, 48, InetAddress.getByName(str), 123);
            bArr[0] = (byte) 27;
            long currentTimeMillis = System.currentTimeMillis();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            m40135a(bArr, 40, currentTimeMillis);
            datagramSocket.send(datagramPacket);
            datagramSocket.receive(new DatagramPacket(bArr, 48));
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            long j = elapsedRealtime2 - elapsedRealtime;
            long j2 = currentTimeMillis + j;
            datagramSocket.close();
            long m40132c = m40132c(bArr, 24);
            long m40132c2 = m40132c(bArr, 32);
            long m40132c3 = m40132c(bArr, 40);
            long j3 = ((m40132c3 - j2) + (m40132c2 - m40132c)) / 2;
            this.offset = j3;
            this.f4387km = j2 + j3;
            this.f4388kn = elapsedRealtime2;
            this.f4389ko = j - (m40132c3 - m40132c2);
            return true;
        } catch (Exception e) {
            C1613ai.m40283e("SntpClient", "request time failed: " + e);
            return false;
        }
    }

    /* renamed from: fB */
    public long m40131fB() {
        return this.offset;
    }
}
