package com.tmobile.services.nameid.utility;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/Constants.class */
public class Constants {

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/Constants$TrialStatus.class */
    public enum TrialStatus {
        SUCCESS(1),
        FAIL(-1),
        NOT_TRIED(0);
        
        private final int value;

        TrialStatus(int i) {
            this.value = i;
        }

        public static TrialStatus fromValue(int i) {
            return i != -1 ? i != 1 ? NOT_TRIED : SUCCESS : FAIL;
        }

        public int getValue() {
            return this.value;
        }
    }
}
