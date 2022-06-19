package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mb2.class */
public final class mb2 implements wa2<nb2> {

    /* renamed from: a */
    private final Context f26525a;

    /* renamed from: b */
    private final ScheduledExecutorService f26526b;

    /* renamed from: c */
    private final Executor f26527c;

    /* renamed from: d */
    private final int f26528d;

    /* renamed from: e */
    private final gh0 f26529e;

    public mb2(gh0 gh0Var, Context context, ScheduledExecutorService scheduledExecutorService, Executor executor, int i, byte[] bArr) {
        this.f26529e = gh0Var;
        this.f26525a = context;
        this.f26526b = scheduledExecutorService;
        this.f26527c = executor;
        this.f26528d = i;
    }

    /* renamed from: a */
    public final /* synthetic */ nb2 m13308a(Throwable th) {
        C7118wr.m9485a();
        ContentResolver contentResolver = this.f26525a.getContentResolver();
        return new nb2(null, contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id"));
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<nb2> zza() {
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25476F0)).booleanValue()) {
            return k03.m13998f((a03) k03.m13996h(k03.m13994j(a03.m16718E(this.f26529e.m14947a(this.f26525a, this.f26528d)), kb2.f25097a, this.f26527c), ((Long) C7192yr.m8714c().m14263c(C6679kw.f25484G0)).longValue(), TimeUnit.MILLISECONDS, this.f26526b), Throwable.class, new nu2(this) { // from class: com.google.android.gms.internal.ads.lb2

                /* renamed from: a */
                private final mb2 f26034a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f26034a = this;
                }

                @Override // com.google.android.gms.internal.ads.nu2
                /* renamed from: a */
                public final Object mo8501a(Object obj) {
                    return this.f26034a.m13308a((Throwable) obj);
                }
            }, this.f26527c);
        }
        return k03.m14001c(new Exception("Did not ad Ad ID into query param."));
    }
}
