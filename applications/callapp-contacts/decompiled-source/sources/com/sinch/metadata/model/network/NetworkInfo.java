package com.sinch.metadata.model.network;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationConstructorMarker;
import kotlinx.serialization.b.i;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0087\b\u0018�� \u001d2\u00020\u0001:\u0002\u001c\u001dB1\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nB\u0019\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0007HÆ\u0003J&\u0010\u0015\u001a\u00020��2\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u000f\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u0004\u0010\u000eR\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0010\u0010\r\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001e"}, d2 = {"Lcom/sinch/metadata/model/network/NetworkInfo;", "", "seen1", "", "isVoiceCapable", "", "networkData", "Lcom/sinch/metadata/model/network/NetworkData;", "serializationConstructorMarker", "Lkotlinx/serialization/SerializationConstructorMarker;", "(ILjava/lang/Boolean;Lcom/sinch/metadata/model/network/NetworkData;Lkotlinx/serialization/SerializationConstructorMarker;)V", "(Ljava/lang/Boolean;Lcom/sinch/metadata/model/network/NetworkData;)V", "isVoiceCapable$annotations", "()V", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "networkData$annotations", "getNetworkData", "()Lcom/sinch/metadata/model/network/NetworkData;", "component1", "component2", "copy", "(Ljava/lang/Boolean;Lcom/sinch/metadata/model/network/NetworkData;)Lcom/sinch/metadata/model/network/NetworkInfo;", "equals", "other", "hashCode", "toString", "", "$serializer", "Companion", "metadata-collector_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/model/network/NetworkInfo.class */
public final class NetworkInfo {
    public static final Companion Companion = new Companion(null);
    private final Boolean isVoiceCapable;
    private final NetworkData networkData;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/sinch/metadata/model/network/NetworkInfo$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/sinch/metadata/model/network/NetworkInfo;", "metadata-collector_productionRelease"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/metadata/model/network/NetworkInfo$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<NetworkInfo> serializer() {
            return NetworkInfo$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ NetworkInfo(int i, Boolean bool, NetworkData networkData, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) != 0) {
            this.isVoiceCapable = bool;
            if ((i & 2) != 0) {
                this.networkData = networkData;
                return;
            }
            throw new MissingFieldException("data");
        }
        throw new MissingFieldException("isVoiceCapable");
    }

    public NetworkInfo(Boolean bool, NetworkData networkData) {
        this.isVoiceCapable = bool;
        this.networkData = networkData;
    }

    public static /* synthetic */ NetworkInfo copy$default(NetworkInfo networkInfo, Boolean bool, NetworkData networkData, int i, Object obj) {
        if ((i & 1) != 0) {
            bool = networkInfo.isVoiceCapable;
        }
        if ((i & 2) != 0) {
            networkData = networkInfo.networkData;
        }
        return networkInfo.copy(bool, networkData);
    }

    public static /* synthetic */ void isVoiceCapable$annotations() {
    }

    public static /* synthetic */ void networkData$annotations() {
    }

    public static final void write$Self(NetworkInfo self, CompositeEncoder output, SerialDescriptor serialDesc) {
        p.c(self, "self");
        p.c(output, "output");
        p.c(serialDesc, "serialDesc");
        output.encodeNullableSerializableElement(serialDesc, 0, i.f38949a, self.isVoiceCapable);
        output.encodeNullableSerializableElement(serialDesc, 1, NetworkData$$serializer.INSTANCE, self.networkData);
    }

    public final Boolean component1() {
        return this.isVoiceCapable;
    }

    public final NetworkData component2() {
        return this.networkData;
    }

    public final NetworkInfo copy(Boolean bool, NetworkData networkData) {
        return new NetworkInfo(bool, networkData);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NetworkInfo)) {
            return false;
        }
        NetworkInfo networkInfo = (NetworkInfo) obj;
        return p.a(this.isVoiceCapable, networkInfo.isVoiceCapable) && p.a(this.networkData, networkInfo.networkData);
    }

    public final NetworkData getNetworkData() {
        return this.networkData;
    }

    public final int hashCode() {
        Boolean bool = this.isVoiceCapable;
        int i = 0;
        int hashCode = bool != null ? bool.hashCode() : 0;
        NetworkData networkData = this.networkData;
        if (networkData != null) {
            i = networkData.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public final Boolean isVoiceCapable() {
        return this.isVoiceCapable;
    }

    public final String toString() {
        return "NetworkInfo(isVoiceCapable=" + this.isVoiceCapable + ", networkData=" + this.networkData + ")";
    }
}
