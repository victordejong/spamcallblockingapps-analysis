package com.callapp.contacts.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Telephony;
import android.telephony.SmsManager;
import com.callapp.common.util.SerializablePair;
import com.callapp.contacts.framework.dao.ContentQuery;
import com.callapp.contacts.framework.dao.RowCallback;
import com.callapp.contacts.framework.dao.RowContext;
import com.callapp.contacts.framework.dao.column.DateColumn;
import com.callapp.contacts.framework.dao.column.StringColumn;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.popup.contact.DialogList;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.phone.PhoneNumberUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/SmsUtils.class */
public class SmsUtils {

    /* renamed from: d  reason: collision with root package name */
    private static final Uri f15956d = Telephony.Sms.CONTENT_URI;
    private static final Uri e = Telephony.Sms.Inbox.CONTENT_URI;

    /* renamed from: a  reason: collision with root package name */
    public static final Uri f15953a = Telephony.Sms.Sent.CONTENT_URI;

    /* renamed from: b  reason: collision with root package name */
    public static final StringColumn f15954b = new StringColumn("body");
    private static final DateColumn f = new DateColumn("date");

    /* renamed from: c  reason: collision with root package name */
    public static final StringColumn f15955c = new StringColumn("address");

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/SmsUtils$SelectNumberListener.class */
    public interface SelectNumberListener {
        void a(Phone phone);
    }

    public static SerializablePair<Date, SerializablePair<String, String>> a(List<String> list) {
        StringColumn stringColumn = f15955c;
        StringColumn stringColumn2 = new StringColumn(PhoneNumberUtils.e(stringColumn.f14402a));
        ContentQuery a2 = new ContentQuery(f15956d).a(f15954b);
        DateColumn dateColumn = f;
        return (SerializablePair) a2.a(dateColumn).a(stringColumn).a(stringColumn2, list).a(dateColumn.f14402a, false).a((RowCallback<RowCallback<SerializablePair<Date, SerializablePair<String, String>>>>) new RowCallback<SerializablePair<Date, SerializablePair<String, String>>>() { // from class: com.callapp.contacts.util.SmsUtils.2
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ SerializablePair<Date, SerializablePair<String, String>> onRow(RowContext rowContext) {
                return new SerializablePair<>((Date) rowContext.a(SmsUtils.f), new SerializablePair((String) rowContext.a(SmsUtils.f15954b), rowContext.a(SmsUtils.f15955c.f14402a)));
            }
        }, (RowCallback<SerializablePair<Date, SerializablePair<String, String>>>) null);
    }

    public static void a(Context context, final List<Phone> list, final SelectNumberListener selectNumberListener) {
        if (!(list == null || list.size() == 0)) {
            int i = 0;
            if (list.size() == 1) {
                selectNumberListener.a(list.get(0));
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (Phone phone : list) {
                arrayList.add(new AdapterText.ItemText(phone.a(), i));
                i++;
            }
            final DialogList dialogList = new DialogList(Activities.getString(2131887623));
            AdapterText adapterText = new AdapterText(context, 2131558570, arrayList);
            adapterText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.util.SmsUtils.1
                @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
                public final void onRowClicked(int i2) {
                    selectNumberListener.a((Phone) list.get(i2));
                    dialogList.dismiss();
                }
            });
            dialogList.setAdapter(adapterText);
            PopupManager.get().a(context, dialogList);
        }
    }

    public static boolean a(Context context, Phone phone, String str) {
        try {
            if (!PhoneManager.i()) {
                return c(context, phone, str);
            }
            String a2 = phone.a();
            if (!StringUtils.a((CharSequence) a2) && !StringUtils.a((CharSequence) str)) {
                SmsManager smsManager = SmsManager.getDefault();
                smsManager.sendMultipartTextMessage(a2, null, smsManager.divideMessage(str), null, null);
                return true;
            }
            return false;
        } catch (Exception e2) {
            CLog.a(SmsUtils.class, e2);
            return false;
        }
    }

    public static void b(Context context, Phone phone, String str) {
        Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse("smsto:" + phone.getRawNumber()));
        if (StringUtils.b((CharSequence) str)) {
            intent.putExtra("sms_body", str);
            intent.putExtra("android.intent.extra.TEXT", str);
        }
        intent.setType("text/plain");
        String defaultSmsPackage = Telephony.Sms.getDefaultSmsPackage(context);
        if (defaultSmsPackage != null) {
            intent.setPackage(defaultSmsPackage);
        }
        intent.addFlags(Activities.getIntentFlagForNewDocument());
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        if (Activities.a(intent)) {
            Activities.a(context, intent);
        } else {
            c(context, phone, str);
        }
    }

    public static boolean c(Context context, Phone phone, String str) {
        Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse("smsto:" + phone.getRawNumber()));
        if (str != null) {
            intent.putExtra("sms_body", str);
        }
        intent.addFlags(Activities.getIntentFlagForNewDocument());
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        if (!Activities.a(intent)) {
            FeedbackManager.get().b(Activities.getString(2131886832), (Integer) null);
            return false;
        } else if (!PhoneManager.get().isDefaultPhoneApp() || PhoneManager.get().getIncomingCall() == null) {
            Activities.a(context, intent);
            return true;
        } else {
            Activities.a(context, intent, (Bundle) null);
            return true;
        }
    }
}
