package p193e.p194a.p1080o.p1100m;

import com.truecaller.data.entity.CallContextMessage;
import com.truecaller.data.entity.MessageType;
import java.util.Objects;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17730s;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.o.m.b */
/* loaded from: classes8-dex2jar.jar:e/a/o/m/b.class */
public final class C18785b implements AbstractC19549v {

    /* renamed from: a */
    public final CallContextMessage f52770a;

    /* renamed from: b */
    public final String f52771b;

    public C18785b(CallContextMessage callContextMessage, String str) {
        l.e(callContextMessage, "callContextMessage");
        l.e(str, "response");
        this.f52770a = callContextMessage;
        this.f52771b = str;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Schema schema = C17730s.f50232j;
        C17730s.C17732b c17732b = new C17730s.C17732b(null);
        String str = this.f52770a.f11496a;
        c17732b.validate(c17732b.fields()[2], str);
        c17732b.f50245a = str;
        c17732b.fieldSetFlags()[2] = true;
        int length = this.f52770a.f11498c.length();
        c17732b.validate(c17732b.fields()[6], Integer.valueOf(length));
        c17732b.f50249e = length;
        c17732b.fieldSetFlags()[6] = true;
        String str2 = this.f52771b;
        c17732b.validate(c17732b.fields()[5], str2);
        c17732b.f50248d = str2;
        c17732b.fieldSetFlags()[5] = true;
        String value = this.f52770a.f11499d.getValue();
        c17732b.validate(c17732b.fields()[3], value);
        c17732b.f50246b = value;
        c17732b.fieldSetFlags()[3] = true;
        String str3 = this.f52770a.f11501f;
        c17732b.validate(c17732b.fields()[8], str3);
        c17732b.f50251g = str3;
        c17732b.fieldSetFlags()[8] = true;
        String str4 = this.f52770a.f11500e.f11558a;
        c17732b.validate(c17732b.fields()[4], str4);
        c17732b.f50247c = str4;
        c17732b.fieldSetFlags()[4] = true;
        MessageType messageType = this.f52770a.f11500e;
        if (messageType instanceof MessageType.Preset) {
            Objects.requireNonNull(messageType, "null cannot be cast to non-null type com.truecaller.data.entity.MessageType.Preset");
            Integer valueOf = Integer.valueOf(((MessageType.Preset) messageType).f11560b);
            c17732b.validate(c17732b.fields()[7], valueOf);
            c17732b.f50250f = valueOf;
            c17732b.fieldSetFlags()[7] = true;
        }
        return new AbstractC19580x.C19584d(c17732b.build());
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C18785b)) {
                return false;
            }
            C18785b c18785b = (C18785b) obj;
            return l.a(this.f52770a, c18785b.f52770a) && l.a(this.f52771b, c18785b.f52771b);
        }
        return true;
    }

    public int hashCode() {
        CallContextMessage callContextMessage = this.f52770a;
        int i = 0;
        int hashCode = callContextMessage != null ? callContextMessage.hashCode() : 0;
        String str = this.f52771b;
        if (str != null) {
            i = str.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CallContextSentEvent(callContextMessage=");
        m8728C.append(this.f52770a);
        m8728C.append(", response=");
        return C22128a.m8618h(m8728C, this.f52771b, ")");
    }
}
