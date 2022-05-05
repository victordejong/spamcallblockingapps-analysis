package gogolook.callgogolook2.messaging.datamodel.action;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import java.util.ArrayList;
import java.util.List;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p475c.p476w.C11569a;
import p459j.p460a.p474c0.p475c.p478y.C11625l;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/GetOrCreateConversationAction.class */
public class GetOrCreateConversationAction extends Action implements Parcelable {
    public static final Parcelable.Creator<GetOrCreateConversationAction> CREATOR = new C4621a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.GetOrCreateConversationAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/GetOrCreateConversationAction$a.class */
    public static final class C4621a implements Parcelable.Creator<GetOrCreateConversationAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GetOrCreateConversationAction createFromParcel(Parcel parcel) {
            return new GetOrCreateConversationAction(parcel, (C4621a) null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GetOrCreateConversationAction[] newArray(int i) {
            return new GetOrCreateConversationAction[i];
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.GetOrCreateConversationAction$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/GetOrCreateConversationAction$b.class */
    public interface AbstractC4622b {
        /* renamed from: a */
        void mo8773a(C11569a aVar, Object obj);

        /* renamed from: a */
        void mo8772a(C11569a aVar, Object obj, String str);
    }

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.GetOrCreateConversationAction$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/GetOrCreateConversationAction$c.class */
    public static class C4623c extends C11569a implements C11569a.AbstractC11572c {

        /* renamed from: j */
        public final AbstractC4622b f11194j;

        public C4623c(Object obj, AbstractC4622b bVar) {
            super(1, Action.m27751a("GetOrCreateConversationAction"), obj);
            m9105a((C11569a.AbstractC11572c) this);
            this.f11194j = bVar;
        }

        @Override // p459j.p460a.p474c0.p475c.p476w.C11569a.AbstractC11572c
        /* renamed from: a */
        public void mo9089a(C11569a aVar, Action action, Object obj, Object obj2) {
            if (obj2 == null) {
                this.f11194j.mo8773a(aVar, obj);
            } else {
                this.f11194j.mo8772a(aVar, obj, (String) obj2);
            }
        }

        @Override // p459j.p460a.p474c0.p475c.p476w.C11569a.AbstractC11572c
        /* renamed from: b */
        public void mo9088b(C11569a aVar, Action action, Object obj, Object obj2) {
            C12151d.m7005a("Unreachable");
            this.f11194j.mo8773a(aVar, obj);
        }
    }

    public GetOrCreateConversationAction(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ GetOrCreateConversationAction(Parcel parcel, C4621a aVar) {
        this(parcel);
    }

    public GetOrCreateConversationAction(ArrayList<ParticipantData> arrayList, String str) {
        super(str);
        this.f11190b.putParcelableArrayList("participants_list", arrayList);
    }

    /* renamed from: a */
    public static C4623c m27713a(ArrayList<ParticipantData> arrayList, Object obj, AbstractC4622b bVar) {
        C4623c cVar = new C4623c(obj, bVar);
        new GetOrCreateConversationAction(arrayList, cVar.m9099b()).m27754a((C11569a) cVar);
        return cVar;
    }

    /* renamed from: a */
    public static C4623c m27712a(String[] strArr, Object obj, C11625l lVar) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            String trim = str.trim();
            if (!TextUtils.isEmpty(trim)) {
                arrayList.add(ParticipantData.m27527i(trim));
            } else {
                C12153d0.m6981e("MessagingApp", "getOrCreateConversation hit empty recipient");
            }
        }
        return m27713a(arrayList, obj, lVar);
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    public Object mo27648b() {
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        ArrayList parcelableArrayList = this.f11190b.getParcelableArrayList("participants_list");
        C11521c.m9337d(parcelableArrayList);
        ArrayList<String> c = C11521c.m9341c(parcelableArrayList);
        long a = C11834j.m8126a(AbstractC11516a.m9413n().mo9412a(), c);
        String str = null;
        if (a < 0) {
            return null;
        }
        if (c.size() == 1) {
            str = c.get(0);
        }
        return C11521c.m9382a(f, a, str, (List<ParticipantData>) parcelableArrayList, false, false, (String) null);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        m27756a(parcel, i);
    }
}
