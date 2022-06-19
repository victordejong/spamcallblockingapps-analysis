package com.sinch.metadata.model.network;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0087\b\u0018�� \u00172\u00020\u0001:\u0002\u0016\u0017B%\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bB\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\tJ\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\u0013\u0010\u000f\u001a\u00020��2\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, m4298d2 = {"Lcom/sinch/metadata/model/network/NetworkData;", "", "seen1", "", "type", "Lcom/sinch/metadata/model/network/NetworkType;", "serializationConstructorMarker", "Lkotlinx/serialization/SerializationConstructorMarker;", "(ILcom/sinch/metadata/model/network/NetworkType;Lkotlinx/serialization/SerializationConstructorMarker;)V", "(Lcom/sinch/metadata/model/network/NetworkType;)V", "type$annotations", "()V", "getType", "()Lcom/sinch/metadata/model/network/NetworkType;", "component1", "copy", "equals", "", "other", "hashCode", "toString", "", "$serializer", "Companion", "metadata-collector_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/model/network/NetworkData.class */
public final class NetworkData {
    public static final Companion Companion = new Companion(null);
    private final NetworkType type;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, m4298d2 = {"Lcom/sinch/metadata/model/network/NetworkData$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/sinch/metadata/model/network/NetworkData;", "metadata-collector_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/metadata/model/network/NetworkData$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<NetworkData> serializer() {
            return NetworkData$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ NetworkData(int i, NetworkType networkType, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) != 0) {
            this.type = networkType;
            return;
        }
        throw new MissingFieldException("type");
    }

    public NetworkData(NetworkType type) {
        C18524p.m3841c(type, "type");
        this.type = type;
    }

    public static /* synthetic */ NetworkData copy$default(NetworkData networkData, NetworkType networkType, int i, Object obj) {
        if ((i & 1) != 0) {
            networkType = networkData.type;
        }
        return networkData.copy(networkType);
    }

    public static /* synthetic */ void type$annotations() {
    }

    public static final void write$Self(NetworkData self, CompositeEncoder output, SerialDescriptor serialDesc) {
        C18524p.m3841c(self, "self");
        C18524p.m3841c(output, "output");
        C18524p.m3841c(serialDesc, "serialDesc");
        output.encodeSerializableElement(serialDesc, 0, NetworkType$$serializer.INSTANCE, self.type);
    }

    public final NetworkType component1() {
        return this.type;
    }

    public final NetworkData copy(NetworkType type) {
        C18524p.m3841c(type, "type");
        return new NetworkData(type);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof NetworkData) && C18524p.m3850a(this.type, ((NetworkData) obj).type);
        }
        return true;
    }

    public final NetworkType getType() {
        return this.type;
    }

    public final int hashCode() {
        NetworkType networkType = this.type;
        if (networkType != null) {
            return networkType.hashCode();
        }
        return 0;
    }

    public final String toString() {
        return "NetworkData(type=" + this.type + ")";
    }
}
