package p459j.p460a.p461a0;

import java.util.ArrayList;
import java.util.Map;
import kotlin.Metadata;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p590x4.C14296p;
import p626l.C14985o;
import p626l.p632u.C15005e0;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018�� \u000e2\u00020\u0001:\u0002\u000e\u000fB\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u0005R\u001d\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\u0010"}, m815d2 = {"Lgogolook/callgogolook2/loader/NumberInfoLoaderTrackingHelper;", "", "()V", "items", "", "", "Lgogolook/callgogolook2/loader/NumberInfoLoaderTrackingHelper$LoaderTrackingItem;", "getItems", "()Ljava/util/Map;", "send", "", "startTracking", "idx", "stopTracking", "Companion", "LoaderTrackingItem", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.a0.j */
/* loaded from: classes2-dex2jar.jar:j/a/a0/j.class */
public final class C11065j {

    /* renamed from: a */
    public final Map<Integer, C11067b> f24910a = C15005e0.m624a(C14985o.m644a(0, new C11067b()), C14985o.m644a(1, new C11067b()), C14985o.m644a(2, new C11067b()), C14985o.m644a(3, new C11067b()), C14985o.m644a(4, new C11067b()));

    /* renamed from: j.a.a0.j$a */
    /* loaded from: classes2-dex2jar.jar:j/a/a0/j$a.class */
    public static final class C11066a {
        public C11066a() {
        }

        public /* synthetic */ C11066a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.a0.j$b */
    /* loaded from: classes2-dex2jar.jar:j/a/a0/j$b.class */
    public static final class C11067b {

        /* renamed from: a */
        public final C13930d f24911a = new C13930d();

        /* renamed from: a */
        public final C13930d m10317a() {
            return this.f24911a;
        }
    }

    static {
        new C11066a(null);
    }

    /* renamed from: a */
    public final void m10320a() {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        Map<Integer, C11067b> map = this.f24910a;
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<Integer, C11067b> entry : map.entrySet()) {
            aVar.m1810a(Integer.valueOf((int) entry.getValue().m10317a().m3025a()));
            arrayList.add(aVar);
        }
        C14296p.m1830a("whoscall_number_loading", aVar.m1811a());
    }

    /* renamed from: a */
    public final void m10319a(int i) {
        C13930d a;
        C11067b bVar = this.f24910a.get(Integer.valueOf(i));
        if (bVar != null && (a = bVar.m10317a()) != null) {
            a.m3018e();
        }
    }

    /* renamed from: b */
    public final void m10318b(int i) {
        C13930d a;
        C11067b bVar = this.f24910a.get(Integer.valueOf(i));
        if (bVar != null && (a = bVar.m10317a()) != null) {
            a.m3017f();
        }
    }
}
