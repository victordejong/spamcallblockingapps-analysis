package com.sinch.metadata.model;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.SerializationConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0087\b\u0018�� .2\u00020\u0001:\u0002-.B_\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0001\u0010\b\u001a\u00020\u0005\u0012\b\b\u0001\u0010\t\u001a\u00020\u0005\u0012\b\b\u0001\u0010\n\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u000b\u001a\u00020\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000eB=\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005¢\u0006\u0002\u0010\u000fJ\t\u0010 \u001a\u00020\u0005HÆ\u0003J\t\u0010!\u001a\u00020\u0005HÆ\u0003J\t\u0010\"\u001a\u00020\u0005HÆ\u0003J\t\u0010#\u001a\u00020\u0005HÆ\u0003J\t\u0010$\u001a\u00020\u0005HÆ\u0003J\t\u0010%\u001a\u00020\u0005HÆ\u0003J\t\u0010&\u001a\u00020\u0005HÆ\u0003JO\u0010'\u001a\u00020��2\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0005HÆ\u0001J\u0013\u0010(\u001a\u00020\u00052\b\u0010)\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010*\u001a\u00020\u0003HÖ\u0001J\t\u0010+\u001a\u00020,HÖ\u0001R\u001c\u0010\n\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0014\u0010\u0011\u001a\u0004\b\u0015\u0010\u0013R\u001c\u0010\u000b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0017\u0010\u0013R\u001c\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0018\u0010\u0011\u001a\u0004\b\u0019\u0010\u0013R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u001a\u0010\u0011\u001a\u0004\b\u001b\u0010\u0013R\u001c\u0010\b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u001c\u0010\u0011\u001a\u0004\b\u001d\u0010\u0013R\u001c\u0010\t\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u001e\u0010\u0011\u001a\u0004\b\u001f\u0010\u0013¨\u0006/"}, m4298d2 = {"Lcom/sinch/metadata/model/PermissionsMetadata;", "", "seen1", "", "hasReadPhoneStatePermission", "", "hasReadCallLogPermission", "hasCallPhonePermission", "hasReadSmsPermission", "hasReceiveSmsPermission", "hasAccessNetworkStatePermission", "hasCellularSignalPermission", "serializationConstructorMarker", "Lkotlinx/serialization/SerializationConstructorMarker;", "(IZZZZZZZLkotlinx/serialization/SerializationConstructorMarker;)V", "(ZZZZZZZ)V", "hasAccessNetworkStatePermission$annotations", "()V", "getHasAccessNetworkStatePermission", "()Z", "hasCallPhonePermission$annotations", "getHasCallPhonePermission", "hasCellularSignalPermission$annotations", "getHasCellularSignalPermission", "hasReadCallLogPermission$annotations", "getHasReadCallLogPermission", "hasReadPhoneStatePermission$annotations", "getHasReadPhoneStatePermission", "hasReadSmsPermission$annotations", "getHasReadSmsPermission", "hasReceiveSmsPermission$annotations", "getHasReceiveSmsPermission", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "other", "hashCode", "toString", "", "$serializer", "Companion", "metadata-collector_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/model/PermissionsMetadata.class */
public final class PermissionsMetadata {
    public static final Companion Companion = new Companion(null);
    private final boolean hasAccessNetworkStatePermission;
    private final boolean hasCallPhonePermission;
    private final boolean hasCellularSignalPermission;
    private final boolean hasReadCallLogPermission;
    private final boolean hasReadPhoneStatePermission;
    private final boolean hasReadSmsPermission;
    private final boolean hasReceiveSmsPermission;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, m4298d2 = {"Lcom/sinch/metadata/model/PermissionsMetadata$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/sinch/metadata/model/PermissionsMetadata;", "metadata-collector_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/metadata/model/PermissionsMetadata$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<PermissionsMetadata> serializer() {
            return PermissionsMetadata$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ PermissionsMetadata(int i, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) != 0) {
            this.hasReadPhoneStatePermission = z;
            if ((i & 2) == 0) {
                throw new MissingFieldException("READ_CALL_LOG");
            }
            this.hasReadCallLogPermission = z2;
            if ((i & 4) == 0) {
                throw new MissingFieldException("CALL_PHONE");
            }
            this.hasCallPhonePermission = z3;
            if ((i & 8) == 0) {
                throw new MissingFieldException("READ_SMS");
            }
            this.hasReadSmsPermission = z4;
            if ((i & 16) == 0) {
                throw new MissingFieldException("RECEIVE_SMS");
            }
            this.hasReceiveSmsPermission = z5;
            if ((i & 32) == 0) {
                throw new MissingFieldException("ACCESS_NETWORK_STATE");
            }
            this.hasAccessNetworkStatePermission = z6;
            if ((i & 64) == 0) {
                throw new MissingFieldException("getCellularSignalLevel");
            }
            this.hasCellularSignalPermission = z7;
            return;
        }
        throw new MissingFieldException("READ_PHONE_STATE");
    }

    public PermissionsMetadata(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        this.hasReadPhoneStatePermission = z;
        this.hasReadCallLogPermission = z2;
        this.hasCallPhonePermission = z3;
        this.hasReadSmsPermission = z4;
        this.hasReceiveSmsPermission = z5;
        this.hasAccessNetworkStatePermission = z6;
        this.hasCellularSignalPermission = z7;
    }

    public static /* synthetic */ PermissionsMetadata copy$default(PermissionsMetadata permissionsMetadata, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, int i, Object obj) {
        if ((i & 1) != 0) {
            z = permissionsMetadata.hasReadPhoneStatePermission;
        }
        if ((i & 2) != 0) {
            z2 = permissionsMetadata.hasReadCallLogPermission;
        }
        if ((i & 4) != 0) {
            z3 = permissionsMetadata.hasCallPhonePermission;
        }
        if ((i & 8) != 0) {
            z4 = permissionsMetadata.hasReadSmsPermission;
        }
        if ((i & 16) != 0) {
            z5 = permissionsMetadata.hasReceiveSmsPermission;
        }
        if ((i & 32) != 0) {
            z6 = permissionsMetadata.hasAccessNetworkStatePermission;
        }
        if ((i & 64) != 0) {
            z7 = permissionsMetadata.hasCellularSignalPermission;
        }
        return permissionsMetadata.copy(z, z2, z3, z4, z5, z6, z7);
    }

    public static /* synthetic */ void hasAccessNetworkStatePermission$annotations() {
    }

    public static /* synthetic */ void hasCallPhonePermission$annotations() {
    }

    public static /* synthetic */ void hasCellularSignalPermission$annotations() {
    }

    public static /* synthetic */ void hasReadCallLogPermission$annotations() {
    }

    public static /* synthetic */ void hasReadPhoneStatePermission$annotations() {
    }

    public static /* synthetic */ void hasReadSmsPermission$annotations() {
    }

    public static /* synthetic */ void hasReceiveSmsPermission$annotations() {
    }

    public static final void write$Self(PermissionsMetadata self, CompositeEncoder output, SerialDescriptor serialDesc) {
        C18524p.m3841c(self, "self");
        C18524p.m3841c(output, "output");
        C18524p.m3841c(serialDesc, "serialDesc");
        output.encodeBooleanElement(serialDesc, 0, self.hasReadPhoneStatePermission);
        output.encodeBooleanElement(serialDesc, 1, self.hasReadCallLogPermission);
        output.encodeBooleanElement(serialDesc, 2, self.hasCallPhonePermission);
        output.encodeBooleanElement(serialDesc, 3, self.hasReadSmsPermission);
        output.encodeBooleanElement(serialDesc, 4, self.hasReceiveSmsPermission);
        output.encodeBooleanElement(serialDesc, 5, self.hasAccessNetworkStatePermission);
        output.encodeBooleanElement(serialDesc, 6, self.hasCellularSignalPermission);
    }

    public final boolean component1() {
        return this.hasReadPhoneStatePermission;
    }

    public final boolean component2() {
        return this.hasReadCallLogPermission;
    }

    public final boolean component3() {
        return this.hasCallPhonePermission;
    }

    public final boolean component4() {
        return this.hasReadSmsPermission;
    }

    public final boolean component5() {
        return this.hasReceiveSmsPermission;
    }

    public final boolean component6() {
        return this.hasAccessNetworkStatePermission;
    }

    public final boolean component7() {
        return this.hasCellularSignalPermission;
    }

    public final PermissionsMetadata copy(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        return new PermissionsMetadata(z, z2, z3, z4, z5, z6, z7);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof PermissionsMetadata)) {
                return false;
            }
            PermissionsMetadata permissionsMetadata = (PermissionsMetadata) obj;
            return this.hasReadPhoneStatePermission == permissionsMetadata.hasReadPhoneStatePermission && this.hasReadCallLogPermission == permissionsMetadata.hasReadCallLogPermission && this.hasCallPhonePermission == permissionsMetadata.hasCallPhonePermission && this.hasReadSmsPermission == permissionsMetadata.hasReadSmsPermission && this.hasReceiveSmsPermission == permissionsMetadata.hasReceiveSmsPermission && this.hasAccessNetworkStatePermission == permissionsMetadata.hasAccessNetworkStatePermission && this.hasCellularSignalPermission == permissionsMetadata.hasCellularSignalPermission;
        }
        return true;
    }

    public final boolean getHasAccessNetworkStatePermission() {
        return this.hasAccessNetworkStatePermission;
    }

    public final boolean getHasCallPhonePermission() {
        return this.hasCallPhonePermission;
    }

    public final boolean getHasCellularSignalPermission() {
        return this.hasCellularSignalPermission;
    }

    public final boolean getHasReadCallLogPermission() {
        return this.hasReadCallLogPermission;
    }

    public final boolean getHasReadPhoneStatePermission() {
        return this.hasReadPhoneStatePermission;
    }

    public final boolean getHasReadSmsPermission() {
        return this.hasReadSmsPermission;
    }

    public final boolean getHasReceiveSmsPermission() {
        return this.hasReceiveSmsPermission;
    }

    public final int hashCode() {
        boolean z = this.hasReadPhoneStatePermission;
        int i = 1;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        boolean z3 = this.hasReadCallLogPermission;
        boolean z4 = z3;
        if (z3) {
            z4 = true;
        }
        boolean z5 = this.hasCallPhonePermission;
        boolean z6 = z5;
        if (z5) {
            z6 = true;
        }
        boolean z7 = this.hasReadSmsPermission;
        boolean z8 = z7;
        if (z7) {
            z8 = true;
        }
        boolean z9 = this.hasReceiveSmsPermission;
        boolean z10 = z9;
        if (z9) {
            z10 = true;
        }
        boolean z11 = this.hasAccessNetworkStatePermission;
        boolean z12 = z11;
        if (z11) {
            z12 = true;
        }
        boolean z13 = this.hasCellularSignalPermission;
        if (!z13) {
            i = z13;
        }
        return ((((((((((((z2 ? 1 : 0) * 31) + (z4 ? 1 : 0)) * 31) + (z6 ? 1 : 0)) * 31) + (z8 ? 1 : 0)) * 31) + (z10 ? 1 : 0)) * 31) + (z12 ? 1 : 0)) * 31) + i;
    }

    public final String toString() {
        return "PermissionsMetadata(hasReadPhoneStatePermission=" + this.hasReadPhoneStatePermission + ", hasReadCallLogPermission=" + this.hasReadCallLogPermission + ", hasCallPhonePermission=" + this.hasCallPhonePermission + ", hasReadSmsPermission=" + this.hasReadSmsPermission + ", hasReceiveSmsPermission=" + this.hasReceiveSmsPermission + ", hasAccessNetworkStatePermission=" + this.hasAccessNetworkStatePermission + ", hasCellularSignalPermission=" + this.hasCellularSignalPermission + ")";
    }
}
