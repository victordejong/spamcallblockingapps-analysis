package com.sinch.verification.utils.permission;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, m4298d2 = {"Lcom/sinch/verification/utils/permission/Permission;", "", "(Ljava/lang/String;I)V", "androidValue", "", "getAndroidValue", "()Ljava/lang/String;", "ACCESS_NETWORK_STATE", "CHANGE_NETWORK_STATE", "READ_PHONE_STATE", "READ_CALL_LOG", "CALL_PHONE", "READ_SMS", "RECEIVE_SMS", "ACCESS_COARSE_LOCATION", "ACCESS_FINE_LOCATION", "utils_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/utils/permission/Permission.class */
public enum Permission {
    ACCESS_NETWORK_STATE,
    CHANGE_NETWORK_STATE,
    READ_PHONE_STATE,
    READ_CALL_LOG,
    CALL_PHONE,
    READ_SMS,
    RECEIVE_SMS,
    ACCESS_COARSE_LOCATION,
    ACCESS_FINE_LOCATION;

    @Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/utils/permission/Permission$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Permission.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[Permission.ACCESS_NETWORK_STATE.ordinal()] = 1;
            iArr[Permission.CHANGE_NETWORK_STATE.ordinal()] = 2;
            iArr[Permission.READ_PHONE_STATE.ordinal()] = 3;
            iArr[Permission.READ_CALL_LOG.ordinal()] = 4;
            iArr[Permission.CALL_PHONE.ordinal()] = 5;
            iArr[Permission.READ_SMS.ordinal()] = 6;
            iArr[Permission.RECEIVE_SMS.ordinal()] = 7;
            iArr[Permission.ACCESS_COARSE_LOCATION.ordinal()] = 8;
            iArr[Permission.ACCESS_FINE_LOCATION.ordinal()] = 9;
        }
    }

    public final String getAndroidValue() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
                return "android.permission.ACCESS_NETWORK_STATE";
            case 2:
                return "android.permission.CHANGE_NETWORK_STATE";
            case 3:
                return "android.permission.READ_PHONE_STATE";
            case 4:
                return "android.permission.READ_CALL_LOG";
            case 5:
                return "android.permission.CALL_PHONE";
            case 6:
                return "android.permission.READ_SMS";
            case 7:
                return "android.permission.RECEIVE_SMS";
            case 8:
                return "android.permission.ACCESS_COARSE_LOCATION";
            case 9:
                return "android.permission.ACCESS_FINE_LOCATION";
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
