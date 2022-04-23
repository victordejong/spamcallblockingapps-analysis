package p081h.p160h.p161a.p164j;

import com.mopub.nativeads.MoPubAdRenderer;
import com.mopub.nativeads.RequestParameters;
import p081h.p160h.p161a.EnumC6184a;
import p626l.p641z.p643d.C15149k;
/* renamed from: h.h.a.j.a */
/* loaded from: classes2-dex2jar.jar:h/h/a/j/a.class */
public final class C6216a {

    /* renamed from: a */
    public AbstractC6217b f15409a;

    /* renamed from: b */
    public final String f15410b;

    /* renamed from: c */
    public final EnumC6184a f15411c;

    /* renamed from: d */
    public final String f15412d;

    /* renamed from: e */
    public final MoPubAdRenderer<?> f15413e;

    /* renamed from: f */
    public final RequestParameters f15414f;

    public C6216a(String str, EnumC6184a aVar, String str2, MoPubAdRenderer<?> moPubAdRenderer, RequestParameters requestParameters) {
        C15149k.m377b(str, "adUnitName");
        C15149k.m377b(aVar, "adSource");
        C15149k.m377b(str2, "adUnitId");
        this.f15410b = str;
        this.f15411c = aVar;
        this.f15412d = str2;
        this.f15413e = moPubAdRenderer;
        this.f15414f = requestParameters;
    }

    /* renamed from: a */
    public final String m23562a() {
        return this.f15412d;
    }

    /* renamed from: a */
    public final void m23561a(AbstractC6217b bVar) {
        this.f15409a = bVar;
    }

    /* renamed from: b */
    public final AbstractC6217b m23560b() {
        return this.f15409a;
    }

    /* renamed from: c */
    public final RequestParameters m23559c() {
        return this.f15414f;
    }

    /* renamed from: d */
    public final MoPubAdRenderer<?> m23558d() {
        return this.f15413e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6216a)) {
            return false;
        }
        C6216a aVar = (C6216a) obj;
        return C15149k.m384a((Object) this.f15410b, (Object) aVar.f15410b) && C15149k.m384a(this.f15411c, aVar.f15411c) && C15149k.m384a((Object) this.f15412d, (Object) aVar.f15412d) && C15149k.m384a(this.f15413e, aVar.f15413e) && C15149k.m384a(this.f15414f, aVar.f15414f);
    }

    public int hashCode() {
        String str = this.f15410b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        EnumC6184a aVar = this.f15411c;
        int hashCode2 = aVar != null ? aVar.hashCode() : 0;
        String str2 = this.f15412d;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        MoPubAdRenderer<?> moPubAdRenderer = this.f15413e;
        int hashCode4 = moPubAdRenderer != null ? moPubAdRenderer.hashCode() : 0;
        RequestParameters requestParameters = this.f15414f;
        if (requestParameters != null) {
            i = requestParameters.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        return "AdUnitConfig(adUnitName=" + this.f15410b + ", adSource=" + this.f15411c + ", adUnitId=" + this.f15412d + ", renderer=" + this.f15413e + ", parameters=" + this.f15414f + ")";
    }
}
