package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.SparseIntArray;
import com.google.android.gms.common.C11937b;
import com.google.android.gms.common.C11941c;
import com.google.android.gms.common.api.C11808a;
/* renamed from: com.google.android.gms.common.internal.af */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/af.class */
public final class C11980af {

    /* renamed from: a */
    public final SparseIntArray f39487a;

    /* renamed from: b */
    private C11941c f39488b;

    public C11980af() {
        this(C11937b.m19287a());
    }

    public C11980af(C11941c c11941c) {
        this.f39487a = new SparseIntArray();
        C12045o.m19162a(c11941c);
        this.f39488b = c11941c;
    }

    /* renamed from: a */
    public final int m19224a(int i) {
        return this.f39487a.get(i, -1);
    }

    /* renamed from: a */
    public final int m19223a(Context context, C11808a.AbstractC11817f abstractC11817f) {
        boolean z;
        C12045o.m19162a(context);
        C12045o.m19162a(abstractC11817f);
        if (!abstractC11817f.requiresGooglePlayServices()) {
            return 0;
        }
        int minApkVersion = abstractC11817f.getMinApkVersion();
        int m19224a = m19224a(minApkVersion);
        if (m19224a == -1) {
            int i = 0;
            while (true) {
                if (i >= this.f39487a.size()) {
                    z = true;
                    break;
                }
                int keyAt = this.f39487a.keyAt(i);
                if (keyAt > minApkVersion && this.f39487a.get(keyAt) == 0) {
                    z = false;
                    break;
                }
                i++;
            }
            m19224a = 0;
            if (z) {
                m19224a = this.f39488b.mo19269b(context, minApkVersion);
            }
            this.f39487a.put(minApkVersion, m19224a);
        }
        return m19224a;
    }
}
