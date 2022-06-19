package com.google.android.gms.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.AbstractC3501st;
import com.google.android.gms.internal.ads.C3411pk;
import com.google.android.gms.internal.ads.C3567ve;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.ads.internal.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/c.class */
public final class C2301c {

    /* renamed from: a */
    private final Context f6633a;

    /* renamed from: b */
    private boolean f6634b;

    /* renamed from: c */
    private AbstractC3501st f6635c;

    /* renamed from: d */
    private C3411pk f6636d;

    public C2301c(Context context, AbstractC3501st abstractC3501st, C3411pk c3411pk) {
        this.f6633a = context;
        this.f6635c = abstractC3501st;
        this.f6636d = null;
        if (this.f6636d == null) {
            this.f6636d = new C3411pk();
        }
    }

    /* renamed from: c */
    private final boolean m14799c() {
        return (this.f6635c != null && this.f6635c.mo7182a().f17346f) || this.f6636d.f17187a;
    }

    /* renamed from: a */
    public final void m14802a() {
        this.f6634b = true;
    }

    /* renamed from: a */
    public final void m14801a(String str) {
        if (!m14799c()) {
            return;
        }
        if (str == null) {
            str = "";
        }
        if (this.f6635c != null) {
            this.f6635c.mo7179a(str, null, 3);
        } else if (this.f6636d.f17187a && this.f6636d.f17188b != null) {
            for (String str2 : this.f6636d.f17188b) {
                if (!TextUtils.isEmpty(str2)) {
                    String replace = str2.replace("{NAVIGATION_URL}", Uri.encode(str));
                    C2341q.m14744c();
                    C3567ve.m7003a(this.f6633a, "", replace);
                }
            }
        }
    }

    /* renamed from: b */
    public final boolean m14800b() {
        return !m14799c() || this.f6634b;
    }
}
