package gogolook.callgogolook2.messaging.datamodel.action;

import android.os.Parcel;
import android.os.Parcelable;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p582w0.C14080m2;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/UpdateDestinationBlockedAction.class */
public class UpdateDestinationBlockedAction extends Action {
    public static final Parcelable.Creator<UpdateDestinationBlockedAction> CREATOR = new C4649a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.UpdateDestinationBlockedAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/UpdateDestinationBlockedAction$a.class */
    public static final class C4649a implements Parcelable.Creator<UpdateDestinationBlockedAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UpdateDestinationBlockedAction createFromParcel(Parcel parcel) {
            return new UpdateDestinationBlockedAction(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UpdateDestinationBlockedAction[] newArray(int i) {
            return new UpdateDestinationBlockedAction[i];
        }
    }

    public UpdateDestinationBlockedAction(Parcel parcel) {
        super(parcel);
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    public Object mo27648b() {
        String string = this.f11190b.getString("destination");
        boolean z = this.f11190b.getBoolean(LogsGroupRealmObject.BLOCKED);
        String string2 = this.f11190b.getString("conversation_id");
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        C11521c.m9362a(f, string, z);
        String str = string2;
        if (string2 == null) {
            str = C11521c.m9336e(f, string);
        }
        C14080m2.m2615a("UpdateDestinationBlockedAction", "executeAction: dest=" + string + ", isBlocked=" + z + ", conversationId=" + str);
        if (str == null) {
            return null;
        }
        UpdateConversationModeAction.m27653a(str, z ? 2 : 0);
        MessagingContentProvider.m27764g(str);
        return null;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        m27756a(parcel, i);
    }
}
