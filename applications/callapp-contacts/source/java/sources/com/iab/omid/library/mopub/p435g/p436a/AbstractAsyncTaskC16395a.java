package com.iab.omid.library.mopub.p435g.p436a;

import com.iab.omid.library.mopub.p435g.p436a.AbstractAsyncTaskC16396b;
import java.util.HashSet;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.mopub.g.a.a */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/g/a/a.class */
public abstract class AbstractAsyncTaskC16395a extends AbstractAsyncTaskC16396b {

    /* renamed from: a */
    protected final HashSet<String> f57863a;

    /* renamed from: b */
    protected final JSONObject f57864b;

    /* renamed from: c */
    protected final long f57865c;

    public AbstractAsyncTaskC16395a(AbstractAsyncTaskC16396b.AbstractC16398b abstractC16398b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(abstractC16398b);
        this.f57863a = new HashSet<>(hashSet);
        this.f57864b = jSONObject;
        this.f57865c = j;
    }
}
