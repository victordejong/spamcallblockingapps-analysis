package p193e.p1545k.p1546a.p1548b.p1549a0;

import java.io.IOException;
import java.io.Serializable;
import java.util.Objects;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.AbstractC23383o;
/* renamed from: e.k.a.b.a0.l */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/a0/l.class */
public class C23360l implements AbstractC23383o, Serializable {

    /* renamed from: a */
    public String f64588a = AbstractC23383o.f64713H.toString();

    /* renamed from: b */
    public C23361m f64589b = AbstractC23383o.f64712G;

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23383o
    public void beforeArrayValues(AbstractC23372g abstractC23372g) throws IOException {
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23383o
    public void beforeObjectEntries(AbstractC23372g abstractC23372g) throws IOException {
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23383o
    public void writeArrayValueSeparator(AbstractC23372g abstractC23372g) throws IOException {
        Objects.requireNonNull(this.f64589b);
        abstractC23372g.mo5852m1(',');
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23383o
    public void writeEndArray(AbstractC23372g abstractC23372g, int i) throws IOException {
        abstractC23372g.mo5852m1(']');
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23383o
    public void writeEndObject(AbstractC23372g abstractC23372g, int i) throws IOException {
        abstractC23372g.mo5852m1('}');
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23383o
    public void writeObjectEntrySeparator(AbstractC23372g abstractC23372g) throws IOException {
        Objects.requireNonNull(this.f64589b);
        abstractC23372g.mo5852m1(',');
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23383o
    public void writeObjectFieldValueSeparator(AbstractC23372g abstractC23372g) throws IOException {
        Objects.requireNonNull(this.f64589b);
        abstractC23372g.mo5852m1(':');
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23383o
    public void writeRootValueSeparator(AbstractC23372g abstractC23372g) throws IOException {
        String str = this.f64588a;
        if (str != null) {
            abstractC23372g.mo5842s1(str);
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23383o
    public void writeStartArray(AbstractC23372g abstractC23372g) throws IOException {
        abstractC23372g.mo5852m1('[');
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23383o
    public void writeStartObject(AbstractC23372g abstractC23372g) throws IOException {
        abstractC23372g.mo5852m1('{');
    }
}
