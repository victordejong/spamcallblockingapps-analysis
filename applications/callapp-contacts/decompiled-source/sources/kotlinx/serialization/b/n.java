package kotlinx.serialization.b;

import com.mopub.common.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.p;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.a;
import kotlinx.serialization.a.e;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0019\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\u0002H\u0014J(\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010H\u0014J \u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\rH\u0014J\f\u0010\u0016\u001a\u00020\r*\u00020\u0002H\u0014J\f\u0010\u0017\u001a\u00020\u0005*\u00020\u0002H\u0014¨\u0006\u0018"}, d2 = {"Lkotlinx/serialization/internal/CharArraySerializer;", "Lkotlinx/serialization/KSerializer;", "", "Lkotlinx/serialization/internal/PrimitiveArraySerializer;", "", "Lkotlinx/serialization/internal/CharArrayBuilder;", "()V", "empty", "readElement", "", "decoder", "Lkotlinx/serialization/CompositeDecoder;", "index", "", "builder", "checkIndex", "", "writeContent", "encoder", "Lkotlinx/serialization/CompositeEncoder;", Constants.VAST_TRACKER_CONTENT, "size", "collectionSize", "toBuilder", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/n.class */
public final class n extends bb<Character, char[], m> implements KSerializer<char[]> {

    /* renamed from: a  reason: collision with root package name */
    public static final n f38958a = new n();

    private n() {
        super(e.a(f.f36799a));
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ int a(Object obj) {
        char[] collectionSize = (char[]) obj;
        p.c(collectionSize, "$this$collectionSize");
        return collectionSize.length;
    }

    @Override // kotlinx.serialization.b.bb
    public final /* synthetic */ void a(CompositeEncoder encoder, char[] cArr, int i) {
        char[] content = cArr;
        p.c(encoder, "encoder");
        p.c(content, "content");
        for (int i2 = 0; i2 < i; i2++) {
            encoder.encodeCharElement(getDescriptor(), i2, content[i2]);
        }
    }

    @Override // kotlinx.serialization.b.ak, kotlinx.serialization.b.a
    public final /* synthetic */ void a(a decoder, int i, Object obj, boolean z) {
        m builder = (m) obj;
        p.c(decoder, "decoder");
        p.c(builder, "builder");
        char decodeCharElement = decoder.decodeCharElement(getDescriptor(), i);
        builder.a(builder.a() + 1);
        char[] cArr = builder.f38956a;
        int i2 = builder.f38957b;
        builder.f38957b = i2 + 1;
        cArr[i2] = decodeCharElement;
    }

    @Override // kotlinx.serialization.b.bb
    public final /* bridge */ /* synthetic */ char[] b() {
        return new char[0];
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ Object e(Object obj) {
        char[] toBuilder = (char[]) obj;
        p.c(toBuilder, "$this$toBuilder");
        return new m(toBuilder);
    }
}
