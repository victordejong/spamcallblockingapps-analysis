package p646n.p649b.p650a.p652e.p653a;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p646n.p649b.p650a.p652e.p653a.p654h.C15220a;
import p646n.p649b.p650a.p652e.p653a.p654h.C15221b;
import p646n.p649b.p650a.p652e.p653a.p654h.C15222c;
/* renamed from: n.b.a.e.a.d */
/* loaded from: classes3-dex2jar.jar:n/b/a/e/a/d.class */
public final class C15213d {

    /* renamed from: a */
    public final C15220a f33233a;

    /* renamed from: b */
    public final List<C15222c> f33234b;

    /* renamed from: c */
    public final List<C15222c> f33235c;

    /* renamed from: d */
    public final String f33236d;

    public C15213d(ByteBuffer byteBuffer) {
        m205a(byteBuffer);
        this.f33233a = C15220a.m172b(byteBuffer);
        C15214e.m197a(this.f33233a.m171c() > 0, "The metadata flatbuffer does not contain any subgraph metadata.");
        this.f33234b = m204a(this.f33233a);
        this.f33235c = m202b(this.f33233a);
        this.f33236d = this.f33233a.m173b();
    }

    /* renamed from: a */
    public static List<C15222c> m204a(C15220a aVar) {
        C15221b a = aVar.m177a(0);
        int a2 = a.m170a();
        ArrayList arrayList = new ArrayList(a2);
        for (int i = 0; i < a2; i++) {
            arrayList.add(a.m169a(i));
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: a */
    public static void m205a(ByteBuffer byteBuffer) {
        C15214e.m198a(byteBuffer, "Metadata flatbuffer cannot be null.");
        C15214e.m197a(C15220a.m176a(byteBuffer), "The identifier of the metadata is invalid. The buffer may not be a valid TFLite metadata flatbuffer.");
    }

    /* renamed from: b */
    public static List<C15222c> m202b(C15220a aVar) {
        C15221b a = aVar.m177a(0);
        int b = a.m167b();
        ArrayList arrayList = new ArrayList(b);
        for (int i = 0; i < b; i++) {
            arrayList.add(a.m166b(i));
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: a */
    public int m206a() {
        return this.f33234b.size();
    }

    /* renamed from: b */
    public String m203b() {
        return this.f33236d;
    }

    /* renamed from: c */
    public C15220a m201c() {
        return this.f33233a;
    }

    /* renamed from: d */
    public int m200d() {
        return this.f33235c.size();
    }
}
