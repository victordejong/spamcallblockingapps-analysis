package gogolook.callgogolook2.messaging.datamodel.action;

import android.content.ContentValues;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11522d;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p521j0.p529x.C12810o;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/MarkAsSeenAction.class */
public class MarkAsSeenAction extends Action implements Parcelable {
    public static final Parcelable.Creator<MarkAsSeenAction> CREATOR = new C4628a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.MarkAsSeenAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/MarkAsSeenAction$a.class */
    public static final class C4628a implements Parcelable.Creator<MarkAsSeenAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MarkAsSeenAction createFromParcel(Parcel parcel) {
            return new MarkAsSeenAction(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MarkAsSeenAction[] newArray(int i) {
            return new MarkAsSeenAction[i];
        }
    }

    public MarkAsSeenAction(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ MarkAsSeenAction(Parcel parcel, C4628a aVar) {
        this(parcel);
    }

    public MarkAsSeenAction(String str) {
        this.f11190b.putString("conversation_id", str);
    }

    /* renamed from: b */
    public static void m27696b(String str) {
        new MarkAsSeenAction(str).m27742x();
    }

    /* JADX WARN: Finally extract failed */
    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    public Object mo27648b() {
        String string = this.f11190b.getString("conversation_id");
        boolean isEmpty = TextUtils.isEmpty(string);
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        f.m9227a();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("seen", (Integer) 1);
            if (!(!isEmpty)) {
                f.m9220a(NotificationCompat.CarExtender.KEY_MESSAGES, contentValues, "seen != 1", null);
            } else if (f.m9220a(NotificationCompat.CarExtender.KEY_MESSAGES, contentValues, "seen != 1 AND conversation_id=?", new String[]{string}) > 0) {
                MessagingContentProvider.m27766f(string);
                MessagingContentProvider.m27769e();
                C11522d.m9286a(false, C11522d.f25733a, string, 3, C12810o.m5238g());
            }
            f.m9210e();
            f.m9214b();
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
