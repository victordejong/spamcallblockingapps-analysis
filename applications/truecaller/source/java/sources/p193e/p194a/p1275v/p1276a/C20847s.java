package p193e.p194a.p1275v.p1276a;

import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.flashsdk.models.FlashContact;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1275v.p1276a.p1298r0.C20838b;
import p193e.p194a.p997k3.p1000l.C16496d;
import s1.z.c.l;
/* renamed from: e.a.v.a.s */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/s.class */
public final class C20847s {

    /* renamed from: a */
    public final Contact f58578a;

    /* renamed from: b */
    public final AbstractC20721d f58579b;

    /* renamed from: c */
    public final C20838b f58580c;

    /* renamed from: d */
    public final List<FlashContact> f58581d;

    /* renamed from: e */
    public final boolean f58582e;

    /* renamed from: f */
    public final boolean f58583f;

    /* renamed from: g */
    public final List<C16496d> f58584g;

    /* renamed from: h */
    public final HistoryEvent f58585h;

    /* renamed from: i */
    public final List<C20857v> f58586i;

    /* renamed from: j */
    public final boolean f58587j;

    /* renamed from: k */
    public final boolean f58588k;

    /* JADX WARN: Multi-variable type inference failed */
    public C20847s(Contact contact, AbstractC20721d abstractC20721d, C20838b c20838b, List<FlashContact> list, boolean z, boolean z2, List<? extends C16496d> list2, HistoryEvent historyEvent, List<C20857v> list3, boolean z3, boolean z4) {
        l.e(contact, AnalyticsConstants.CONTACT);
        l.e(abstractC20721d, "contactType");
        l.e(c20838b, "appearance");
        l.e(list, "flashContacts");
        l.e(list2, "externalAppActions");
        l.e(list3, "numberAndContextCallCapabilities");
        this.f58578a = contact;
        this.f58579b = abstractC20721d;
        this.f58580c = c20838b;
        this.f58581d = list;
        this.f58582e = z;
        this.f58583f = z2;
        this.f58584g = list2;
        this.f58585h = historyEvent;
        this.f58586i = list3;
        this.f58587j = z3;
        this.f58588k = z4;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20847s)) {
                return false;
            }
            C20847s c20847s = (C20847s) obj;
            return l.a(this.f58578a, c20847s.f58578a) && l.a(this.f58579b, c20847s.f58579b) && l.a(this.f58580c, c20847s.f58580c) && l.a(this.f58581d, c20847s.f58581d) && this.f58582e == c20847s.f58582e && this.f58583f == c20847s.f58583f && l.a(this.f58584g, c20847s.f58584g) && l.a(this.f58585h, c20847s.f58585h) && l.a(this.f58586i, c20847s.f58586i) && this.f58587j == c20847s.f58587j && this.f58588k == c20847s.f58588k;
        }
        return true;
    }

    public int hashCode() {
        Contact contact = this.f58578a;
        int i = 0;
        int hashCode = contact != null ? contact.hashCode() : 0;
        AbstractC20721d abstractC20721d = this.f58579b;
        int hashCode2 = abstractC20721d != null ? abstractC20721d.hashCode() : 0;
        C20838b c20838b = this.f58580c;
        int hashCode3 = c20838b != null ? c20838b.hashCode() : 0;
        List<FlashContact> list = this.f58581d;
        int hashCode4 = list != null ? list.hashCode() : 0;
        boolean z = this.f58582e;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        boolean z2 = this.f58583f;
        int i4 = z2 ? 1 : 0;
        if (z2) {
            i4 = 1;
        }
        List<C16496d> list2 = this.f58584g;
        int hashCode5 = list2 != null ? list2.hashCode() : 0;
        HistoryEvent historyEvent = this.f58585h;
        int hashCode6 = historyEvent != null ? historyEvent.hashCode() : 0;
        List<C20857v> list3 = this.f58586i;
        if (list3 != null) {
            i = list3.hashCode();
        }
        boolean z3 = this.f58587j;
        int i5 = z3 ? 1 : 0;
        if (z3) {
            i5 = 1;
        }
        boolean z4 = this.f58588k;
        if (!z4) {
            i2 = z4 ? 1 : 0;
        }
        return (((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i3) * 31) + i4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i) * 31) + i5) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("DetailsViewModel(contact=");
        m8728C.append(this.f58578a);
        m8728C.append(", contactType=");
        m8728C.append(this.f58579b);
        m8728C.append(", appearance=");
        m8728C.append(this.f58580c);
        m8728C.append(", flashContacts=");
        m8728C.append(this.f58581d);
        m8728C.append(", hasFlash=");
        m8728C.append(this.f58582e);
        m8728C.append(", hasVoip=");
        m8728C.append(this.f58583f);
        m8728C.append(", externalAppActions=");
        m8728C.append(this.f58584g);
        m8728C.append(", lastOutgoingCall=");
        m8728C.append(this.f58585h);
        m8728C.append(", numberAndContextCallCapabilities=");
        m8728C.append(this.f58586i);
        m8728C.append(", isInitialLoading=");
        m8728C.append(this.f58587j);
        m8728C.append(", isCurrentUserPremium=");
        return C22128a.m8590o(m8728C, this.f58588k, ")");
    }
}
