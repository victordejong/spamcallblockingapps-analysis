package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cia.class */
public final class cia implements chb<chw> {

    /* renamed from: a  reason: collision with root package name */
    private final sx f25870a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f25871b;

    /* renamed from: c  reason: collision with root package name */
    private final String f25872c;

    /* renamed from: d  reason: collision with root package name */
    private final dbs f25873d;

    public cia(sx sxVar, Context context, String str, dbs dbsVar) {
        this.f25870a = sxVar;
        this.f25871b = context;
        this.f25872c = str;
        this.f25873d = dbsVar;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<chw> a() {
        return this.f25873d.a(new Callable(this) { // from class: com.google.android.gms.internal.ads.chz

            /* renamed from: a  reason: collision with root package name */
            private final cia f25866a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25866a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new chw(new JSONObject());
            }
        });
    }
}
