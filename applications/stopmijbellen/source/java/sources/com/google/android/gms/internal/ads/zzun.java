package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.facebook.ads.AdError;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzun.class */
public final class zzun extends zzdf {
    private final byte[] zza;
    private final DatagramPacket zzb;
    private Uri zzc;
    private DatagramSocket zzd;
    private MulticastSocket zze;
    private InetAddress zzf;
    private InetSocketAddress zzg;
    private boolean zzh;
    private int zzi;

    public zzun() {
        this(AdError.SERVER_ERROR_CODE);
    }

    public zzun(int i) {
        super(true);
        byte[] bArr = new byte[AdError.SERVER_ERROR_CODE];
        this.zza = bArr;
        this.zzb = new DatagramPacket(bArr, 0, (int) AdError.SERVER_ERROR_CODE);
    }

    @Override // com.google.android.gms.internal.ads.zzdg
    public final int zzg(byte[] bArr, int i, int i2) throws zzum {
        if (i2 == 0) {
            return 0;
        }
        if (this.zzi == 0) {
            try {
                this.zzd.receive(this.zzb);
                int length = this.zzb.getLength();
                this.zzi = length;
                zzc(length);
            } catch (SocketTimeoutException e) {
                throw new zzum(e, AdError.CACHE_ERROR_CODE);
            } catch (IOException e2) {
                throw new zzum(e2, AdError.INTERNAL_ERROR_CODE);
            }
        }
        int length2 = this.zzb.getLength();
        int i3 = this.zzi;
        int min = Math.min(i3, i2);
        System.arraycopy(this.zza, length2 - i3, bArr, i, min);
        this.zzi -= min;
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final long zzh(zzdm zzdmVar) throws zzum {
        Uri uri = zzdmVar.zza;
        this.zzc = uri;
        String host = uri.getHost();
        int port = this.zzc.getPort();
        zze(zzdmVar);
        try {
            this.zzf = InetAddress.getByName(host);
            this.zzg = new InetSocketAddress(this.zzf, port);
            if (this.zzf.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(this.zzg);
                this.zze = multicastSocket;
                multicastSocket.joinGroup(this.zzf);
                this.zzd = this.zze;
            } else {
                this.zzd = new DatagramSocket(this.zzg);
            }
            this.zzd.setSoTimeout(8000);
            this.zzh = true;
            zzf(zzdmVar);
            return -1L;
        } catch (IOException e) {
            throw new zzum(e, AdError.INTERNAL_ERROR_CODE);
        } catch (SecurityException e2) {
            throw new zzum(e2, AdError.INTERNAL_ERROR_2006);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final Uri zzi() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final void zzj() {
        this.zzc = null;
        MulticastSocket multicastSocket = this.zze;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup(this.zzf);
            } catch (IOException e) {
            }
            this.zze = null;
        }
        DatagramSocket datagramSocket = this.zzd;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.zzd = null;
        }
        this.zzf = null;
        this.zzg = null;
        this.zzi = 0;
        if (this.zzh) {
            this.zzh = false;
            zzd();
        }
    }
}
