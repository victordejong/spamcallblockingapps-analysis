package gogolook.callgogolook2.messaging.datamodel.action;

import android.content.ContentValues;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.app.NotificationCompat;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p499h.C12153d0;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/FixupMessageStatusOnStartupAction.class */
public class FixupMessageStatusOnStartupAction extends Action implements Parcelable {
    public static final Parcelable.Creator<FixupMessageStatusOnStartupAction> CREATOR = new C4620a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.FixupMessageStatusOnStartupAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/FixupMessageStatusOnStartupAction$a.class */
    public static final class C4620a implements Parcelable.Creator<FixupMessageStatusOnStartupAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FixupMessageStatusOnStartupAction createFromParcel(Parcel parcel) {
            return new FixupMessageStatusOnStartupAction(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FixupMessageStatusOnStartupAction[] newArray(int i) {
            return new FixupMessageStatusOnStartupAction[i];
        }
    }

    public FixupMessageStatusOnStartupAction() {
    }

    public FixupMessageStatusOnStartupAction(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ FixupMessageStatusOnStartupAction(Parcel parcel, C4620a aVar) {
        this(parcel);
    }

    /* renamed from: z */
    public static void m27714z() {
        new FixupMessageStatusOnStartupAction().m27742x();
    }

    /* JADX WARN: Finally extract failed */
    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    public Object mo27648b() {
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        f.m9227a();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("message_status", (Integer) 106);
            int a = f.m9220a(NotificationCompat.CarExtender.KEY_MESSAGES, contentValues, "message_status IN (?, ?)", new String[]{Integer.toString(105), Integer.toString(103)});
            contentValues.clear();
            contentValues.clear();
            contentValues.put("message_status", (Integer) 8);
            int a2 = f.m9220a(NotificationCompat.CarExtender.KEY_MESSAGES, contentValues, "message_status IN (?, ?)", new String[]{Integer.toString(5), Integer.toString(6)});
            f.m9210e();
            f.m9214b();
            C12153d0.m6985c("MessagingAppDataModel", "Fixup: Send failed - " + a2 + " Download failed - " + (a + 0));
            return null;
        } catch (Throwable th) {
            f.m9214b();
            throw th;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        m27756a(parcel, i);
    }
}
