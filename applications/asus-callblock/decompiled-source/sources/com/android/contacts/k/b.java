package com.android.contacts.k;

import android.database.Cursor;
import com.android.contacts.k.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/k/b.class */
public final class b implements com.android.contacts.k.a {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f1582a;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/k/b$a.class */
    public enum a {
        NONE(-1),
        CALL_VOICEMAIL(2131756473),
        CONFIGURE_VOICEMAIL(2131756474);
        
        final int d;

        a(int i) {
            this.d = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.android.contacts.k.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/k/b$b.class */
    public static final class C0046b {

        /* renamed from: a  reason: collision with root package name */
        final a.C0045a f1587a;

        /* renamed from: b  reason: collision with root package name */
        final int f1588b;

        public C0046b(a.C0045a aVar, int i) {
            this.f1587a = aVar;
            this.f1588b = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/k/b$c.class */
    private enum c {
        NO_CONNECTION(0, a.CALL_VOICEMAIL, 2131756478, 2131756475),
        NO_DATA(1, a.CALL_VOICEMAIL, 2131756478, 2131756475),
        MESSAGE_WAITING(2, a.CALL_VOICEMAIL, 2131756477, 2131756475),
        NO_NOTIFICATIONS(3, a.CALL_VOICEMAIL, 2131756478),
        INVITE_FOR_CONFIGURATION(4, a.CONFIGURE_VOICEMAIL, 2131756476),
        NO_DETAILED_NOTIFICATION(5, a.NONE, -1),
        NOT_CONFIGURED(6, a.NONE, -1),
        OK(7, a.NONE, -1),
        INVALID(8, a.NONE, -1);
        
        final int j;
        final a k;
        final int l;
        final int m;

        c(int i, a aVar, int i2) {
            this(i, aVar, i2, -1);
        }

        c(int i, a aVar, int i2, int i3) {
            this.j = i;
            this.k = aVar;
            this.l = i2;
            this.m = i3;
        }
    }

    static {
        String[] strArr = new String[6];
        f1582a = strArr;
        strArr[0] = "source_package";
        f1582a[1] = "configuration_state";
        f1582a[2] = "data_channel_state";
        f1582a[3] = "notification_channel_state";
        f1582a[4] = "settings_uri";
        f1582a[5] = "voicemail_access_uri";
    }

    private List<a.C0045a> a(List<C0046b> list) {
        Collections.sort(list, new Comparator<C0046b>() { // from class: com.android.contacts.k.b.1
            @Override // java.util.Comparator
            public final /* bridge */ /* synthetic */ int compare(C0046b bVar, C0046b bVar2) {
                return bVar.f1588b - bVar2.f1588b;
            }
        });
        ArrayList arrayList = new ArrayList();
        for (C0046b bVar : list) {
            arrayList.add(bVar.f1587a);
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f0  */
    @Override // com.android.contacts.k.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.android.contacts.k.a.C0045a> a(android.database.Cursor r11) {
        /*
            Method dump skipped, instructions count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.k.b.a(android.database.Cursor):java.util.List");
    }

    @Override // com.android.contacts.k.a
    public final int b(Cursor cursor) {
        int i;
        if (cursor != null) {
            cursor.moveToPosition(-1);
            int i2 = 0;
            while (true) {
                i = i2;
                if (!cursor.moveToNext()) {
                    break;
                }
                if (cursor.getString(0) != null && cursor.getInt(1) == 0) {
                    i2++;
                }
            }
        } else {
            i = 0;
        }
        return i;
    }
}
