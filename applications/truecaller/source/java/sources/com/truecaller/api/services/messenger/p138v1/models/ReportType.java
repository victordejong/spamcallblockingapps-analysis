package com.truecaller.api.services.messenger.p138v1.models;

import com.google.protobuf.Internal;
/* renamed from: com.truecaller.api.services.messenger.v1.models.ReportType */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/ReportType.class */
public enum ReportType implements Internal.EnumLite {
    UNKNOWN_REPORT_TYPE(0),
    READ(1),
    RECEIVED(2),
    UNRECOGNIZED(-1);
    
    public static final int READ_VALUE = 1;
    public static final int RECEIVED_VALUE = 2;
    public static final int UNKNOWN_REPORT_TYPE_VALUE = 0;
    private static final Internal.EnumLiteMap<ReportType> internalValueMap = new Internal.EnumLiteMap<ReportType>() { // from class: com.truecaller.api.services.messenger.v1.models.ReportType.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public ReportType findValueByNumber(int i) {
            return ReportType.forNumber(i);
        }
    };
    private final int value;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.ReportType$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/ReportType$b.class */
    public static final class C3233b implements Internal.EnumVerifier {

        /* renamed from: a */
        public static final Internal.EnumVerifier f10115a = new C3233b();

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int i) {
            return ReportType.forNumber(i) != null;
        }
    }

    ReportType(int i) {
        this.value = i;
    }

    public static ReportType forNumber(int i) {
        if (i != 0) {
            if (i == 1) {
                return READ;
            }
            if (i == 2) {
                return RECEIVED;
            }
            return null;
        }
        return UNKNOWN_REPORT_TYPE;
    }

    public static Internal.EnumLiteMap<ReportType> internalGetValueMap() {
        return internalValueMap;
    }

    public static Internal.EnumVerifier internalGetVerifier() {
        return C3233b.f10115a;
    }

    @Deprecated
    public static ReportType valueOf(int i) {
        return forNumber(i);
    }

    @Override // com.google.protobuf.Internal.EnumLite
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
