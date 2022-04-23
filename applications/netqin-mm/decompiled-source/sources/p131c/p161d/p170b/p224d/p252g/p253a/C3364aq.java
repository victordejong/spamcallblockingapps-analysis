package p131c.p161d.p170b.p224d.p252g.p253a;

import com.android.volley.Request;
import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzcf;
import com.google.android.gms.internal.ads.zzcm;
import com.google.android.gms.internal.ads.zzcv;
import com.google.android.gms.internal.ads.zzdc;
import com.google.android.gms.internal.ads.zzeic;
import com.google.android.gms.internal.ads.zzeip;
import com.google.android.gms.internal.ads.zzejz;
import com.google.android.gms.internal.ads.zzwm;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* renamed from: c.d.b.d.g.a.aq */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/aq.class */
public final class C3364aq {

    /* renamed from: a */
    public static boolean f12306a = false;

    /* renamed from: b */
    public static MessageDigest f12307b;

    /* renamed from: c */
    public static final Object f12308c = new Object();

    /* renamed from: d */
    public static final Object f12309d = new Object();

    /* renamed from: e */
    public static CountDownLatch f12310e = new CountDownLatch(1);

    /* renamed from: a */
    public static zzcf.zza m27190a(zzcf.zza.zzd zzdVar) {
        zzcf.zza.C10493zza u = zzcf.zza.m14539u();
        u.m14477u(zzdVar.zzv());
        return (zzcf.zza) ((zzejz) u.mo12342K());
    }

    /* renamed from: a */
    public static String m27189a(zzcf.zza zzaVar, String str) throws GeneralSecurityException, UnsupportedEncodingException {
        byte[] bArr;
        byte[] c = zzaVar.mo12349c();
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23846l1)).booleanValue()) {
            Vector<byte[]> a = m27186a(c, 255);
            if (a == null || a.size() == 0) {
                bArr = m27185a(m27190a(zzcf.zza.zzd.PSN_ENCODE_SIZE_FAIL).mo12349c(), str, true);
            } else {
                zzcf.zzf.zza m = zzcf.zzf.m14364m();
                Iterator<byte[]> it = a.iterator();
                while (it.hasNext()) {
                    m.m14361a(zzeip.zzu(m27185a(it.next(), str, false)));
                }
                m.m14360b(zzeip.zzu(m27187a(c)));
                bArr = ((zzcf.zzf) ((zzejz) m.mo12342K())).mo12349c();
            }
        } else if (jb0.f13770a != null) {
            byte[] a2 = jb0.f13770a.mo12572a(c, str != null ? str.getBytes() : new byte[0]);
            zzcf.zzf.zza m2 = zzcf.zzf.m14364m();
            m2.m14361a(zzeip.zzu(a2));
            m2.m14362a(zzcm.TINK_HYBRID);
            bArr = ((zzcf.zzf) ((zzejz) m2.mo12342K())).mo12349c();
        } else {
            throw new GeneralSecurityException();
        }
        return zzcv.m13832a(bArr, true);
    }

    /* renamed from: a */
    public static Vector<byte[]> m27186a(byte[] bArr, int i) {
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        int length = ((bArr.length + 255) - 1) / 255;
        Vector<byte[]> vector = new Vector<>();
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 255;
            try {
                vector.add(Arrays.copyOfRange(bArr, i3, bArr.length - i3 > 255 ? i3 + 255 : bArr.length));
            } catch (IndexOutOfBoundsException e) {
                return null;
            }
        }
        return vector;
    }

    /* renamed from: a */
    public static void m27191a() {
        synchronized (f12309d) {
            if (!f12306a) {
                f12306a = true;
                new Thread(new RunnableC4299zq(null)).start();
            }
        }
    }

    /* renamed from: a */
    public static byte[] m27187a(byte[] bArr) throws NoSuchAlgorithmException {
        byte[] digest;
        synchronized (f12308c) {
            MessageDigest b = m27184b();
            if (b != null) {
                b.reset();
                b.update(bArr);
                digest = f12307b.digest();
            } else {
                throw new NoSuchAlgorithmException("Cannot compute hash");
            }
        }
        return digest;
    }

    /* renamed from: a */
    public static byte[] m27185a(byte[] bArr, String str, boolean z) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        byte[] bArr2;
        int i = z ? 239 : 255;
        byte[] bArr3 = bArr;
        if (bArr.length > i) {
            bArr3 = m27190a(zzcf.zza.zzd.PSN_ENCODE_SIZE_FAIL).mo12349c();
        }
        if (bArr3.length < i) {
            byte[] bArr4 = new byte[i - bArr3.length];
            new SecureRandom().nextBytes(bArr4);
            bArr2 = ByteBuffer.allocate(i + 1).put((byte) bArr3.length).put(bArr3).put(bArr4).array();
        } else {
            bArr2 = ByteBuffer.allocate(i + 1).put((byte) bArr3.length).put(bArr3).array();
        }
        byte[] bArr5 = bArr2;
        if (z) {
            bArr5 = ByteBuffer.allocate(256).put(m27187a(bArr2)).put(bArr2).array();
        }
        byte[] bArr6 = new byte[256];
        for (AbstractC3631ht htVar : new zzdc().f26956N2) {
            htVar.mo26111a(bArr5, bArr6);
        }
        if (str != null && str.length() > 0) {
            String str2 = str;
            if (str.length() > 32) {
                str2 = str.substring(0, 32);
            }
            new zzeic(str2.getBytes(Request.DEFAULT_PARAMS_ENCODING)).m12535a(bArr6);
        }
        return bArr6;
    }

    /* renamed from: b */
    public static MessageDigest m27184b() {
        boolean z;
        MessageDigest messageDigest;
        m27191a();
        try {
            z = f12310e.await(2L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            z = false;
        }
        if (z && (messageDigest = f12307b) != null) {
            return messageDigest;
        }
        return null;
    }
}
