package com.sinch.metadata.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationConstructorMarker;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\b\u0018�� \u001e2\u00020\u0001:\u0002\u001d\u001eB=\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nB\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0002\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J'\u0010\u0017\u001a\u00020��2\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0005HÖ\u0001R\u001c\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0010\u0010\r\u001a\u0004\b\u0011\u0010\u000fR\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0012\u0010\r\u001a\u0004\b\u0013\u0010\u000f¨\u0006\u001f"}, d2 = {"Lcom/sinch/metadata/model/DeviceMetadata;", "", "seen1", "", "model", "", "idName", "manufacturer", "serializationConstructorMarker", "Lkotlinx/serialization/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "idName$annotations", "()V", "getIdName", "()Ljava/lang/String;", "manufacturer$annotations", "getManufacturer", "model$annotations", "getModel", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "$serializer", "Companion", "metadata-collector_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/model/DeviceMetadata.class */
public final class DeviceMetadata {
    public static final Companion Companion = new Companion(null);
    private final String idName;
    private final String manufacturer;
    private final String model;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/sinch/metadata/model/DeviceMetadata$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/sinch/metadata/model/DeviceMetadata;", "metadata-collector_productionRelease"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/metadata/model/DeviceMetadata$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<DeviceMetadata> serializer() {
            return DeviceMetadata$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ DeviceMetadata(int i, String str, String str2, String str3, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) != 0) {
            this.model = str;
            if ((i & 2) != 0) {
                this.idName = str2;
                if ((i & 4) != 0) {
                    this.manufacturer = str3;
                    return;
                }
                throw new MissingFieldException("manufacturer");
            }
            throw new MissingFieldException("idname");
        }
        throw new MissingFieldException("model");
    }

    public DeviceMetadata(String model, String idName, String manufacturer) {
        p.c(model, "model");
        p.c(idName, "idName");
        p.c(manufacturer, "manufacturer");
        this.model = model;
        this.idName = idName;
        this.manufacturer = manufacturer;
    }

    public static /* synthetic */ DeviceMetadata copy$default(DeviceMetadata deviceMetadata, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = deviceMetadata.model;
        }
        if ((i & 2) != 0) {
            str2 = deviceMetadata.idName;
        }
        if ((i & 4) != 0) {
            str3 = deviceMetadata.manufacturer;
        }
        return deviceMetadata.copy(str, str2, str3);
    }

    public static /* synthetic */ void idName$annotations() {
    }

    public static /* synthetic */ void manufacturer$annotations() {
    }

    public static /* synthetic */ void model$annotations() {
    }

    public static final void write$Self(DeviceMetadata self, CompositeEncoder output, SerialDescriptor serialDesc) {
        p.c(self, "self");
        p.c(output, "output");
        p.c(serialDesc, "serialDesc");
        output.encodeStringElement(serialDesc, 0, self.model);
        output.encodeStringElement(serialDesc, 1, self.idName);
        output.encodeStringElement(serialDesc, 2, self.manufacturer);
    }

    public final String component1() {
        return this.model;
    }

    public final String component2() {
        return this.idName;
    }

    public final String component3() {
        return this.manufacturer;
    }

    public final DeviceMetadata copy(String model, String idName, String manufacturer) {
        p.c(model, "model");
        p.c(idName, "idName");
        p.c(manufacturer, "manufacturer");
        return new DeviceMetadata(model, idName, manufacturer);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeviceMetadata)) {
            return false;
        }
        DeviceMetadata deviceMetadata = (DeviceMetadata) obj;
        return p.a((Object) this.model, (Object) deviceMetadata.model) && p.a((Object) this.idName, (Object) deviceMetadata.idName) && p.a((Object) this.manufacturer, (Object) deviceMetadata.manufacturer);
    }

    public final String getIdName() {
        return this.idName;
    }

    public final String getManufacturer() {
        return this.manufacturer;
    }

    public final String getModel() {
        return this.model;
    }

    public final int hashCode() {
        String str = this.model;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.idName;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.manufacturer;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public final String toString() {
        return "DeviceMetadata(model=" + this.model + ", idName=" + this.idName + ", manufacturer=" + this.manufacturer + ")";
    }
}
