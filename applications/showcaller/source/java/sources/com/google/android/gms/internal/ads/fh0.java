package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.p263v.C5852a;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fh0.class */
public final class fh0 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ Context f22895d;

    /* renamed from: e */
    final /* synthetic */ vi0 f22896e;

    public fh0(gh0 gh0Var, Context context, vi0 vi0Var) {
        this.f22895d = context;
        this.f22896e = vi0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f22896e.m10016c(C5852a.m17753b(this.f22895d));
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e) {
            this.f22896e.m10014f(e);
            ei0.m15466d("Exception while getting advertising Id info", e);
        }
    }
}
