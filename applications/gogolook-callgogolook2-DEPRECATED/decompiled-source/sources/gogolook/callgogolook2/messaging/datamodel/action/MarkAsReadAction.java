package gogolook.callgogolook2.messaging.datamodel.action;

import android.content.ContentValues;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.C11522d;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p521j0.p529x.C12810o;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/MarkAsReadAction.class */
public class MarkAsReadAction extends Action implements Parcelable {
    public static final Parcelable.Creator<MarkAsReadAction> CREATOR = new C4627a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.MarkAsReadAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/MarkAsReadAction$a.class */
    public static final class C4627a implements Parcelable.Creator<MarkAsReadAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MarkAsReadAction createFromParcel(Parcel parcel) {
            return new MarkAsReadAction(parcel, (C4627a) null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MarkAsReadAction[] newArray(int i) {
            return new MarkAsReadAction[i];
        }
    }

    public MarkAsReadAction(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ MarkAsReadAction(Parcel parcel, C4627a aVar) {
        this(parcel);
    }

    public MarkAsReadAction(String str, String str2, int i) {
        this.f11190b.putString("conversation_id", str);
        this.f11190b.putString("number", str2);
        this.f11190b.putInt("filter_type", i);
    }

    public MarkAsReadAction(Collection<String> collection, int i) {
        this.f11190b.putStringArrayList("conversation_list", new ArrayList<>(collection));
        this.f11190b.putInt("filter_type", i);
    }

    /* renamed from: a */
    public static void m27699a(String str, int i) {
        if (!TextUtils.isEmpty(str)) {
            new MarkAsReadAction(str, null, i).m27742x();
        }
    }

    /* renamed from: a */
    public static void m27698a(Collection<String> collection, int i) {
        if (collection != null) {
            new MarkAsReadAction(collection, i).m27742x();
        }
    }

    /* renamed from: b */
    public static void m27697b(String str, int i) {
        if (!TextUtils.isEmpty(str)) {
            new MarkAsReadAction(null, str, i).m27742x();
        }
    }

    /* renamed from: a */
    public final String m27700a(int i) {
        return 1 == i ? "(read !=1 OR seen !=1 ) AND conversation_id=? AND (message_filter_type=? OR message_filter_type=0)" : "(read !=1 OR seen !=1 ) AND conversation_id=? AND message_filter_type=?";
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    public Object mo27648b() {
        ArrayList<String> arrayList;
        String[] strArr;
        String string = this.f11190b.getString("conversation_id");
        ArrayList<String> stringArrayList = this.f11190b.getStringArrayList("conversation_list");
        String string2 = this.f11190b.getString("number");
        int i = this.f11190b.getInt("filter_type");
        boolean z = -1 == i;
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        if (!C12810o.m5235j() || !z) {
            arrayList = stringArrayList;
            if (stringArrayList == null) {
                arrayList = new ArrayList<>();
            }
            String str = string;
            if (string == null) {
                str = string;
                if (string2 != null) {
                    str = C11521c.m9336e(f, string2);
                }
            }
            if (str != null) {
                arrayList.add(str);
            }
        } else {
            arrayList = C11521c.m9389a(f);
        }
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            f.m9227a();
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("conversation_id", next);
                contentValues.put("read", (Integer) 1);
                contentValues.put("seen", (Integer) 1);
                String a = z ? "(read !=1 OR seen !=1 ) AND conversation_id=?" : m27700a(i);
                if (z) {
                    strArr = new String[1];
                    strArr[0] = next;
                } else {
                    strArr = new String[2];
                    strArr[0] = next;
                    strArr[1] = String.valueOf(i);
                }
                if (f.m9220a(NotificationCompat.CarExtender.KEY_MESSAGES, contentValues, a, strArr) > 0) {
                    MessagingContentProvider.m27766f(next);
                    C11522d.m9286a(false, string2, next, 3, i);
                }
                f.m9210e();
                if (C12810o.m5232m()) {
                    long o = C11521c.m9325o(f, next);
                    if (o != -1) {
                        C11834j.m8097b(o, Long.MAX_VALUE);
                    }
                }
            } finally {
                f.m9214b();
            }
        }
        if (arrayList.size() <= 0) {
            return null;
        }
        MessagingContentProvider.m27769e();
        return null;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        m27756a(parcel, i);
    }
}
