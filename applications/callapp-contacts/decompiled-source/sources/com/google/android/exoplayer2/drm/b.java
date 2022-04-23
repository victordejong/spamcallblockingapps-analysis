package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.drm.i;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.upstream.o;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/b.class */
public final class b implements e {

    /* renamed from: a  reason: collision with root package name */
    private final Object f20877a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private MediaItem.DrmConfiguration f20878b;

    /* renamed from: c  reason: collision with root package name */
    private d f20879c;

    /* renamed from: d  reason: collision with root package name */
    private HttpDataSource.b f20880d;
    private String e;

    @Override // com.google.android.exoplayer2.drm.e
    public final d a(MediaItem mediaItem) {
        Throwable th;
        a.b(mediaItem.f20611b);
        MediaItem.DrmConfiguration drmConfiguration = mediaItem.f20611b.f20624c;
        if (drmConfiguration == null || af.f22275a < 18) {
            return d.e;
        }
        synchronized (this.f20877a) {
            try {
                if (!af.a(drmConfiguration, this.f20878b)) {
                    this.f20878b = drmConfiguration;
                    HttpDataSource.b bVar = this.f20880d;
                    o.a aVar = bVar;
                    if (bVar == null) {
                        o.a aVar2 = new o.a();
                        aVar2.f22237a = this.e;
                        aVar = aVar2;
                    }
                    l lVar = new l(drmConfiguration.licenseUri == null ? null : drmConfiguration.licenseUri.toString(), drmConfiguration.forceDefaultLicenseUri, aVar);
                    for (Map.Entry<String, String> entry : drmConfiguration.requestHeaders.entrySet()) {
                        lVar.a(entry.getKey(), entry.getValue());
                    }
                    DefaultDrmSessionManager.a aVar3 = new DefaultDrmSessionManager.a();
                    UUID uuid = drmConfiguration.uuid;
                    i.d dVar = k.f20897a;
                    aVar3.f20865b = (UUID) a.b(uuid);
                    aVar3.f20866c = (i.d) a.b(dVar);
                    aVar3.f20867d = drmConfiguration.multiSession;
                    aVar3.f = drmConfiguration.playClearContentWithoutKey;
                    DefaultDrmSessionManager.a a2 = aVar3.a(com.google.common.b.b.a(drmConfiguration.sessionForClearTypes));
                    try {
                        DefaultDrmSessionManager defaultDrmSessionManager = new DefaultDrmSessionManager(a2.f20865b, a2.f20866c, lVar, a2.f20864a, a2.f20867d, a2.e, a2.f, a2.g, a2.h);
                        byte[] keySetId = drmConfiguration.getKeySetId();
                        a.b(defaultDrmSessionManager.f20860a.isEmpty());
                        defaultDrmSessionManager.f20861b = 0;
                        defaultDrmSessionManager.f20862c = keySetId;
                        this.f20879c = defaultDrmSessionManager;
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
                return (d) a.b(this.f20879c);
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }
}
