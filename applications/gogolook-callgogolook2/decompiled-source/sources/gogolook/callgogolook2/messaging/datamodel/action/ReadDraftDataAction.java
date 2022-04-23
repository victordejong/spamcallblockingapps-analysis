package gogolook.callgogolook2.messaging.datamodel.action;

import android.os.Parcel;
import android.os.Parcelable;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p475c.p476w.C11569a;
import p459j.p460a.p474c0.p475c.p478y.C11608e;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/ReadDraftDataAction.class */
public class ReadDraftDataAction extends Action implements Parcelable {
    public static final Parcelable.Creator<ReadDraftDataAction> CREATOR = new C4634a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.ReadDraftDataAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/ReadDraftDataAction$a.class */
    public static final class C4634a implements Parcelable.Creator<ReadDraftDataAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ReadDraftDataAction createFromParcel(Parcel parcel) {
            return new ReadDraftDataAction(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ReadDraftDataAction[] newArray(int i) {
            return new ReadDraftDataAction[i];
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.ReadDraftDataAction$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/ReadDraftDataAction$b.class */
    public class C4635b {

        /* renamed from: a */
        public final MessageData f11196a;

        /* renamed from: b */
        public final C11608e f11197b;

        public C4635b(ReadDraftDataAction readDraftDataAction, MessageData messageData, C11608e eVar) {
            this.f11196a = messageData;
            this.f11197b = eVar;
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.ReadDraftDataAction$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/ReadDraftDataAction$c.class */
    public interface AbstractC4636c {
        /* renamed from: a */
        void mo8836a(ReadDraftDataAction readDraftDataAction, Object obj);

        /* renamed from: a */
        void mo8835a(ReadDraftDataAction readDraftDataAction, Object obj, MessageData messageData, C11608e eVar);
    }

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.ReadDraftDataAction$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/ReadDraftDataAction$d.class */
    public static class C4637d extends C11569a implements C11569a.AbstractC11572c {

        /* renamed from: j */
        public final AbstractC4636c f11198j;

        public C4637d(Object obj, AbstractC4636c cVar) {
            super(1, Action.m27751a("ReadDraftDataAction"), obj);
            m9105a((C11569a.AbstractC11572c) this);
            this.f11198j = cVar;
        }

        @Override // p459j.p460a.p474c0.p475c.p476w.C11569a.AbstractC11572c
        /* renamed from: a */
        public void mo9089a(C11569a aVar, Action action, Object obj, Object obj2) {
            C4635b bVar = (C4635b) obj2;
            if (bVar == null) {
                this.f11198j.mo8836a((ReadDraftDataAction) action, obj);
            } else {
                this.f11198j.mo8835a((ReadDraftDataAction) action, obj, bVar.f11196a, bVar.f11197b);
            }
        }

        @Override // p459j.p460a.p474c0.p475c.p476w.C11569a.AbstractC11572c
        /* renamed from: b */
        public void mo9088b(C11569a aVar, Action action, Object obj, Object obj2) {
            C12151d.m7005a("Reading draft should not fail");
        }
    }

    public ReadDraftDataAction(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ ReadDraftDataAction(Parcel parcel, C4634a aVar) {
        this(parcel);
    }

    public ReadDraftDataAction(String str, MessageData messageData, String str2) {
        super(str2);
        this.f11190b.putString("conversationId", str);
        this.f11190b.putParcelable("draftMessage", messageData);
    }

    /* renamed from: a */
    public static C4637d m27673a(String str, MessageData messageData, Object obj, AbstractC4636c cVar) {
        C4637d dVar = new C4637d(obj, cVar);
        new ReadDraftDataAction(str, messageData, dVar.m9099b()).m27754a((C11569a) dVar);
        return dVar;
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    public Object mo27648b() {
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        String string = this.f11190b.getString("conversationId");
        MessageData messageData = (MessageData) this.f11190b.getParcelable("draftMessage");
        C11608e a = C11608e.m8959a(f, string);
        MessageData messageData2 = null;
        if (a == null) {
            return null;
        }
        if (messageData == null) {
            messageData2 = C11521c.m9349b(f, string, a.m8947l());
        }
        if (messageData2 == null) {
            messageData2 = MessageData.m27619a(string, a.m8947l(), messageData);
            C12153d0.m6991a("MessagingApp", "ReadDraftMessage: created draft. conversationId=" + string + " selfId=" + a.m8947l());
        } else {
            C12153d0.m6991a("MessagingApp", "ReadDraftMessage: read draft. conversationId=" + string + " selfId=" + a.m8947l());
        }
        return new C4635b(this, messageData2, a);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        m27756a(parcel, i);
    }
}
