package com.privacystar.core.p011ui.util;

import android.content.Context;
import android.graphics.PorterDuff;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.activity_log.LogExpandedAction;
import com.privacystar.core.data.call.call_details.CallDetails;
import com.privacystar.core.data.call.call_details.CallEvent;
import com.privacystar.core.data.call.call_event.CallHistoryHelper;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.model.helper.ApprovedListRealm;
import com.privacystar.core.data.model.helper.LicenseFeatureRealm;
import com.privacystar.core.data.model.types.Feature;
import com.privacystar.core.p011ui.home.HomeManagerImpl;
import com.privacystar.core.p011ui.util.caller.CallerInfoLineCreator;
import com.privacystar.core.p011ui.widgets.caller_icon.CallerIconView;
import com.privacystar.core.util.BuildUtil;
import com.privacystar.core.util.FeatureUtil;
import com.privacystar.core.util.FormatUtil;
import io.realm.Realm;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.util.LogItemBinder */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/util/LogItemBinder.class */
public class LogItemBinder {
    @BindView(C1566R.C1569id.log_item_time_elapsed)
    @Nullable
    TextView callTime;
    @BindView(C1566R.C1569id.log_item_caller_category)
    @Nullable
    TextView callerCategory;
    @BindView(C1566R.C1569id.log_item_caller_icon)
    @Nullable
    CallerIconView callerIcon;
    private Context context;
    @BindView(C1566R.C1569id.log_item_expanded_add_contact_ll)
    @Nullable
    LinearLayout expandedActionAddContact;
    @BindView(C1566R.C1569id.log_item_expanded_approve_ll)
    @Nullable
    LinearLayout expandedActionApprove;
    @BindView(C1566R.C1569id.log_item_expanded_block_ll)
    @Nullable
    LinearLayout expandedActionBlock;
    @BindView(C1566R.C1569id.log_item_expanded_call_ll)
    @Nullable
    LinearLayout expandedActionCall;
    @BindView(C1566R.C1569id.log_item_expanded_details_ll)
    @Nullable
    LinearLayout expandedActionDetails;
    @BindView(C1566R.C1569id.log_item_expanded_message_ll)
    @Nullable
    LinearLayout expandedActionMessage;
    @BindView(C1566R.C1569id.log_item_expanded_report_ll)
    @Nullable
    LinearLayout expandedActionReport;
    @BindView(C1566R.C1569id.log_item_expanded_unapprove_ll)
    @Nullable
    LinearLayout expandedActionUnapprove;
    @BindView(C1566R.C1569id.log_item_expanded_unblock_ll)
    @Nullable
    LinearLayout expandedActionUnblock;
    @BindView(C1566R.C1569id.log_item_expanded_ll)
    @Nullable
    LinearLayout expandedView;
    @BindView(C1566R.C1569id.log_item_call_icon_1)
    @Nullable
    ImageView recentCall1;
    @BindView(C1566R.C1569id.log_item_call_icon_2)
    @Nullable
    ImageView recentCall2;
    @BindView(C1566R.C1569id.log_item_call_icon_3)
    @Nullable
    ImageView recentCall3;
    @BindView(C1566R.C1569id.log_item_root_theme)
    @Nullable
    LinearLayout rootViewTheme;
    @BindView(C1566R.C1569id.log_item_name)
    @Nullable
    TextView title;
    String unfindableLogText = "%s view could not be found so it was not bound. UI might be incorrectly rendered.";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.privacystar.core.ui.util.LogItemBinder$1 */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/util/LogItemBinder$1.class */
    public static /* synthetic */ class C16521 {

        /* renamed from: $SwitchMap$com$privacystar$core$data$call$call_event$CallHistoryHelper$CallDirection */
        static final /* synthetic */ int[] f292x242913a = new int[CallHistoryHelper.CallDirection.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            try {
                f292x242913a[CallHistoryHelper.CallDirection.INCOMING_MISSED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f292x242913a[CallHistoryHelper.CallDirection.INCOMING_RECEIVED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f292x242913a[CallHistoryHelper.CallDirection.OUTGOING_MISSED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f292x242913a[CallHistoryHelper.CallDirection.OUTGOING_RECEIVED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void bindDirectionIcon(ImageView imageView, int i, CallDetails callDetails) {
        int i2;
        int i3;
        if (callDetails.getCallEvents() != null) {
            if (imageView == null) {
                Timber.m25w(this.unfindableLogText, "Call count");
                Timber.m25w("Direction icon was not found so could not be bound. UI might be incorrectly rendered.", new Object[0]);
            } else if (i < callDetails.getCallEvents().size()) {
                CallEvent callEvent = callDetails.getCallEvents().get(i);
                if (callEvent.wasBlocked()) {
                    i2 = C1566R.C1568drawable.ic_block_black_24dp;
                    imageView.setColorFilter(PSApplication.context().getResources().getColor(C1566R.color.ps3_red_300), PorterDuff.Mode.SRC_ATOP);
                } else if (callEvent.getType() == CallEvent.EventType.SMS) {
                    i2 = 2131231039;
                    if (HomeManagerImpl.INSTANCE.nonBlockedCallHistoryIsColored()) {
                        imageView.setColorFilter(PSApplication.context().getResources().getColor(C1566R.color.ps3_grey_400), PorterDuff.Mode.SRC_ATOP);
                        i2 = 2131231039;
                    }
                } else {
                    int i4 = C16521.f292x242913a[callEvent.getDirection().ordinal()];
                    int i5 = C1566R.color.ps3_green_300;
                    switch (i4) {
                        case 1:
                            i3 = C1566R.C1568drawable.ic_call_received_missed;
                            i5 = C1566R.color.ps3_red_300;
                            break;
                        case 2:
                            i3 = C1566R.C1568drawable.ic_call_received;
                            break;
                        case 3:
                            i3 = C1566R.C1568drawable.ic_call_made_missed;
                            i5 = C1566R.color.ps3_red_300;
                            break;
                        case 4:
                            i3 = C1566R.C1568drawable.ic_call_made;
                            break;
                        default:
                            Timber.m28v("LogItem direction is undefined, drawing as received/incoming.", new Object[0]);
                            i3 = C1566R.C1568drawable.ic_call_received;
                            break;
                    }
                    i2 = i3;
                    if (HomeManagerImpl.INSTANCE.nonBlockedCallHistoryIsColored()) {
                        imageView.setColorFilter(PSApplication.context().getResources().getColor(i5), PorterDuff.Mode.SRC_ATOP);
                        i2 = i3;
                    }
                }
                imageView.setImageResource(i2);
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(8);
            }
        }
    }

    private void bindLogItemBody(Caller caller) {
        CallerInfoLineCreator.CallerInfoLines callerInfo = CallerInfoLineCreator.INSTANCE.getCallerInfo(caller, this.context, true);
        if (callerInfo.getLine1().equals("")) {
            if (this.title != null) {
                this.title.setText(callerInfo.getLine2());
                if (this.callerCategory != null) {
                    this.callerCategory.setVisibility(8);
                }
            }
        } else if (!callerInfo.getLine2().equals("")) {
            if (this.title != null) {
                this.title.setText(callerInfo.getLine1());
            }
            if (this.callerCategory != null) {
                this.callerCategory.setText(callerInfo.getLine2());
                this.callerCategory.setVisibility(0);
            }
        } else if (this.title != null) {
            this.title.setText(callerInfo.getLine1());
            if (this.callerCategory != null) {
                this.callerCategory.setVisibility(8);
            }
        }
    }

    private void bindLogItemExpansion(Context context, CallDetails callDetails, View.OnClickListener onClickListener, boolean z, Realm realm) {
        boolean z2 = callDetails.getCaller().inBlockList() || callDetails.getCaller().isBlockedDueToType(true) || (callDetails.getCaller().isBlockedDueToUnknown() && LicenseFeatureRealm.isFeatureAvailable(Feature.UNKNOWN_BLOCKING));
        boolean isCallerApproved = ApprovedListRealm.isCallerApproved(realm, callDetails.getCaller());
        boolean isInContacts = callDetails.getCaller().getIsInContacts();
        boolean couldBlockGeneral = FeatureUtil.couldBlockGeneral(realm, callDetails.getCaller());
        boolean z3 = !BuildUtil.INSTANCE.shouldVariantInstanceShowFullUx(context, realm);
        boolean isUnknownNumber = callDetails.getCaller().isUnknownNumber();
        int i = isUnknownNumber ? 8 : 0;
        if (this.expandedActionBlock != null) {
            this.expandedActionBlock.setVisibility(z2 || isUnknownNumber || ((isCallerApproved && couldBlockGeneral) || z3) ? 8 : 0);
        } else {
            Timber.m25w(this.unfindableLogText, "Expanded block action");
        }
        if (this.expandedActionUnblock != null) {
            this.expandedActionUnblock.setVisibility(!z2 || isUnknownNumber || ((isCallerApproved && couldBlockGeneral) || z3) ? 8 : 0);
        } else {
            Timber.m25w(this.unfindableLogText, "Expanded unblock action");
        }
        if (this.expandedActionApprove != null) {
            this.expandedActionApprove.setVisibility((isCallerApproved || isUnknownNumber || z3) ? 8 : 0);
        } else {
            Timber.m25w(this.unfindableLogText, "Expanded approve action");
        }
        if (this.expandedActionUnapprove != null) {
            this.expandedActionUnapprove.setVisibility((!isCallerApproved || isUnknownNumber || z3) ? 8 : 0);
        } else {
            Timber.m25w(this.unfindableLogText, "Expanded unapprove action");
        }
        if (this.expandedActionAddContact != null) {
            this.expandedActionAddContact.setVisibility((isInContacts || isUnknownNumber) ? 8 : 0);
        } else {
            Timber.m25w(this.unfindableLogText, "Expanded add to contacts action");
        }
        if (this.expandedActionReport != null) {
            this.expandedActionReport.setVisibility(i);
        } else {
            Timber.m25w(this.unfindableLogText, "Expanded report action");
        }
        if (this.expandedActionMessage != null) {
            this.expandedActionMessage.setVisibility(i);
        } else {
            Timber.m25w(this.unfindableLogText, "Expanded send message action");
        }
        if (this.expandedActionCall != null) {
            LinearLayout linearLayout = this.expandedActionCall;
            int i2 = 8;
            if (!z) {
                i2 = isUnknownNumber ? 8 : 0;
            }
            linearLayout.setVisibility(i2);
        } else {
            Timber.m25w(this.unfindableLogText, "Expanded call number action");
        }
        if (onClickListener != null) {
            if (this.expandedActionBlock != null) {
                this.expandedActionBlock.setTag(LogExpandedAction.BLOCK);
                this.expandedActionBlock.setOnClickListener(onClickListener);
            } else {
                Timber.m25w(this.unfindableLogText, "Expanded block action");
            }
            if (this.expandedActionUnblock != null) {
                this.expandedActionUnblock.setTag(LogExpandedAction.UNBLOCK);
                this.expandedActionUnblock.setOnClickListener(onClickListener);
            } else {
                Timber.m25w(this.unfindableLogText, "Expanded unblock action");
            }
            if (this.expandedActionApprove != null) {
                this.expandedActionApprove.setTag(LogExpandedAction.APPROVE);
                this.expandedActionApprove.setOnClickListener(onClickListener);
            } else {
                Timber.m25w(this.unfindableLogText, "Expanded approve action");
            }
            if (this.expandedActionUnapprove != null) {
                this.expandedActionUnapprove.setTag(LogExpandedAction.UNAPPROVE);
                this.expandedActionUnapprove.setOnClickListener(onClickListener);
            } else {
                Timber.m25w(this.unfindableLogText, "Expanded unapprove action");
            }
            if (this.expandedActionReport != null) {
                this.expandedActionReport.setTag(LogExpandedAction.REPORT);
                this.expandedActionReport.setOnClickListener(onClickListener);
            }
            if (this.expandedActionAddContact != null) {
                this.expandedActionAddContact.setTag(LogExpandedAction.ADD_CONTACT);
                this.expandedActionAddContact.setOnClickListener(onClickListener);
            }
            if (this.expandedActionMessage != null) {
                this.expandedActionMessage.setTag(LogExpandedAction.MESSAGE);
                this.expandedActionMessage.setOnClickListener(onClickListener);
            }
            if (this.expandedActionCall != null) {
                this.expandedActionCall.setTag(LogExpandedAction.CALL);
                this.expandedActionCall.setOnClickListener(onClickListener);
            }
            if (this.expandedActionDetails != null) {
                this.expandedActionDetails.setTag(LogExpandedAction.DETAILS);
                this.expandedActionDetails.setOnClickListener(onClickListener);
            }
        }
    }

    private void bindLogItemHistory(Context context, CallDetails callDetails) {
        bindDirectionIcon(this.recentCall1, 0, callDetails);
        bindDirectionIcon(this.recentCall2, 1, callDetails);
        bindDirectionIcon(this.recentCall3, 2, callDetails);
        String timeElapsedString = FormatUtil.getTimeElapsedString(context, callDetails.getMostRecentEvent().getDate());
        if (this.callTime != null) {
            this.callTime.setText(timeElapsedString);
        }
    }

    private void bindLogItemIcon(Caller caller, boolean z, @NonNull Realm realm) {
        if (this.callerIcon != null) {
            this.callerIcon.setContent(caller, CallerIconView.CallerIconSize.REGULAR, z, realm);
        }
    }

    public void bindActivityLogItem(View view, CallDetails callDetails, View.OnClickListener onClickListener, boolean z, Context context, @NonNull Realm realm) {
        ButterKnife.bind(this, view);
        this.context = context;
        bindLogItemIcon(callDetails.getCaller(), true, realm);
        bindLogItemBody(callDetails.getCaller());
        bindLogItemExpansion(context, callDetails, onClickListener, z, realm);
        bindLogItemHistory(context, callDetails);
    }

    public void bindNumberListItem(View view, Caller caller, Context context, @NonNull Realm realm) {
        ButterKnife.bind(this, view);
        this.context = context;
        bindLogItemIcon(caller, false, realm);
        bindLogItemBody(caller);
    }
}
