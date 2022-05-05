package com.privacystar.core.p011ui.widgets;

import com.privacystar.core.data.call.call_details.CallDetails;
import com.privacystar.core.data.call.caller.Caller;
/* renamed from: com.privacystar.core.ui.widgets.ILogContextDialogFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/ILogContextDialogFragment.class */
public interface ILogContextDialogFragment {
    void launchAddContact(Caller caller);

    void launchBlockList();

    void launchCallerDetails(Caller caller);

    void launchComplaintFlow(Caller caller);

    void launchReport(CallDetails callDetails);

    void launchSendCall(Caller caller);

    void launchSendMessage(Caller caller);

    void triggerContentRefresh(boolean z);
}
