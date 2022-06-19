package p032c7;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import p008a7.C0042i;
/* renamed from: c7.a */
/* loaded from: classes-dex2jar.jar:c7/a.class */
public class C0848a {

    /* renamed from: c */
    public static C0848a f3130c = new C0848a();

    /* renamed from: a */
    public final ArrayList<C0042i> f3131a = new ArrayList<>();

    /* renamed from: b */
    public final ArrayList<C0042i> f3132b = new ArrayList<>();

    /* renamed from: a */
    public Collection<C0042i> m7280a() {
        return Collections.unmodifiableCollection(this.f3131a);
    }

    /* renamed from: b */
    public Collection<C0042i> m7279b() {
        return Collections.unmodifiableCollection(this.f3132b);
    }

    /* renamed from: c */
    public boolean m7278c() {
        return this.f3132b.size() > 0;
    }
}
