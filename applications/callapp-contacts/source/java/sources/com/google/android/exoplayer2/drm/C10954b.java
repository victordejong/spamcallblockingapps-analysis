package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.drm.AbstractC10964i;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.upstream.C11580o;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.common.p386b.C15361b;
import java.util.Map;
import java.util.UUID;
/* renamed from: com.google.android.exoplayer2.drm.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/b.class */
public final class C10954b implements AbstractC10960e {

    /* renamed from: a */
    private final Object f35461a = new Object();

    /* renamed from: b */
    private MediaItem.DrmConfiguration f35462b;

    /* renamed from: c */
    private AbstractC10958d f35463c;

    /* renamed from: d */
    private HttpDataSource.AbstractC11523b f35464d;

    /* renamed from: e */
    private String f35465e;

    @Override // com.google.android.exoplayer2.drm.AbstractC10960e
    /* renamed from: a */
    public final AbstractC10958d mo21846a(MediaItem mediaItem) {
        Throwable th;
        C11593a.m20020b(mediaItem.f34812b);
        MediaItem.DrmConfiguration drmConfiguration = mediaItem.f34812b.f34851c;
        if (drmConfiguration == null || C11599af.f38648a < 18) {
            return AbstractC10958d.f35471e;
        }
        synchronized (this.f35461a) {
            try {
                if (!C11599af.m19973a(drmConfiguration, this.f35462b)) {
                    this.f35462b = drmConfiguration;
                    HttpDataSource.AbstractC11523b abstractC11523b = this.f35464d;
                    C11580o.C11582a c11582a = abstractC11523b;
                    if (abstractC11523b == null) {
                        C11580o.C11582a c11582a2 = new C11580o.C11582a();
                        c11582a2.f38603a = this.f35465e;
                        c11582a = c11582a2;
                    }
                    C10972l c10972l = new C10972l(drmConfiguration.licenseUri == null ? null : drmConfiguration.licenseUri.toString(), drmConfiguration.forceDefaultLicenseUri, c11582a);
                    for (Map.Entry<String, String> entry : drmConfiguration.requestHeaders.entrySet()) {
                        c10972l.m21818a(entry.getKey(), entry.getValue());
                    }
                    DefaultDrmSessionManager.C10946a c10946a = new DefaultDrmSessionManager.C10946a();
                    UUID uuid = drmConfiguration.uuid;
                    AbstractC10964i.AbstractC10968d abstractC10968d = C10971k.f35484a;
                    c10946a.f35445b = (UUID) C11593a.m20020b(uuid);
                    c10946a.f35446c = (AbstractC10964i.AbstractC10968d) C11593a.m20020b(abstractC10968d);
                    c10946a.f35447d = drmConfiguration.multiSession;
                    c10946a.f35449f = drmConfiguration.playClearContentWithoutKey;
                    DefaultDrmSessionManager.C10946a m21874a = c10946a.m21874a(C15361b.m8979a(drmConfiguration.sessionForClearTypes));
                    try {
                        DefaultDrmSessionManager defaultDrmSessionManager = new DefaultDrmSessionManager(m21874a.f35445b, m21874a.f35446c, c10972l, m21874a.f35444a, m21874a.f35447d, m21874a.f35448e, m21874a.f35449f, m21874a.f35450g, m21874a.f35451h);
                        byte[] keySetId = drmConfiguration.getKeySetId();
                        C11593a.m20019b(defaultDrmSessionManager.f35421a.isEmpty());
                        defaultDrmSessionManager.f35422b = 0;
                        defaultDrmSessionManager.f35423c = keySetId;
                        this.f35463c = defaultDrmSessionManager;
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
                return (AbstractC10958d) C11593a.m20020b(this.f35463c);
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }
}
