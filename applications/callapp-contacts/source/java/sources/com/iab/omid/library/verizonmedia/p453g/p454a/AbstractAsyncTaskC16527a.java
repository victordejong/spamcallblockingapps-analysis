package com.iab.omid.library.verizonmedia.p453g.p454a;

import com.iab.omid.library.verizonmedia.p453g.p454a.AbstractAsyncTaskC16528b;
import java.util.HashSet;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.verizonmedia.g.a.a */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/g/a/a.class */
public abstract class AbstractAsyncTaskC16527a extends AbstractAsyncTaskC16528b {

    /* renamed from: a */
    protected final HashSet<String> f58124a;

    /* renamed from: b */
    protected final JSONObject f58125b;

    /* renamed from: c */
    protected final long f58126c;

    public AbstractAsyncTaskC16527a(AbstractAsyncTaskC16528b.AbstractC16530b abstractC16530b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(abstractC16530b);
        this.f58124a = new HashSet<>(hashSet);
        this.f58125b = jSONObject;
        this.f58126c = j;
    }
}
