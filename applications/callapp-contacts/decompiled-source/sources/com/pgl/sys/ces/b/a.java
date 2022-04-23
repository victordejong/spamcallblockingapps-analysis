package com.pgl.sys.ces.b;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/b/a.class */
public class a {

    /* renamed from: c  reason: collision with root package name */
    private static a f34966c;

    /* renamed from: a  reason: collision with root package name */
    public List<String> f34967a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private Context f34968b;

    private a(Context context) {
        this.f34968b = null;
        this.f34968b = context;
    }

    public static a a(Context context) {
        if (f34966c == null) {
            synchronized (a.class) {
                try {
                    if (f34966c == null) {
                        f34966c = new a(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f34966c;
    }

    public final String a() {
        String str;
        int i;
        Throwable th;
        Throwable th2;
        int intExtra;
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
                Intent registerReceiver = this.f34968b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
                intExtra = registerReceiver == null ? -1 : registerReceiver.getIntExtra("plugged", -1);
            } catch (Throwable th4) {
                th2 = th4;
            }
            try {
                Intent registerReceiver2 = this.f34968b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
                if (registerReceiver2 != null) {
                    i2 = Math.round(((registerReceiver2.getIntExtra("level", -1) / registerReceiver2.getIntExtra("scale", -1)) * 100.0f) * 10.0f) / 10;
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
                i2 = intExtra;
                i = i2;
                while (true) {
                    break;
                    break;
                }
                throw th2;
            }
        }
    }

    public final String b() {
        synchronized (this) {
            String str = "";
            int size = this.f34967a.size();
            if (size <= 0) {
                return "";
            }
            if (size == 1) {
                return this.f34967a.get(0);
            }
            String str2 = str;
            try {
                List<String> list = this.f34967a;
                int i = size - 10;
                if (i <= 0) {
                    i = 0;
                }
                List<String> subList = list.subList(i, size);
                for (int i2 = 0; i2 < subList.size(); i2++) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(subList.get(i2));
                    sb.append(",");
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
