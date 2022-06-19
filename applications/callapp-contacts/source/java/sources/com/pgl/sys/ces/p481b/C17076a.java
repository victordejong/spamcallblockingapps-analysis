package com.pgl.sys.ces.p481b;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.pgl.sys.ces.b.a */
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/b/a.class */
public class C17076a {

    /* renamed from: c */
    private static C17076a f60614c;

    /* renamed from: a */
    public List<String> f60615a = new ArrayList();

    /* renamed from: b */
    private Context f60616b;

    private C17076a(Context context) {
        this.f60616b = null;
        this.f60616b = context;
    }

    /* renamed from: a */
    public static C17076a m5902a(Context context) {
        if (f60614c == null) {
            synchronized (C17076a.class) {
                try {
                    if (f60614c == null) {
                        f60614c = new C17076a(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f60614c;
    }

    /* renamed from: a */
    public final String m5903a() {
        String str;
        int i;
        Throwable th;
        Throwable th2;
        int intExtra;
        Intent registerReceiver;
        int i2 = -1;
        try {
            try {
            } catch (Throwable th3) {
                th = th3;
                i = -1;
            }
        } catch (Exception e) {
            str = new StringBuilder("-10001").toString();
        }
        synchronized (this) {
            try {
                Intent registerReceiver2 = this.f60616b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
                intExtra = registerReceiver2 == null ? -1 : registerReceiver2.getIntExtra("plugged", -1);
            } catch (Throwable th4) {
                th2 = th4;
            }
            try {
                if (this.f60616b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED")) != null) {
                    i2 = Math.round(((registerReceiver.getIntExtra("level", -1) / registerReceiver.getIntExtra("scale", -1)) * 100.0f) * 10.0f) / 10;
                }
            } catch (Throwable th5) {
                th2 = th5;
                i2 = intExtra;
                i = -1;
                while (true) {
                    try {
                        break;
                    } catch (Throwable th6) {
                        th2 = th6;
                    }
                }
                try {
                    throw th2;
                } catch (Throwable th7) {
                    th = th7;
                    new StringBuilder().append((i2 * 10000) + i);
                    throw th;
                }
            }
            try {
                StringBuilder sb = new StringBuilder();
                sb.append((intExtra * 10000) + i2);
                str = sb.toString();
                return str;
            } catch (Throwable th8) {
                th2 = th8;
                int i3 = i2;
                i2 = intExtra;
                i = i3;
                while (true) {
                    break;
                    break;
                }
                throw th2;
            }
        }
    }

    /* renamed from: b */
    public final String m5901b() {
        synchronized (this) {
            String str = "";
            int size = this.f60615a.size();
            if (size <= 0) {
                return "";
            }
            if (size == 1) {
                return this.f60615a.get(0);
            }
            String str2 = str;
            try {
                List<String> list = this.f60615a;
                int i = size - 10;
                if (i <= 0) {
                    i = 0;
                }
                List<String> subList = list.subList(i, size);
                for (int i2 = 0; i2 < subList.size(); i2++) {
                    String str3 = str;
                    String str4 = str;
                    StringBuilder sb = new StringBuilder();
                    String str5 = str;
                    sb.append(str);
                    String str6 = str;
                    sb.append(subList.get(i2));
                    String str7 = str;
                    sb.append(",");
                    String str8 = str;
                    str = sb.toString();
                }
                str2 = str;
                str2 = str.substring(0, str.length() - 1);
            } catch (Throwable th) {
            }
            return str2;
        }
    }
}
