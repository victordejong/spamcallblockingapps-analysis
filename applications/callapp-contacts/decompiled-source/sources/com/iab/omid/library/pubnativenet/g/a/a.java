package com.iab.omid.library.pubnativenet.g.a;

import com.iab.omid.library.pubnativenet.g.a.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/g/a/a.class */
public abstract class a extends b {

    /* renamed from: a  reason: collision with root package name */
    protected final HashSet<String> f33405a;

    /* renamed from: b  reason: collision with root package name */
    protected final JSONObject f33406b;

    /* renamed from: c  reason: collision with root package name */
    protected final long f33407c;

    public a(b.AbstractC0536b bVar, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(bVar);
        this.f33405a = new HashSet<>(hashSet);
        this.f33406b = jSONObject;
        this.f33407c = j;
    }
}
