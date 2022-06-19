package com.facebook.internal.p108a.p109a;

import android.os.Process;
import android.util.Log;
import com.facebook.C2095j;
import com.facebook.C2102k;
import com.facebook.C2194n;
import com.facebook.internal.p108a.C1998a;
import com.facebook.internal.p108a.C2012c;
import java.io.File;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import org.json.JSONArray;
import org.json.JSONException;
/* renamed from: com.facebook.internal.a.a.a */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/a/a/a.class */
public class C2001a implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    private static final String f5962a = C2001a.class.getCanonicalName();

    /* renamed from: b */
    private static C2001a f5963b;

    /* renamed from: c */
    private final Thread.UncaughtExceptionHandler f5964c;

    /* renamed from: d */
    private boolean f5965d = false;

    private C2001a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f5964c = uncaughtExceptionHandler;
    }

    /* renamed from: a */
    public static void m15679a() {
        synchronized (C2001a.class) {
            try {
                if (C2095j.m15352p()) {
                    m15677c();
                }
                if (f5963b != null) {
                    Log.w(f5962a, "Already enabled!");
                } else {
                    f5963b = new C2001a(Thread.getDefaultUncaughtExceptionHandler());
                    Thread.setDefaultUncaughtExceptionHandler(f5963b);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    private static void m15678b() {
        try {
            Process.killProcess(Process.myPid());
            System.exit(10);
        } catch (Throwable th) {
        }
    }

    /* renamed from: c */
    private static void m15677c() {
        File[] m15663a = C2012c.m15663a();
        final ArrayList arrayList = new ArrayList();
        for (File file : m15663a) {
            C1998a c1998a = new C1998a(file);
            if (c1998a.m15685a()) {
                arrayList.add(c1998a);
            }
        }
        Collections.sort(arrayList, new Comparator<C1998a>() { // from class: com.facebook.internal.a.a.a.1
            /* renamed from: a */
            public int compare(C1998a c1998a2, C1998a c1998a3) {
                return c1998a2.m15684a(c1998a3);
            }
        });
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < arrayList.size() && i < 5; i++) {
            jSONArray.put(arrayList.get(i));
        }
        C2012c.m15660a("crash_reports", jSONArray, new C2102k.AbstractC2108b() { // from class: com.facebook.internal.a.a.a.2
            @Override // com.facebook.C2102k.AbstractC2108b
            /* renamed from: a */
            public void mo15229a(C2194n c2194n) {
                try {
                    if (c2194n.m14987a() != null || !c2194n.m14980b().getBoolean("success")) {
                        return;
                    }
                    for (int i2 = 0; arrayList.size() > i2; i2++) {
                        ((C1998a) arrayList.get(i2)).m15681c();
                    }
                } catch (JSONException e) {
                }
            }
        });
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        if (C2012c.m15655c(th)) {
            new C1998a(th, C1998a.EnumC2000a.CrashReport).m15683b();
        }
        if (this.f5964c != null) {
            this.f5964c.uncaughtException(thread, th);
        }
        if (this.f5965d) {
            m15678b();
        }
    }
}
