package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.i5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/i5.class */
public final class C6577i5 {

    /* renamed from: a */
    public final Uri f24142a;

    /* renamed from: c */
    public final List f24144c;

    /* renamed from: e */
    public final List f24146e;

    /* renamed from: b */
    public final String f24143b = null;

    /* renamed from: d */
    public final String f24145d = null;

    /* renamed from: f */
    public final Object f24147f = null;

    public /* synthetic */ C6577i5(Uri uri, String str, C6429e5 c6429e5, C7206z4 c7206z4, List list, String str2, List list2, Object obj, C6540h5 c6540h5) {
        this.f24142a = uri;
        this.f24144c = list;
        this.f24146e = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6577i5)) {
            return false;
        }
        C6577i5 c6577i5 = (C6577i5) obj;
        return this.f24142a.equals(c6577i5.f24142a) && C7101wa.m9720H(null, null) && C7101wa.m9720H(null, null) && C7101wa.m9720H(null, null) && this.f24144c.equals(c6577i5.f24144c) && C7101wa.m9720H(null, null) && this.f24146e.equals(c6577i5.f24146e) && C7101wa.m9720H(null, null);
    }

    public final int hashCode() {
        return ((((this.f24142a.hashCode() * 923521) + this.f24144c.hashCode()) * 961) + this.f24146e.hashCode()) * 31;
    }
}
