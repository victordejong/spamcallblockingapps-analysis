package com.iab.omid.library.verizonmedia.g.a;

import com.iab.omid.library.verizonmedia.g.a.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/g/a/a.class */
public abstract class a extends b {

    /* renamed from: a  reason: collision with root package name */
    protected final HashSet<String> f33501a;

    /* renamed from: b  reason: collision with root package name */
    protected final JSONObject f33502b;

    /* renamed from: c  reason: collision with root package name */
    protected final long f33503c;

    public a(b.AbstractC0539b bVar, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(bVar);
        this.f33501a = new HashSet<>(hashSet);
        this.f33502b = jSONObject;
        this.f33503c = j;
    }
}
