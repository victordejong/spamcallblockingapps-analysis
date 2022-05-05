package com.privacystar.core.p011ui.util.caller;

import android.content.Context;
import android.content.res.Resources;
import com.privacystar.core.C1566R;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.model.helper.ApprovedListRealm;
import com.privacystar.core.data.model.helper.LicenseFeatureRealm;
import com.privacystar.core.data.model.helper.SubscriptionRealm;
import com.privacystar.core.data.model.types.Feature;
import com.privacystar.core.util.AndroidUtil;
import com.privacystar.core.util.NumbersUtil;
import io.realm.Realm;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p013io.CloseableKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\bÆ\u0002\u0018��2\u00020\u0001:\u0001\u0015B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ \u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u0018\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u000e\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0006J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0018\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0018\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0018\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u000e\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0016"}, m254d2 = {"Lcom/privacystar/core/ui/util/caller/CallerInfoLineCreator;", "", "()V", "getCallerInfo", "Lcom/privacystar/core/ui/util/caller/CallerInfoLineCreator$CallerInfoLines;", "caller", "Lcom/privacystar/core/data/call/caller/Caller;", "context", "Landroid/content/Context;", "asyncAllowed", "", "getContactInfo", "getDisplayName", "", "getNonOffenderInfo", "getNumber", "getOffenderInfo", "getQuickCallerInfo", "getScammerInfo", "getUnknownInfo", "isCallerApproved", "CallerInfoLines", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.util.caller.CallerInfoLineCreator */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/util/caller/CallerInfoLineCreator.class */
public final class CallerInfoLineCreator {
    public static final CallerInfoLineCreator INSTANCE = new CallerInfoLineCreator();

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0007¨\u0006\t"}, m254d2 = {"Lcom/privacystar/core/ui/util/caller/CallerInfoLineCreator$CallerInfoLines;", "", "line1", "", "line2", "(Ljava/lang/String;Ljava/lang/String;)V", "getLine1", "()Ljava/lang/String;", "getLine2", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.util.caller.CallerInfoLineCreator$CallerInfoLines */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/util/caller/CallerInfoLineCreator$CallerInfoLines.class */
    public static final class CallerInfoLines {
        @NotNull
        private final String line1;
        @NotNull
        private final String line2;

        public CallerInfoLines(@NotNull String line1, @NotNull String line2) {
            Intrinsics.checkParameterIsNotNull(line1, "line1");
            Intrinsics.checkParameterIsNotNull(line2, "line2");
            this.line1 = line1;
            this.line2 = line2;
        }

        @NotNull
        public final String getLine1() {
            return this.line1;
        }

        @NotNull
        public final String getLine2() {
            return this.line2;
        }
    }

    private CallerInfoLineCreator() {
    }

    private final CallerInfoLines getContactInfo(Caller caller, Context context, boolean z) {
        boolean z2 = caller.hasContactName(z) && caller.getContactName() != null;
        String contactName = caller.getContactName();
        if (contactName == null) {
            contactName = "";
        }
        return (!z2 || NumbersUtil.isValidPossiblePhoneNumber(contactName)) ? new CallerInfoLines(getNumber(caller), "") : new CallerInfoLines(contactName, getNumber(caller));
    }

    private final CallerInfoLines getNonOffenderInfo(Caller caller, Context context) {
        Realm defaultInstance = Realm.getDefaultInstance();
        th = null;
        try {
            boolean z = context.getResources().getBoolean(C1566R.bool.subscription_enabled) && !SubscriptionRealm.isSubscriptionOngoing(defaultInstance);
            if (caller.hasDisplayName() || z) {
                CallerInfoLines callerInfoLines = new CallerInfoLines(INSTANCE.getDisplayName(caller, context), INSTANCE.getNumber(caller));
                CloseableKt.closeFinally(defaultInstance, th);
                return callerInfoLines;
            } else if (caller.hasLocation()) {
                String number = INSTANCE.getNumber(caller);
                String location = caller.getLocation();
                Intrinsics.checkExpressionValueIsNotNull(location, "caller.location");
                return new CallerInfoLines(number, location);
            } else {
                CallerInfoLines callerInfoLines2 = new CallerInfoLines(INSTANCE.getNumber(caller), "");
                CloseableKt.closeFinally(defaultInstance, th);
                return callerInfoLines2;
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    private final CallerInfoLines getOffenderInfo(Caller caller, Context context) {
        String localLine1 = CallerPresenter.getCategoryName(caller.getOffenderCategoryId(), context);
        Realm defaultInstance = Realm.getDefaultInstance();
        th = null;
        try {
            Realm realm = defaultInstance;
            if (caller.hasDisplayName() && SubscriptionRealm.isSubscriptionOngoing(realm)) {
                Intrinsics.checkExpressionValueIsNotNull(localLine1, "localLine1");
                String displayName = caller.getDisplayName();
                Intrinsics.checkExpressionValueIsNotNull(displayName, "caller.displayName");
                return new CallerInfoLines(localLine1, displayName);
            } else if (caller.hasLocation()) {
                Intrinsics.checkExpressionValueIsNotNull(localLine1, "localLine1");
                String location = caller.getLocation();
                Intrinsics.checkExpressionValueIsNotNull(location, "caller.location");
                CallerInfoLines callerInfoLines = new CallerInfoLines(localLine1, location);
                CloseableKt.closeFinally(defaultInstance, th);
                return callerInfoLines;
            } else {
                Intrinsics.checkExpressionValueIsNotNull(localLine1, "localLine1");
                CallerInfoLines callerInfoLines2 = new CallerInfoLines(localLine1, INSTANCE.getNumber(caller));
                CloseableKt.closeFinally(defaultInstance, th);
                return callerInfoLines2;
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    private final CallerInfoLines getQuickCallerInfo(Caller caller, Context context) {
        String number = getNumber(caller);
        String string = context.getString(C1566R.string.log_item_loading);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.string.log_item_loading)");
        return new CallerInfoLines(number, string);
    }

    private final CallerInfoLines getScammerInfo(Caller caller, Context context) {
        String localLine1 = CallerPresenter.getCategoryName(caller.getOffenderCategoryId(), context);
        if (caller.hasDisplayName()) {
            Intrinsics.checkExpressionValueIsNotNull(localLine1, "localLine1");
            String displayName = caller.getDisplayName();
            Intrinsics.checkExpressionValueIsNotNull(displayName, "caller.displayName");
            return new CallerInfoLines(localLine1, displayName);
        } else if (caller.hasLocation()) {
            Intrinsics.checkExpressionValueIsNotNull(localLine1, "localLine1");
            String location = caller.getLocation();
            Intrinsics.checkExpressionValueIsNotNull(location, "caller.location");
            return new CallerInfoLines(localLine1, location);
        } else {
            Intrinsics.checkExpressionValueIsNotNull(localLine1, "localLine1");
            return new CallerInfoLines(localLine1, getNumber(caller));
        }
    }

    private final CallerInfoLines getUnknownInfo(Caller caller, Context context) {
        CallerInfoLines callerInfoLines;
        synchronized (this) {
            String string = AndroidUtil.getString(context, C1566R.string.caller_type_unknown);
            Intrinsics.checkExpressionValueIsNotNull(string, "AndroidUtil.getString(co…ring.caller_type_unknown)");
            callerInfoLines = new CallerInfoLines(string, "");
        }
        return callerInfoLines;
    }

    @NotNull
    public final CallerInfoLines getCallerInfo(@NotNull Caller caller, @NotNull Context context, boolean z) {
        Intrinsics.checkParameterIsNotNull(caller, "caller");
        Intrinsics.checkParameterIsNotNull(context, "context");
        return (caller.hasCheckedIfInContacts() || !z) ? caller.getIsInContacts(z) ? getContactInfo(caller, context, z) : isCallerApproved(caller) ? getNonOffenderInfo(caller, context) : (!caller.isScammer() || !caller.canShowOffenderData()) ? caller.isUnknownNumber() ? getUnknownInfo(caller, context) : (!caller.isOffender(z) || !caller.canShowOffenderData()) ? getNonOffenderInfo(caller, context) : getOffenderInfo(caller, context) : getScammerInfo(caller, context) : getQuickCallerInfo(caller, context);
    }

    @NotNull
    public final String getDisplayName(@NotNull Caller caller, @Nullable Context context) {
        Resources resources;
        String str;
        Intrinsics.checkParameterIsNotNull(caller, "caller");
        Realm defaultInstance = Realm.getDefaultInstance();
        th = null;
        try {
            Realm realm = defaultInstance;
            if (caller.getIsInContacts()) {
                String displayName = caller.getDisplayName();
                Intrinsics.checkExpressionValueIsNotNull(displayName, "caller.displayName");
                return displayName;
            } else if (context == null || (resources = context.getResources()) == null || !resources.getBoolean(C1566R.bool.subscription_enabled)) {
                String displayName2 = caller.getDisplayName();
                Intrinsics.checkExpressionValueIsNotNull(displayName2, "caller.displayName");
                CloseableKt.closeFinally(defaultInstance, th);
                return displayName2;
            } else {
                if (LicenseFeatureRealm.isFeatureAvailable(Feature.MANUAL_CID_LOOKUP)) {
                    str = caller.getDisplayName();
                    Intrinsics.checkExpressionValueIsNotNull(str, "caller.displayName");
                } else {
                    str = context.getString(C1566R.string.caller_info_upgrade_for_name);
                    Intrinsics.checkExpressionValueIsNotNull(str, "context.getString(R.stri…er_info_upgrade_for_name)");
                }
                CloseableKt.closeFinally(defaultInstance, th);
                return str;
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    @NotNull
    public final String getNumber(@NotNull Caller caller) {
        Intrinsics.checkParameterIsNotNull(caller, "caller");
        String number = caller.getDisplayNumber();
        Intrinsics.checkExpressionValueIsNotNull(number, "number");
        return number;
    }

    public final boolean isCallerApproved(@NotNull Caller caller) {
        Intrinsics.checkParameterIsNotNull(caller, "caller");
        Realm defaultInstance = Realm.getDefaultInstance();
        Throwable th = null;
        try {
            boolean isCallerApproved = ApprovedListRealm.isCallerApproved(defaultInstance, caller);
            CloseableKt.closeFinally(defaultInstance, th);
            return isCallerApproved;
        } finally {
            try {
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
