package gogolook.callgogolook2.messaging.datamodel.action;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Telephony;
import androidx.room.FtsOptions;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p480d.C11689c;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12219v;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/LogTelephonyDatabaseAction.class */
public class LogTelephonyDatabaseAction extends Action implements Parcelable {

    /* renamed from: e */
    public static final String[] f11195e = {"_id", "date", "message_count", "recipient_ids", "snippet", "snippet_cs", "read", "error", "has_attachment"};
    public static final Parcelable.Creator<LogTelephonyDatabaseAction> CREATOR = new C4626a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.LogTelephonyDatabaseAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/LogTelephonyDatabaseAction$a.class */
    public static final class C4626a implements Parcelable.Creator<LogTelephonyDatabaseAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LogTelephonyDatabaseAction createFromParcel(Parcel parcel) {
            return new LogTelephonyDatabaseAction(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LogTelephonyDatabaseAction[] newArray(int i) {
            return new LogTelephonyDatabaseAction[i];
        }
    }

    public LogTelephonyDatabaseAction() {
    }

    public LogTelephonyDatabaseAction(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ LogTelephonyDatabaseAction(Parcel parcel, C4626a aVar) {
        this(parcel);
    }

    /* JADX WARN: Finally extract failed */
    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    public Object mo27648b() {
        Context a = AbstractC11516a.m9413n().mo9412a();
        if (!C12219v.m6735a()) {
            C12153d0.m6987b("MessagingApp", "Can't log telephony database unless debugging is enabled");
            return null;
        } else if (!C12153d0.m6992a("MessagingApp", 3)) {
            C12153d0.m6981e("MessagingApp", "Can't log telephony database unless DEBUG is turned on for TAG: MessagingApp");
            return null;
        } else {
            C12153d0.m6991a("MessagingApp", "\n");
            C12153d0.m6991a("MessagingApp", "Dump of canoncial_addresses table");
            C12153d0.m6991a("MessagingApp", "*********************************");
            Cursor a2 = C11689c.m8598a(a, a.getContentResolver(), Uri.parse("content://mms-sms/canonical-addresses"), null, null, null, null);
            if (a2 == null) {
                C12153d0.m6981e("MessagingApp", "null Cursor in content://mms-sms/canonical-addresses");
            } else {
                while (a2.moveToNext()) {
                    try {
                        long j = a2.getLong(0);
                        String string = a2.getString(1);
                        C12153d0.m6991a("MessagingApp", C12153d0.m6993a("id: " + j + " number: " + string));
                    } catch (Throwable th) {
                        a2.close();
                        throw th;
                    }
                }
                a2.close();
            }
            C12153d0.m6991a("MessagingApp", "\n");
            C12153d0.m6991a("MessagingApp", "Dump of threads table");
            C12153d0.m6991a("MessagingApp", "*********************");
            Cursor a3 = C11689c.m8598a(a, a.getContentResolver(), Telephony.Threads.CONTENT_URI.buildUpon().appendQueryParameter(FtsOptions.TOKENIZER_SIMPLE, "true").build(), f11195e, null, null, "date ASC");
            while (a3.moveToNext()) {
                try {
                    C12153d0.m6991a("MessagingApp", C12153d0.m6993a("threadId: " + a3.getLong(0) + " date : " + a3.getLong(1) + " message_count : " + a3.getInt(2) + " snippet : " + a3.getString(4) + " read : " + a3.getInt(6) + " error : " + a3.getInt(7) + " has_attachment : " + a3.getInt(8) + " recipient_ids : " + a3.getString(3)));
                } catch (Throwable th2) {
                    a3.close();
                    throw th2;
                }
            }
            a3.close();
            return null;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        m27756a(parcel, i);
    }
}
