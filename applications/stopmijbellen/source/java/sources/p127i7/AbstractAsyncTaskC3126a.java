package p127i7;

import java.util.HashSet;
import org.json.JSONObject;
import p127i7.AbstractAsyncTaskC3127b;
/* renamed from: i7.a */
/* loaded from: classes-dex2jar.jar:i7/a.class */
public abstract class AbstractAsyncTaskC3126a extends AbstractAsyncTaskC3127b {

    /* renamed from: c */
    public final HashSet<String> f10566c;

    /* renamed from: d */
    public final JSONObject f10567d;

    /* renamed from: e */
    public final long f10568e;

    public AbstractAsyncTaskC3126a(AbstractAsyncTaskC3127b.AbstractC3129b abstractC3129b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(abstractC3129b);
        this.f10566c = new HashSet<>(hashSet);
        this.f10567d = jSONObject;
        this.f10568e = j;
    }
}
