package p459j.p460a.p474c0.p483e.p484a;

import gogolook.callgogolook2.messaging.scan.data.SmsMessage;
import java.util.List;
import p459j.p460a.p572v0.p573c.AbstractC13719n;
import p459j.p460a.p572v0.p573c.EnumC13715k;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.c0.e.a.c */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/a/c.class */
public final class C11726c {

    /* renamed from: a */
    public final EnumC13715k f26315a = m8413a();

    /* renamed from: b */
    public final SmsMessage f26316b;

    /* renamed from: c */
    public final List<AbstractC13719n.C13721b> f26317c;

    public C11726c(SmsMessage smsMessage, List<AbstractC13719n.C13721b> list) {
        C15149k.m377b(smsMessage, "message");
        C15149k.m377b(list, "urlScanResults");
        this.f26316b = smsMessage;
        this.f26317c = list;
    }

    /* renamed from: a */
    public final EnumC13715k m8413a() {
        EnumC13715k kVar = EnumC13715k.UNRATED;
        for (AbstractC13719n.C13721b bVar : this.f26317c) {
            if (bVar.m3607a().compareTo(kVar) > 0) {
                kVar = bVar.m3607a();
            }
        }
        return kVar;
    }

    /* renamed from: b */
    public final SmsMessage m8412b() {
        return this.f26316b;
    }

    /* renamed from: c */
    public final EnumC13715k m8411c() {
        return this.f26315a;
    }

    /* renamed from: d */
    public final List<AbstractC13719n.C13721b> m8410d() {
        return this.f26317c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C11726c)) {
            return false;
        }
        C11726c cVar = (C11726c) obj;
        return C15149k.m384a(this.f26316b, cVar.f26316b) && C15149k.m384a(this.f26317c, cVar.f26317c);
    }

    public int hashCode() {
        SmsMessage smsMessage = this.f26316b;
        int i = 0;
        int hashCode = smsMessage != null ? smsMessage.hashCode() : 0;
        List<AbstractC13719n.C13721b> list = this.f26317c;
        if (list != null) {
            i = list.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        return "SmsUrlScanResult(message=" + this.f26316b + ", urlScanResults=" + this.f26317c + ")";
    }
}
