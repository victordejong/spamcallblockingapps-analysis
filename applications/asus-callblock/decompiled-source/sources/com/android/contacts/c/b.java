package com.android.contacts.c;

import android.app.Fragment;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Log;
import com.android.contacts.util.PhoneCapabilityTester;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/android/contacts/c/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static HandlerThread f626a;

    /* renamed from: b  reason: collision with root package name */
    private static com.android.contacts.c.a f627b;
    private static Context f;
    private static Date g;
    private static Date h;
    private static SimpleDateFormat i;
    private static Handler j;
    private static Map<Integer, Fragment> c = new HashMap();
    private static Set<Integer> d = new HashSet();
    private static Set<Long> e = new HashSet();
    private static Object k = new Object();
    private static Handler l = new Handler() { // from class: com.android.contacts.c.b.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    for (Integer num : b.c.keySet()) {
                        b.d.add(num);
                    }
                    for (Integer num2 : b.d) {
                        Fragment fragment = (Fragment) b.c.get(num2);
                        if (num2.intValue() == 2 && fragment == null) {
                            fragment = (Fragment) b.c.get(3);
                            num2 = 3;
                        }
                        a aVar = (a) fragment;
                        if (aVar != null) {
                            aVar.d();
                            Log.d("BirthdayUpdateThread", "notifyBirthdayChange() : " + num2);
                        } else {
                            Log.d("BirthdayUpdateThread", "mOnBirthdayUpdateTreadListener == null : " + num2);
                        }
                    }
                    b.d.clear();
                    return;
                default:
                    return;
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/c/b$a.class */
    public interface a {
        void d();
    }

    public static int a(Context context, String str) {
        return context.getSharedPreferences("birthday", 0).getInt(str, -1);
    }

    public static HandlerThread a(Context context) {
        HandlerThread handlerThread;
        if (f626a != null) {
            handlerThread = f626a;
        } else {
            HandlerThread handlerThread2 = new HandlerThread("BirthdayUpdateThread");
            f626a = handlerThread2;
            handlerThread2.setPriority(1);
            f626a.start();
            j = new Handler(f626a.getLooper()) { // from class: com.android.contacts.c.b.2

                /* renamed from: a  reason: collision with root package name */
                boolean f628a = false;

                @Override // android.os.Handler
                public final void handleMessage(Message message) {
                    Bundle data = message.getData();
                    int i2 = message.arg1;
                    long j2 = data.getLong("id");
                    int i3 = message.arg2;
                    if (j2 > 0 && b.a(j2, i3) && i2 != 8) {
                        b.d.add(Integer.valueOf(i2));
                        this.f628a = true;
                    }
                    if (this.f628a) {
                        this.f628a = false;
                        b.l.sendEmptyMessage(1);
                    }
                    super.handleMessage(message);
                }
            };
            f627b = new com.android.contacts.c.a(context.getContentResolver());
            f = context;
            i = new SimpleDateFormat("y/M/d");
            Log.d("BirthdayUpdateThread", "new Thread");
            handlerThread = f626a;
        }
        return handlerThread;
    }

    public static void a() {
        c.clear();
        e.clear();
        d.clear();
        f = null;
        i = null;
        f627b = null;
        f626a = null;
        j = null;
        l = null;
    }

    public static void a(int i2) {
        if (c.containsKey(Integer.valueOf(i2))) {
            c.remove(Integer.valueOf(i2));
            Log.d("BirthdayUpdateThread", "unRegister tag:" + i2 + " registered number: " + c.size());
        }
    }

    public static void a(int i2, long j2, int i3) {
        if (!e.contains(Long.valueOf(j2))) {
            Bundle bundle = new Bundle();
            Message message = new Message();
            synchronized (k) {
                e.add(Long.valueOf(j2));
            }
            bundle.putLong("id", j2);
            message.arg1 = i2;
            message.arg2 = i3;
            message.setData(bundle);
            if (j != null) {
                j.sendMessage(message);
            }
        } else if (i2 == 8) {
            Log.d("BirthdayUpdateThread", "contactId = " + j2 + " is change and need to check again");
            if (e.contains(Long.valueOf(j2))) {
                e.remove(Long.valueOf(j2));
            }
        }
    }

    public static void a(int i2, Fragment fragment) {
        boolean z = false;
        c.put(Integer.valueOf(i2), fragment);
        h = Calendar.getInstance().getTime();
        if (g == null || h.compareTo(g) < 0) {
            g = h;
        } else if (h.getYear() == g.getYear() && h.getMonth() == g.getMonth() && h.getDate() == g.getDate()) {
            z = true;
        } else {
            g = h;
        }
        if (!z) {
            synchronized (k) {
                if (e != null && e.size() > 0) {
                    e.clear();
                    Log.d("BirthdayUpdateThread", " mCheckedContacts.clear()");
                }
            }
        }
        Log.d("BirthdayUpdateThread", "register tag:" + i2 + " registered number: " + c.size());
    }

    static /* synthetic */ boolean a(long j2, int i2) {
        int a2;
        boolean z = false;
        if (j2 >= 0 && (a2 = f627b.a(j2)) != i2) {
            z = a(f, String.valueOf(j2), a2);
            Log.d("BirthdayUpdateThread", "queryBirthdayInfo Update birthday that contactId is " + j2 + " from " + PhoneCapabilityTester.privacyLogCheck(Integer.toString(i2)) + " to " + PhoneCapabilityTester.privacyLogCheck(Integer.toString(a2)));
        }
        return z;
    }

    private static boolean a(Context context, String str, int i2) {
        boolean z = false;
        try {
            context.getSharedPreferences("birthday", 0).edit().putInt(str, i2).commit();
            Log.d("BirthdayUpdateThread", "setBirthdaySharedPreferences contactId=" + str + ",val=" + i2);
            z = true;
        } catch (Exception e2) {
            e2.getStackTrace();
        }
        return z;
    }
}
