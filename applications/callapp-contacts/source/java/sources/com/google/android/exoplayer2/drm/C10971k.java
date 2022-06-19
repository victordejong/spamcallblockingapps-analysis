package com.google.android.exoplayer2.drm;

import android.media.DeniedByServerException;
import android.media.MediaCryptoException;
import android.media.MediaDrm;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import android.media.UnsupportedSchemeException;
import com.google.android.exoplayer2.C11158f;
import com.google.android.exoplayer2.drm.AbstractC10964i;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import java.util.Map;
import java.util.UUID;
/* renamed from: com.google.android.exoplayer2.drm.k */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/k.class */
public final class C10971k implements AbstractC10964i {

    /* renamed from: a */
    public static final AbstractC10964i.AbstractC10968d f35484a = _$$Lambda$k$z7KPPTFmpecNbZoov3QKXgAAgP4.INSTANCE;

    /* renamed from: b */
    private final UUID f35485b;

    /* renamed from: c */
    private final MediaDrm f35486c;

    /* renamed from: d */
    private int f35487d = 1;

    private C10971k(UUID uuid) throws UnsupportedSchemeException {
        C11593a.m20020b(uuid);
        C11593a.m20021a(!C11158f.f36540b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f35485b = uuid;
        MediaDrm mediaDrm = new MediaDrm(m21828b(uuid));
        this.f35486c = mediaDrm;
        if (!C11158f.f36542d.equals(uuid) || !"ASUS_Z00AD".equals(C11599af.f38651d)) {
            return;
        }
        mediaDrm.setPropertyString("securityLevel", "L3");
    }

    /* renamed from: a */
    private static C10971k m21833a(UUID uuid) throws UnsupportedDrmException {
        try {
            return new C10971k(uuid);
        } catch (UnsupportedSchemeException e) {
            throw new UnsupportedDrmException(1, e);
        } catch (Exception e2) {
            throw new UnsupportedDrmException(2, e2);
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m21834a(AbstractC10964i.AbstractC10967c abstractC10967c, MediaDrm mediaDrm, byte[] bArr, int i, int i2, byte[] bArr2) {
        abstractC10967c.mo21837a(bArr, i);
    }

    /* renamed from: b */
    private static UUID m21828b(UUID uuid) {
        UUID uuid2 = uuid;
        if (C11599af.f38648a < 27) {
            uuid2 = uuid;
            if (C11158f.f36541c.equals(uuid)) {
                uuid2 = C11158f.f36540b;
            }
        }
        return uuid2;
    }

    /* renamed from: c */
    public static /* synthetic */ AbstractC10964i m21824c(UUID uuid) {
        try {
            return m21833a(uuid);
        } catch (UnsupportedDrmException e) {
            C11617n.m19858b("FrameworkMediaDrm", "Failed to instantiate a FrameworkMediaDrm for uuid: " + uuid + ".");
            return new C10961f();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0392  */
    @Override // com.google.android.exoplayer2.drm.AbstractC10964i
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.exoplayer2.drm.AbstractC10964i.C10966b mo21831a(byte[] r8, java.util.List<com.google.android.exoplayer2.drm.DrmInitData.SchemeData> r9, int r10, java.util.HashMap<java.lang.String, java.lang.String> r11) throws android.media.NotProvisionedException {
        /*
            Method dump skipped, instructions count: 1143
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.drm.C10971k.mo21831a(byte[], java.util.List, int, java.util.HashMap):com.google.android.exoplayer2.drm.i$b");
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC10964i
    /* renamed from: a */
    public final void mo21835a(final AbstractC10964i.AbstractC10967c abstractC10967c) {
        this.f35486c.setOnEventListener(new MediaDrm.OnEventListener() { // from class: com.google.android.exoplayer2.drm._$$Lambda$k$Gx_4WBid3YFD_Cq6KlZN7diuSvk
            @Override // android.media.MediaDrm.OnEventListener
            public final void onEvent(MediaDrm mediaDrm, byte[] bArr, int i, int i2, byte[] bArr2) {
                C10971k.this.m21834a(abstractC10967c, mediaDrm, bArr, i, i2, bArr2);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC10964i
    /* renamed from: a */
    public final void mo21832a(byte[] bArr) {
        this.f35486c.closeSession(bArr);
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC10964i
    /* renamed from: a */
    public final byte[] mo21836a() throws MediaDrmException {
        return this.f35486c.openSession();
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC10964i
    /* renamed from: a */
    public final byte[] mo21830a(byte[] bArr, byte[] bArr2) throws NotProvisionedException, DeniedByServerException {
        byte[] bArr3 = bArr2;
        if (C11158f.f36541c.equals(this.f35485b)) {
            bArr3 = C10953a.m21865a(bArr2);
        }
        return this.f35486c.provideKeyResponse(bArr, bArr3);
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC10964i
    /* renamed from: b */
    public final AbstractC10964i.C10969e mo21829b() {
        MediaDrm.ProvisionRequest provisionRequest = this.f35486c.getProvisionRequest();
        return new AbstractC10964i.C10969e(provisionRequest.getData(), provisionRequest.getDefaultUrl());
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC10964i
    /* renamed from: b */
    public final void mo21827b(byte[] bArr) throws DeniedByServerException {
        this.f35486c.provideProvisionResponse(bArr);
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC10964i
    /* renamed from: b */
    public final void mo21826b(byte[] bArr, byte[] bArr2) {
        this.f35486c.restoreKeys(bArr, bArr2);
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC10964i
    /* renamed from: c */
    public final Map<String, String> mo21823c(byte[] bArr) {
        return this.f35486c.queryKeyStatus(bArr);
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC10964i
    /* renamed from: c */
    public final void mo21825c() {
        synchronized (this) {
            C11593a.m20019b(this.f35487d > 0);
            this.f35487d++;
        }
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC10964i
    /* renamed from: d */
    public final /* synthetic */ AbstractC10963h mo21821d(byte[] bArr) throws MediaCryptoException {
        return new C10970j(m21828b(this.f35485b), bArr, C11599af.f38648a < 21 && C11158f.f36542d.equals(this.f35485b) && "L3".equals(this.f35486c.getPropertyString("securityLevel")));
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC10964i
    /* renamed from: d */
    public final void mo21822d() {
        synchronized (this) {
            int i = this.f35487d - 1;
            this.f35487d = i;
            if (i == 0) {
                this.f35486c.release();
            }
        }
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC10964i
    /* renamed from: e */
    public final Class<C10970j> mo21820e() {
        return C10970j.class;
    }
}
