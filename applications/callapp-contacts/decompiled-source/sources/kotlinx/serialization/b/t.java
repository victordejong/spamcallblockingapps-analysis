package kotlinx.serialization.b;

import com.appsflyer.share.Constants;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.f.d;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0014\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0007\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\b��\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0002\u0010\u0004J\u0015\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH��¢\u0006\u0002\b\u000fJ\b\u0010\u0010\u001a\u00020\u0002H\u0016J\u0010\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0007H\u0016R\u000e\u0010\u0005\u001a\u00020\u0002X\u0082\u000e¢\u0006\u0002\n��R\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007@RX\u0096\u000e¢\u0006\b\n��\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lkotlinx/serialization/internal/FloatArrayBuilder;", "Lkotlinx/serialization/internal/PrimitiveArrayBuilder;", "", "bufferWithData", "([F)V", "buffer", "<set-?>", "", "position", "getPosition", "()I", "append", "", Constants.URL_CAMPAIGN, "", "append$kotlinx_serialization_runtime", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "ensureCapacity", "requiredCapacity", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/t.class */
public final class t extends az<float[]> {

    /* renamed from: a  reason: collision with root package name */
    float[] f38971a;

    /* renamed from: b  reason: collision with root package name */
    int f38972b;

    public t(float[] bufferWithData) {
        p.c(bufferWithData, "bufferWithData");
        this.f38971a = bufferWithData;
        this.f38972b = bufferWithData.length;
        a(10);
    }

    @Override // kotlinx.serialization.b.az
    public final int a() {
        return this.f38972b;
    }

    @Override // kotlinx.serialization.b.az
    public final void a(int i) {
        float[] fArr = this.f38971a;
        if (fArr.length < i) {
            float[] copyOf = Arrays.copyOf(fArr, d.c(i, fArr.length * 2));
            p.a((Object) copyOf, "java.util.Arrays.copyOf(this, newSize)");
            this.f38971a = copyOf;
        }
    }

    @Override // kotlinx.serialization.b.az
    public final /* synthetic */ float[] b() {
        float[] copyOf = Arrays.copyOf(this.f38971a, this.f38972b);
        p.a((Object) copyOf, "java.util.Arrays.copyOf(this, newSize)");
        return copyOf;
    }
}
