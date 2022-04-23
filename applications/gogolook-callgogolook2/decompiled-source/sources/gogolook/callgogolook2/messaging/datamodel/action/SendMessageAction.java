package gogolook.callgogolook2.messaging.datamodel.action;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.provider.FontsContractCompat;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import java.util.ArrayList;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/SendMessageAction.class */
public class SendMessageAction extends Action implements Parcelable {
    public static final Parcelable.Creator<SendMessageAction> CREATOR = new C4645a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.SendMessageAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/SendMessageAction$a.class */
    public static final class C4645a implements Parcelable.Creator<SendMessageAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SendMessageAction createFromParcel(Parcel parcel) {
            return new SendMessageAction(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SendMessageAction[] newArray(int i) {
            return new SendMessageAction[i];
        }
    }

    public SendMessageAction() {
    }

    public SendMessageAction(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ SendMessageAction(Parcel parcel, C4645a aVar) {
        this(parcel);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static boolean m27666a(boolean z, MessageData messageData, Uri uri, boolean z2) {
        int i;
        boolean z3;
        Context a = AbstractC11516a.m9413n().mo9412a();
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        int i2 = 5;
        switch (messageData.m27635K()) {
            case 1:
            case 2:
            case 4:
            case 5:
            case 6:
            case 7:
                i = 2;
                i2 = 2;
                break;
            case 3:
            default:
                i = 0;
                i2 = 0;
                break;
            case 8:
            case 9:
                i = 5;
                break;
        }
        if (z) {
            if (i2 != 0 && !C11834j.m8094b(a, messageData.m27636J(), i2, messageData.m27639G())) {
                messageData.m27606c(messageData.m27637I());
                z3 = false;
            }
            z3 = true;
        } else {
            if (!(messageData.m27636J() == null || i == 0 || C11834j.m8141a(a, messageData.m27636J(), i, messageData.m27639G()))) {
                messageData.m27606c(messageData.m27637I());
                z3 = false;
            }
            z3 = true;
        }
        String str = "SMS";
        if (!z3) {
            StringBuilder sb = new StringBuilder();
            sb.append("SendMessageAction: Failed to update ");
            sb.append(z ? "SMS" : "MMS");
            sb.append(" message ");
            sb.append(messageData.m27589w());
            sb.append(" in telephony (");
            sb.append(messageData.m27636J());
            sb.append("); marking message failed");
            C12153d0.m6981e("MessagingAppDataModel", sb.toString());
        } else if (C12153d0.m6992a("MessagingAppDataModel", 2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SendMessageAction: Updated ");
            sb2.append(z ? "SMS" : "MMS");
            sb2.append(" message ");
            sb2.append(messageData.m27589w());
            sb2.append(" in telephony (");
            sb2.append(messageData.m27636J());
            sb2.append(")");
            C12153d0.m6983d("MessagingAppDataModel", sb2.toString());
        }
        f.m9227a();
        try {
            if (uri != null) {
                C11521c.m9353b(f, messageData);
                C11521c.m9348b(f, messageData.m27593s(), false, false);
            } else {
                ContentValues contentValues = new ContentValues();
                contentValues.put("message_status", Integer.valueOf(messageData.m27635K()));
                if (z2) {
                    contentValues.put("seen", (Integer) 0);
                }
                contentValues.put("received_timestamp", Long.valueOf(messageData.m27639G()));
                contentValues.put("raw_status", Integer.valueOf(messageData.m27640F()));
                C11521c.m9335e(f, messageData.m27589w(), contentValues);
            }
            f.m9210e();
            if (C12153d0.m6992a("MessagingAppDataModel", 2)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("SendMessageAction: Updated ");
                if (!z) {
                    str = "MMS";
                }
                sb3.append(str);
                sb3.append(" message ");
                sb3.append(messageData.m27589w());
                sb3.append(" in local db. Timestamp = ");
                sb3.append(messageData.m27639G());
                C12153d0.m6983d("MessagingAppDataModel", sb3.toString());
            }
            f.m9214b();
            MessagingContentProvider.m27766f(messageData.m27593s());
            if (uri != null) {
                MessagingContentProvider.m27765g();
            }
            MessagingContentProvider.m27769e();
            return z3;
        } catch (Throwable th) {
            f.m9214b();
            throw th;
        }
    }

    /* renamed from: b */
    public static boolean m27665b(String str, Action action) {
        return new SendMessageAction().m27667a(str, action);
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: a */
    public Bundle mo27662a() {
        int i;
        int i2;
        int i3;
        Uri uri;
        MessageData messageData = (MessageData) this.f11190b.getParcelable("message");
        String string = this.f11190b.getString("message_id");
        Uri uri2 = (Uri) this.f11190b.getParcelable("message_uri");
        int i4 = 0;
        boolean z = messageData.m27641E() == 0;
        int i5 = this.f11190b.getInt("sub_id", -1);
        String string2 = this.f11190b.getString("sub_phone_number");
        StringBuilder sb = new StringBuilder();
        sb.append("SendMessageAction: Sending ");
        sb.append(z ? "SMS" : "MMS");
        sb.append(" message ");
        sb.append(string);
        sb.append(" in conversation ");
        sb.append(messageData.m27593s());
        C12153d0.m6985c("MessagingAppDataModel", sb.toString());
        if (z) {
            C12151d.m7000b(uri2);
            i3 = C11834j.m8109a(this.f11190b.getString("recipient"), messageData.m27588x(), uri2, i5, this.f11190b.getString("sms_service_center"), C11834j.m8078e(i5));
            i2 = i5;
            uri = null;
        } else {
            Context a = AbstractC11516a.m9413n().mo9412a();
            ArrayList<String> stringArrayList = this.f11190b.getStringArrayList("recipients");
            if (uri2 == null) {
                long G = messageData.m27639G();
                AbstractC11528g.m9259k().mo9243g().m9121e(G);
                Uri a2 = C11834j.m8125a(a, stringArrayList, messageData, i5, string2, G);
                uri = a2;
                if (a2 != null) {
                    m27668a(string, a2);
                    if (C12153d0.m6992a("MessagingAppDataModel", 2)) {
                        C12153d0.m6983d("MessagingAppDataModel", "SendMessageAction: Updated message " + string + " with new uri " + a2);
                    }
                    uri2 = a2;
                    uri = a2;
                }
            } else {
                uri = null;
            }
            if (uri2 != null) {
                Bundle bundle = new Bundle();
                bundle.putString("message_id", string);
                bundle.putParcelable("updated_message_uri", uri);
                i2 = i5;
                C11834j.C11836b a3 = C11834j.m8147a(a, i2, uri2, bundle);
                if (a3 == C11834j.f26545j) {
                    C12153d0.m6991a("MessagingAppDataModel", "SendMessageAction: Sending MMS message " + string + " asynchronously; waiting for callback to finish processing");
                    return null;
                }
                i3 = a3.f26548a;
                i = a3.f26549b;
                i4 = a3.f26551d;
                ProcessSentMessageAction.m27674a(string, uri2, uri, i2, z, i3, i, i4);
                return null;
            }
            i3 = 2;
            i2 = i5;
        }
        i = 0;
        ProcessSentMessageAction.m27674a(string, uri2, uri, i2, z, i3, i, i4);
        return null;
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: a */
    public Object mo27660a(Bundle bundle) {
        return null;
    }

    /* renamed from: a */
    public final void m27668a(String str, Uri uri) {
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        f.m9227a();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("sms_message_uri", uri.toString());
            C11521c.m9338d(f, str, contentValues);
            f.m9210e();
        } finally {
            f.m9214b();
        }
    }

    /* renamed from: a */
    public final boolean m27667a(String str, Action action) {
        this.f11190b.putString("message_id", str);
        long currentTimeMillis = System.currentTimeMillis();
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        MessageData r = C11521c.m9322r(f, str);
        if (r == null || !r.m27595q()) {
            return false;
        }
        boolean z = r.m27641E() == 0;
        ParticipantData g = C11521c.m9333g(f, r.m27638H());
        Uri J = r.m27636J();
        String s = r.m27593s();
        if (r.m27634L()) {
            r.m27597g(currentTimeMillis);
        } else {
            r.m27598f(currentTimeMillis);
        }
        if (!m27666a(z, r, null, false)) {
            return false;
        }
        ArrayList<String> k = C11521c.m9329k(f, s);
        this.f11190b.putParcelable("message_uri", J);
        this.f11190b.putParcelable("message", r);
        this.f11190b.putStringArrayList("recipients", k);
        this.f11190b.putInt("sub_id", g.m27517z());
        this.f11190b.putString("sub_phone_number", g.m27521v());
        if (z) {
            this.f11190b.putString("sms_service_center", C11521c.m9326n(f, s));
            if (k.size() == 1) {
                this.f11190b.putString("recipient", k.get(0));
                action.m27755a((Action) this);
                if (!C12153d0.m6992a("MessagingAppDataModel", 3)) {
                    return true;
                }
                C12153d0.m6991a("MessagingAppDataModel", "SendMessageAction: Queued SMS message " + str + " for sending");
                return true;
            }
            C12153d0.m6979f("MessagingAppDataModel", "Trying to resend a broadcast SMS - not allowed");
            return false;
        }
        action.m27755a((Action) this);
        if (!C12153d0.m6992a("MessagingAppDataModel", 3)) {
            return true;
        }
        C12153d0.m6991a("MessagingAppDataModel", "SendMessageAction: Queued MMS message " + str + " for sending");
        return true;
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    public Object mo27648b() {
        C12151d.m7005a("SendMessageAction must be queued rather than started");
        return null;
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: u */
    public Object mo27664u() {
        ProcessSentMessageAction.m27675a(this.f11190b.getString("message_id"), null, 2, 0, ((MessageData) this.f11190b.getParcelable("message")).m27641E() == 0, this, this.f11190b.getInt("sub_id", -1), this.f11190b.getInt(FontsContractCompat.Columns.RESULT_CODE), this.f11190b.getInt("http_status_code"));
        ProcessPendingMessagesAction.m27682a(true, (Action) this);
        return null;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        m27756a(parcel, i);
    }
}
