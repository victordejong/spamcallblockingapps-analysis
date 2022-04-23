package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.util.f;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/akh.class */
public final class akh implements eeg {

    /* renamed from: a  reason: collision with root package name */
    adt f23485a;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f23488d;
    private final ajs e;
    private final f f;

    /* renamed from: b  reason: collision with root package name */
    boolean f23486b = false;

    /* renamed from: c  reason: collision with root package name */
    boolean f23487c = false;
    private ajw g = new ajw();

    public akh(Executor executor, ajs ajsVar, f fVar) {
        this.f23488d = executor;
        this.e = ajsVar;
        this.f = fVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        try {
            final JSONObject a2 = this.e.a(this.g);
            if (this.f23485a != null) {
                this.f23488d.execute(new Runnable(this, a2) { // from class: com.google.android.gms.internal.ads.akg

                    /* renamed from: a  reason: collision with root package name */
                    private final akh f23483a;

                    /* renamed from: b  reason: collision with root package name */
                    private final JSONObject f23484b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f23483a = this;
                        this.f23484b = a2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        akh akhVar = this.f23483a;
                        akhVar.f23485a.b("AFMA_updateActiveView", this.f23484b);
                    }
                });
            }
        } catch (JSONException e) {
            zzd.zza("Failed to call video active view js", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.eeg
    public final void a(eeh eehVar) {
        this.g.f23451a = this.f23487c ? false : eehVar.j;
        this.g.f23453c = this.f.b();
        this.g.e = eehVar;
        if (this.f23486b) {
            a();
        }
    }
}
