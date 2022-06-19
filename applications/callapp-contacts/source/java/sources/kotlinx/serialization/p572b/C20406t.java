package kotlinx.serialization.p572b;

import com.appsflyer.share.Constants;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p530f.C18363d;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0014\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0007\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\b��\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0002\u0010\u0004J\u0015\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH��¢\u0006\u0002\b\u000fJ\b\u0010\u0010\u001a\u00020\u0002H\u0016J\u0010\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0007H\u0016R\u000e\u0010\u0005\u001a\u00020\u0002X\u0082\u000e¢\u0006\u0002\n��R\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007@RX\u0096\u000e¢\u0006\b\n��\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, m4298d2 = {"Lkotlinx/serialization/internal/FloatArrayBuilder;", "Lkotlinx/serialization/internal/PrimitiveArrayBuilder;", "", "bufferWithData", "([F)V", "buffer", "<set-?>", "", "position", "getPosition", "()I", "append", "", Constants.URL_CAMPAIGN, "", "append$kotlinx_serialization_runtime", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "ensureCapacity", "requiredCapacity", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.t */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/t.class */
public final class C20406t extends AbstractC20365az<float[]> {

    /* renamed from: a */
    float[] f66909a;

    /* renamed from: b */
    int f66910b;

    public C20406t(float[] bufferWithData) {
        C18524p.m3841c(bufferWithData, "bufferWithData");
        this.f66909a = bufferWithData;
        this.f66910b = bufferWithData.length;
        mo706a(10);
    }

    @Override // kotlinx.serialization.p572b.AbstractC20365az
    /* renamed from: a */
    public final int mo707a() {
        return this.f66910b;
    }

    @Override // kotlinx.serialization.p572b.AbstractC20365az
    /* renamed from: a */
    public final void mo706a(int i) {
        float[] fArr = this.f66909a;
        if (fArr.length < i) {
            float[] copyOf = Arrays.copyOf(fArr, C18363d.m4051c(i, fArr.length * 2));
            C18524p.m3849a((Object) copyOf, "java.util.Arrays.copyOf(this, newSize)");
            this.f66909a = copyOf;
        }
    }

    @Override // kotlinx.serialization.p572b.AbstractC20365az
    /* renamed from: b */
    public final /* synthetic */ float[] mo705b() {
        float[] copyOf = Arrays.copyOf(this.f66909a, this.f66910b);
        C18524p.m3849a((Object) copyOf, "java.util.Arrays.copyOf(this, newSize)");
        return copyOf;
    }
}
