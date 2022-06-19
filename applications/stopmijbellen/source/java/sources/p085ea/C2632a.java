package p085ea;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import p026c0.C0774a;
import p066d0.C2134a;
/* renamed from: ea.a */
/* loaded from: classes2-dex2jar.jar:ea/a.class */
public class C2632a {

    /* renamed from: a */
    public static Context f9063a;

    /* renamed from: b */
    public static SharedPreferences f9064b;

    /* renamed from: c */
    public static ArrayList<C2634c> f9065c = new ArrayList<>();

    /* renamed from: a */
    public static void m3382a(Activity activity, String[] strArr, AbstractC2633b abstractC2633b) {
        boolean z;
        if (abstractC2633b == null) {
            return;
        }
        int length = strArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = true;
                break;
            } else if (C2134a.m3846a(activity, strArr[i]) != 0) {
                z = false;
                break;
            } else {
                i++;
            }
        }
        if (z) {
            abstractC2633b.mo3378b();
            return;
        }
        C2634c c2634c = new C2634c(new ArrayList(Arrays.asList(strArr)), abstractC2633b);
        f9065c.add(c2634c);
        C0774a.m7383c(activity, strArr, c2634c.f9067a);
    }

    /* renamed from: b */
    public static void m3381b(Context context) {
        f9064b = context.getSharedPreferences("pl.tajchert.runtimepermissionhelper", 0);
        f9063a = context;
    }

    /* renamed from: c */
    public static void m3380c(int i, int[] iArr) {
        boolean z;
        C2634c c2634c = new C2634c(i);
        if (f9065c.contains(c2634c)) {
            ArrayList<C2634c> arrayList = f9065c;
            C2634c c2634c2 = arrayList.get(arrayList.indexOf(c2634c));
            int length = iArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    z = true;
                    break;
                } else if (iArr[i2] != 0) {
                    z = false;
                    break;
                } else {
                    i2++;
                }
            }
            if (z) {
                c2634c2.f9068b.mo3378b();
            } else {
                c2634c2.f9068b.mo3379a();
            }
            f9065c.remove(c2634c);
        }
        if (f9063a != null) {
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            arrayList2.add("android.permission.ACCESS_FINE_LOCATION");
            arrayList2.add("android.permission.ACCESS_COARSE_LOCATION");
            arrayList2.add("android.permission.WRITE_CALENDAR");
            arrayList2.add("android.permission.READ_CALENDAR");
            arrayList2.add("android.permission.CAMERA");
            arrayList2.add("android.permission.WRITE_CONTACTS");
            arrayList2.add("android.permission.READ_CONTACTS");
            arrayList2.add("android.permission.GET_ACCOUNTS");
            arrayList2.add("android.permission.RECORD_AUDIO");
            arrayList2.add("android.permission.CALL_PHONE");
            arrayList2.add("android.permission.READ_PHONE_STATE");
            arrayList2.add("android.permission.READ_CALL_LOG");
            arrayList2.add("android.permission.WRITE_CALL_LOG");
            arrayList2.add("com.android.voicemail.permission.ADD_VOICEMAIL");
            arrayList2.add("android.permission.USE_SIP");
            arrayList2.add("android.permission.PROCESS_OUTGOING_CALLS");
            arrayList2.add("android.permission.BODY_SENSORS");
            arrayList2.add("android.permission.SEND_SMS");
            arrayList2.add("android.permission.READ_SMS");
            arrayList2.add("android.permission.RECEIVE_SMS");
            arrayList2.add("android.permission.RECEIVE_WAP_PUSH");
            arrayList2.add("android.permission.RECEIVE_MMS");
            arrayList2.add("android.permission.READ_EXTERNAL_STORAGE");
            arrayList2.add("android.permission.WRITE_EXTERNAL_STORAGE");
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                String str = (String) it2.next();
                if (C2134a.m3846a(f9063a, str) == 0) {
                    arrayList3.add(str);
                }
            }
            f9064b.edit().putStringSet("previous_permissions", new HashSet(arrayList3)).apply();
            return;
        }
        throw new RuntimeException("Must call init() earlier");
    }
}
