package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.wo;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/wl.class */
public final class wl implements eeg {

    /* renamed from: a  reason: collision with root package name */
    String f28474a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f28475b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f28476c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f28477d;

    public wl(Context context, String str) {
        this.f28475b = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f28474a = str;
        this.f28477d = false;
        this.f28476c = new Object();
    }

    @Override // com.google.android.gms.internal.ads.eeg
    public final void a(eeh eehVar) {
        a(eehVar.j);
    }

    public final void a(boolean z) {
        if (zzr.zzlt().a(this.f28475b)) {
            synchronized (this.f28476c) {
                if (this.f28477d != z) {
                    this.f28477d = z;
                    if (!TextUtils.isEmpty(this.f28474a)) {
                        if (this.f28477d) {
                            wo zzlt = zzr.zzlt();
                            Context context = this.f28475b;
                            final String str = this.f28474a;
                            if (zzlt.a(context)) {
                                if (wo.b(context)) {
                                    zzlt.a("beginAdUnitExposure", new wo.a(str) { // from class: com.google.android.gms.internal.ads.wt

                                        /* renamed from: a  reason: collision with root package name */
                                        private final String f28493a;

                                        /* JADX INFO: Access modifiers changed from: package-private */
                                        {
                                            this.f28493a = str;
                                        }

                                        @Override // com.google.android.gms.internal.ads.wo.a
                                        public final void a(afl aflVar) {
                                            aflVar.b(this.f28493a);
                                        }
                                    });
                                } else {
                                    zzlt.a(context, str, "beginAdUnitExposure");
                                }
                            }
                        } else {
                            wo zzlt2 = zzr.zzlt();
                            Context context2 = this.f28475b;
                            final String str2 = this.f28474a;
                            if (zzlt2.a(context2)) {
                                if (wo.b(context2)) {
                                    zzlt2.a("endAdUnitExposure", new wo.a(str2) { // from class: com.google.android.gms.internal.ads.ww

                                        /* renamed from: a  reason: collision with root package name */
                                        private final String f28496a;

                                        /* JADX INFO: Access modifiers changed from: package-private */
                                        {
                                            this.f28496a = str2;
                                        }

                                        @Override // com.google.android.gms.internal.ads.wo.a
                                        public final void a(afl aflVar) {
                                            aflVar.c(this.f28496a);
                                        }
                                    });
                                } else {
                                    zzlt2.a(context2, str2, "endAdUnitExposure");
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
