package com.google.firebase.inappmessaging;

import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/CommonTypesProto$ExperimentalCampaignState.class */
public enum CommonTypesProto$ExperimentalCampaignState implements C6381y.AbstractC6384c {
    UNKNOWN_EXPERIMENTAL_CAMPAIGN_STATE(0),
    EXPERIMENT_DRAFT(1),
    EXPERIMENT_RUNNING(2),
    EXPERIMENT_STOPPED(3),
    EXPERIMENT_ROLLED_OUT(4),
    UNRECOGNIZED(-1);
    
    public static final int EXPERIMENT_DRAFT_VALUE = 1;
    public static final int EXPERIMENT_ROLLED_OUT_VALUE = 4;
    public static final int EXPERIMENT_RUNNING_VALUE = 2;
    public static final int EXPERIMENT_STOPPED_VALUE = 3;
    public static final int UNKNOWN_EXPERIMENTAL_CAMPAIGN_STATE_VALUE = 0;
    public static final C6381y.AbstractC6385d<CommonTypesProto$ExperimentalCampaignState> internalValueMap = new C6381y.AbstractC6385d<CommonTypesProto$ExperimentalCampaignState>() { // from class: com.google.firebase.inappmessaging.CommonTypesProto$ExperimentalCampaignState.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public CommonTypesProto$ExperimentalCampaignState mo6797a(int i) {
            return CommonTypesProto$ExperimentalCampaignState.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.firebase.inappmessaging.CommonTypesProto$ExperimentalCampaignState$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/CommonTypesProto$ExperimentalCampaignState$b.class */
    public static final class C7826b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f30957a = new C7826b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return CommonTypesProto$ExperimentalCampaignState.forNumber(i) != null;
        }
    }

    CommonTypesProto$ExperimentalCampaignState(int i) {
        this.value = i;
    }

    public static CommonTypesProto$ExperimentalCampaignState forNumber(int i) {
        if (i == 0) {
            return UNKNOWN_EXPERIMENTAL_CAMPAIGN_STATE;
        }
        if (i == 1) {
            return EXPERIMENT_DRAFT;
        }
        if (i == 2) {
            return EXPERIMENT_RUNNING;
        }
        if (i == 3) {
            return EXPERIMENT_STOPPED;
        }
        if (i != 4) {
            return null;
        }
        return EXPERIMENT_ROLLED_OUT;
    }

    public static C6381y.AbstractC6385d<CommonTypesProto$ExperimentalCampaignState> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7826b.f30957a;
    }

    @Deprecated
    public static CommonTypesProto$ExperimentalCampaignState valueOf(int i) {
        return forNumber(i);
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6384c
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
