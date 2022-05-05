package gogolook.callgogolook2.messaging.datamodel.action;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import gogolook.callgogolook2.messaging.sms.DatabaseMessages;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.C11522d;
import p459j.p460a.p474c0.p475c.C11529h;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p475c.p476w.C11577d;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p521j0.p529x.C12778k;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p533l.C12928g;
import p459j.p460a.p533l.C12942i;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14217x3;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/ReceiveMmsMessageAction.class */
public class ReceiveMmsMessageAction extends Action implements Parcelable {
    public static final Parcelable.Creator<ReceiveMmsMessageAction> CREATOR = new C4638a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.ReceiveMmsMessageAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/ReceiveMmsMessageAction$a.class */
    public static final class C4638a implements Parcelable.Creator<ReceiveMmsMessageAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ReceiveMmsMessageAction createFromParcel(Parcel parcel) {
            return new ReceiveMmsMessageAction(parcel, (C4638a) null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ReceiveMmsMessageAction[] newArray(int i) {
            return new ReceiveMmsMessageAction[i];
        }
    }

    public ReceiveMmsMessageAction(int i, byte[] bArr) {
        this.f11190b.putInt("sub_id", i);
        this.f11190b.putByteArray("push_data", bArr);
    }

    public ReceiveMmsMessageAction(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ ReceiveMmsMessageAction(Parcel parcel, C4638a aVar) {
        this(parcel);
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: a */
    public Bundle mo27662a() throws C11529h {
        Context a = AbstractC11516a.m9413n().mo9412a();
        int i = this.f11190b.getInt("sub_id", -1);
        String string = this.f11190b.getString("transaction_id");
        C11834j.m8145a(a, i, C11834j.m8110a(string, "UTF-8"), this.f11190b.getString("content_location"), 131);
        return null;
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    public Object mo27648b() {
        boolean z;
        C12942i iVar;
        Context a = AbstractC11516a.m9413n().mo9412a();
        int i = this.f11190b.getInt("sub_id", -1);
        byte[] byteArray = this.f11190b.getByteArray("push_data");
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        ParticipantData b = C11521c.m9354b(f, i);
        AbstractC11528g.m9259k().mo9243g().m9121e(System.currentTimeMillis());
        DatabaseMessages.MmsMessage a2 = C11834j.m8124a(a, byteArray, b.m27517z(), b.m27521v());
        MessageData messageData = null;
        if (a2 != null) {
            String a3 = C11834j.m8108a(C11834j.m8087c(a2.f11312i), a2.mo27454c());
            String str = a3;
            if (TextUtils.isEmpty(a3)) {
                C12153d0.m6981e("MessagingAppDataModel", "Received an MMS without sender address; using unknown sender.");
                str = ParticipantData.m27546L();
            }
            ParticipantData h = ParticipantData.m27528h(str);
            String v = h.m27521v();
            if (C12810o.m5234k()) {
                iVar = C12928g.m5000a().m4982b(a, v, a2.f11307d, 2);
                z = iVar.m4960d();
            } else {
                iVar = null;
                z = false;
            }
            boolean z2 = !z && C11834j.m8153a(i);
            String a4 = C11521c.m9385a(f, a2.f11312i, v);
            boolean b2 = AbstractC11528g.m9259k().m9263b(a4);
            boolean c = AbstractC11528g.m9259k().m9262c(a4);
            a2.f11315l = b2;
            a2.f11316m = c || z;
            f.m9227a();
            try {
                String a5 = C11521c.m9376a(f, h);
                MessageData a6 = C11834j.m8116a(a2, a4, a5, C11521c.m9376a(f, b), z2 ? 104 : 101);
                C11521c.m9380a(f, a6);
                if (!z2) {
                    C11521c.m9366a(f, a4, a6.m27589w(), a6.m27639G(), z, true);
                    C11577d.m9076a(a4, ParticipantData.m27539a(f, a5), a6);
                }
                f.m9210e();
                if (!z2) {
                    MessagingContentProvider.m27766f(a6.m27593s());
                    MessagingContentProvider.m27765g();
                    MessagingContentProvider.m27769e();
                    if (!z) {
                        C11522d.m9286a(false, v, a4, 3, C12810o.m5238g());
                    } else if (C13915b3.m3062a("isCallBlockNotification", true)) {
                        C12778k.m5337a(a, v, iVar, C14217x3.m2146e(a, v), 1);
                    }
                    this.f11190b.putString("transaction_id", a2.f11318o);
                    this.f11190b.putString("content_location", a2.f11317n);
                    m27743w();
                }
                C12153d0.m6985c("MessagingAppDataModel", "ReceiveMmsMessageAction: Received MMS message " + a6.m27589w() + " in conversation " + a6.m27593s() + ", uri = " + a6.m27636J());
                messageData = a6;
            } finally {
                f.m9214b();
            }
        } else {
            C12153d0.m6987b("MessagingAppDataModel", "ReceiveMmsMessageAction: Skipping processing of incoming PDU");
        }
        ProcessPendingMessagesAction.m27682a(false, (Action) this);
        return messageData;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        m27756a(parcel, i);
    }
}
