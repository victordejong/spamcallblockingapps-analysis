package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cia.class */
public final class cia implements chb<chw> {

    /* renamed from: a */
    private final AbstractC12920sx f45831a;

    /* renamed from: b */
    private final Context f45832b;

    /* renamed from: c */
    private final String f45833c;

    /* renamed from: d */
    private final dbs f45834d;

    public cia(AbstractC12920sx abstractC12920sx, Context context, String str, dbs dbsVar) {
        this.f45831a = abstractC12920sx;
        this.f45832b = context;
        this.f45833c = str;
        this.f45834d = dbsVar;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<chw> mo17449a() {
        return this.f45834d.mo16890a(new Callable(this) { // from class: com.google.android.gms.internal.ads.chz

            /* renamed from: a */
            private final cia f45827a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45827a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new chw(new JSONObject());
            }
        });
    }
}
