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
    /* renamed from: a */
    public static /* synthetic */ void m31803a() {
        FeedbackManager.get().m28671a(Activities.getString(2131886509));
    }

    /* renamed from: a */
    private boolean m31802a(final Context context, final ContactData contactData, final String str) {
        if (!HttpUtils.m26985a()) {
            AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "Didn't share location", "No internet");
            FeedbackManager.m28675a(context);
            return false;
        }
        String m26020j = StringUtils.m26020j(contactData.getNameOrNumber());
        LocationManager locationManager = LocationManager.get();
        boolean m28653a = LocationManager.m28653a();
        locationManager.m28649a(new LocationManager.LocationResult() { // from class: com.callapp.contacts.action.shared.ShareLocationAction.1
            @Override // com.callapp.contacts.manager.LocationManager.LocationResult
            /* renamed from: a */
            public final void mo28644a(Location location) {
                String str2;
                Address m28650a = LocationManager.m28650a(location);
                if (m28650a == null) {
                    String m27697a = Activities.m27697a(2131886187, Activities.getString(2131886188));
                    CLog.m27611a(ShareLocationAction.class, m27697a);
                    FeedbackManager.get().m28669a(m27697a, (Integer) null);
                    return;
                }
                String m28651a = LocationManager.m28651a(m28650a);
                if (StringUtils.m26045b((CharSequence) m28651a)) {
                    str2 = "Ageo:0,0?q=".concat(String.valueOf(m28651a));
                } else {
                    str2 = null;
                    if (m28650a.hasLatitude()) {
                        str2 = null;
                        if (m28650a.hasLongitude()) {
                            str2 = "Lgeo:" + m28650a.getLatitude() + "," + m28650a.getLongitude();
                        }
                    }
                }
                Serializer serializer = new Serializer();
                serializer.m26913a((CharSequence) str);
                serializer.m26913a((CharSequence) str2);
                final ShareLocationAction shareLocationAction = ShareLocationAction.this;
                Context context2 = context;
                ContactData contactData2 = contactData;
                final String serializer2 = serializer.toString();
                final String key = ShareLocationAction.this.getKey();
                SmsUtils.m27394a(context2, contactData2.getPhonesList(), new SmsUtils.SelectNumberListener() { // from class: com.callapp.contacts.action.shared.SharedAction.2
                    @Override // com.callapp.contacts.util.SmsUtils.SelectNumberListener
                    /* renamed from: a */
                    public final void mo27390a(Phone phone) {
                        SharedAction.this.m31796b(new OutgoingMessage().setTo(phone.m26101a()).setType(key).setBody(serializer2));
                    }
                });
            }
        });
        if (!m28653a) {
            PopupManager.get().m28209a(context, new DialogSimpleMessage(Activities.m27697a(2131886187, Activities.getString(2131886188)), Activities.m27697a(2131886186, m26020j), Activities.getString(2131886190), Activities.getString(2131886505), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.action.shared.ShareLocationAction.2
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public void onClickListener(Activity activity) {
                    Intent intent = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
                    intent.addFlags(Activities.getIntentFlagForNewDocument());
                    Activities.m27685a(CallAppApplication.get().getApplicationContext(), intent);
                }
            }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.action.shared.ShareLocationAction.3
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public void onClickListener(Activity activity) {
                }
            }));
        }
        return m28653a;
    }

    /* renamed from: b */
    public /* synthetic */ void m31801b(Context context, ContactData contactData) {
        m31802a(context, contactData, "REQUEST");
    }

    @Override // com.callapp.contacts.action.shared.SharedAction
    /* renamed from: a */
    protected final String mo31799a(OutgoingMessage outgoingMessage) {
        String str;
        if (StringUtils.m26059a((CharSequence) outgoingMessage.getBody())) {
            return null;
        }
        Parser parser = new Parser(outgoingMessage.getBody());
        if (parser.f28370c < parser.f28369b.length()) {
            int indexOf = parser.f28369b.indexOf(parser.f28368a, parser.f28370c);
            if (indexOf < 0) {
                parser.m26921a();
            } else {
                parser.f28369b.substring(parser.f28370c, indexOf);
                parser.f28370c = indexOf + parser.f28368a.length();
            }
        }
        String m26921a = parser.m26921a();
        if (m26921a.startsWith("Ageo:0,0?q=")) {
            String replace = m26921a.replace("Ageo:0,0?q=", "");
            str = "q=" + Uri.encode(replace);
        } else {
            str = m26921a;
            if (m26921a.startsWith("Lgeo:")) {
                String replace2 = m26921a.replace("Lgeo:", "");
                str = "l=" + Uri.encode(replace2);
            }
        }
        return Activities.m27697a(2131886189, HttpUtils.m26979a("http://maps.google.com/?".concat(String.valueOf(str))), Activities.m27697a(2131887724, HttpUtils.getCallAppDomain()));
    }

    @Override // com.callapp.contacts.action.shared.SharedAction, com.callapp.contacts.action.Action
    /* renamed from: a */
    public final boolean mo31798a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        return contextType == Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET && contactData != null && contactData.isContactInDevice();
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: b */
    public final void mo31800b(final Context context, final ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Share location action", Constants.CLICK);
        PermissionManager.get();
        if (PermissionManager.m28253a("android.permission.ACCESS_FINE_LOCATION")) {
            PermissionManager.get();
            if (PermissionManager.m28253a("android.permission.ACCESS_COARSE_LOCATION")) {
                m31802a(context, contactData, "REQUEST");
                return;
            }
        }
        if (context instanceof BaseActivity) {
            BaseActivity baseActivity = (BaseActivity) context;
            baseActivity.getPermissionManager().m28254a(baseActivity, new Runnable() { // from class: com.callapp.contacts.action.shared._$$Lambda$ShareLocationAction$myt3qVg6iq7v_ce1mxpEDc3RNYU
                @Override // java.lang.Runnable
                public final void run() {
                    ShareLocationAction.this.m31801b(context, contactData);
                }
            }, _$$Lambda$ShareLocationAction$OcIxySKO4zAoTc0hvrbMeTKLli4.INSTANCE, PermissionManager.PermissionGroup.LOCATION);
        }
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return Activities.getString(2131887116);
    }
}
