package com.sinch.metadata.model.network;

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
import kotlinx.serialization.p572b.C20394i;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, m4298d2 = {"com/sinch/metadata/model/network/NetworkInfo.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/sinch/metadata/model/network/NetworkInfo;", "()V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "value", "metadata-collector_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/model/network/NetworkInfo$$serializer.class */
public final class NetworkInfo$$serializer implements AbstractC20409w<NetworkInfo> {
    private static final /* synthetic */ SerialDescriptor $$serialDesc;
    public static final NetworkInfo$$serializer INSTANCE;

    static {
        NetworkInfo$$serializer networkInfo$$serializer = new NetworkInfo$$serializer();
        INSTANCE = networkInfo$$serializer;
        C20372bf c20372bf = new C20372bf("com.sinch.metadata.model.network.NetworkInfo", networkInfo$$serializer, 2);
        c20372bf.m723a("isVoiceCapable", false);
        c20372bf.m723a("data", false);
        $$serialDesc = c20372bf;
    }

    private NetworkInfo$$serializer() {
    }

    @Override // kotlinx.serialization.p572b.AbstractC20409w
    public final KSerializer<?>[] childSerializers() {
        return new KSerializer[]{C20360aw.m724a(C20394i.f66887a), C20360aw.m724a(NetworkData$$serializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.AbstractC20415d
    public final NetworkInfo deserialize(Decoder decoder) {
        int i;
        Boolean bool;
        NetworkData networkData;
        C18524p.m3841c(decoder, "decoder");
        SerialDescriptor serialDescriptor = $$serialDesc;
        AbstractC20327a beginStructure = decoder.beginStructure(serialDescriptor, new KSerializer[0]);
        if (!beginStructure.decodeSequentially()) {
            bool = null;
            networkData = null;
            int i2 = 0;
            while (true) {
                i = i2;
                int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                if (decodeElementIndex == -1) {
                    break;
                } else if (decodeElementIndex == 0) {
                    C20394i c20394i = C20394i.f66887a;
                    bool = (Boolean) ((i & 1) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 0, c20394i, bool) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, c20394i));
                    i2 = i | 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    NetworkData$$serializer networkData$$serializer = NetworkData$$serializer.INSTANCE;
                    networkData = (NetworkData) ((i & 2) != 0 ? beginStructure.updateNullableSerializableElement(serialDescriptor, 1, networkData$$serializer, networkData) : beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, networkData$$serializer));
                    i2 = i | 2;
                }
            }
        } else {
            bool = (Boolean) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, C20394i.f66887a);
            networkData = (NetworkData) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, NetworkData$$serializer.INSTANCE);
            i = Integer.MAX_VALUE;
        }
        beginStructure.endStructure(serialDescriptor);
        return new NetworkInfo(i, bool, networkData, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.AbstractC20415d, kotlinx.serialization.AbstractC20460r
    public final SerialDescriptor getDescriptor() {
        return $$serialDesc;
    }

    public final NetworkInfo patch(Decoder decoder, NetworkInfo old) {
        C18524p.m3841c(decoder, "decoder");
        C18524p.m3841c(old, "old");
        return (NetworkInfo) AbstractC20409w.C20410a.m701a(this, decoder);
    }

    public final void serialize(Encoder encoder, NetworkInfo value) {
        C18524p.m3841c(encoder, "encoder");
        C18524p.m3841c(value, "value");
        SerialDescriptor serialDescriptor = $$serialDesc;
        CompositeEncoder beginStructure = encoder.beginStructure(serialDescriptor, new KSerializer[0]);
        NetworkInfo.write$Self(value, beginStructure, serialDescriptor);
        beginStructure.endStructure(serialDescriptor);
    }
}
