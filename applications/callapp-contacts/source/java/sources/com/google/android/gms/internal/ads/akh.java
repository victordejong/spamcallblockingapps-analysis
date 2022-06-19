package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.util.AbstractC12102f;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/akh.class */
public final class akh implements eeg {

    /* renamed from: a */
    adt f42298a;

    /* renamed from: d */
    private final Executor f42301d;

    /* renamed from: e */
    private final ajs f42302e;

    /* renamed from: f */
    private final AbstractC12102f f42303f;

    /* renamed from: b */
    boolean f42299b = false;

    /* renamed from: c */
    boolean f42300c = false;

    /* renamed from: g */
    private ajw f42304g = new ajw();

    public akh(Executor executor, ajs ajsVar, AbstractC12102f abstractC12102f) {
        this.f42301d = executor;
        this.f42302e = ajsVar;
        this.f42303f = abstractC12102f;
    }

    /* renamed from: a */
    public final void m18617a() {
        try {
            JSONObject mo14524a = this.f42302e.mo14524a(this.f42304g);
            if (this.f42298a == null) {
                return;
            }
            this.f42301d.execute(new Runnable(this, mo14524a) { // from class: com.google.android.gms.internal.ads.akg

                /* renamed from: a */
                private final akh f42296a;

                /* renamed from: b */
                private final JSONObject f42297b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f42296a = this;
                    this.f42297b = mo14524a;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    akh akhVar = this.f42296a;
                    akhVar.f42298a.mo13757b("AFMA_updateActiveView", this.f42297b);
                }
            });
        } catch (JSONException e) {
            zzd.zza("Failed to call video active view js", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.eeg
    /* renamed from: a */
    public final void mo13778a(eeh eehVar) {
        this.f42304g.f42261a = this.f42300c ? false : eehVar.f48872j;
        this.f42304g.f42263c = this.f42303f.mo19038b();
        this.f42304g.f42265e = eehVar;
        if (this.f42299b) {
            m18617a();
        }
    }
}
