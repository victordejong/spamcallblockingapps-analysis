package com.google.android.gms.internal.icing;

import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.List;
@ShowFirstParty
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzs.class */
public final class zzs {

    /* renamed from: a */
    private final String f8142a;

    /* renamed from: b */
    private String f8143b;

    /* renamed from: c */
    private boolean f8144c;

    /* renamed from: e */
    private boolean f8146e;

    /* renamed from: g */
    private String f8148g;

    /* renamed from: d */
    private int f8145d = 1;

    /* renamed from: f */
    private final List<zzm> f8147f = new ArrayList();

    public zzs(String str) {
        this.f8142a = str;
    }

    /* renamed from: a */
    public final zzs m13470a(boolean z) {
        this.f8144c = true;
        return this;
    }

    /* renamed from: b */
    public final zzs m13469b(String str) {
        this.f8143b = str;
        return this;
    }

    /* renamed from: c */
    public final zzt m13468c() {
        String str = this.f8142a;
        String str2 = this.f8143b;
        boolean z = this.f8144c;
        int i = this.f8145d;
        boolean z2 = this.f8146e;
        List<zzm> list = this.f8147f;
        return new zzt(str, str2, z, i, z2, null, (zzm[]) list.toArray(new zzm[list.size()]), this.f8148g, null);
    }
}
