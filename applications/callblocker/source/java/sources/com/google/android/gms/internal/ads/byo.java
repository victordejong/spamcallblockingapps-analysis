package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2341q;
import java.util.Set;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/byo.class */
public final class byo implements cah<byl> {

    /* renamed from: a */
    private final crs f12494a;

    /* renamed from: b */
    private final Context f12495b;

    /* renamed from: c */
    private final Set<String> f12496c;

    public byo(crs crsVar, Context context, Set<String> set) {
        this.f12494a = crsVar;
        this.f12495b = context;
        this.f12496c = set;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<byl> mo11479a() {
        return this.f12494a.mo10767a(new Callable(this) { // from class: com.google.android.gms.internal.ads.byn

            /* renamed from: a */
            private final byo f12493a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12493a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f12493a.m11553b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ byl m11553b() {
        byl bylVar;
        boolean m11554b;
        if (((Boolean) dyx.m8158e().m7876a(edi.f16487cn)).booleanValue()) {
            m11554b = byl.m11554b(this.f12496c);
            if (m11554b) {
                bylVar = new byl(C2341q.m14729r().m7389b(this.f12495b));
                return bylVar;
            }
        }
        bylVar = new byl(null);
        return bylVar;
    }
}
