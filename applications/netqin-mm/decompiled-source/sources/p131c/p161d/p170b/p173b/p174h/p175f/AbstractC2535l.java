package p131c.p161d.p170b.p173b.p174h.p175f;

import com.google.android.datatransport.cct.internal.ClientInfo;
import com.google.android.datatransport.cct.internal.QosTier;
import java.util.List;
import p131c.p161d.p170b.p173b.p174h.p175f.C2525g;
/* renamed from: c.d.b.b.h.f.l */
/* loaded from: classes-dex2jar.jar:c/d/b/b/h/f/l.class */
public abstract class AbstractC2535l {

    /* renamed from: c.d.b.b.h.f.l$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/h/f/l$a.class */
    public static abstract class AbstractC2536a {
        /* renamed from: a */
        public AbstractC2536a m29574a(int i) {
            mo29570a(Integer.valueOf(i));
            return this;
        }

        /* renamed from: a */
        public abstract AbstractC2536a mo29573a(long j);

        /* renamed from: a */
        public abstract AbstractC2536a mo29572a(ClientInfo clientInfo);

        /* renamed from: a */
        public abstract AbstractC2536a mo29571a(QosTier qosTier);

        /* renamed from: a */
        public abstract AbstractC2536a mo29570a(Integer num);

        /* renamed from: a */
        public abstract AbstractC2536a mo29569a(String str);

        /* renamed from: a */
        public abstract AbstractC2536a mo29568a(List<AbstractC2533k> list);

        /* renamed from: a */
        public abstract AbstractC2535l mo29575a();

        /* renamed from: b */
        public abstract AbstractC2536a mo29567b(long j);

        /* renamed from: b */
        public AbstractC2536a m29566b(String str) {
            mo29569a(str);
            return this;
        }
    }

    /* renamed from: h */
    public static AbstractC2536a m29576h() {
        return new C2525g.C2527b();
    }

    /* renamed from: a */
    public abstract ClientInfo mo29583a();

    /* renamed from: b */
    public abstract List<AbstractC2533k> mo29582b();

    /* renamed from: c */
    public abstract Integer mo29581c();

    /* renamed from: d */
    public abstract String mo29580d();

    /* renamed from: e */
    public abstract QosTier mo29579e();

    /* renamed from: f */
    public abstract long mo29578f();

    /* renamed from: g */
    public abstract long mo29577g();
}
