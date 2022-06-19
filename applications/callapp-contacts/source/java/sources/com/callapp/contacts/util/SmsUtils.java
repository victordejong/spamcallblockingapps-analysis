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

    /* renamed from: d */
    private static final Uri f27854d = Telephony.Sms.CONTENT_URI;

    /* renamed from: e */
    private static final Uri f27855e = Telephony.Sms.Inbox.CONTENT_URI;

    /* renamed from: a */
    public static final Uri f27851a = Telephony.Sms.Sent.CONTENT_URI;

    /* renamed from: b */
    public static final StringColumn f27852b = new StringColumn("body");

    /* renamed from: f */
    private static final DateColumn f27856f = new DateColumn("date");

    /* renamed from: c */
    public static final StringColumn f27853c = new StringColumn("address");

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/SmsUtils$SelectNumberListener.class */
    public interface SelectNumberListener {
        /* renamed from: a */
        void mo27390a(Phone phone);
    }

    /* renamed from: a */
    public static SerializablePair<Date, SerializablePair<String, String>> m27393a(List<String> list) {
        StringColumn stringColumn = f27853c;
        StringColumn stringColumn2 = new StringColumn(PhoneNumberUtils.m26079e(stringColumn.f25180a));
        ContentQuery m29023a = new ContentQuery(f27854d).m29023a(f27852b);
        DateColumn dateColumn = f27856f;
        return (SerializablePair) m29023a.m29023a(dateColumn).m29023a(stringColumn).m29022a(stringColumn2, list).m29020a(dateColumn.f25180a, false).m29025a((RowCallback<RowCallback<SerializablePair<Date, SerializablePair<String, String>>>>) new RowCallback<SerializablePair<Date, SerializablePair<String, String>>>() { // from class: com.callapp.contacts.util.SmsUtils.2
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ SerializablePair<Date, SerializablePair<String, String>> onRow(RowContext rowContext) {
                return new SerializablePair<>((Date) rowContext.m29003a(SmsUtils.f27856f), new SerializablePair((String) rowContext.m29003a(SmsUtils.f27852b), rowContext.m29002a(SmsUtils.f27853c.f25180a)));
            }
        }, (RowCallback<SerializablePair<Date, SerializablePair<String, String>>>) null);
    }

    /* renamed from: a */
    public static void m27394a(Context context, final List<Phone> list, final SelectNumberListener selectNumberListener) {
        if (list == null || list.size() == 0) {
            return;
        }
        int i = 0;
        if (list.size() == 1) {
            selectNumberListener.mo27390a(list.get(0));
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Phone phone : list) {
            arrayList.add(new AdapterText.ItemText(phone.m26101a(), i));
            i++;
        }
        final DialogList dialogList = new DialogList(Activities.getString(2131887623));
        AdapterText adapterText = new AdapterText(context, 2131558570, arrayList);
        adapterText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.util.SmsUtils.1
            @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
            public final void onRowClicked(int i2) {
                selectNumberListener.mo27390a((Phone) list.get(i2));
                dialogList.dismiss();
            }
        });
        dialogList.setAdapter(adapterText);
        PopupManager.get().m28209a(context, dialogList);
    }

    /* renamed from: a */
    public static boolean m27395a(Context context, Phone phone, String str) {
        try {
            if (!PhoneManager.m28221i()) {
                return m27391c(context, phone, str);
            }
            String m26101a = phone.m26101a();
            if (!StringUtils.m26059a((CharSequence) m26101a) && !StringUtils.m26059a((CharSequence) str)) {
                SmsManager smsManager = SmsManager.getDefault();
                smsManager.sendMultipartTextMessage(m26101a, null, smsManager.divideMessage(str), null, null);
                return true;
            }
            return false;
        } catch (Exception e) {
            CLog.m27609a(SmsUtils.class, e);
            return false;
        }
    }

    /* renamed from: b */
    public static void m27392b(Context context, Phone phone, String str) {
        Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse("smsto:" + phone.getRawNumber()));
        if (StringUtils.m26045b((CharSequence) str)) {
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
        if (Activities.m27672a(intent)) {
            Activities.m27685a(context, intent);
        } else {
            m27391c(context, phone, str);
        }
    }

    /* renamed from: c */
    public static boolean m27391c(Context context, Phone phone, String str) {
        Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse("smsto:" + phone.getRawNumber()));
        if (str != null) {
            intent.putExtra("sms_body", str);
        }
        intent.addFlags(Activities.getIntentFlagForNewDocument());
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        if (!Activities.m27672a(intent)) {
            FeedbackManager.get().m28664b(Activities.getString(2131886832), (Integer) null);
            return false;
        } else if (!PhoneManager.get().isDefaultPhoneApp() || PhoneManager.get().getIncomingCall() == null) {
            Activities.m27685a(context, intent);
            return true;
        } else {
            Activities.m27684a(context, intent, (Bundle) null);
            return true;
        }
    }
}
