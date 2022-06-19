package com.sinch.metadata.model.sim;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.AbstractC20327a;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.p572b.AbstractC20409w;
import kotlinx.serialization.p572b.C20360aw;
import kotlinx.serialization.p572b.C20372bf;
import kotlinx.serialization.p572b.C20377bk;
import kotlinx.serialization.p572b.C20394i;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, m4298d2 = {"com/sinch/metadata/model/sim/OperatorInfo.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/sinch/metadata/model/sim/OperatorInfo;", "()V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "metadata-collector_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/model/sim/OperatorInfo$$serializer.class */
public final class OperatorInfo$$serializer implements AbstractC20409w<OperatorInfo> {
    private static final /* synthetic */ SerialDescriptor $$serialDesc;
    public static final OperatorInfo$$serializer INSTANCE;

    static {
        OperatorInfo$$serializer operatorInfo$$serializer = new OperatorInfo$$serializer();
        INSTANCE = operatorInfo$$serializer;
        C20372bf c20372bf = new C20372bf("com.sinch.metadata.model.sim.OperatorInfo", operatorInfo$$serializer, 5);
        c20372bf.m723a("countryId", false);
        c20372bf.m723a("name", false);
        c20372bf.m723a("isRoaming", false);
        c20372bf.m723a("mcc", false);
        c20372bf.m723a("mnc", false);
        $$serialDesc = c20372bf;
    }

    private OperatorInfo$$serializer() {
    }

    @Override // kotlinx.serialization.p572b.AbstractC20409w
    public final KSerializer<?>[] childSerializers() {
        return new KSerializer[]{C20377bk.f66866a, C20377bk.f66866a, C20394i.f66887a, C20360aw.m724a(C20377bk.f66866a), C20360aw.m724a(C20377bk.f66866a)};
    }

    @Override // kotlinx.serialization.AbstractC20415d
    public final OperatorInfo deserialize(Decoder decoder) {
        String str;
        int i;
        boolean z;
        String str2;
        String str3;
        String str4;
        C18524p.m3841c(decoder, "decoder");
        SerialDescriptor serialDescriptor = $$serialDesc;
        AbstractC20327a beginStructure = decoder.beginStructure(serialDescriptor, new KSerializer[0]);
        if (!beginStructure.decodeSequentially()) {
            str = null;
            str3 = null;
            str2 = null;
            str4 = null;
            z = false;
            int i2 = 0;
            while (true) {
                i = i2;
                int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                if (decodeElementIndex == -1) {
                    break;
                } else if (decodeElementIndex == 0) {
                    str = beginStructure.decodeStringElement(serialDescriptor, 0);
                    i2 = i | 1;
                } else if (decodeElementIndex == 1) {
                    str3 = beginStructure.decodeStringElement(serialDescriptor, 1);
                    i2 = i | 2;
                } else if (decodeElementIndex == 2) {
                    z = beginStructure.decodeBooleanElement(serialDescriptor, 2);
                    i2 = i | 4;
                } else if (decodeElementIndex == 3) {
                    C20377bk c20377bk = C20377bk.f66866a;
                    str2 = (String) ((i & 8) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 3, c20377bk, str2) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, c20377bk));
                    i2 = i | 8;
                } else if (decodeElementIndex != 4) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    C20377bk c20377bk2 = C20377bk.f66866a;
                    str4 = (String) ((i & 16) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 4, c20377bk2, str4) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, c20377bk2));
                    i2 = i | 16;
                }
            }
        } else {
            String decodeStringElement = beginStructure.decodeStringElement(serialDescriptor, 0);
            String decodeStringElement2 = beginStructure.decodeStringElement(serialDescriptor, 1);
            z = beginStructure.decodeBooleanElement(serialDescriptor, 2);
            String str5 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, C20377bk.f66866a);
            str4 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, C20377bk.f66866a);
            i = Integer.MAX_VALUE;
            str = decodeStringElement;
            str3 = decodeStringElement2;
            str2 = str5;
        }
        beginStructure.endStructure(serialDescriptor);
        return new OperatorInfo(i, str, str3, z, str2, str4, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.AbstractC20415d, kotlinx.serialization.AbstractC20460r
    public final SerialDescriptor getDescriptor() {
        return $$serialDesc;
    }

    public final OperatorInfo patch(Decoder decoder, OperatorInfo old) {
        C18524p.m3841c(decoder, "decoder");
        C18524p.m3841c(old, "old");
        return (OperatorInfo) AbstractC20409w.C20410a.m701a(this, decoder);
    }

    public final void serialize(Encoder encoder, OperatorInfo value) {
        C18524p.m3841c(encoder, "encoder");
        C18524p.m3841c(value, "value");
        SerialDescriptor serialDescriptor = $$serialDesc;
        CompositeEncoder beginStructure = encoder.beginStructure(serialDescriptor, new KSerializer[0]);
        OperatorInfo.write$Self(value, beginStructure, serialDescriptor);
        beginStructure.endStructure(serialDescriptor);
    }
}
