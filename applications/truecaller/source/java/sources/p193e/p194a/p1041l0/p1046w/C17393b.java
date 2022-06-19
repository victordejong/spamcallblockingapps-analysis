package p193e.p194a.p1041l0.p1046w;

import android.os.Bundle;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.settings.CallingSettings;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1041l0.AbstractC17352g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import p193e.p194a.p372b0.p430q.C8601l0;
import s1.s;
import s1.w.d;
import s1.z.c.l;
/* renamed from: e.a.l0.w.b */
/* loaded from: classes6-dex2jar.jar:e/a/l0/w/b.class */
public final class C17393b implements AbstractC17392a {

    /* renamed from: a */
    public final a<CallingSettings> f48734a;

    /* renamed from: b */
    public final a<AbstractC17352g> f48735b;

    /* renamed from: c */
    public final a<C8601l0> f48736c;

    /* renamed from: d */
    public final a<AbstractC19462a> f48737d;

    /* renamed from: e.a.l0.w.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/w/b$a.class */
    public static final class C17394a implements AbstractC19549v {

        /* renamed from: a */
        public final int f48738a;

        /* renamed from: b */
        public final int f48739b;

        /* renamed from: c */
        public final long f48740c;

        public C17394a(int i, int i2, long j) {
            this.f48738a = i;
            this.f48739b = i2;
            this.f48740c = j;
        }

        @Override // p193e.p194a.p1146q2.AbstractC19549v
        /* renamed from: a */
        public AbstractC19580x mo9106a() {
            Bundle bundle = new Bundle();
            bundle.putInt("Bucket", this.f48738a);
            bundle.putLong("Duration", this.f48740c);
            bundle.putInt("value", this.f48739b);
            return new AbstractC19580x.C19582b("InvalidCallLogEntries", bundle);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C17394a)) {
                    return false;
                }
                C17394a c17394a = (C17394a) obj;
                return this.f48738a == c17394a.f48738a && this.f48739b == c17394a.f48739b && this.f48740c == c17394a.f48740c;
            }
            return true;
        }

        public int hashCode() {
            return (((this.f48738a * 31) + this.f48739b) * 31) + C4876d.m34274a(this.f48740c);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("InvalidCallLogEntriesEvent(bucket=");
            m8728C.append(this.f48738a);
            m8728C.append(", total=");
            m8728C.append(this.f48739b);
            m8728C.append(", durationMillis=");
            return C22128a.m8693K2(m8728C, this.f48740c, ")");
        }
    }

    @Inject
    public C17393b(a<CallingSettings> aVar, a<AbstractC17352g> aVar2, a<C8601l0> aVar3, a<AbstractC19462a> aVar4) {
        l.e(aVar, "callingSettings");
        l.e(aVar2, "callLogManager");
        l.e(aVar3, "timestampUtil");
        l.e(aVar4, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f48734a = aVar;
        this.f48735b = aVar2;
        this.f48736c = aVar3;
        this.f48737d = aVar4;
    }

    @Override // p193e.p194a.p1041l0.p1046w.AbstractC17392a
    /* renamed from: a */
    public Object mo16144a(d<? super s> dVar) {
        s sVar = s.a;
        long j = ((CallingSettings) this.f48734a.get()).getLong("lastInvalidCallsUpdate", 0L);
        if ((j != 0) && (!((C8601l0) this.f48736c.get()).m28260a(j, 7L, TimeUnit.DAYS))) {
            return sVar;
        }
        long currentTimeMillis = System.currentTimeMillis();
        s1.w.j.a num = new Integer(((AbstractC17352g) this.f48735b.get()).mo16207n());
        Long l = new Long(System.currentTimeMillis() - currentTimeMillis);
        int intValue = num.intValue();
        long longValue = l.longValue();
        if (intValue == -1) {
            return sVar;
        }
        ((AbstractC19462a) this.f48737d.get()).mo13274b(new C17394a(intValue == 0 ? 1 : (1 <= intValue && 10 >= intValue) ? 2 : (11 <= intValue && 50 >= intValue) ? 3 : 4, intValue, longValue));
        ((CallingSettings) this.f48734a.get()).putLong("lastInvalidCallsUpdate", System.currentTimeMillis());
        return num == s1.w.j.a.a ? num : sVar;
    }
}
