package com.sinch.verification.core.internal.error;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.AbstractC20327a;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationConstructorMarker;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.p572b.AbstractC20409w;
import kotlinx.serialization.p572b.C20339ad;
import kotlinx.serialization.p572b.C20360aw;
import kotlinx.serialization.p572b.C20372bf;
import kotlinx.serialization.p572b.C20377bk;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, m4298d2 = {"com/sinch/verification/core/internal/error/ApiErrorData.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/sinch/verification/core/internal/error/ApiErrorData;", "()V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/error/ApiErrorData$$serializer.class */
public final class ApiErrorData$$serializer implements AbstractC20409w<ApiErrorData> {
    private static final /* synthetic */ SerialDescriptor $$serialDesc;
    public static final ApiErrorData$$serializer INSTANCE;

    static {
        ApiErrorData$$serializer apiErrorData$$serializer = new ApiErrorData$$serializer();
        INSTANCE = apiErrorData$$serializer;
        C20372bf c20372bf = new C20372bf("com.sinch.verification.core.internal.error.ApiErrorData", apiErrorData$$serializer, 3);
        c20372bf.m723a("errorCode", true);
        c20372bf.m723a("message", true);
        c20372bf.m723a("reference", true);
        $$serialDesc = c20372bf;
    }

    private ApiErrorData$$serializer() {
    }

    @Override // kotlinx.serialization.p572b.AbstractC20409w
    public final KSerializer<?>[] childSerializers() {
        return new KSerializer[]{C20360aw.m724a(C20339ad.f66810a), C20360aw.m724a(C20377bk.f66866a), C20360aw.m724a(C20377bk.f66866a)};
    }

    @Override // kotlinx.serialization.AbstractC20415d
    public final ApiErrorData deserialize(Decoder decoder) {
        String str;
        int i;
        Integer num;
        String str2;
        C18524p.m3841c(decoder, "decoder");
        SerialDescriptor serialDescriptor = $$serialDesc;
        AbstractC20327a beginStructure = decoder.beginStructure(serialDescriptor, new KSerializer[0]);
        if (!beginStructure.decodeSequentially()) {
            num = null;
            String str3 = null;
            str2 = null;
            int i2 = 0;
            while (true) {
                i = i2;
                int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                if (decodeElementIndex == -1) {
                    str = str3;
                    break;
                } else if (decodeElementIndex == 0) {
                    C20339ad c20339ad = C20339ad.f66810a;
                    num = (Integer) ((i & 1) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 0, c20339ad, num) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, c20339ad));
                    i2 = i | 1;
                } else if (decodeElementIndex == 1) {
                    C20377bk c20377bk = C20377bk.f66866a;
                    str3 = (String) ((i & 2) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 1, c20377bk, str3) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, c20377bk));
                    i2 = i | 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    C20377bk c20377bk2 = C20377bk.f66866a;
                    str2 = (String) ((i & 4) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 2, c20377bk2, str2) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, c20377bk2));
                    i2 = i | 4;
                }
            }
        } else {
            num = (Integer) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, C20339ad.f66810a);
            i = Integer.MAX_VALUE;
            str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, C20377bk.f66866a);
            str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, C20377bk.f66866a);
        }
        beginStructure.endStructure(serialDescriptor);
        return new ApiErrorData(i, num, str, str2, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.AbstractC20415d, kotlinx.serialization.AbstractC20460r
    public final SerialDescriptor getDescriptor() {
        return $$serialDesc;
    }

    public final ApiErrorData patch(Decoder decoder, ApiErrorData old) {
        C18524p.m3841c(decoder, "decoder");
        C18524p.m3841c(old, "old");
        return (ApiErrorData) AbstractC20409w.C20410a.m701a(this, decoder);
    }

    public final void serialize(Encoder encoder, ApiErrorData value) {
        C18524p.m3841c(encoder, "encoder");
        C18524p.m3841c(value, "value");
        SerialDescriptor serialDescriptor = $$serialDesc;
        CompositeEncoder beginStructure = encoder.beginStructure(serialDescriptor, new KSerializer[0]);
        ApiErrorData.write$Self(value, beginStructure, serialDescriptor);
        beginStructure.endStructure(serialDescriptor);
    }
}
