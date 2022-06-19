package com.truecaller.api.services.survey;

import com.google.protobuf.Internal;
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/PhonebookStatus.class */
public enum PhonebookStatus implements Internal.EnumLite {
    BOTH(0),
    SHOW_IF_IN_PHONEBOOK(1),
    SHOW_IF_NOT_IN_PHONEBOOK(2),
    UNRECOGNIZED(-1);
    
    public static final int BOTH_VALUE = 0;
    public static final int SHOW_IF_IN_PHONEBOOK_VALUE = 1;
    public static final int SHOW_IF_NOT_IN_PHONEBOOK_VALUE = 2;
    private static final Internal.EnumLiteMap<PhonebookStatus> internalValueMap = new Internal.EnumLiteMap<PhonebookStatus>() { // from class: com.truecaller.api.services.survey.PhonebookStatus.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public PhonebookStatus findValueByNumber(int i) {
            return PhonebookStatus.forNumber(i);
        }
    };
    private final int value;

    /* renamed from: com.truecaller.api.services.survey.PhonebookStatus$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/PhonebookStatus$b.class */
    public static final class C3412b implements Internal.EnumVerifier {

        /* renamed from: a */
        public static final Internal.EnumVerifier f10134a = new C3412b();

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int i) {
            return PhonebookStatus.forNumber(i) != null;
        }
    }

    PhonebookStatus(int i) {
        this.value = i;
    }

    public static PhonebookStatus forNumber(int i) {
        if (i != 0) {
            if (i == 1) {
                return SHOW_IF_IN_PHONEBOOK;
            }
            if (i == 2) {
                return SHOW_IF_NOT_IN_PHONEBOOK;
            }
            return null;
        }
        return BOTH;
    }

    public static Internal.EnumLiteMap<PhonebookStatus> internalGetValueMap() {
        return internalValueMap;
    }

    public static Internal.EnumVerifier internalGetVerifier() {
        return C3412b.f10134a;
    }

    @Deprecated
    public static PhonebookStatus valueOf(int i) {
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
