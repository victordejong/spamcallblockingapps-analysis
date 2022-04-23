package p459j.p460a.p576w.p578o;

import com.appsflyer.share.Constants;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w.o.j */
/* loaded from: classes2-dex2jar.jar:j/a/w/o/j.class */
public final class C13804j {
    @AbstractC10120c(IapProductRealmObject.STATE)

    /* renamed from: a */
    public final int f31015a;
    @AbstractC10120c(Constants.URL_MEDIA_SOURCE)

    /* renamed from: b */
    public final String f31016b;
    @AbstractC10120c("market_receipt")

    /* renamed from: c */
    public final C13803i f31017c;

    /* renamed from: a */
    public final String m3402a() {
        return this.f31016b;
    }

    /* renamed from: b */
    public final C13803i m3401b() {
        return this.f31017c;
    }

    /* renamed from: c */
    public final int m3400c() {
        return this.f31015a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C13804j)) {
            return false;
        }
        C13804j jVar = (C13804j) obj;
        return (this.f31015a == jVar.f31015a) && C15149k.m384a((Object) this.f31016b, (Object) jVar.f31016b) && C15149k.m384a(this.f31017c, jVar.f31017c);
    }

    public int hashCode() {
        int hashCode;
        hashCode = Integer.valueOf(this.f31015a).hashCode();
        String str = this.f31016b;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        C13803i iVar = this.f31017c;
        if (iVar != null) {
            i = iVar.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        return "SubscriptionStatus(state=" + this.f31015a + ", productId=" + this.f31016b + ", receipt=" + this.f31017c + ")";
    }
}
