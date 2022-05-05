package p081h.p203i.p325c.p372x;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.firebase.messaging.RemoteMessage;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* renamed from: h.i.c.x.r */
/* loaded from: classes2-dex2jar.jar:h/i/c/x/r.class */
public class C9999r implements Parcelable.Creator<RemoteMessage> {
    /* renamed from: a */
    public static void m13690a(RemoteMessage remoteMessage, Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21223a(parcel, 2, remoteMessage.f7771a, false);
        C7031b.m21229a(parcel, a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public RemoteMessage createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            if (C7029a.m21265a(a) != 2) {
                C7029a.m21266F(parcel, a);
            } else {
                bundle = C7029a.m21251f(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new RemoteMessage(bundle);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public RemoteMessage[] newArray(int i) {
        return new RemoteMessage[i];
    }
}
