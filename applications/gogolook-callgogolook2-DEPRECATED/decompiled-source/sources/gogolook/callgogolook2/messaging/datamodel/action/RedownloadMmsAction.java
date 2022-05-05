package gogolook.callgogolook2.messaging.datamodel.action;

import android.app.PendingIntent;
import android.content.ContentValues;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.C11522d;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p475c.p476w.C11575b;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p521j0.p529x.C12810o;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/RedownloadMmsAction.class */
public class RedownloadMmsAction extends Action implements Parcelable {
    public static final Parcelable.Creator<RedownloadMmsAction> CREATOR = new C4643a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.RedownloadMmsAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/RedownloadMmsAction$a.class */
    public static final class C4643a implements Parcelable.Creator<RedownloadMmsAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RedownloadMmsAction createFromParcel(Parcel parcel) {
            return new RedownloadMmsAction(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RedownloadMmsAction[] newArray(int i) {
            return new RedownloadMmsAction[i];
        }
    }

    public RedownloadMmsAction(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ RedownloadMmsAction(Parcel parcel, C4643a aVar) {
        this(parcel);
    }

    public RedownloadMmsAction(String str) {
        this.f11190b.putString("message_id", str);
    }

    /* renamed from: a */
    public static PendingIntent m27671a(Context context, String str, String str2) {
        return C11575b.m9085a(context, new RedownloadMmsAction(str), C11522d.m9278b(str2), false);
    }

    /* renamed from: b */
    public static void m27670b(String str) {
        new RedownloadMmsAction(str).m27742x();
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    public Object mo27648b() {
        String string = this.f11190b.getString("message_id");
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        MessageData r = C11521c.m9322r(f, string);
        if (r == null || !r.m27612b()) {
            r = null;
            C12153d0.m6987b("MessagingApp", "Attempt to download a missing or un-redownloadable message");
        } else {
            long currentTimeMillis = System.currentTimeMillis();
            ContentValues contentValues = new ContentValues(2);
            contentValues.put("message_status", (Integer) 102);
            contentValues.put("retry_start_timestamp", Long.valueOf(currentTimeMillis));
            C11521c.m9338d(f, r.m27589w(), contentValues);
            MessagingContentProvider.m27766f(r.m27593s());
            MessagingContentProvider.m27769e();
            ProcessPendingMessagesAction.m27682a(false, (Action) this);
            C11522d.m9286a(false, C11522d.f25733a, r.m27593s(), 3, C12810o.m5238g());
        }
        return r;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        m27756a(parcel, i);
    }
}
