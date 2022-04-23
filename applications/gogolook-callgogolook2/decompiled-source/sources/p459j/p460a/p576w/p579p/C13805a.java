package p459j.p460a.p576w.p579p;

import android.content.Intent;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w.p.a */
/* loaded from: classes2-dex2jar.jar:j/a/w/p/a.class */
public final class C13805a {

    /* renamed from: a */
    public final String f31018a;

    /* renamed from: b */
    public String f31019b;

    /* renamed from: c */
    public String f31020c;

    /* renamed from: d */
    public String f31021d;

    /* renamed from: e */
    public Intent f31022e;

    public C13805a(String str, String str2, String str3, String str4, Intent intent) {
        C15149k.m377b(str, "item");
        C15149k.m377b(str2, "title");
        C15149k.m377b(str3, "content");
        this.f31018a = str;
        this.f31019b = str2;
        this.f31020c = str3;
        this.f31021d = str4;
        this.f31022e = intent;
    }

    public /* synthetic */ C13805a(String str, String str2, String str3, String str4, Intent intent, int i, C15145g gVar) {
        this(str, str2, str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : intent);
    }

    /* renamed from: a */
    public final String m3399a() {
        return this.f31020c;
    }

    /* renamed from: b */
    public final String m3398b() {
        return this.f31021d;
    }

    /* renamed from: c */
    public final Intent m3397c() {
        return this.f31022e;
    }

    /* renamed from: d */
    public final String m3396d() {
        return this.f31018a;
    }

    /* renamed from: e */
    public final String m3395e() {
        return this.f31019b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C13805a)) {
            return false;
        }
        C13805a aVar = (C13805a) obj;
        return C15149k.m384a((Object) this.f31018a, (Object) aVar.f31018a) && C15149k.m384a((Object) this.f31019b, (Object) aVar.f31019b) && C15149k.m384a((Object) this.f31020c, (Object) aVar.f31020c) && C15149k.m384a((Object) this.f31021d, (Object) aVar.f31021d) && C15149k.m384a(this.f31022e, aVar.f31022e);
    }

    public int hashCode() {
        String str = this.f31018a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f31019b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f31020c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f31021d;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        Intent intent = this.f31022e;
        if (intent != null) {
            i = intent.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        return "PremiumItem(item=" + this.f31018a + ", title=" + this.f31019b + ", content=" + this.f31020c + ", cta=" + this.f31021d + ", ctaIntent=" + this.f31022e + ")";
    }
}
