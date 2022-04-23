package com.google.android.exoplayer2.drm;

import android.media.DeniedByServerException;
import android.media.MediaCryptoException;
import android.media.MediaDrm;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import android.media.UnsupportedSchemeException;
import com.google.android.exoplayer2.drm.i;
import com.google.android.exoplayer2.f;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/k.class */
public final class k implements i {

    /* renamed from: a  reason: collision with root package name */
    public static final i.d f20897a = _$$Lambda$k$z7KPPTFmpecNbZoov3QKXgAAgP4.INSTANCE;

    /* renamed from: b  reason: collision with root package name */
    private final UUID f20898b;

    /* renamed from: c  reason: collision with root package name */
    private final MediaDrm f20899c;

    /* renamed from: d  reason: collision with root package name */
    private int f20900d = 1;

    private k(UUID uuid) throws UnsupportedSchemeException {
        a.b(uuid);
        a.a(!f.f21360b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f20898b = uuid;
        MediaDrm mediaDrm = new MediaDrm(b(uuid));
        this.f20899c = mediaDrm;
        if (f.f21362d.equals(uuid) && "ASUS_Z00AD".equals(af.f22278d)) {
            mediaDrm.setPropertyString("securityLevel", "L3");
        }
    }

    private static k a(UUID uuid) throws UnsupportedDrmException {
        try {
            return new k(uuid);
        } catch (UnsupportedSchemeException e) {
            throw new UnsupportedDrmException(1, e);
        } catch (Exception e2) {
            throw new UnsupportedDrmException(2, e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(i.c cVar, MediaDrm mediaDrm, byte[] bArr, int i, int i2, byte[] bArr2) {
        cVar.a(bArr, i);
    }

    private static UUID b(UUID uuid) {
        UUID uuid2 = uuid;
        if (af.f22275a < 27) {
            uuid2 = uuid;
            if (f.f21361c.equals(uuid)) {
                uuid2 = f.f21360b;
            }
        }
        return uuid2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ i c(UUID uuid) {
        try {
            return a(uuid);
        } catch (UnsupportedDrmException e) {
            n.b("FrameworkMediaDrm", "Failed to instantiate a FrameworkMediaDrm for uuid: " + uuid + ".");
            return new f();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0392  */
    @Override // com.google.android.exoplayer2.drm.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.exoplayer2.drm.i.b a(byte[] r8, java.util.List<com.google.android.exoplayer2.drm.DrmInitData.SchemeData> r9, int r10, java.util.HashMap<java.lang.String, java.lang.String> r11) throws android.media.NotProvisionedException {
        /*
            Method dump skipped, instructions count: 1143
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.drm.k.a(byte[], java.util.List, int, java.util.HashMap):com.google.android.exoplayer2.drm.i$b");
    }

    @Override // com.google.android.exoplayer2.drm.i
    public final void a(final i.c cVar) {
        this.f20899c.setOnEventListener(new MediaDrm.OnEventListener() { // from class: com.google.android.exoplayer2.drm._$$Lambda$k$Gx_4WBid3YFD_Cq6KlZN7diuSvk
            @Override // android.media.MediaDrm.OnEventListener
            public final void onEvent(MediaDrm mediaDrm, byte[] bArr, int i, int i2, byte[] bArr2) {
                k.this.a(cVar, mediaDrm, bArr, i, i2, bArr2);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.i
    public final void a(byte[] bArr) {
        this.f20899c.closeSession(bArr);
    }

    @Override // com.google.android.exoplayer2.drm.i
    public final byte[] a() throws MediaDrmException {
        return this.f20899c.openSession();
    }

    @Override // com.google.android.exoplayer2.drm.i
    public final byte[] a(byte[] bArr, byte[] bArr2) throws NotProvisionedException, DeniedByServerException {
        byte[] bArr3 = bArr2;
        if (f.f21361c.equals(this.f20898b)) {
            bArr3 = a.a(bArr2);
        }
        return this.f20899c.provideKeyResponse(bArr, bArr3);
    }

    @Override // com.google.android.exoplayer2.drm.i
    public final i.e b() {
        MediaDrm.ProvisionRequest provisionRequest = this.f20899c.getProvisionRequest();
        return new i.e(provisionRequest.getData(), provisionRequest.getDefaultUrl());
    }

    @Override // com.google.android.exoplayer2.drm.i
    public final void b(byte[] bArr) throws DeniedByServerException {
        this.f20899c.provideProvisionResponse(bArr);
    }

    @Override // com.google.android.exoplayer2.drm.i
    public final void b(byte[] bArr, byte[] bArr2) {
        this.f20899c.restoreKeys(bArr, bArr2);
    }

    @Override // com.google.android.exoplayer2.drm.i
    public final Map<String, String> c(byte[] bArr) {
        return this.f20899c.queryKeyStatus(bArr);
    }

    @Override // com.google.android.exoplayer2.drm.i
    public final void c() {
        synchronized (this) {
            a.b(this.f20900d > 0);
            this.f20900d++;
        }
    }

    @Override // com.google.android.exoplayer2.drm.i
    public final /* synthetic */ h d(byte[] bArr) throws MediaCryptoException {
        return new j(b(this.f20898b), bArr, af.f22275a < 21 && f.f21362d.equals(this.f20898b) && "L3".equals(this.f20899c.getPropertyString("securityLevel")));
    }

    @Override // com.google.android.exoplayer2.drm.i
    public final void d() {
        synchronized (this) {
            int i = this.f20900d - 1;
            this.f20900d = i;
            if (i == 0) {
                this.f20899c.release();
            }
        }
    }

    @Override // com.google.android.exoplayer2.drm.i
    public final Class<j> e() {
        return j.class;
    }
}
