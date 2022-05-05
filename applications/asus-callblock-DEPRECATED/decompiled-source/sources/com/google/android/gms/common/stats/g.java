package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import com.android.contacts.util.AsusRedPointNotificationDualPanelHelper;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/g.class */
public final class g implements Parcelable.Creator<WakeLockEvent> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(WakeLockEvent wakeLockEvent, Parcel parcel) {
        int a2 = b.a(parcel, 20293);
        b.b(parcel, 1, wakeLockEvent.f4076a);
        b.a(parcel, 2, wakeLockEvent.f4077b);
        b.a(parcel, 4, wakeLockEvent.d);
        b.b(parcel, 5, wakeLockEvent.g);
        List<String> list = wakeLockEvent.h;
        if (list != null) {
            int a3 = b.a(parcel, 6);
            parcel.writeStringList(list);
            b.b(parcel, a3);
        }
        b.a(parcel, 8, wakeLockEvent.j);
        b.a(parcel, 10, wakeLockEvent.e);
        b.b(parcel, 11, wakeLockEvent.c);
        b.a(parcel, 12, wakeLockEvent.i);
        b.a(parcel, 13, wakeLockEvent.l);
        b.b(parcel, 14, wakeLockEvent.k);
        float f = wakeLockEvent.m;
        b.a(parcel, 15, 4);
        parcel.writeFloat(f);
        b.a(parcel, 16, wakeLockEvent.n);
        b.a(parcel, 17, wakeLockEvent.f);
        b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ WakeLockEvent createFromParcel(Parcel parcel) {
        int a2 = a.a(parcel);
        int i = 0;
        long j = 0;
        int i2 = 0;
        String str = null;
        int i3 = 0;
        ArrayList<String> arrayList = null;
        String str2 = null;
        long j2 = 0;
        int i4 = 0;
        String str3 = null;
        String str4 = null;
        float f = 0.0f;
        long j3 = 0;
        String str5 = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = a.d(parcel, readInt);
                    break;
                case 2:
                    j = a.f(parcel, readInt);
                    break;
                case 3:
                case 7:
                case 9:
                default:
                    a.b(parcel, readInt);
                    break;
                case 4:
                    str = a.k(parcel, readInt);
                    break;
                case 5:
                    i3 = a.d(parcel, readInt);
                    break;
                case 6:
                    int a3 = a.a(parcel, readInt);
                    int dataPosition = parcel.dataPosition();
                    if (a3 != 0) {
                        arrayList = parcel.createStringArrayList();
                        parcel.setDataPosition(a3 + dataPosition);
                        break;
                    } else {
                        arrayList = null;
                        break;
                    }
                case 8:
                    j2 = a.f(parcel, readInt);
                    break;
                case 10:
                    str3 = a.k(parcel, readInt);
                    break;
                case 11:
                    i2 = a.d(parcel, readInt);
                    break;
                case 12:
                    str2 = a.k(parcel, readInt);
                    break;
                case 13:
                    str4 = a.k(parcel, readInt);
                    break;
                case AsusRedPointNotificationDualPanelHelper.ID.UPDATE_VERSION /* 14 */:
                    i4 = a.d(parcel, readInt);
                    break;
                case 15:
                    f = a.h(parcel, readInt);
                    break;
                case 16:
                    j3 = a.f(parcel, readInt);
                    break;
                case 17:
                    str5 = a.k(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new WakeLockEvent(i, j, i2, str, i3, arrayList, str2, j2, i4, str3, str4, f, j3, str5);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ WakeLockEvent[] newArray(int i) {
        return new WakeLockEvent[i];
    }
}
