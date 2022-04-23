package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzf;
import com.google.android.gms.ads.internal.zzp;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbja.class */
public class zzbja {

    /* renamed from: a */
    public final zzbbx f25041a;

    /* renamed from: b */
    public final Context f25042b;

    /* renamed from: c */
    public final WeakReference<Context> f25043c;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbja$zza.class */
    public static final class zza {

        /* renamed from: a */
        public zzbbx f25044a;

        /* renamed from: b */
        public Context f25045b;

        /* renamed from: c */
        public WeakReference<Context> f25046c;

        /* renamed from: a */
        public final zza m15423a(Context context) {
            this.f25046c = new WeakReference<>(context);
            Context context2 = context;
            if (context.getApplicationContext() != null) {
                context2 = context.getApplicationContext();
            }
            this.f25045b = context2;
            return this;
        }

        /* renamed from: a */
        public final zza m15422a(zzbbx zzbbxVar) {
            this.f25044a = zzbbxVar;
            return this;
        }
    }

    public zzbja(zza zzaVar) {
        this.f25041a = zzaVar.f25044a;
        this.f25042b = zzaVar.f25045b;
        this.f25043c = zzaVar.f25046c;
    }

    /* renamed from: a */
    public final Context m15428a() {
        return this.f25042b;
    }

    /* renamed from: b */
    public final WeakReference<Context> m15427b() {
        return this.f25043c;
    }

    /* renamed from: c */
    public final zzbbx m15426c() {
        return this.f25041a;
    }

    /* renamed from: d */
    public final String m15425d() {
        return zzp.m17969c().m16141a(this.f25042b, this.f25041a.f24759a);
    }

    /* renamed from: e */
    public final zzeg m15424e() {
        return new zzeg(new zzf(this.f25042b, this.f25041a));
    }
}
