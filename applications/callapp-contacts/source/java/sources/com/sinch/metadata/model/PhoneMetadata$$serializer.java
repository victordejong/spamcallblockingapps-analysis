package com.sinch.metadata.model;

import com.sinch.metadata.collector.sim.SimCardsInfoListSerializer;
import com.sinch.metadata.model.network.NetworkInfo;
import com.sinch.metadata.model.network.NetworkInfo$$serializer;
import com.sinch.metadata.model.sim.SimState;
import com.sinch.metadata.model.sim.SimState$$serializer;
import io.objectbox.model.PropertyFlags;
import java.util.List;
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
import kotlinx.serialization.p572b.C20339ad;
import kotlinx.serialization.p572b.C20360aw;
import kotlinx.serialization.p572b.C20372bf;
import kotlinx.serialization.p572b.C20377bk;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, m4298d2 = {"com/sinch/metadata/model/PhoneMetadata.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/sinch/metadata/model/PhoneMetadata;", "()V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "metadata-collector_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/model/PhoneMetadata$$serializer.class */
public final class PhoneMetadata$$serializer implements AbstractC20409w<PhoneMetadata> {
    private static final /* synthetic */ SerialDescriptor $$serialDesc;
    public static final PhoneMetadata$$serializer INSTANCE;

    static {
        PhoneMetadata$$serializer phoneMetadata$$serializer = new PhoneMetadata$$serializer();
        INSTANCE = phoneMetadata$$serializer;
        C20372bf c20372bf = new C20372bf("com.sinch.metadata.model.PhoneMetadata", phoneMetadata$$serializer, 13);
        c20372bf.m723a("os", true);
        c20372bf.m723a("platform", true);
        c20372bf.m723a("sdk", false);
        c20372bf.m723a("buildFlavor", false);
        c20372bf.m723a("device", false);
        c20372bf.m723a("simCardsInfo", false);
        c20372bf.m723a("simState", false);
        c20372bf.m723a("defaultLocale", false);
        c20372bf.m723a("permissions", false);
        c20372bf.m723a("networkInfo", false);
        c20372bf.m723a("batteryLevel", false);
        c20372bf.m723a("version", true);
        c20372bf.m723a("simCardCount", true);
        $$serialDesc = c20372bf;
    }

    private PhoneMetadata$$serializer() {
    }

    @Override // kotlinx.serialization.p572b.AbstractC20409w
    public final KSerializer<?>[] childSerializers() {
        return new KSerializer[]{C20377bk.f66866a, C20377bk.f66866a, C20377bk.f66866a, C20377bk.f66866a, DeviceMetadata$$serializer.INSTANCE, C20360aw.m724a(SimCardsInfoListSerializer.INSTANCE), SimState$$serializer.INSTANCE, C20377bk.f66866a, PermissionsMetadata$$serializer.INSTANCE, NetworkInfo$$serializer.INSTANCE, C20377bk.f66866a, C20339ad.f66810a, C20360aw.m724a(C20339ad.f66810a)};
    }

    @Override // kotlinx.serialization.AbstractC20415d
    public final PhoneMetadata deserialize(Decoder decoder) {
        String str;
        int i;
        int i2;
        String str2;
        NetworkInfo networkInfo;
        PermissionsMetadata permissionsMetadata;
        String str3;
        SimState simState;
        List list;
        DeviceMetadata deviceMetadata;
        String str4;
        String str5;
        String str6;
        Integer num;
        C18524p.m3841c(decoder, "decoder");
        SerialDescriptor serialDescriptor = $$serialDesc;
        AbstractC20327a beginStructure = decoder.beginStructure(serialDescriptor, new KSerializer[0]);
        if (beginStructure.decodeSequentially()) {
            String decodeStringElement = beginStructure.decodeStringElement(serialDescriptor, 0);
            String decodeStringElement2 = beginStructure.decodeStringElement(serialDescriptor, 1);
            String decodeStringElement3 = beginStructure.decodeStringElement(serialDescriptor, 2);
            str4 = beginStructure.decodeStringElement(serialDescriptor, 3);
            deviceMetadata = (DeviceMetadata) beginStructure.decodeSerializableElement(serialDescriptor, 4, DeviceMetadata$$serializer.INSTANCE);
            list = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, SimCardsInfoListSerializer.INSTANCE);
            simState = (SimState) beginStructure.decodeSerializableElement(serialDescriptor, 6, SimState$$serializer.INSTANCE);
            str3 = beginStructure.decodeStringElement(serialDescriptor, 7);
            permissionsMetadata = (PermissionsMetadata) beginStructure.decodeSerializableElement(serialDescriptor, 8, PermissionsMetadata$$serializer.INSTANCE);
            networkInfo = (NetworkInfo) beginStructure.decodeSerializableElement(serialDescriptor, 9, NetworkInfo$$serializer.INSTANCE);
            str2 = beginStructure.decodeStringElement(serialDescriptor, 10);
            i2 = beginStructure.decodeIntElement(serialDescriptor, 11);
            num = (Integer) beginStructure.decodeNullableSerializableElement(serialDescriptor, 12, C20339ad.f66810a);
            i = Integer.MAX_VALUE;
            str = decodeStringElement;
            str6 = decodeStringElement2;
            str5 = decodeStringElement3;
        } else {
            str = null;
            Integer num2 = null;
            list = null;
            PermissionsMetadata permissionsMetadata2 = null;
            SimState simState2 = null;
            NetworkInfo networkInfo2 = null;
            str6 = null;
            String str7 = null;
            String str8 = null;
            String str9 = null;
            DeviceMetadata deviceMetadata2 = null;
            String str10 = null;
            i = 0;
            i2 = 0;
            while (true) {
                int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                switch (decodeElementIndex) {
                    case -1:
                        String str11 = str7;
                        str3 = str8;
                        String str12 = str9;
                        String str13 = str10;
                        num = num2;
                        str2 = str11;
                        networkInfo = networkInfo2;
                        permissionsMetadata = permissionsMetadata2;
                        simState = simState2;
                        deviceMetadata = deviceMetadata2;
                        str4 = str12;
                        str5 = str13;
                        break;
                    case 0:
                        str = beginStructure.decodeStringElement(serialDescriptor, 0);
                        i |= 1;
                        break;
                    case 1:
                        str6 = beginStructure.decodeStringElement(serialDescriptor, 1);
                        i |= 2;
                        break;
                    case 2:
                        str10 = beginStructure.decodeStringElement(serialDescriptor, 2);
                        i |= 4;
                        break;
                    case 3:
                        str9 = beginStructure.decodeStringElement(serialDescriptor, 3);
                        i |= 8;
                        break;
                    case 4:
                        DeviceMetadata$$serializer deviceMetadata$$serializer = DeviceMetadata$$serializer.INSTANCE;
                        deviceMetadata2 = (DeviceMetadata) ((i & 16) != 0 ? beginStructure.updateSerializableElement(serialDescriptor, 4, deviceMetadata$$serializer, deviceMetadata2) : beginStructure.decodeSerializableElement(serialDescriptor, 4, deviceMetadata$$serializer));
                        i |= 16;
                        break;
                    case 5:
                        SimCardsInfoListSerializer simCardsInfoListSerializer = SimCardsInfoListSerializer.INSTANCE;
                        list = (List) ((i & 32) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 5, simCardsInfoListSerializer, list) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, simCardsInfoListSerializer));
                        i |= 32;
                        break;
                    case 6:
                        SimState$$serializer simState$$serializer = SimState$$serializer.INSTANCE;
                        simState2 = (SimState) ((i & 64) != 0 ? beginStructure.updateSerializableElement(serialDescriptor, 6, simState$$serializer, simState2) : beginStructure.decodeSerializableElement(serialDescriptor, 6, simState$$serializer));
                        i |= 64;
                        break;
                    case 7:
                        str8 = beginStructure.decodeStringElement(serialDescriptor, 7);
                        i |= 128;
                        break;
                    case 8:
                        PermissionsMetadata$$serializer permissionsMetadata$$serializer = PermissionsMetadata$$serializer.INSTANCE;
                        permissionsMetadata2 = (PermissionsMetadata) ((i & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0 ? beginStructure.updateSerializableElement(serialDescriptor, 8, permissionsMetadata$$serializer, permissionsMetadata2) : beginStructure.decodeSerializableElement(serialDescriptor, 8, permissionsMetadata$$serializer));
                        i |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                        break;
                    case 9:
                        NetworkInfo$$serializer networkInfo$$serializer = NetworkInfo$$serializer.INSTANCE;
                        networkInfo2 = (NetworkInfo) ((i & 512) != 0 ? beginStructure.updateSerializableElement(serialDescriptor, 9, networkInfo$$serializer, networkInfo2) : beginStructure.decodeSerializableElement(serialDescriptor, 9, networkInfo$$serializer));
                        i |= 512;
                        break;
                    case 10:
                        str7 = beginStructure.decodeStringElement(serialDescriptor, 10);
                        i |= 1024;
                        break;
                    case 11:
                        i2 = beginStructure.decodeIntElement(serialDescriptor, 11);
                        i |= 2048;
                        break;
                    case 12:
                        C20339ad c20339ad = C20339ad.f66810a;
                        num2 = (Integer) ((i & 4096) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 12, c20339ad, num2) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 12, c20339ad));
                        i |= 4096;
                        break;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new PhoneMetadata(i, str, str6, str5, str4, deviceMetadata, list, simState, str3, permissionsMetadata, networkInfo, str2, i2, num, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.AbstractC20415d, kotlinx.serialization.AbstractC20460r
    public final SerialDescriptor getDescriptor() {
        return $$serialDesc;
    }

    public final PhoneMetadata patch(Decoder decoder, PhoneMetadata old) {
        C18524p.m3841c(decoder, "decoder");
        C18524p.m3841c(old, "old");
        return (PhoneMetadata) AbstractC20409w.C20410a.m701a(this, decoder);
    }

    public final void serialize(Encoder encoder, PhoneMetadata value) {
        C18524p.m3841c(encoder, "encoder");
        C18524p.m3841c(value, "value");
        SerialDescriptor serialDescriptor = $$serialDesc;
        CompositeEncoder beginStructure = encoder.beginStructure(serialDescriptor, new KSerializer[0]);
        PhoneMetadata.write$Self(value, beginStructure, serialDescriptor);
        beginStructure.endStructure(serialDescriptor);
    }
}
