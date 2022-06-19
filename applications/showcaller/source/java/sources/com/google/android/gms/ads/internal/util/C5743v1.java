package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import androidx.browser.customtabs.C0351c;
import com.google.android.gms.internal.ads.AbstractC6568hx;
import com.google.android.gms.internal.ads.C6643jx;
import com.google.android.gms.internal.ads.qj3;
/* renamed from: com.google.android.gms.ads.internal.util.v1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/v1.class */
public final class C5743v1 implements AbstractC6568hx {

    /* renamed from: a */
    final /* synthetic */ C6643jx f18573a;

    /* renamed from: b */
    final /* synthetic */ Context f18574b;

    /* renamed from: c */
    final /* synthetic */ Uri f18575c;

    public C5743v1(C5679c2 c5679c2, C6643jx c6643jx, Context context, Uri uri) {
        this.f18573a = c6643jx;
        this.f18574b = context;
        this.f18575c = uri;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6568hx
    public final void zza() {
        C0351c m34653a = new C0351c.C0352a(this.f18573a.m14021c()).m34653a();
        m34653a.f1470a.setPackage(qj3.m11868a(this.f18574b));
        m34653a.m34654a(this.f18574b, this.f18575c);
        this.f18573a.m14022b((Activity) this.f18574b);
    }
}
