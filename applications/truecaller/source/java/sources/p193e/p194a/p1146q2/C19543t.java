package p193e.p194a.p1146q2;

import android.os.Bundle;
import com.huawei.hms.push.constant.RemoteMessageConst;
import javax.inject.Inject;
import javax.inject.Provider;
import o3.a;
import org.apache.avro.Schema;
import p193e.p194a.p1050l5.p1051a.C17645m0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1187r2.AbstractC19854f;
import s1.z.c.l;
import u3.e0;
/* renamed from: e.a.q2.t */
/* loaded from: classes4-dex2jar.jar:e/a/q2/t.class */
public final class C19543t implements AbstractC19541s {

    /* renamed from: a */
    public long f54310a = -1;

    /* renamed from: b */
    public final Provider<AbstractC19854f<AbstractC19463a0>> f54311b;

    /* renamed from: c */
    public final AbstractC19222c f54312c;

    /* renamed from: d */
    public final a<e0> f54313d;

    /* renamed from: e */
    public final Provider<Boolean> f54314e;

    /* renamed from: f */
    public final a<Long> f54315f;

    /* renamed from: e.a.q2.t$a */
    /* loaded from: classes4-dex2jar.jar:e/a/q2/t$a.class */
    public enum EnumC19544a {
        ACTIVITY("window"),
        NOTIFICATION(RemoteMessageConst.NOTIFICATION),
        WIDGET("widget");
        

        /* renamed from: a */
        public final String f54320a;

        EnumC19544a(String str) {
            this.f54320a = str;
        }
    }

    @Inject
    public C19543t(Provider<AbstractC19854f<AbstractC19463a0>> provider, AbstractC19222c abstractC19222c, a<e0> aVar, Provider<Boolean> provider2, a<Long> aVar2) {
        l.e(provider, "eventsTracker");
        l.e(abstractC19222c, "clock");
        l.e(aVar, "okhttpClient");
        l.e(provider2, "featureEnabled");
        l.e(aVar2, "sendingThresholdMilli");
        this.f54311b = provider;
        this.f54312c = abstractC19222c;
        this.f54313d = aVar;
        this.f54314e = provider2;
        this.f54315f = aVar2;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19541s
    /* renamed from: a */
    public void mo13186a() {
        m13183d(EnumC19544a.NOTIFICATION);
    }

    @Override // p193e.p194a.p1146q2.AbstractC19541s
    /* renamed from: b */
    public void mo13185b(Bundle bundle) {
        if (bundle == null) {
            m13183d(EnumC19544a.ACTIVITY);
        }
    }

    @Override // p193e.p194a.p1146q2.AbstractC19541s
    /* renamed from: c */
    public void mo13184c() {
        m13183d(EnumC19544a.WIDGET);
    }

    /* renamed from: d */
    public final void m13183d(EnumC19544a enumC19544a) {
        if (m13182e()) {
            Object obj = this.f54314e.get();
            l.d(obj, "featureEnabled.get()");
            if (!((Boolean) obj).booleanValue()) {
                return;
            }
            synchronized (this) {
                if (m13182e()) {
                    Schema schema = C17645m0.f49791d;
                    C17645m0.C17647b c17647b = new C17645m0.C17647b(null);
                    String str = enumC19544a.f54320a;
                    c17647b.validate(c17647b.fields()[2], str);
                    c17647b.f49798a = str;
                    c17647b.fieldSetFlags()[2] = true;
                    ((AbstractC19463a0) ((AbstractC19854f) this.f54311b.get()).mo11854a()).mo13110b(c17647b.build(), (e0) this.f54313d.get()).mo11828g();
                    this.f54310a = this.f54312c.mo13821a();
                }
            }
        }
    }

    /* renamed from: e */
    public final boolean m13182e() {
        long j = this.f54310a;
        boolean z = true;
        if (j != -1) {
            Object obj = this.f54315f.get();
            l.d(obj, "sendingThresholdMilli.get()");
            if (((Number) obj).longValue() + j >= this.f54312c.mo13821a()) {
                z = false;
            }
        }
        return z;
    }
}
