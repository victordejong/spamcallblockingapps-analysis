package com.tmobile.services.nameid.utility;

import com.tmobile.services.nameid.utility.SubscriptionHelper;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/Feature.class */
public enum Feature {
    PHONE_NUMBER_BLOCK(0) { // from class: com.tmobile.services.nameid.utility.Feature.1
        @Override // com.tmobile.services.nameid.utility.Feature
        public boolean isOwned(SubscriptionHelper.State state) {
            SubscriptionHelper.State j = SubscriptionHelper.m5318j(state);
            return j == SubscriptionHelper.State.PREMIUM || j == SubscriptionHelper.State.VVM_BUNDLE || j == SubscriptionHelper.State.TRIAL || j == SubscriptionHelper.State.REDUCED_METRO;
        }
    },
    CATEGORY_BLOCK(1) { // from class: com.tmobile.services.nameid.utility.Feature.2
        @Override // com.tmobile.services.nameid.utility.Feature
        public boolean isOwned(SubscriptionHelper.State state) {
            SubscriptionHelper.State j = SubscriptionHelper.m5318j(state);
            return j == SubscriptionHelper.State.PREMIUM || j == SubscriptionHelper.State.VVM_BUNDLE || j == SubscriptionHelper.State.TRIAL || j == SubscriptionHelper.State.REDUCED_METRO;
        }
    },
    NOTIFICATION_HANDLERS(2) { // from class: com.tmobile.services.nameid.utility.Feature.3
        @Override // com.tmobile.services.nameid.utility.Feature
        public boolean isOwned(SubscriptionHelper.State state) {
            SubscriptionHelper.State j = SubscriptionHelper.m5318j(state);
            return j == SubscriptionHelper.State.PREMIUM || j == SubscriptionHelper.State.VVM_BUNDLE || j == SubscriptionHelper.State.REDUCED_METRO || j == SubscriptionHelper.State.TRIAL;
        }
    },
    NUMBER_LOOKUP(3) { // from class: com.tmobile.services.nameid.utility.Feature.4
        @Override // com.tmobile.services.nameid.utility.Feature
        public boolean isOwned(SubscriptionHelper.State state) {
            return state == SubscriptionHelper.State.PREMIUM || state == SubscriptionHelper.State.VVM_BUNDLE || state == SubscriptionHelper.State.TRIAL || state == SubscriptionHelper.State.REDUCED;
        }
    },
    PNB_MESSAGING(4) { // from class: com.tmobile.services.nameid.utility.Feature.5
        @Override // com.tmobile.services.nameid.utility.Feature
        public boolean isOwned(SubscriptionHelper.State state) {
            return false;
        }
    };
    
    private static final String LOG_TAG = "Feature#";
    private int value;

    Feature(int i) {
        this.value = i;
    }

    public int getValue() {
        return this.value;
    }

    public boolean isOwned() {
        return isOwned(SubscriptionHelper.m5325c());
    }

    public abstract boolean isOwned(SubscriptionHelper.State state);
}
