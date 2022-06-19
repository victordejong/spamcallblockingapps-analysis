package com.truecaller.api.services.messenger.p138v1.models.input;

import com.google.protobuf.Internal;
/* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputReportType */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputReportType.class */
public enum InputReportType implements Internal.EnumLite {
    UNKNOWN_REPORT_TYPE(0),
    READ(1),
    RECEIVED(2),
    UNRECOGNIZED(-1);
    
    public static final int READ_VALUE = 1;
    public static final int RECEIVED_VALUE = 2;
    public static final int UNKNOWN_REPORT_TYPE_VALUE = 0;
    private static final Internal.EnumLiteMap<InputReportType> internalValueMap = new Internal.EnumLiteMap<InputReportType>() { // from class: com.truecaller.api.services.messenger.v1.models.input.InputReportType.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public InputReportType findValueByNumber(int i) {
            return InputReportType.forNumber(i);
        }
    };
    private final int value;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputReportType$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputReportType$b.class */
    public static final class C3296b implements Internal.EnumVerifier {

        /* renamed from: a */
        public static final Internal.EnumVerifier f10121a = new C3296b();

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int i) {
            return InputReportType.forNumber(i) != null;
        }
    }

    InputReportType(int i) {
        this.value = i;
    }

    public static InputReportType forNumber(int i) {
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

    public static Internal.EnumLiteMap<InputReportType> internalGetValueMap() {
        return internalValueMap;
    }

    public static Internal.EnumVerifier internalGetVerifier() {
        return C3296b.f10121a;
    }

    @Deprecated
    public static InputReportType valueOf(int i) {
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
