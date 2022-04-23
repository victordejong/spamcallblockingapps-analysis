package com.netqin.p525cm.permission;

import android.os.Build;
import androidx.fragment.app.FragmentActivity;
import java.util.Arrays;
import p131c.p157c.p158a.p159a.p160a.C2454a;
import p131c.p431l.p432a.p454d.C6799a;
import p131c.p431l.p432a.p468n.C6854m;
import p573f.C9946p;
import p573f.p590w.p591b.AbstractC10031l;
import p573f.p590w.p592c.C10059q;
/* renamed from: com.netqin.cm.permission.CBPermissionsHelper */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/permission/CBPermissionsHelper.class */
public final class CBPermissionsHelper {

    /* renamed from: a */
    public static final String[] f35654a;

    /* renamed from: c */
    public static String[] f35656c;

    /* renamed from: d */
    public static final CBPermissionsHelper f35657d = new CBPermissionsHelper();

    /* renamed from: b */
    public static final String[] f35655b = {"android.permission.READ_CONTACTS", "android.permission.WRITE_CONTACTS"};

    static {
        String[] strArr = {"android.permission.READ_PHONE_STATE", "android.permission.READ_CALL_LOG", "android.permission.CALL_PHONE"};
        f35654a = strArr;
        f35656c = strArr;
    }

    /* renamed from: a */
    public static final void m3292a(FragmentActivity fragmentActivity, int i) {
        m3290a(fragmentActivity, i, null, 4, null);
    }

    /* renamed from: a */
    public static final void m3291a(FragmentActivity fragmentActivity, int i, AbstractC10031l<? super Integer, C9946p> lVar) {
        C10059q.m1637b(fragmentActivity, "activity");
        m3284d();
        if (i == 1 || i == 3) {
            String[] strArr = f35656c;
            C2454a.m29727a(fragmentActivity, (String[]) Arrays.copyOf(strArr, strArr.length), new CBPermissionsHelper$setCallReminderTypeInActivity$1(i, fragmentActivity, lVar));
            return;
        }
        C6799a.m19766a(i);
    }

    /* renamed from: a */
    public static /* synthetic */ void m3290a(FragmentActivity fragmentActivity, int i, AbstractC10031l lVar, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            lVar = null;
        }
        m3291a(fragmentActivity, i, lVar);
    }

    /* renamed from: a */
    public static final void m3289a(FragmentActivity fragmentActivity, AbstractC10031l<? super Integer, C9946p> lVar) {
        C10059q.m1637b(fragmentActivity, "activity");
        String[] strArr = f35655b;
        C2454a.m29727a(fragmentActivity, (String[]) Arrays.copyOf(strArr, strArr.length), new CBPermissionsHelper$requestContactsPermissionsInActivity$1(lVar));
    }

    /* renamed from: a */
    public static final boolean m3293a() {
        String[] strArr = f35655b;
        boolean a = C2454a.m29723a((String[]) Arrays.copyOf(strArr, strArr.length));
        if (a) {
            C6854m.m19556b("CONTACTS_PERMISSION_DENIED_FOREVER", false);
        }
        return a;
    }

    /* renamed from: b */
    public static final void m3286b(FragmentActivity fragmentActivity, AbstractC10031l<? super Integer, C9946p> lVar) {
        C10059q.m1637b(fragmentActivity, "activity");
        m3284d();
        String[] strArr = f35656c;
        C2454a.m29727a(fragmentActivity, (String[]) Arrays.copyOf(strArr, strArr.length), new CBPermissionsHelper$requestPhonePermissionsInActivity$1(lVar));
    }

    /* renamed from: b */
    public static final boolean m3287b() {
        m3284d();
        String[] strArr = f35656c;
        boolean a = C2454a.m29723a((String[]) Arrays.copyOf(strArr, strArr.length));
        if (a) {
            C6854m.m19556b("PHONE_PERMISSION_DENIED_FOREVER", false);
        }
        return a;
    }

    /* renamed from: c */
    public static final boolean m3285c() {
        Object a = C6854m.m19558a("CONTACTS_PERMISSION_DENIED_FOREVER", false);
        C10059q.m1642a(a, "PreferencesHelper.get(KE…ON_DENIED_FOREVER, false)");
        return ((Boolean) a).booleanValue();
    }

    /* renamed from: d */
    public static final void m3284d() {
        if (Build.VERSION.SDK_INT >= 26) {
            f35656c = new String[]{"android.permission.READ_PHONE_STATE", "android.permission.READ_CALL_LOG", "android.permission.CALL_PHONE", "android.permission.ANSWER_PHONE_CALLS"};
        }
    }

    /* renamed from: e */
    public static final boolean m3283e() {
        Object a = C6854m.m19558a("PHONE_PERMISSION_DENIED_FOREVER", false);
        C10059q.m1642a(a, "PreferencesHelper.get(KE…ON_DENIED_FOREVER, false)");
        return ((Boolean) a).booleanValue();
    }
}
