package com.sinch.metadata.model.network;

import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\n\b\u0087\u0001\u0018�� \f2\b\u0012\u0004\u0012\u00020��0\u0001:\u0002\u000b\fB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\r"}, m4298d2 = {"Lcom/sinch/metadata/model/network/NetworkType;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "MOBILE", "WIFI", "ETHERNET", "NONE", "$serializer", "Companion", "metadata-collector_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/model/network/NetworkType.class */
public enum NetworkType {
    MOBILE("MOBILE"),
    WIFI("WIFI"),
    ETHERNET("ETHERNET"),
    NONE("Not Connected");
    
    public static final Companion Companion = new Companion(null);
    private final String value;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bJ\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\nHÆ\u0001¨\u0006\u000b"}, m4298d2 = {"Lcom/sinch/metadata/model/network/NetworkType$Companion;", "", "()V", "basedOn", "Lcom/sinch/metadata/model/network/NetworkType;", "capabilities", "Landroid/net/NetworkCapabilities;", "networkInfo", "Landroid/net/NetworkInfo;", "serializer", "Lkotlinx/serialization/KSerializer;", "metadata-collector_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/metadata/model/network/NetworkType$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final NetworkType basedOn(NetworkCapabilities capabilities) {
            C18524p.m3841c(capabilities, "capabilities");
            return capabilities.hasTransport(1) ? NetworkType.WIFI : capabilities.hasTransport(0) ? NetworkType.MOBILE : capabilities.hasTransport(3) ? NetworkType.ETHERNET : NetworkType.NONE;
        }

        public final NetworkType basedOn(NetworkInfo networkInfo) {
            C18524p.m3841c(networkInfo, "networkInfo");
            int type = networkInfo.getType();
            return type != 0 ? type != 1 ? type != 9 ? NetworkType.NONE : NetworkType.ETHERNET : NetworkType.WIFI : NetworkType.MOBILE;
        }

        public final KSerializer<NetworkType> serializer() {
            return NetworkType$$serializer.INSTANCE;
        }
    }

    NetworkType(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
