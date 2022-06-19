package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.ads.internal.util.C5684e;
import com.google.android.gms.common.p272k.C6198c;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/la2.class */
public final class la2 implements wa2<ma2> {

    /* renamed from: a */
    private final s03 f26002a;

    /* renamed from: b */
    private final Context f26003b;

    /* renamed from: c */
    private final zzcgz f26004c;

    public la2(s03 s03Var, Context context, zzcgz zzcgzVar) {
        this.f26002a = s03Var;
        this.f26003b = context;
        this.f26004c = zzcgzVar;
    }

    /* renamed from: a */
    public final /* synthetic */ ma2 m13617a() {
        boolean m16887g = C6198c.m16885a(this.f26003b).m16887g();
        C5667s.m18160d();
        boolean m18067h = C5679c2.m18067h(this.f26003b);
        String str = this.f26004c.f33854d;
        C5667s.m18158f();
        boolean m18041s = C5684e.m18041s();
        C5667s.m18160d();
        ApplicationInfo applicationInfo = this.f26003b.getApplicationInfo();
        return new ma2(m16887g, m18067h, str, m18041s, applicationInfo == null ? 0 : applicationInfo.targetSdkVersion, DynamiteModule.m16741c(this.f26003b, ModuleDescriptor.MODULE_ID), DynamiteModule.m16743a(this.f26003b, ModuleDescriptor.MODULE_ID));
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<ma2> zza() {
        return this.f26002a.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.ka2

            /* renamed from: a */
            private final la2 f25094a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25094a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f25094a.m13617a();
            }
        });
    }
}
