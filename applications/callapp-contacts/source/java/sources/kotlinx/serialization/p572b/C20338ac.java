package kotlinx.serialization.p572b;

import com.mopub.common.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.C18523o;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.AbstractC20327a;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.p571a.C20333e;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\u0002H\u0014J(\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000fH\u0014J \u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0004H\u0014J\f\u0010\u0015\u001a\u00020\u0004*\u00020\u0002H\u0014J\f\u0010\u0016\u001a\u00020\u0005*\u00020\u0002H\u0014¨\u0006\u0017"}, m4298d2 = {"Lkotlinx/serialization/internal/IntArraySerializer;", "Lkotlinx/serialization/KSerializer;", "", "Lkotlinx/serialization/internal/PrimitiveArraySerializer;", "", "Lkotlinx/serialization/internal/IntArrayBuilder;", "()V", "empty", "readElement", "", "decoder", "Lkotlinx/serialization/CompositeDecoder;", "index", "builder", "checkIndex", "", "writeContent", "encoder", "Lkotlinx/serialization/CompositeEncoder;", Constants.VAST_TRACKER_CONTENT, "size", "collectionSize", "toBuilder", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.ac */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/ac.class */
public final class C20338ac extends AbstractC20368bb<Integer, int[], C20337ab> implements KSerializer<int[]> {

    /* renamed from: a */
    public static final C20338ac f66809a = new C20338ac();

    private C20338ac() {
        super(C20333e.m732a(C18523o.f63621a));
    }

    @Override // kotlinx.serialization.p572b.AbstractC20335a
    /* renamed from: a */
    public final /* synthetic */ int mo699a(Object obj) {
        int[] collectionSize = (int[]) obj;
        C18524p.m3841c(collectionSize, "$this$collectionSize");
        return collectionSize.length;
    }

    @Override // kotlinx.serialization.p572b.AbstractC20368bb
    /* renamed from: a */
    public final /* synthetic */ void mo704a(CompositeEncoder encoder, int[] iArr, int i) {
        int[] content = iArr;
        C18524p.m3841c(encoder, "encoder");
        C18524p.m3841c(content, "content");
        for (int i2 = 0; i2 < i; i2++) {
            encoder.encodeIntElement(getDescriptor(), i2, content[i2]);
        }
    }

    @Override // kotlinx.serialization.p572b.AbstractC20346ak, kotlinx.serialization.p572b.AbstractC20335a
    /* renamed from: a */
    public final /* synthetic */ void mo703a(AbstractC20327a decoder, int i, Object obj, boolean z) {
        C20337ab builder = (C20337ab) obj;
        C18524p.m3841c(decoder, "decoder");
        C18524p.m3841c(builder, "builder");
        int decodeIntElement = decoder.decodeIntElement(getDescriptor(), i);
        builder.mo706a(builder.mo707a() + 1);
        int[] iArr = builder.f66807a;
        int i2 = builder.f66808b;
        builder.f66808b = i2 + 1;
        iArr[i2] = decodeIntElement;
    }

    @Override // kotlinx.serialization.p572b.AbstractC20368bb
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ int[] mo702b() {
        return new int[0];
    }

    @Override // kotlinx.serialization.p572b.AbstractC20335a
    /* renamed from: e */
    public final /* synthetic */ Object mo694e(Object obj) {
        int[] toBuilder = (int[]) obj;
        C18524p.m3841c(toBuilder, "$this$toBuilder");
        return new C20337ab(toBuilder);
    }
}
