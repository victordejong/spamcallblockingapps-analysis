package p646n.p649b.p650a.p652e.p653a;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p646n.p649b.p650a.p651d.C15206b;
import p646n.p649b.p650a.p651d.C15207c;
import p646n.p649b.p650a.p651d.C15208d;
import p646n.p649b.p650a.p651d.C15209e;
/* renamed from: n.b.a.e.a.c */
/* loaded from: classes3-dex2jar.jar:n/b/a/e/a/c.class */
public final class C15212c {

    /* renamed from: a */
    public final C15207c f33230a;

    /* renamed from: b */
    public final List<C15209e> f33231b;

    /* renamed from: c */
    public final List<C15209e> f33232c;

    public C15212c(ByteBuffer byteBuffer) {
        m211a(byteBuffer);
        this.f33230a = C15207c.m230b(byteBuffer);
        C15214e.m197a(this.f33230a.m232b() > 0, "The model does not contain any subgraph.");
        this.f33231b = m210a(this.f33230a);
        this.f33232c = m208b(this.f33230a);
    }

    /* renamed from: a */
    public static List<C15209e> m210a(C15207c cVar) {
        C15208d c = cVar.m229c(0);
        int a = c.m228a();
        ArrayList arrayList = new ArrayList(a);
        for (int i = 0; i < a; i++) {
            arrayList.add(c.m223c(c.m227a(i)));
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: a */
    public static void m211a(ByteBuffer byteBuffer) {
        C15214e.m198a(byteBuffer, "Model flatbuffer cannot be null.");
        C15214e.m197a(C15207c.m237a(byteBuffer), "The identifier of the model is invalid. The buffer may not be a valid TFLite model flatbuffer.");
    }

    /* renamed from: b */
    public static List<C15209e> m208b(C15207c cVar) {
        C15208d c = cVar.m229c(0);
        int b = c.m225b();
        ArrayList arrayList = new ArrayList(b);
        for (int i = 0; i < b; i++) {
            arrayList.add(c.m223c(c.m224b(i)));
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: a */
    public int m212a() {
        return this.f33231b.size();
    }

    /* renamed from: b */
    public ByteBuffer m209b() {
        if (this.f33230a.m239a() == 0) {
            return null;
        }
        for (int i = 0; i < this.f33230a.m239a(); i++) {
            C15206b b = this.f33230a.m231b(i);
            if ("TFLITE_METADATA".equals(b.m240b())) {
                return this.f33230a.m238a((int) b.m241a()).m242a();
            }
        }
        return null;
    }

    /* renamed from: c */
    public int m207c() {
        return this.f33232c.size();
    }
}
