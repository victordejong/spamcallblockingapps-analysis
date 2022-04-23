package com.sinch.metadata.model;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.a;
import kotlinx.serialization.b.bf;
import kotlinx.serialization.b.i;
import kotlinx.serialization.b.w;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/sinch/metadata/model/PermissionsMetadata.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/sinch/metadata/model/PermissionsMetadata;", "()V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "metadata-collector_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/model/PermissionsMetadata$$serializer.class */
public final class PermissionsMetadata$$serializer implements w<PermissionsMetadata> {
    private static final /* synthetic */ SerialDescriptor $$serialDesc;
    public static final PermissionsMetadata$$serializer INSTANCE;

    static {
        PermissionsMetadata$$serializer permissionsMetadata$$serializer = new PermissionsMetadata$$serializer();
        INSTANCE = permissionsMetadata$$serializer;
        bf bfVar = new bf("com.sinch.metadata.model.PermissionsMetadata", permissionsMetadata$$serializer, 7);
        bfVar.a("READ_PHONE_STATE", false);
        bfVar.a("READ_CALL_LOG", false);
        bfVar.a("CALL_PHONE", false);
        bfVar.a("READ_SMS", false);
        bfVar.a("RECEIVE_SMS", false);
        bfVar.a("ACCESS_NETWORK_STATE", false);
        bfVar.a("getCellularSignalLevel", false);
        $$serialDesc = bfVar;
    }

    private PermissionsMetadata$$serializer() {
    }

    @Override // kotlinx.serialization.b.w
    public final KSerializer<?>[] childSerializers() {
        return new KSerializer[]{i.f38949a, i.f38949a, i.f38949a, i.f38949a, i.f38949a, i.f38949a, i.f38949a};
    }

    @Override // kotlinx.serialization.d
    public final PermissionsMetadata deserialize(Decoder decoder) {
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        p.c(decoder, "decoder");
        SerialDescriptor serialDescriptor = $$serialDesc;
        a beginStructure = decoder.beginStructure(serialDescriptor, new KSerializer[0]);
        if (beginStructure.decodeSequentially()) {
            z7 = beginStructure.decodeBooleanElement(serialDescriptor, 0);
            z6 = beginStructure.decodeBooleanElement(serialDescriptor, 1);
            z5 = beginStructure.decodeBooleanElement(serialDescriptor, 2);
            z4 = beginStructure.decodeBooleanElement(serialDescriptor, 3);
            z3 = beginStructure.decodeBooleanElement(serialDescriptor, 4);
            z2 = beginStructure.decodeBooleanElement(serialDescriptor, 5);
            z = beginStructure.decodeBooleanElement(serialDescriptor, 6);
            i = Integer.MAX_VALUE;
        } else {
            boolean z8 = false;
            z6 = false;
            boolean z9 = false;
            boolean z10 = false;
            boolean z11 = false;
            boolean z12 = false;
            boolean z13 = false;
            i = 0;
            while (true) {
                int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                switch (decodeElementIndex) {
                    case -1:
                        z5 = z13;
                        z = z9;
                        z2 = z10;
                        z3 = z12;
                        z4 = z11;
                        z7 = z8;
                        break;
                    case 0:
                        z8 = beginStructure.decodeBooleanElement(serialDescriptor, 0);
                        i |= 1;
                        break;
                    case 1:
                        z6 = beginStructure.decodeBooleanElement(serialDescriptor, 1);
                        i |= 2;
                        break;
                    case 2:
                        z13 = beginStructure.decodeBooleanElement(serialDescriptor, 2);
                        i |= 4;
                        break;
                    case 3:
                        z11 = beginStructure.decodeBooleanElement(serialDescriptor, 3);
                        i |= 8;
                        break;
                    case 4:
                        z12 = beginStructure.decodeBooleanElement(serialDescriptor, 4);
                        i |= 16;
                        break;
                    case 5:
                        z10 = beginStructure.decodeBooleanElement(serialDescriptor, 5);
                        i |= 32;
                        break;
                    case 6:
                        z9 = beginStructure.decodeBooleanElement(serialDescriptor, 6);
                        i |= 64;
                        break;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new PermissionsMetadata(i, z7, z6, z5, z4, z3, z2, z, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.d, kotlinx.serialization.r
    public final SerialDescriptor getDescriptor() {
        return $$serialDesc;
    }

    public final PermissionsMetadata patch(Decoder decoder, PermissionsMetadata old) {
        p.c(decoder, "decoder");
        p.c(old, "old");
        return (PermissionsMetadata) w.a.a(this, decoder);
    }

    public final void serialize(Encoder encoder, PermissionsMetadata value) {
        p.c(encoder, "encoder");
        p.c(value, "value");
        SerialDescriptor serialDescriptor = $$serialDesc;
        CompositeEncoder beginStructure = encoder.beginStructure(serialDescriptor, new KSerializer[0]);
        PermissionsMetadata.write$Self(value, beginStructure, serialDescriptor);
        beginStructure.endStructure(serialDescriptor);
    }
}
