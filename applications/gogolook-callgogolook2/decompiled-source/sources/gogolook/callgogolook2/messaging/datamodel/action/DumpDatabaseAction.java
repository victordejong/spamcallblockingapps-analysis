package gogolook.callgogolook2.messaging.datamodel.action;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/DumpDatabaseAction.class */
public class DumpDatabaseAction extends Action implements Parcelable {
    public static final Parcelable.Creator<DumpDatabaseAction> CREATOR = new C4619a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.DumpDatabaseAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/DumpDatabaseAction$a.class */
    public static final class C4619a implements Parcelable.Creator<DumpDatabaseAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DumpDatabaseAction createFromParcel(Parcel parcel) {
            return new DumpDatabaseAction(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DumpDatabaseAction[] newArray(int i) {
            return new DumpDatabaseAction[i];
        }
    }

    public DumpDatabaseAction() {
    }

    public DumpDatabaseAction(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ DumpDatabaseAction(Parcel parcel, C4619a aVar) {
        this(parcel);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0, types: [java.io.BufferedOutputStream] */
    /* JADX WARN: Type inference failed for: r14v3, types: [java.io.BufferedOutputStream] */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6, types: [java.io.BufferedOutputStream] */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo27648b() {
        /*
            Method dump skipped, instructions count: 501
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.datamodel.action.DumpDatabaseAction.mo27648b():java.lang.Object");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        m27756a(parcel, i);
    }
}
