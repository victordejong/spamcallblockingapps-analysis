package p193e.p1545k.p1546a.p1548b;

import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23361m;
import p193e.p1545k.p1546a.p1548b.p1552w.C23403i;
/* renamed from: e.k.a.b.o */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/o.class */
public interface AbstractC23383o {

    /* renamed from: G */
    public static final C23361m f64712G = new C23361m();

    /* renamed from: H */
    public static final C23403i f64713H = new C23403i(StringConstant.SPACE);

    void beforeArrayValues(AbstractC23372g abstractC23372g) throws IOException;

    void beforeObjectEntries(AbstractC23372g abstractC23372g) throws IOException;

    void writeArrayValueSeparator(AbstractC23372g abstractC23372g) throws IOException;

    void writeEndArray(AbstractC23372g abstractC23372g, int i) throws IOException;

    void writeEndObject(AbstractC23372g abstractC23372g, int i) throws IOException;

    void writeObjectEntrySeparator(AbstractC23372g abstractC23372g) throws IOException;

    void writeObjectFieldValueSeparator(AbstractC23372g abstractC23372g) throws IOException;

    void writeRootValueSeparator(AbstractC23372g abstractC23372g) throws IOException;

    void writeStartArray(AbstractC23372g abstractC23372g) throws IOException;

    void writeStartObject(AbstractC23372g abstractC23372g) throws IOException;
}
