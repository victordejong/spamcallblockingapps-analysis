package gogolook.callgogolook2.messaging.datamodel.action;

import android.content.ContentValues;
import android.os.Parcel;
import android.os.Parcelable;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p499h.C12151d;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/UpdateMessagePartSizeAction.class */
public class UpdateMessagePartSizeAction extends Action implements Parcelable {
    public static final Parcelable.Creator<UpdateMessagePartSizeAction> CREATOR = new C4651a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.UpdateMessagePartSizeAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/UpdateMessagePartSizeAction$a.class */
    public static final class C4651a implements Parcelable.Creator<UpdateMessagePartSizeAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UpdateMessagePartSizeAction createFromParcel(Parcel parcel) {
            return new UpdateMessagePartSizeAction(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UpdateMessagePartSizeAction[] newArray(int i) {
            return new UpdateMessagePartSizeAction[i];
        }
    }

    public UpdateMessagePartSizeAction(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ UpdateMessagePartSizeAction(Parcel parcel, C4651a aVar) {
        this(parcel);
    }

    public UpdateMessagePartSizeAction(String str, int i, int i2) {
        this.f11190b.putString("part_id", str);
        this.f11190b.putInt("width", i);
        this.f11190b.putInt("height", i2);
    }

    /* renamed from: a */
    public static void m27650a(String str, int i, int i2) {
        C12151d.m7000b(str);
        C12151d.m7011a(i, 0, Integer.MAX_VALUE);
        C12151d.m7011a(i2, 0, Integer.MAX_VALUE);
        new UpdateMessagePartSizeAction(str, i, i2).m27742x();
    }

    /* JADX WARN: Finally extract failed */
    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    public Object mo27648b() {
        String string = this.f11190b.getString("part_id");
        int i = this.f11190b.getInt("width");
        int i2 = this.f11190b.getInt("height");
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        f.m9227a();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("width", Integer.valueOf(i));
            contentValues.put("height", Integer.valueOf(i2));
            C11521c.m9365a(f, "parts", "_id", string, contentValues);
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
