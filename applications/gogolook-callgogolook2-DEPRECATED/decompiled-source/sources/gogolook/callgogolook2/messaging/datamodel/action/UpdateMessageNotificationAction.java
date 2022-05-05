package gogolook.callgogolook2.messaging.datamodel.action;

import android.os.Parcel;
import android.os.Parcelable;
import p459j.p460a.p474c0.p475c.C11522d;
import p459j.p460a.p521j0.p529x.C12810o;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/UpdateMessageNotificationAction.class */
public class UpdateMessageNotificationAction extends Action {
    public static final Parcelable.Creator<UpdateMessageNotificationAction> CREATOR = new C4650a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.UpdateMessageNotificationAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/UpdateMessageNotificationAction$a.class */
    public static final class C4650a implements Parcelable.Creator<UpdateMessageNotificationAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UpdateMessageNotificationAction createFromParcel(Parcel parcel) {
            return new UpdateMessageNotificationAction(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UpdateMessageNotificationAction[] newArray(int i) {
            return new UpdateMessageNotificationAction[i];
        }
    }

    public UpdateMessageNotificationAction(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ UpdateMessageNotificationAction(Parcel parcel, C4650a aVar) {
        this(parcel);
    }

    public UpdateMessageNotificationAction(String str) {
        this.f11190b.putString("conversation_id", str);
    }

    /* renamed from: b */
    public static void m27651b(String str) {
        new UpdateMessageNotificationAction(str).m27742x();
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    public Object mo27648b() {
        C11522d.m9286a(true, C11522d.f25733a, this.f11190b.getString("conversation_id"), 1, C12810o.m5238g());
        return null;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        m27756a(parcel, i);
    }
}
