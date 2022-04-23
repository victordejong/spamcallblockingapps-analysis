package com.privacystar.core.p011ui.util.caller;

import android.content.Context;
import android.support.annotation.DrawableRes;
import com.privacystar.core.C1566R;
import com.privacystar.core.data.call.call_details.CallDetails;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.model.helper.ApprovedListRealm;
import com.privacystar.core.data.model.helper.OffenderCategoryRealm;
import com.privacystar.core.data.offender.PhoneEntry;
import com.privacystar.core.util.AndroidUtil;
import com.privacystar.core.util.CallLogUtil;
import com.privacystar.core.util.NumbersUtil;
import com.privacystar.core.util.OffenderUtil;
import com.privacystar.core.util.Text;
import io.realm.Realm;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.privacystar.core.ui.util.caller.CallerPresenter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/util/caller/CallerPresenter.class */
public class CallerPresenter {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.privacystar.core.ui.util.caller.CallerPresenter$1 */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/util/caller/CallerPresenter$1.class */
    public static /* synthetic */ class C16551 {
        static final /* synthetic */ int[] $SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi = new int[OffenderUtil.OffenderTypeUi.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi[OffenderUtil.OffenderTypeUi.ACCOUNT_SERVICES.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi[OffenderUtil.OffenderTypeUi.SCAM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi[OffenderUtil.OffenderTypeUi.CHARITY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi[OffenderUtil.OffenderTypeUi.POLITICAL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi[OffenderUtil.OffenderTypeUi.SURVEY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi[OffenderUtil.OffenderTypeUi.TELEMARKETING.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi[OffenderUtil.OffenderTypeUi.NUISANCE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi[OffenderUtil.OffenderTypeUi.PRISON.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    public static List<String> getCallEventText(CallDetails callDetails) {
        ArrayList arrayList = new ArrayList();
        if (callDetails.getCaller().hasDisplayName()) {
            arrayList.add(callDetails.getCaller().getDisplayName());
        }
        if (!callDetails.getCaller().getIsInContactsSynchronous() && callDetails.getCaller().isOffender(false)) {
            Realm defaultInstance = Realm.getDefaultInstance();
            try {
                arrayList.add(callDetails.getCaller().getOffenderCategoryName(defaultInstance));
                if (defaultInstance != null) {
                    defaultInstance.close();
                }
            } finally {
                try {
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (callDetails.getCaller().hasLocation() && arrayList.size() < 2) {
            arrayList.add(callDetails.getCaller().getLocation());
        }
        arrayList.add(callDetails.getCaller().getDisplayNumber());
        return arrayList;
    }

    public static List<String> getCallEventText(CallLogUtil.BasicLogInfo basicLogInfo) {
        ArrayList arrayList = new ArrayList();
        if (basicLogInfo.hasDisplayName()) {
            arrayList.add(basicLogInfo.getDisplayName());
        }
        if (!basicLogInfo.isInContacts() && basicLogInfo.isOffender()) {
            arrayList.add(PhoneEntry.offenderToString(basicLogInfo.getBitValue()));
        }
        if (basicLogInfo.hasLocation() && arrayList.size() < 2) {
            arrayList.add(basicLogInfo.getLocation());
        }
        arrayList.add(NumbersUtil.getDisplayNumber(basicLogInfo.getNumber()));
        return arrayList;
    }

    @DrawableRes
    public static int getCategoryDrawable(Caller caller) {
        int defaultCallerDrawableId = CallerManagerImpl.INSTANCE.getDefaultCallerDrawableId();
        if (caller.getIsInContacts()) {
            return defaultCallerDrawableId;
        }
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            if (ApprovedListRealm.isCallerApproved(defaultInstance, caller)) {
                if (defaultInstance != null) {
                    defaultInstance.close();
                }
                return defaultCallerDrawableId;
            }
            if (defaultInstance != null) {
                defaultInstance.close();
            }
            OffenderUtil.OffenderTypeUi offenderTypeUiFromID = OffenderUtil.getOffenderTypeUiFromID(caller.getOffenderCategoryId());
            if (caller.canShowOffenderData()) {
                defaultCallerDrawableId = CallerManagerImpl.INSTANCE.offenderToCallerDrawableId(offenderTypeUiFromID);
            }
            return defaultCallerDrawableId;
        } finally {
            try {
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String getCategoryName(int i, Context context) {
        OffenderUtil.OffenderTypeUi offenderTypeUiFromID = OffenderUtil.getOffenderTypeUiFromID(i);
        if (context != null) {
            switch (C16551.$SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi[offenderTypeUiFromID.ordinal()]) {
                case 1:
                    return context.getString(C1566R.string.account_services_type_display_text);
                case 2:
                    return context.getString(C1566R.string.scam_type_display_text);
                case 3:
                    return context.getString(C1566R.string.charity_type_display_text);
                case 4:
                    return context.getString(C1566R.string.political_type_display_text);
                case 5:
                    return context.getString(C1566R.string.survey_type_display_text);
                case 6:
                    return context.getString(C1566R.string.telemarketing_type_display_text);
                case 7:
                    return context.getString(C1566R.string.nuisance_type_display_text);
                case 8:
                    return context.getString(C1566R.string.prison_type_display_text);
            }
        }
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            String offenderTypeName = OffenderCategoryRealm.getOffenderTypeName(defaultInstance, i);
            if (defaultInstance != null) {
                defaultInstance.close();
            }
            String str = offenderTypeName;
            if (Text.isBlank(offenderTypeName)) {
                str = AndroidUtil.getString(context, C1566R.string.default_type_display_text);
            }
            return str;
        } finally {
            try {
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
