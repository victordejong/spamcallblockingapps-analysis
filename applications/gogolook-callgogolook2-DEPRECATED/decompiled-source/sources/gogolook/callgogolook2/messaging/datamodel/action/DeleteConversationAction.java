package gogolook.callgogolook2.messaging.datamodel.action;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.C11522d;
import p459j.p460a.p474c0.p475c.C11529h;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p582w0.C14080m2;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/DeleteConversationAction.class */
public class DeleteConversationAction extends Action implements Parcelable {
    public static final Parcelable.Creator<DeleteConversationAction> CREATOR = new C4616a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.DeleteConversationAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/DeleteConversationAction$a.class */
    public static final class C4616a implements Parcelable.Creator<DeleteConversationAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DeleteConversationAction createFromParcel(Parcel parcel) {
            return new DeleteConversationAction(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DeleteConversationAction[] newArray(int i) {
            return new DeleteConversationAction[i];
        }
    }

    public DeleteConversationAction(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ DeleteConversationAction(Parcel parcel, C4616a aVar) {
        this(parcel);
    }

    public DeleteConversationAction(String[] strArr, long[] jArr, int i) {
        this.f11190b.putStringArray("conversation_id", strArr);
        this.f11190b.putLongArray("cutoff_timestamp", jArr);
        this.f11190b.putInt("filter_type", i);
    }

    /* renamed from: a */
    public static void m27722a(@NonNull String[] strArr, @NonNull long[] jArr, int i) {
        if (strArr != null && jArr != null && strArr.length == jArr.length) {
            int i2 = i;
            if (1 != i) {
                i2 = i;
                if (2 != i) {
                    i2 = -1;
                }
            }
            new DeleteConversationAction(strArr, jArr, i2).m27742x();
        }
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: a */
    public Bundle mo27662a() throws C11529h {
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        String[] stringArray = this.f11190b.getStringArray("conversation_id");
        long[] longArray = this.f11190b.getLongArray("cutoff_timestamp");
        int i = this.f11190b.getInt("filter_type");
        for (int i2 = 0; i2 < stringArray.length; i2++) {
            String str = stringArray[i2];
            long j = longArray[i2];
            if (!TextUtils.isEmpty(str)) {
                boolean a = C11521c.m9372a(f, str, j, i);
                if (a) {
                    C11522d.m9286a(true, C11522d.f25733a, str, 1, C12810o.m5238g());
                }
                if (a && C12810o.m5232m()) {
                    long o = C11521c.m9325o(f, str);
                    if (o >= 0) {
                        if (C11834j.m8149a(o, j) > 0) {
                            C14080m2.m2615a("MessagingAppDataModel", "DeleteConversationAction: Deleted telephony thread " + o + " (cutoffTimestamp = " + j + ")");
                        } else {
                            C14080m2.m2615a("MessagingAppDataModel", "DeleteConversationAction: Could not delete thread from telephony: conversationId = " + str + ", thread id = " + o);
                        }
                    }
                }
            }
            MessagingContentProvider.m27766f(str);
            MessagingContentProvider.m27769e();
        }
        return null;
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    public Object mo27648b() {
        m27743w();
        return null;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        m27756a(parcel, i);
    }
}
