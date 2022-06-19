package com.iab.omid.library.pubnativenet.p444g.p445a;

import com.iab.omid.library.pubnativenet.p444g.p445a.AbstractAsyncTaskC16462b;
import java.util.HashSet;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.pubnativenet.g.a.a */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/g/a/a.class */
public abstract class AbstractAsyncTaskC16461a extends AbstractAsyncTaskC16462b {

    /* renamed from: a */
    protected final HashSet<String> f57992a;

    /* renamed from: b */
    protected final JSONObject f57993b;

    /* renamed from: c */
    protected final long f57994c;

    public AbstractAsyncTaskC16461a(AbstractAsyncTaskC16462b.AbstractC16464b abstractC16464b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(abstractC16464b);
        this.f57992a = new HashSet<>(hashSet);
        this.f57993b = jSONObject;
        this.f57994c = j;
    }
}
