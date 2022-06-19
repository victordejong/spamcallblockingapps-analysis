package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zq2.class */
public abstract class zq2 extends ar2 {

    /* renamed from: c */
    protected final HashSet<String> f33263c;

    /* renamed from: d */
    protected final JSONObject f33264d;

    /* renamed from: e */
    protected final long f33265e;

    /* JADX WARN: Multi-variable type inference failed */
    public zq2(sq2 sq2Var, sq2 sq2Var2, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(sq2Var, null);
        this.f33263c = new HashSet<>((Collection<? extends String>) sq2Var2);
        this.f33264d = hashSet;
        this.f33265e = jSONObject;
    }
}
