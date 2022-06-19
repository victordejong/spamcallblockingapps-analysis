package p193e.p194a.p1268u.p1269m;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.u.m.a */
/* loaded from: classes16-dex2jar.jar:e/a/u/m/a.class */
public final class C20569a {

    /* renamed from: a */
    public final int f57661a;

    /* renamed from: b */
    public final int f57662b;

    /* renamed from: c */
    public final int f57663c;

    /* renamed from: d */
    public final int f57664d;

    /* renamed from: e */
    public final int f57665e;

    /* renamed from: f */
    public final int f57666f;

    /* renamed from: g */
    public final int f57667g;

    /* renamed from: h */
    public final int f57668h;

    /* renamed from: i */
    public final int f57669i;

    /* renamed from: j */
    public final int f57670j;

    /* renamed from: k */
    public final String f57671k;

    /* renamed from: l */
    public final Integer f57672l;

    /* renamed from: m */
    public final int f57673m;

    /* renamed from: n */
    public final int f57674n;

    /* renamed from: o */
    public final int f57675o;

    public C20569a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, String str, Integer num, int i11, int i12, int i13) {
        this.f57661a = i;
        this.f57662b = i2;
        this.f57663c = i3;
        this.f57664d = i4;
        this.f57665e = i5;
        this.f57666f = i6;
        this.f57667g = i7;
        this.f57668h = i8;
        this.f57669i = i9;
        this.f57670j = i10;
        this.f57671k = str;
        this.f57672l = num;
        this.f57673m = i11;
        this.f57674n = i12;
        this.f57675o = i13;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20569a)) {
                return false;
            }
            C20569a c20569a = (C20569a) obj;
            return this.f57661a == c20569a.f57661a && this.f57662b == c20569a.f57662b && this.f57663c == c20569a.f57663c && this.f57664d == c20569a.f57664d && this.f57665e == c20569a.f57665e && this.f57666f == c20569a.f57666f && this.f57667g == c20569a.f57667g && this.f57668h == c20569a.f57668h && this.f57669i == c20569a.f57669i && this.f57670j == c20569a.f57670j && l.a(this.f57671k, c20569a.f57671k) && l.a(this.f57672l, c20569a.f57672l) && this.f57673m == c20569a.f57673m && this.f57674n == c20569a.f57674n && this.f57675o == c20569a.f57675o;
        }
        return true;
    }

    public int hashCode() {
        int i = this.f57661a;
        int i2 = this.f57662b;
        int i3 = this.f57663c;
        int i4 = this.f57664d;
        int i5 = this.f57665e;
        int i6 = this.f57666f;
        int i7 = this.f57667g;
        int i8 = this.f57668h;
        int i9 = this.f57669i;
        int i10 = this.f57670j;
        String str = this.f57671k;
        int i11 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Integer num = this.f57672l;
        if (num != null) {
            i11 = num.hashCode();
        }
        return (((((((((((((((((((((((((((i * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + i9) * 31) + i10) * 31) + hashCode) * 31) + i11) * 31) + this.f57673m) * 31) + this.f57674n) * 31) + this.f57675o;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("StatsRawData(outgoingMessagesCount=");
        m8728C.append(this.f57661a);
        m8728C.append(", incomingMessagesCount=");
        m8728C.append(this.f57662b);
        m8728C.append(", messageTotalCount=");
        m8728C.append(this.f57663c);
        m8728C.append(", messagesMovedToSpam=");
        m8728C.append(this.f57664d);
        m8728C.append(", gifsCount=");
        m8728C.append(this.f57665e);
        m8728C.append(", importantMessagesIdentified=");
        m8728C.append(this.f57666f);
        m8728C.append(", messagesAutomaticallyRemoved=");
        m8728C.append(this.f57667g);
        m8728C.append(", outgoingCallsCount=");
        m8728C.append(this.f57668h);
        m8728C.append(", incomingCallsCount=");
        m8728C.append(this.f57669i);
        m8728C.append(", callsCount=");
        m8728C.append(this.f57670j);
        m8728C.append(", mostCalled=");
        m8728C.append(this.f57671k);
        m8728C.append(", mostCalledTimePeriod=");
        m8728C.append(this.f57672l);
        m8728C.append(", identifiedSpamCalls=");
        m8728C.append(this.f57673m);
        m8728C.append(", unknownCallsIdentified=");
        m8728C.append(this.f57674n);
        m8728C.append(", percentageCallsIdentified=");
        return C22128a.m8697J2(m8728C, this.f57675o, ")");
    }
}
