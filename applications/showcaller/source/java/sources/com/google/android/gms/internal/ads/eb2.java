package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/eb2.class */
public final class eb2 implements wa2<cb2> {

    /* renamed from: a */
    private final s03 f22056a;

    /* renamed from: b */
    private final Context f22057b;

    public eb2(s03 s03Var, Context context) {
        this.f22056a = s03Var;
        this.f22057b = context;
    }

    /* renamed from: b */
    private static ResolveInfo m15526b(PackageManager packageManager, String str) {
        return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(20:2|(1:4)(1:5)|6|(1:8)(1:9)|10|(3:12|(2:15|13)|52)|16|(3:48|21|(12:23|24|25|50|26|(6:28|30|(2:33|(3:37|(3:40|(2:54|42)(1:43)|38)|53))|32|44|45)|29|30|(0)|32|44|45))|18|24|25|50|26|(0)|29|30|(0)|32|44|45) */
    /* JADX WARN: Removed duplicated region for block: B:28:0x011d A[Catch: Exception -> 0x0224, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x0224, blocks: (B:26:0x0109, B:28:0x011d), top: B:50:0x0109 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x017e  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ com.google.android.gms.internal.ads.cb2 m15527a() {
        /*
            Method dump skipped, instructions count: 553
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.eb2.m15527a():com.google.android.gms.internal.ads.cb2");
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<cb2> zza() {
        return this.f22056a.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.db2

            /* renamed from: a */
            private final eb2 f21572a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21572a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f21572a.m15527a();
            }
        });
    }
}
