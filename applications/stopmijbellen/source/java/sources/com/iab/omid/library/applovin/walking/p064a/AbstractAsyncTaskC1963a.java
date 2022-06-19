package com.iab.omid.library.applovin.walking.p064a;

import com.iab.omid.library.applovin.walking.p064a.AbstractAsyncTaskC1964b;
import java.util.HashSet;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.applovin.walking.a.a */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/applovin/walking/a/a.class */
public abstract class AbstractAsyncTaskC1963a extends AbstractAsyncTaskC1964b {

    /* renamed from: a */
    public final HashSet<String> f7241a;

    /* renamed from: b */
    public final JSONObject f7242b;

    /* renamed from: c */
    public final long f7243c;

    public AbstractAsyncTaskC1963a(AbstractAsyncTaskC1964b.AbstractC1966b abstractC1966b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(abstractC1966b);
        this.f7241a = new HashSet<>(hashSet);
        this.f7242b = jSONObject;
        this.f7243c = j;
    }
}
