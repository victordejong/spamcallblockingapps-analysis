package com.privacystar.core.p011ui.detail_view.caller_details;

import android.os.Parcelable;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.model.helper.LicenseFeatureRealm;
import com.privacystar.core.data.model.types.Feature;
import com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract;
import com.privacystar.core.p011ui.widgets.NumberListType;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.util.OffenderUtil;
import com.privacystar.core.util.Text;
import java.lang.ref.WeakReference;
import java.util.EnumMap;
import java.util.Observable;
import java.util.Observer;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0013\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0015\u001a\u00020\u0016J\b\u0010\u0017\u001a\u00020\u0016H\u0002J\b\u0010\u0018\u001a\u00020\u0016H\u0002J\u0006\u0010\u0019\u001a\u00020\fJ\u0006\u0010\u001a\u001a\u00020\fJ\u0010\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\fH\u0002J\b\u0010\u001d\u001a\u00020\u0016H\u0002J\u0010\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\nH\u0002J\u0006\u0010 \u001a\u00020\fJ\u0006\u0010!\u001a\u00020\fJ\u0006\u0010\"\u001a\u00020\u0016J\u0006\u0010#\u001a\u00020\u0016J\u0006\u0010$\u001a\u00020\u0016J\u000e\u0010%\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\nJ\u000e\u0010'\u001a\u00020\u00162\u0006\u0010(\u001a\u00020\nJ\u000e\u0010)\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\nJ\u0006\u0010*\u001a\u00020\u0016J\u0010\u0010+\u001a\u00020\u00162\b\u0010,\u001a\u0004\u0018\u00010-J\u0006\u0010.\u001a\u00020\u0016J\u0006\u0010/\u001a\u00020\u0016J\u000e\u00100\u001a\u00020\u00162\u0006\u00101\u001a\u00020\fJ\u0006\u00102\u001a\u00020\u0016J\b\u00103\u001a\u00020\u0016H\u0002J\u0006\u00104\u001a\u00020\u0016J\u0006\u00105\u001a\u00020\u0016J\u0006\u00106\u001a\u00020\u0016J\u0006\u00107\u001a\u00020\u0016J\u0006\u00108\u001a\u00020\u0016J\u0006\u00109\u001a\u00020\u0016J\u0018\u0010:\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\n2\u0006\u0010;\u001a\u00020\fH\u0002J\b\u0010<\u001a\u00020\u0016H\u0002J!\u0010=\u001a\u00020\u00162\b\u0010>\u001a\u0004\u0018\u00010\f2\b\u0010&\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0002\u0010?R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n��R\u001c\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\n\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010\u0002\u001a\u0010\u0012\f\u0012\n \u0014*\u0004\u0018\u00010\u00030\u00030\u0013X\u0082\u0004¢\u0006\u0002\n��¨\u0006@"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/caller_details/CallerDetailsPresenter;", "", Promotion.ACTION_VIEW, "Lcom/privacystar/core/ui/detail_view/caller_details/CallerDetailsContract$View;", "(Lcom/privacystar/core/ui/detail_view/caller_details/CallerDetailsContract$View;)V", "caller", "Lcom/privacystar/core/data/call/caller/Caller;", "callerObserver", "Ljava/util/Observer;", "categoryTagSelected", "", "isRobocallTagValue", "", "Ljava/lang/Boolean;", "manager", "Lcom/privacystar/core/ui/detail_view/caller_details/CallerDetailsManagerImpl;", "offenderTypeToTagMap", "Ljava/util/EnumMap;", "Lcom/privacystar/core/util/OffenderUtil$OffenderTypeUi;", "Ljava/lang/ref/WeakReference;", "kotlin.jvm.PlatformType", "afterTagButtonsAdded", "", "autoSelectButton", "buildOffenderTypeTagMap", "callerIsApproved", "callerIsBlocked", "checkComplaintFeedbackAnalyticsEvent", "forceTrack", "configureQuestionnaires", "getCategoryFromTag", "tag", "isCallerInBlockList", "isCallerUnknown", "onActivityCreated", "onApproveButtonClicked", "onBlockButtonClicked", "onButtonBackgroundSelected", "title", "onButtonSelectedByUser", "type", "onCallTypedTitleClicked", "onContactButtonClicked", "onCreateView", "payload", "Landroid/os/Parcelable;", "onDestroyView", "onFabClicked", "onHeaderClicked", "isSubscriptionEnabled", "onResume", "onRoboCallAnswer", "onRoboCallAnswerNo", "onRoboCallAnswerYes", "onSendCallClicked", "onSendMessageClicked", "onStartReportClicked", "onViewCreated", "setButtonSelected", "user", "shouldShowReportMessage", "trackComplaintFeedbackAnalyticsEvent", "wasRobocall", "(Ljava/lang/Boolean;Ljava/lang/String;)V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsPresenter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/caller_details/CallerDetailsPresenter.class */
public final class CallerDetailsPresenter {
    private Caller caller;
    private Boolean isRobocallTagValue;
    private EnumMap<OffenderUtil.OffenderTypeUi, String> offenderTypeToTagMap;
    private final WeakReference<CallerDetailsContract.View> view;
    private final CallerDetailsManagerImpl manager = CallerDetailsManagerImpl.INSTANCE;
    private String categoryTagSelected = "";
    private final Observer callerObserver = new Observer() { // from class: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsPresenter$callerObserver$1
        @Override // java.util.Observer
        public final void update(Observable observable, Object obj) {
            WeakReference weakReference;
            Caller caller;
            weakReference = CallerDetailsPresenter.this.view;
            CallerDetailsContract.View view = (CallerDetailsContract.View) weakReference.get();
            if (view != null) {
                caller = CallerDetailsPresenter.this.caller;
                view.update(caller);
            }
        }
    };

    public CallerDetailsPresenter(@NotNull CallerDetailsContract.View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = new WeakReference<>(view);
    }

    private final void autoSelectButton() {
        Caller caller = this.caller;
        if (caller != null) {
            OffenderUtil.OffenderTypeUi offenderTypeUiFromID = OffenderUtil.getOffenderTypeUiFromID(caller.getOffenderCategoryId());
            Intrinsics.checkExpressionValueIsNotNull(offenderTypeUiFromID, "OffenderUtil.getOffender…ID(it.offenderCategoryId)");
            EnumMap<OffenderUtil.OffenderTypeUi, String> enumMap = this.offenderTypeToTagMap;
            if (enumMap != null && enumMap.containsKey(offenderTypeUiFromID)) {
                String str = enumMap.get(offenderTypeUiFromID);
                if (str == null) {
                    str = "";
                }
                setButtonSelected(str, false);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0017, code lost:
        if (r8 != null) goto L_0x0022;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void buildOffenderTypeTagMap() {
        /*
            r7 = this;
            r0 = r7
            java.lang.ref.WeakReference<com.privacystar.core.ui.detail_view.caller_details.CallerDetailsContract$View> r0 = r0.view
            java.lang.Object r0 = r0.get()
            com.privacystar.core.ui.detail_view.caller_details.CallerDetailsContract$View r0 = (com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x001d
            r0 = r8
            java.lang.String[] r0 = r0.getTags()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x001d
            goto L_0x0022
        L_0x001d:
            r0 = 0
            java.lang.String[] r0 = new java.lang.String[r0]
            r8 = r0
        L_0x0022:
            r0 = r8
            int r0 = r0.length
            r1 = 8
            if (r0 >= r1) goto L_0x0032
            java.lang.String r0 = "Mismatch between number of tags in strings.xml and expected number"
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]
            timber.log.Timber.m25w(r0, r1)
        L_0x0032:
            r0 = r7
            java.util.EnumMap r1 = new java.util.EnumMap
            r2 = r1
            java.lang.Class<com.privacystar.core.util.OffenderUtil$OffenderTypeUi> r3 = com.privacystar.core.util.OffenderUtil.OffenderTypeUi.class
            r2.<init>(r3)
            r0.offenderTypeToTagMap = r1
            r0 = r8
            int r0 = r0.length
            r9 = r0
            r0 = 0
            r10 = r0
        L_0x0044:
            r0 = r10
            r1 = r9
            if (r0 >= r1) goto L_0x008a
            r0 = r7
            r1 = r8
            r2 = r10
            r1 = r1[r2]
            com.privacystar.core.util.OffenderUtil$OffenderTypeUi r0 = r0.getCategoryFromTag(r1)
            r11 = r0
            java.lang.String r0 = "Mapped %s to %s"
            r1 = 2
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            r4 = r8
            r5 = r10
            r4 = r4[r5]
            r2[r3] = r4
            r2 = r1
            r3 = 1
            r4 = r11
            r2[r3] = r4
            timber.log.Timber.m37d(r0, r1)
            r0 = r7
            java.util.EnumMap<com.privacystar.core.util.OffenderUtil$OffenderTypeUi, java.lang.String> r0 = r0.offenderTypeToTagMap
            r12 = r0
            r0 = r12
            if (r0 != 0) goto L_0x0074
            kotlin.jvm.internal.Intrinsics.throwNpe()
        L_0x0074:
            r0 = r12
            java.util.Map r0 = (java.util.Map) r0
            r1 = r11
            r2 = r8
            r3 = r10
            r2 = r2[r3]
            java.lang.Object r0 = r0.put(r1, r2)
            int r10 = r10 + 1
            goto L_0x0044
        L_0x008a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsPresenter.buildOffenderTypeTagMap():void");
    }

    private final void checkComplaintFeedbackAnalyticsEvent(boolean z) {
        int i = (this.isRobocallTagValue != null ? 1 : 0) + 0 + (!Text.isBlank(this.categoryTagSelected) ? 1 : 0);
        if (z && i >= 1) {
            Timber.m37d("Complaint feedback analytics tracking being forced.", new Object[0]);
            trackComplaintFeedbackAnalyticsEvent(this.isRobocallTagValue, this.categoryTagSelected);
        } else if (i >= 2) {
            Timber.m37d("Complaint feedback analytics data updated and is now ready to track.", new Object[0]);
            trackComplaintFeedbackAnalyticsEvent(this.isRobocallTagValue, this.categoryTagSelected);
        } else {
            Timber.m37d("Complaint feedback analytics data updated but is not ready to track.", new Object[0]);
        }
    }

    private final void configureQuestionnaires() {
        CallerDetailsContract.View view = this.view.get();
        if (view != null) {
            view.showYNQuestion(false);
            view.callDataCollectionVisibility(false);
            if (!isCallerUnknown()) {
                Caller caller = this.caller;
                if (caller == null) {
                    Intrinsics.throwNpe();
                }
                String number = caller.getNumber();
                Intrinsics.checkExpressionValueIsNotNull(number, "caller!!.number");
                if (!view.isQuestionnaireRecordedForNumber(number)) {
                    view.setYNQuestion();
                    if (!this.manager.shouldShowTagsAfterRoboCall()) {
                        buildOffenderTypeTagMap();
                        view.showCategoryTags();
                    }
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final OffenderUtil.OffenderTypeUi getCategoryFromTag(String str) {
        OffenderUtil.OffenderTypeUi offenderTypeUi;
        if (str == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        String lowerCase = str.toLowerCase();
        Intrinsics.checkExpressionValueIsNotNull(lowerCase, "(this as java.lang.String).toLowerCase()");
        switch (lowerCase.hashCode()) {
            case -1985378816:
                if (lowerCase.equals("nuisance")) {
                    offenderTypeUi = OffenderUtil.OffenderTypeUi.NUISANCE;
                    break;
                }
                offenderTypeUi = OffenderUtil.OffenderTypeUi.SCAM;
                break;
            case -891050150:
                if (lowerCase.equals("survey")) {
                    offenderTypeUi = OffenderUtil.OffenderTypeUi.SURVEY;
                    break;
                }
                offenderTypeUi = OffenderUtil.OffenderTypeUi.SCAM;
                break;
            case -210452739:
                if (lowerCase.equals("political")) {
                    offenderTypeUi = OffenderUtil.OffenderTypeUi.POLITICAL;
                    break;
                }
                offenderTypeUi = OffenderUtil.OffenderTypeUi.SCAM;
                break;
            case 3524220:
                if (lowerCase.equals("scam")) {
                    offenderTypeUi = OffenderUtil.OffenderTypeUi.SCAM;
                    break;
                }
                offenderTypeUi = OffenderUtil.OffenderTypeUi.SCAM;
                break;
            case 104040689:
                if (lowerCase.equals("account services")) {
                    offenderTypeUi = OffenderUtil.OffenderTypeUi.ACCOUNT_SERVICES;
                    break;
                }
                offenderTypeUi = OffenderUtil.OffenderTypeUi.SCAM;
                break;
            case 357302942:
                if (lowerCase.equals("prison/jail")) {
                    offenderTypeUi = OffenderUtil.OffenderTypeUi.PRISON;
                    break;
                }
                offenderTypeUi = OffenderUtil.OffenderTypeUi.SCAM;
                break;
            case 373425596:
                if (lowerCase.equals("telemarketing")) {
                    offenderTypeUi = OffenderUtil.OffenderTypeUi.TELEMARKETING;
                    break;
                }
                offenderTypeUi = OffenderUtil.OffenderTypeUi.SCAM;
                break;
            case 739065240:
                if (lowerCase.equals("charity")) {
                    offenderTypeUi = OffenderUtil.OffenderTypeUi.CHARITY;
                    break;
                }
                offenderTypeUi = OffenderUtil.OffenderTypeUi.SCAM;
                break;
            default:
                offenderTypeUi = OffenderUtil.OffenderTypeUi.SCAM;
                break;
        }
        return offenderTypeUi;
    }

    private final void onRoboCallAnswer() {
        checkComplaintFeedbackAnalyticsEvent(false);
        CallerDetailsContract.View view = this.view.get();
        if (view != null) {
            view.collapseRoboCallBanner();
            if (this.manager.shouldShowTagsAfterRoboCall()) {
                buildOffenderTypeTagMap();
                view.showCategoryTags();
            }
        }
    }

    private final void setButtonSelected(String str, boolean z) {
        Caller caller;
        CallerDetailsContract.View view = this.view.get();
        if (view != null) {
            view.selectButtonWithTitle(str);
            if (z && (caller = this.caller) != null) {
                if (caller.getNumber() != null) {
                    String number = caller.getNumber();
                    Intrinsics.checkExpressionValueIsNotNull(number, "it.number");
                    view.storeQuestionnaireResponse(number, str);
                }
                view.collapseCategoryTags();
                if (this.manager.shouldShowThankYouAfterReporting()) {
                    view.showThankYouText();
                }
                this.categoryTagSelected = str;
                checkComplaintFeedbackAnalyticsEvent(false);
            }
        }
    }

    private final void shouldShowReportMessage() {
        if (PreferenceUtil.getShowReportSubmittedMessage()) {
            CallerDetailsContract.View view = this.view.get();
            if (view != null) {
                view.showReportSubmittedMessage(PreferenceUtil.getIsReportSubmittedSuccessfully());
            }
            PreferenceUtil.putShowReportSubmittedMessage(false);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003e, code lost:
        if (r8 != null) goto L_0x0047;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void trackComplaintFeedbackAnalyticsEvent(java.lang.Boolean r8, java.lang.String r9) {
        /*
            r7 = this;
            r0 = r8
            if (r0 == 0) goto L_0x0018
            com.privacystar.core.service.analytics.AnalyticsManager r0 = com.privacystar.core.service.analytics.AnalyticsManager.INSTANCE
            com.privacystar.core.service.analytics.Event$NumberDetailsRoboSurveyClick r1 = com.privacystar.core.service.analytics.Event.NumberDetailsRoboSurveyClick.INSTANCE
            com.privacystar.core.service.analytics.Event r1 = (com.privacystar.core.service.analytics.Event) r1
            r0.fire(r1)
            r0 = r8
            boolean r0 = r0.booleanValue()
            r10 = r0
            goto L_0x001a
        L_0x0018:
            r0 = 0
            r10 = r0
        L_0x001a:
            r0 = r9
            if (r0 == 0) goto L_0x002a
            com.privacystar.core.service.analytics.AnalyticsManager r0 = com.privacystar.core.service.analytics.AnalyticsManager.INSTANCE
            com.privacystar.core.service.analytics.Event$NumberDetailsCategorySurveyClick r1 = com.privacystar.core.service.analytics.Event.NumberDetailsCategorySurveyClick.INSTANCE
            com.privacystar.core.service.analytics.Event r1 = (com.privacystar.core.service.analytics.Event) r1
            r0.fire(r1)
        L_0x002a:
            com.privacystar.core.service.analytics.AnalyticsManager r0 = com.privacystar.core.service.analytics.AnalyticsManager.INSTANCE
            r11 = r0
            r0 = r7
            com.privacystar.core.data.call.caller.Caller r0 = r0.caller
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0044
            r0 = r8
            java.lang.String r0 = r0.getNumber()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0044
            goto L_0x0047
        L_0x0044:
            java.lang.String r0 = ""
            r8 = r0
        L_0x0047:
            r0 = r9
            if (r0 != 0) goto L_0x004e
            kotlin.jvm.internal.Intrinsics.throwNpe()
        L_0x004e:
            r0 = r11
            com.privacystar.core.service.analytics.Event$ComplaintFeedbackEvent r1 = new com.privacystar.core.service.analytics.Event$ComplaintFeedbackEvent
            r2 = r1
            r3 = r8
            r4 = r10
            r5 = r9
            r2.<init>(r3, r4, r5)
            com.privacystar.core.service.analytics.Event r1 = (com.privacystar.core.service.analytics.Event) r1
            r0.fire(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsPresenter.trackComplaintFeedbackAnalyticsEvent(java.lang.Boolean, java.lang.String):void");
    }

    public final void afterTagButtonsAdded() {
        Caller caller = this.caller;
        if (caller != null && caller.canShowOffenderData()) {
            autoSelectButton();
        }
    }

    public final boolean callerIsApproved() {
        boolean z;
        if (this.caller == null) {
            Timber.m25w("Checking if caller is approved but caller is null.", new Object[0]);
            return false;
        }
        CallerDetailsContract.View view = this.view.get();
        if (view != null) {
            Caller caller = this.caller;
            if (caller == null) {
                Intrinsics.throwNpe();
            }
            z = view.isCallerApproved(caller);
        } else {
            z = false;
        }
        Timber.m28v("Caller is%s approved by list.", z ? "" : " not");
        return z;
    }

    public final boolean callerIsBlocked() {
        boolean z;
        boolean z2 = false;
        if (this.caller == null) {
            Timber.m25w("Checking if caller is blocked but caller is null.", new Object[0]);
            return false;
        }
        CallerDetailsContract.View view = this.view.get();
        if (view != null) {
            Caller caller = this.caller;
            if (caller == null) {
                Intrinsics.throwNpe();
            }
            z = view.isCallerBlocked(caller);
        } else {
            z = false;
        }
        Caller caller2 = this.caller;
        if (caller2 == null) {
            Intrinsics.throwNpe();
        }
        boolean isBlockedDueToType = caller2.isBlockedDueToType(false);
        Caller caller3 = this.caller;
        if (caller3 == null) {
            Intrinsics.throwNpe();
        }
        boolean z3 = caller3.isBlockedDueToUnknown() && LicenseFeatureRealm.isFeatureAvailable(Feature.UNKNOWN_BLOCKING);
        Timber.m28v("Caller is%s blocked by list.", z ? "" : " not");
        Timber.m28v("Caller is%s blocked by type.", isBlockedDueToType ? "" : " not");
        Timber.m28v("Caller is%s blocked as unknown.", z3 ? "" : " not");
        if (z || isBlockedDueToType || z3) {
            z2 = true;
        }
        return z2;
    }

    public final boolean isCallerInBlockList() {
        Caller caller = this.caller;
        return caller != null ? caller.inBlockList() : false;
    }

    public final boolean isCallerUnknown() {
        boolean z;
        if (this.caller != null) {
            Caller caller = this.caller;
            if (caller == null) {
                Intrinsics.throwNpe();
            }
            if (caller.isUnknownNumber()) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    public final void onActivityCreated() {
        CallerDetailsContract.View view = this.view.get();
        if (view != null) {
            view.populateRecycler(this.caller);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001f, code lost:
        if (r8 != null) goto L_0x0029;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onApproveButtonClicked() {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsPresenter.onApproveButtonClicked():void");
    }

    public final void onBlockButtonClicked() {
        Caller caller = this.caller;
        if (caller != null) {
            Timber.m37d("Block button clicked for [%s].", caller.getNumber());
            AnalyticsManager.INSTANCE.fire(Event.NumberDetailsBlock.INSTANCE);
            CallerDetailsContract.View view = this.view.get();
            if (view != null) {
                boolean isCallerBlocked = view.isCallerBlocked(caller);
                if (!isCallerBlocked && caller.isBlockedDueToType(false)) {
                    Timber.m28v("Cannot block due to category blocking override. Showing dialog.", new Object[0]);
                    String number = caller.getNumber();
                    Intrinsics.checkExpressionValueIsNotNull(number, "c.number");
                    view.showTypeBlockedMessage(number, this.manager.shouldShowInfoMessagesAsSnackbar(), caller.getOffenderCategoryId());
                } else if (!isCallerBlocked && caller.isBlockedDueToUnknown()) {
                    Timber.m28v("Cannot block due to unknown blocking override. Showing dialog.", new Object[0]);
                    view.showUnknownBlockedDialog(true);
                } else if (!view.isBlockingFeatureEnabled() && !view.couldBlockAsScam(caller)) {
                    view.launchSubscriptionFragment();
                } else if (!callerIsBlocked() && caller.isUnknownNumber() && !PreferenceUtil.getIsUnknownBlockingEnabled()) {
                    Timber.m28v("Cannot block as number is unknown. Showing dialog.", new Object[0]);
                    view.showUnknownBlockedDialog(false);
                } else if (callerIsApproved()) {
                    Timber.m37d("Can't add an approved number to block list. Showing switch dialog.", new Object[0]);
                    NumberListType numberListType = NumberListType.BLOCK;
                    String number2 = caller.getNumber();
                    Intrinsics.checkExpressionValueIsNotNull(number2, "c.number");
                    view.showBlockApproveSwitchDialog(numberListType, number2, this.manager.shouldShowInfoMessagesAsSnackbar());
                } else {
                    boolean callerIsBlocked = callerIsBlocked();
                    if (!callerIsBlocked) {
                        String number3 = caller.getNumber();
                        Intrinsics.checkExpressionValueIsNotNull(number3, "c.number");
                        view.blockNumber(number3);
                        view.showNumberBlockedMessage(this.manager.shouldShowInfoMessagesAsSnackbar());
                    } else if (this.manager.shouldShowInfoMessagesAsSnackbar()) {
                        String number4 = caller.getNumber();
                        Intrinsics.checkExpressionValueIsNotNull(number4, "c.number");
                        view.unblockEntryBanner(number4);
                    } else {
                        String number5 = caller.getNumber();
                        Intrinsics.checkExpressionValueIsNotNull(number5, "c.number");
                        view.unBlockNumber(number5);
                    }
                    Timber.m37d("Block list button clicked, block status was %sblocked.", callerIsBlocked ? "" : "un");
                }
            }
        }
    }

    public final void onButtonBackgroundSelected(@NotNull String title) {
        Intrinsics.checkParameterIsNotNull(title, "title");
        this.categoryTagSelected = title;
    }

    public final void onButtonSelectedByUser(@NotNull String type) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        setButtonSelected(type, true);
    }

    public final void onCallTypedTitleClicked(@NotNull String title) {
        Intrinsics.checkParameterIsNotNull(title, "title");
        Timber.m28v("Selected %s type for call", title);
        if (this.manager.shouldShowConfirmationForReport()) {
            CallerDetailsContract.View view = this.view.get();
            if (view != null) {
                view.showReportConfirmationDialog(title);
                return;
            }
            return;
        }
        onButtonSelectedByUser(title);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004e, code lost:
        if (r7 != null) goto L_0x0057;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001b, code lost:
        if (r5 != null) goto L_0x0024;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onContactButtonClicked() {
        /*
            r4 = this;
            java.lang.String r0 = ""
            r5 = r0
            com.privacystar.core.data.model.types.Feature r0 = com.privacystar.core.data.model.types.Feature.MANUAL_CID_LOOKUP
            boolean r0 = com.privacystar.core.data.model.helper.LicenseFeatureRealm.isFeatureAvailable(r0)
            if (r0 == 0) goto L_0x0024
            r0 = r4
            com.privacystar.core.data.call.caller.Caller r0 = r0.caller
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0021
            r0 = r5
            java.lang.String r0 = r0.getDisplayName()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0021
            goto L_0x0024
        L_0x0021:
            java.lang.String r0 = ""
            r5 = r0
        L_0x0024:
            com.privacystar.core.service.analytics.AnalyticsManager r0 = com.privacystar.core.service.analytics.AnalyticsManager.INSTANCE
            com.privacystar.core.service.analytics.Event$NumberDetailsAddContact r1 = com.privacystar.core.service.analytics.Event.NumberDetailsAddContact.INSTANCE
            com.privacystar.core.service.analytics.Event r1 = (com.privacystar.core.service.analytics.Event) r1
            r0.fire(r1)
            r0 = r4
            java.lang.ref.WeakReference<com.privacystar.core.ui.detail_view.caller_details.CallerDetailsContract$View> r0 = r0.view
            java.lang.Object r0 = r0.get()
            com.privacystar.core.ui.detail_view.caller_details.CallerDetailsContract$View r0 = (com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x005f
            r0 = r4
            com.privacystar.core.data.call.caller.Caller r0 = r0.caller
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0054
            r0 = r7
            java.lang.String r0 = r0.getDisplayNumber()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0054
            goto L_0x0057
        L_0x0054:
            java.lang.String r0 = ""
            r7 = r0
        L_0x0057:
            r0 = r6
            r1 = r5
            r2 = r7
            r0.openAddContactScreen(r1, r2)
        L_0x005f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsPresenter.onContactButtonClicked():void");
    }

    public final void onCreateView(@Nullable Parcelable parcelable) {
        if (parcelable != null) {
            this.caller = (Caller) parcelable;
            Caller caller = this.caller;
            if (caller != null) {
                caller.populateLocally();
                caller.addObserver(this.callerObserver);
            }
        }
        Timber.m37d("setting menu options", new Object[0]);
        if (this.manager.shouldUseContactButton()) {
            CallerDetailsContract.View view = this.view.get();
            if (view != null) {
                view.addContactListener();
            }
        } else {
            if (this.caller != null) {
                Caller caller2 = this.caller;
                if (caller2 == null) {
                    Intrinsics.throwNpe();
                }
                if (!caller2.isUnknownNumber()) {
                    CallerDetailsContract.View view2 = this.view.get();
                    if (view2 != null) {
                        view2.configureContextMenu();
                    }
                }
            }
            Timber.m28v("Not inflating an options menu because caller is Unknown.", new Object[0]);
        }
        Timber.m37d("Generated menu", new Object[0]);
    }

    public final void onDestroyView() {
        checkComplaintFeedbackAnalyticsEvent(true);
        Caller caller = this.caller;
        if (caller != null) {
            caller.deleteObserver(this.callerObserver);
        }
        CallerDetailsContract.View view = this.view.get();
        if (view != null) {
            view.setToolbarVisibility(true);
        }
    }

    public final void onFabClicked() {
    }

    public final void onHeaderClicked(boolean z) {
        CallerDetailsContract.View view;
        Timber.m28v("Header title clicked.", new Object[0]);
        Caller caller = this.caller;
        if (caller != null && !LicenseFeatureRealm.isFeatureAvailable(Feature.MANUAL_CID_LOOKUP) && z && !caller.getIsInContactsSynchronous() && !caller.isScammer() && !caller.isUnknownNumber() && (view = this.view.get()) != null) {
            view.launchSubscriptionFragment();
        }
    }

    public final void onResume() {
        CallerDetailsContract.View view = this.view.get();
        if (view != null) {
            Caller caller = this.caller;
            boolean z = true;
            if (caller != null ? caller.getIsInContactsSynchronous() : true) {
                z = false;
            }
            view.setAddContactMenuVisible(z);
            view.setupBlockButton(this.caller);
            view.setupApproveButton();
            shouldShowReportMessage();
        }
    }

    public final void onRoboCallAnswerNo() {
        this.isRobocallTagValue = false;
        onRoboCallAnswer();
    }

    public final void onRoboCallAnswerYes() {
        this.isRobocallTagValue = true;
        onRoboCallAnswer();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
        if (r5 != null) goto L_0x0027;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onSendCallClicked() {
        /*
            r3 = this;
            r0 = r3
            java.lang.ref.WeakReference<com.privacystar.core.ui.detail_view.caller_details.CallerDetailsContract$View> r0 = r0.view
            java.lang.Object r0 = r0.get()
            com.privacystar.core.ui.detail_view.caller_details.CallerDetailsContract$View r0 = (com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x002e
            r0 = r3
            com.privacystar.core.data.call.caller.Caller r0 = r0.caller
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0024
            r0 = r5
            java.lang.String r0 = r0.getNumber()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0024
            goto L_0x0027
        L_0x0024:
            java.lang.String r0 = ""
            r5 = r0
        L_0x0027:
            r0 = r4
            r1 = r5
            r0.openSendCallScreen(r1)
        L_0x002e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsPresenter.onSendCallClicked():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
        if (r5 != null) goto L_0x0027;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onSendMessageClicked() {
        /*
            r3 = this;
            r0 = r3
            java.lang.ref.WeakReference<com.privacystar.core.ui.detail_view.caller_details.CallerDetailsContract$View> r0 = r0.view
            java.lang.Object r0 = r0.get()
            com.privacystar.core.ui.detail_view.caller_details.CallerDetailsContract$View r0 = (com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x002e
            r0 = r3
            com.privacystar.core.data.call.caller.Caller r0 = r0.caller
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0024
            r0 = r5
            java.lang.String r0 = r0.getNumber()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0024
            goto L_0x0027
        L_0x0024:
            java.lang.String r0 = ""
            r5 = r0
        L_0x0027:
            r0 = r4
            r1 = r5
            r0.openSendMessageScreen(r1)
        L_0x002e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsPresenter.onSendMessageClicked():void");
    }

    public final void onStartReportClicked() {
        CallerDetailsContract.View view;
        if (this.caller != null && (view = this.view.get()) != null) {
            Caller caller = this.caller;
            if (caller == null) {
                Intrinsics.throwNpe();
            }
            view.openReportScreen(caller);
        }
    }

    public final void onViewCreated() {
        CallerDetailsContract.View view = this.view.get();
        if (view != null) {
            view.setupViewData(this.caller);
            this.categoryTagSelected = "";
            this.isRobocallTagValue = null;
            view.enableFAB();
            view.setToolbarVisibility(false);
            configureQuestionnaires();
            view.showHideFieldsIfUnknownNumber(isCallerUnknown());
        }
        AnalyticsManager.INSTANCE.fire(Event.NumberDetailsView.INSTANCE);
    }
}
