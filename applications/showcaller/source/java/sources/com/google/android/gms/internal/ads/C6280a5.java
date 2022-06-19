package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.a5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/a5.class */
public final class C6280a5 {

    /* renamed from: a */
    private String f19828a;

    /* renamed from: b */
    private Uri f19829b;

    /* renamed from: c */
    private final C6391d5 f19830c = new C6391d5(null);

    /* renamed from: d */
    private final List f19831d = Collections.emptyList();

    /* renamed from: e */
    private final List f19832e = Collections.emptyList();

    /* renamed from: a */
    public final C6280a5 m16693a(String str) {
        this.f19828a = str;
        return this;
    }

    /* renamed from: b */
    public final C6280a5 m16692b(Uri uri) {
        this.f19829b = uri;
        return this;
    }

    /* renamed from: c */
    public final C6615j5 m16691c() {
        Uri uri = this.f19829b;
        C6577i5 c6577i5 = uri != null ? new C6577i5(uri, null, null, null, this.f19831d, null, this.f19832e, null, null) : null;
        String str = this.f19828a;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return new C6615j5(str2, new C6354c5(0L, Long.MIN_VALUE, false, false, false, null), c6577i5, new C6503g5(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, -3.4028235E38f, -3.4028235E38f), C6763n5.f26969a, null);
    }
}
