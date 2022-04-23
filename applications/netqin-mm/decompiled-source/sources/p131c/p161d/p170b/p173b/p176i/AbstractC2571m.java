package p131c.p161d.p170b.p173b.p176i;

import android.util.Base64;
import com.google.android.datatransport.Priority;
import p131c.p161d.p170b.p173b.p176i.C2553c;
/* renamed from: c.d.b.b.i.m */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/m.class */
public abstract class AbstractC2571m {

    /* renamed from: c.d.b.b.i.m$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/i/m$a.class */
    public static abstract class AbstractC2572a {
        /* renamed from: a */
        public abstract AbstractC2572a mo29500a(Priority priority);

        /* renamed from: a */
        public abstract AbstractC2572a mo29499a(String str);

        /* renamed from: a */
        public abstract AbstractC2572a mo29498a(byte[] bArr);

        /* renamed from: a */
        public abstract AbstractC2571m mo29501a();
    }

    /* renamed from: d */
    public static AbstractC2572a m29502d() {
        C2553c.C2555b bVar = new C2553c.C2555b();
        bVar.mo29500a(Priority.DEFAULT);
        return bVar;
    }

    /* renamed from: a */
    public AbstractC2571m m29505a(Priority priority) {
        AbstractC2572a d = m29502d();
        d.mo29499a(mo29506a());
        d.mo29500a(priority);
        d.mo29498a(mo29504b());
        return d.mo29501a();
    }

    /* renamed from: a */
    public abstract String mo29506a();

    /* renamed from: b */
    public abstract byte[] mo29504b();

    /* renamed from: c */
    public abstract Priority mo29503c();

    public final String toString() {
        return String.format("TransportContext(%s, %s, %s)", mo29506a(), mo29503c(), mo29504b() == null ? "" : Base64.encodeToString(mo29504b(), 2));
    }
}
