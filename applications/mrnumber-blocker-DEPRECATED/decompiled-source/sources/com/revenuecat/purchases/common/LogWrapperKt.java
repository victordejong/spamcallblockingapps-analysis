package com.revenuecat.purchases.common;

import kotlin.w.b.l;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/LogWrapperKt.class */
public final class LogWrapperKt {

    /* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/LogWrapperKt$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LogIntent.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[LogIntent.GOOGLE_ERROR.ordinal()] = 1;
            iArr[LogIntent.GOOGLE_INFO.ordinal()] = 2;
            iArr[LogIntent.INFO.ordinal()] = 3;
            iArr[LogIntent.DEBUG_INFO.ordinal()] = 4;
            iArr[LogIntent.PURCHASE.ordinal()] = 5;
            iArr[LogIntent.RC_ERROR.ordinal()] = 6;
            iArr[LogIntent.RC_PURCHASE_SUCCESS.ordinal()] = 7;
            iArr[LogIntent.RC_SUCCESS.ordinal()] = 8;
            iArr[LogIntent.USER.ordinal()] = 9;
            iArr[LogIntent.WARNING.ordinal()] = 10;
        }
    }

    public static final void log(LogIntent logIntent, String str) {
        k.f(logIntent, "intent");
        k.f(str, "message");
        String str2 = kotlin.s.k.R(logIntent.getEmojiList(), "", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (l) null, 62, (Object) null) + ' ' + str;
        switch (WhenMappings.$EnumSwitchMapping$0[logIntent.ordinal()]) {
            case 1:
                LogUtilsKt.errorLog(str2);
                return;
            case 2:
                LogUtilsKt.infoLog(str2);
                return;
            case 3:
                LogUtilsKt.infoLog(str2);
                return;
            case 4:
                LogUtilsKt.debugLog(str2);
                return;
            case 5:
                LogUtilsKt.debugLog(str2);
                return;
            case 6:
                LogUtilsKt.errorLog(str2);
                return;
            case 7:
                LogUtilsKt.debugLog(str2);
                return;
            case 8:
                LogUtilsKt.debugLog(str2);
                return;
            case 9:
                LogUtilsKt.debugLog(str2);
                return;
            case 10:
                LogUtilsKt.warnLog(str2);
                return;
            default:
                return;
        }
    }
}
