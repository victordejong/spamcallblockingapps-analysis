package com.callapp.contacts.popup;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.callapp.contacts.activity.setup.SetupWizardActivity;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.twitter.TwitterHelper;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.manager.popup.PopupDoneListener;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.http.HttpUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/FollowCallAppPopup.class */
public class FollowCallAppPopup extends DialogSimpleMessage {

    /* renamed from: a */
    private final RemoteAccountHelper f26878a;

    /* renamed from: b */
    private PopupDoneListener f26879b;

    /* renamed from: c */
    private int f26880c;

    public FollowCallAppPopup(RemoteAccountHelper remoteAccountHelper) {
        this(remoteAccountHelper, null);
    }

    public FollowCallAppPopup(RemoteAccountHelper remoteAccountHelper, PopupDoneListener popupDoneListener) {
        this.f26878a = remoteAccountHelper;
        this.f26879b = popupDoneListener;
        int apiConstantNetworkId = remoteAccountHelper.getApiConstantNetworkId();
        this.f26880c = apiConstantNetworkId;
        if (apiConstantNetworkId == 4 || apiConstantNetworkId == 7 || apiConstantNetworkId == 9 || apiConstantNetworkId == 10) {
            return;
        }
        throw new IllegalAccessError("Dialog can only handle Twitter, Instagram and Pinterest");
    }

    private void setupOnlyFollow(final Activity activity) {
        setMessage(Activities.getString(2131886915));
        setPositiveListener(new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.popup.FollowCallAppPopup.1
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity2) {
                new Task() { // from class: com.callapp.contacts.popup.FollowCallAppPopup.1.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        if (!FollowCallAppPopup.this.f26878a.mo29097i()) {
                            AnalyticsManager analyticsManager = AnalyticsManager.get();
                            analyticsManager.m28450a(Constants.FAILED, "Failed to follow " + FollowCallAppPopup.this.f26878a.getName());
                        }
                        if (activity instanceof SetupWizardActivity) {
                            AnalyticsManager analyticsManager2 = AnalyticsManager.get();
                            analyticsManager2.m28450a(Constants.REGISTRATION, "Agreed to follow " + FollowCallAppPopup.this.f26878a.getName());
                        }
                    }
                }.execute();
                if (FollowCallAppPopup.this.f26879b != null) {
                    FollowCallAppPopup.this.f26879b.popupDone(true);
                }
            }
        });
        setNegativeListener(new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.popup.FollowCallAppPopup.2
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity2) {
                if (FollowCallAppPopup.this.f26879b != null) {
                    FollowCallAppPopup.this.f26879b.popupDone(false);
                }
            }
        });
    }

    private void setupPostAndFollow(final Activity activity) {
        setMessage(Activities.getString(2131888100));
        setPositiveListener(new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.popup.FollowCallAppPopup.3
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity2) {
                new Task() { // from class: com.callapp.contacts.popup.FollowCallAppPopup.3.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        boolean z = activity instanceof SetupWizardActivity;
                        boolean z2 = false;
                        if (FollowCallAppPopup.this.f26880c == 4) {
                            z2 = TwitterHelper.get().m29129n(Activities.m27697a(2131888101, HttpUtils.getCallAppDomain()));
                        }
                        if (z) {
                            if (z2) {
                                AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Posted to " + FollowCallAppPopup.this.f26878a.getName());
                            } else {
                                AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Failed to posted to " + FollowCallAppPopup.this.f26878a.getName());
                            }
                        }
                        if (!FollowCallAppPopup.this.f26878a.mo29097i()) {
                            AnalyticsManager.get().m28449a(Constants.FAILED, "Failed to follow", FollowCallAppPopup.this.f26878a.getName());
                        }
                        if (z) {
                            AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Agreed to follow " + FollowCallAppPopup.this.f26878a.getName());
                        }
                    }
                }.execute();
                if (FollowCallAppPopup.this.f26879b != null) {
                    FollowCallAppPopup.this.f26879b.popupDone(true);
                }
            }
        });
        setNegativeListener(new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.popup.FollowCallAppPopup.4
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity2) {
                if (FollowCallAppPopup.this.f26879b != null) {
                    FollowCallAppPopup.this.f26879b.popupDone(false);
                }
            }
        });
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimpleMessage
    public String getNegativeBtnText() {
        return Activities.getString(2131886505);
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimpleMessage, com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.withInset;
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimpleMessage
    public String getPositiveBtnText() {
        return Activities.getString(2131887338);
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimpleMessage
    public String getTitle() {
        return Activities.m27697a(2131886914, this.f26878a.getName());
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimpleMessage, com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        setCancelable(false);
        if (this.f26878a.getApiConstantNetworkId() == 4) {
            setupPostAndFollow(getActivity());
        } else {
            setupOnlyFollow(getActivity());
        }
        return super.ovViewCreated(layoutInflater, viewGroup);
    }
}
