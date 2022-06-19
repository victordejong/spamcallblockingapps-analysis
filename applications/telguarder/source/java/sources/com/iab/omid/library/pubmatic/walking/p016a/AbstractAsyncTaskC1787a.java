package com.iab.omid.library.pubmatic.walking.p016a;

import com.iab.omid.library.pubmatic.walking.p016a.AbstractAsyncTaskC1788b;
import java.util.HashSet;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.pubmatic.walking.a.a */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/walking/a/a.class */
public abstract class AbstractAsyncTaskC1787a extends AbstractAsyncTaskC1788b {

    /* renamed from: a */
    protected final HashSet<String> f307a;

    /* renamed from: b */
    protected final JSONObject f308b;

    /* renamed from: c */
    protected final long f309c;

    public AbstractAsyncTaskC1787a(AbstractAsyncTaskC1788b.AbstractC1790b abstractC1790b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(abstractC1790b);
        this.f307a = new HashSet<>(hashSet);
        this.f308b = jSONObject;
        this.f309c = j;
    }
}
