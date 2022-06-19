package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzcl;
import java.util.Objects;
@VisibleForTesting
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzgu.class */
public final class zzgu {

    /* renamed from: a */
    public final Context f6418a;

    /* renamed from: b */
    public String f6419b;

    /* renamed from: c */
    public String f6420c;

    /* renamed from: d */
    public String f6421d;

    /* renamed from: e */
    public Boolean f6422e;

    /* renamed from: f */
    public long f6423f;

    /* renamed from: g */
    public zzcl f6424g;

    /* renamed from: h */
    public boolean f6425h;

    /* renamed from: i */
    public final Long f6426i;

    /* renamed from: j */
    public String f6427j;

    @VisibleForTesting
    public zzgu(Context context, zzcl zzclVar, Long l) {
        this.f6425h = true;
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null reference");
        this.f6418a = applicationContext;
        this.f6426i = l;
        if (zzclVar != null) {
            this.f6424g = zzclVar;
            this.f6419b = zzclVar.zzf;
            this.f6420c = zzclVar.zze;
            this.f6421d = zzclVar.zzd;
            this.f6425h = zzclVar.zzc;
            this.f6423f = zzclVar.zzb;
            this.f6427j = zzclVar.zzh;
            Bundle bundle = zzclVar.zzg;
            if (bundle == null) {
                return;
            }
            this.f6422e = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
        }
    }
}
