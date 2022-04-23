package com.callapp.contacts.action.shared;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.location.Address;
import android.location.Location;
import android.net.Uri;
import com.callapp.common.model.message.OutgoingMessage;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.LocationManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.SmsUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.util.serializer.string.Parser;
import com.callapp.contacts.util.serializer.string.Serializer;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/shared/ShareLocationAction.class */
public class ShareLocationAction extends SharedAction {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a() {
        FeedbackManager.get().a(Activities.getString(2131886509));
    }

    private boolean a(final Context context, final ContactData contactData, final String str) {
        if (!HttpUtils.a()) {
            AnalyticsManager.get().a(Constants.CONTACT_DETAILS, "Didn't share location", "No internet");
            FeedbackManager.a(context);
            return false;
        }
        String j = StringUtils.j(contactData.getNameOrNumber());
        LocationManager locationManager = LocationManager.get();
        boolean a2 = LocationManager.a();
        locationManager.a(new LocationManager.LocationResult() { // from class: com.callapp.contacts.action.shared.ShareLocationAction.1
            @Override // com.callapp.contacts.manager.LocationManager.LocationResult
            public final void a(Location location) {
                String str2;
                Address a3 = LocationManager.a(location);
                if (a3 == null) {
                    String a4 = Activities.a(2131886187, Activities.getString(2131886188));
                    CLog.a(ShareLocationAction.class, a4);
                    FeedbackManager.get().a(a4, (Integer) null);
                    return;
                }
                String a5 = LocationManager.a(a3);
                if (StringUtils.b((CharSequence) a5)) {
                    str2 = "Ageo:0,0?q=".concat(String.valueOf(a5));
                } else {
                    str2 = null;
                    if (a3.hasLatitude()) {
                        str2 = null;
                        if (a3.hasLongitude()) {
                            str2 = "Lgeo:" + a3.getLatitude() + "," + a3.getLongitude();
                        }
                    }
                }
                Serializer serializer = new Serializer();
                serializer.a((CharSequence) str);
                serializer.a((CharSequence) str2);
                final ShareLocationAction shareLocationAction = ShareLocationAction.this;
                Context context2 = context;
                ContactData contactData2 = contactData;
                final String serializer2 = serializer.toString();
                final String key = ShareLocationAction.this.getKey();
                SmsUtils.a(context2, contactData2.getPhonesList(), new SmsUtils.SelectNumberListener() { // from class: com.callapp.contacts.action.shared.SharedAction.2
                    @Override // com.callapp.contacts.util.SmsUtils.SelectNumberListener
                    public final void a(Phone phone) {
                        SharedAction.this.b(new OutgoingMessage().setTo(phone.a()).setType(key).setBody(serializer2));
                    }
                });
            }
        });
        if (!a2) {
            PopupManager.get().a(context, new DialogSimpleMessage(Activities.a(2131886187, Activities.getString(2131886188)), Activities.a(2131886186, j), Activities.getString(2131886190), Activities.getString(2131886505), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.action.shared.ShareLocationAction.2
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public void onClickListener(Activity activity) {
                    Intent intent = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
                    intent.addFlags(Activities.getIntentFlagForNewDocument());
                    Activities.a(CallAppApplication.get().getApplicationContext(), intent);
                }
            }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.action.shared.ShareLocationAction.3
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public void onClickListener(Activity activity) {
                }
            }));
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Context context, ContactData contactData) {
        a(context, contactData, "REQUEST");
    }

    @Override // com.callapp.contacts.action.shared.SharedAction
    protected final String a(OutgoingMessage outgoingMessage) {
        String str;
        if (StringUtils.a((CharSequence) outgoingMessage.getBody())) {
            return null;
        }
        Parser parser = new Parser(outgoingMessage.getBody());
        if (parser.f16285c < parser.f16284b.length()) {
            int indexOf = parser.f16284b.indexOf(parser.f16283a, parser.f16285c);
            if (indexOf < 0) {
                parser.a();
            } else {
                parser.f16284b.substring(parser.f16285c, indexOf);
                parser.f16285c = indexOf + parser.f16283a.length();
            }
        }
        String a2 = parser.a();
        if (a2.startsWith("Ageo:0,0?q=")) {
            String replace = a2.replace("Ageo:0,0?q=", "");
            str = "q=" + Uri.encode(replace);
        } else {
            str = a2;
            if (a2.startsWith("Lgeo:")) {
                String replace2 = a2.replace("Lgeo:", "");
                str = "l=" + Uri.encode(replace2);
            }
        }
        return Activities.a(2131886189, HttpUtils.a("http://maps.google.com/?".concat(String.valueOf(str))), Activities.a(2131887724, HttpUtils.getCallAppDomain()));
    }

    @Override // com.callapp.contacts.action.shared.SharedAction, com.callapp.contacts.action.Action
    public final boolean a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        return contextType == Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET && contactData != null && contactData.isContactInDevice();
    }

    @Override // com.callapp.contacts.action.Action
    public final void b(final Context context, final ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().a(Constants.CONTACT_LIST, "Share location action", Constants.CLICK);
        PermissionManager.get();
        if (PermissionManager.a("android.permission.ACCESS_FINE_LOCATION")) {
            PermissionManager.get();
            if (PermissionManager.a("android.permission.ACCESS_COARSE_LOCATION")) {
                a(context, contactData, "REQUEST");
                return;
            }
        }
        if (context instanceof BaseActivity) {
            BaseActivity baseActivity = (BaseActivity) context;
            baseActivity.getPermissionManager().a(baseActivity, new Runnable() { // from class: com.callapp.contacts.action.shared._$$Lambda$ShareLocationAction$myt3qVg6iq7v_ce1mxpEDc3RNYU
                @Override // java.lang.Runnable
                public final void run() {
                    ShareLocationAction.this.b(context, contactData);
                }
            }, _$$Lambda$ShareLocationAction$OcIxySKO4zAoTc0hvrbMeTKLli4.INSTANCE, PermissionManager.PermissionGroup.LOCATION);
        }
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return Activities.getString(2131887116);
    }
}
