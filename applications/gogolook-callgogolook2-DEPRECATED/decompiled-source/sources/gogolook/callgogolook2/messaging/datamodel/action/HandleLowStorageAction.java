package gogolook.callgogolook2.messaging.datamodel.action;

import android.os.Parcel;
import android.os.Parcelable;
import p459j.p460a.p474c0.p488f.C11839m;
import p459j.p460a.p474c0.p499h.C12151d;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/HandleLowStorageAction.class */
public class HandleLowStorageAction extends Action implements Parcelable {
    public static final Parcelable.Creator<HandleLowStorageAction> CREATOR = new C4624a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.HandleLowStorageAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/HandleLowStorageAction$a.class */
    public static final class C4624a implements Parcelable.Creator<HandleLowStorageAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public HandleLowStorageAction createFromParcel(Parcel parcel) {
            return new HandleLowStorageAction(parcel, (C4624a) null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public HandleLowStorageAction[] newArray(int i) {
            return new HandleLowStorageAction[i];
        }
    }

    public HandleLowStorageAction(int i, long j) {
        this.f11190b.putInt("sub_op_code", i);
        this.f11190b.putLong("cutoff_duration_millis", j);
    }

    public HandleLowStorageAction(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ HandleLowStorageAction(Parcel parcel, C4624a aVar) {
        this(parcel);
    }

    /* renamed from: a */
    public static void m27711a(long j) {
        new HandleLowStorageAction(100, j).m27742x();
    }

    /* renamed from: b */
    public static void m27710b(long j) {
        new HandleLowStorageAction(101, j).m27742x();
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    public Object mo27648b() {
        int i = this.f11190b.getInt("sub_op_code");
        long j = this.f11190b.getLong("cutoff_duration_millis");
        if (i == 100) {
            C11839m.m8064a(0, j);
        } else if (i != 101) {
            C12151d.m7005a("Unsupported action type!");
        } else {
            C11839m.m8064a(1, j);
        }
        return true;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        m27756a(parcel, i);
    }
}
