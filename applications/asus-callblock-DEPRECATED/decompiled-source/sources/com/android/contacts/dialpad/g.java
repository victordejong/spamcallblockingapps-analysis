package com.android.contacts.dialpad;

import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/g.class */
public final class g extends PhoneStateListener {

    /* renamed from: a  reason: collision with root package name */
    private static ArrayList<a> f1064a = new ArrayList<>();

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/g$a.class */
    public interface a {
        void a(int i, String str);

        void a(ServiceState serviceState);
    }

    public static void a(a aVar) {
        f1064a.add(aVar);
    }

    public static void b(a aVar) {
        f1064a.remove(aVar);
    }

    @Override // android.telephony.PhoneStateListener
    public final void onCallStateChanged(int i, String str) {
        super.onCallStateChanged(i, str);
        if (f1064a.size() > 0) {
            Iterator<a> it = f1064a.iterator();
            while (it.hasNext()) {
                it.next().a(i, str);
            }
        }
    }

    @Override // android.telephony.PhoneStateListener
    public final void onServiceStateChanged(ServiceState serviceState) {
        super.onServiceStateChanged(serviceState);
        if (f1064a.size() > 0) {
            Iterator<a> it = f1064a.iterator();
            while (it.hasNext()) {
                it.next().a(serviceState);
            }
        }
    }
}
