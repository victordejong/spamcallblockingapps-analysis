package p193e.p194a.p292a4;

import com.razorpay.AnalyticsConstants;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.a4.p */
/* loaded from: classes10-dex2jar.jar:e/a/a4/p.class */
public final class C7463p extends AbstractC7432c {

    /* renamed from: a */
    public final String f23711a;

    /* renamed from: b */
    public final AbstractC7460m f23712b;

    /* renamed from: c */
    public final a<s> f23713c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7463p(String str, AbstractC7460m abstractC7460m, a<s> aVar) {
        super(null);
        l.e(str, AnalyticsConstants.NAME);
        l.e(aVar, "action");
        this.f23711a = str;
        this.f23712b = abstractC7460m;
        this.f23713c = aVar;
    }

    @Override // p193e.p194a.p292a4.AbstractC7432c
    /* renamed from: a */
    public AbstractC7460m mo29582a() {
        return this.f23712b;
    }

    @Override // p193e.p194a.p292a4.AbstractC7432c
    /* renamed from: b */
    public String mo29581b() {
        return this.f23711a;
    }
}
