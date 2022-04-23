package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.SparseIntArray;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.b;
import com.google.android.gms.common.c;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/af.class */
public final class af {

    /* renamed from: a  reason: collision with root package name */
    public final SparseIntArray f22838a;

    /* renamed from: b  reason: collision with root package name */
    private c f22839b;

    public af() {
        this(b.a());
    }

    public af(c cVar) {
        this.f22838a = new SparseIntArray();
        o.a(cVar);
        this.f22839b = cVar;
    }

    public final int a(int i) {
        return this.f22838a.get(i, -1);
    }

    public final int a(Context context, a.f fVar) {
        char c2;
        o.a(context);
        o.a(fVar);
        int a2 = 0;
        if (!fVar.requiresGooglePlayServices()) {
            return 0;
        }
        int minApkVersion = fVar.getMinApkVersion();
        a2 = a(minApkVersion);
        if (a2 == -1) {
            int i = 0;
            while (true) {
                if (i >= this.f22838a.size()) {
                    c2 = 65535;
                    break;
                }
                int keyAt = this.f22838a.keyAt(i);
                if (keyAt > minApkVersion && this.f22838a.get(keyAt) == 0) {
                    c2 = 0;
                    break;
                }
                i++;
            }
            if (c2 == 65535) {
                a2 = this.f22839b.b(context, minApkVersion);
            }
            this.f22838a.put(minApkVersion, a2);
        }
        return a2;
    }
}
