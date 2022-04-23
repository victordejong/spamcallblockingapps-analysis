package com.bytedance.sdk.openadsdk.core.c;

import android.os.Handler;
import android.os.Looper;
import com.bytedance.sdk.openadsdk.core.h.e;
import com.bytedance.sdk.openadsdk.core.n;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Queue;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/c/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile a f8827a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile boolean f8828b;

    /* renamed from: c  reason: collision with root package name */
    private static volatile long f8829c;
    private Handler e;

    /* renamed from: d  reason: collision with root package name */
    private final Queue<C0164a> f8830d = new LinkedList();
    private final e f = n.h();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.core.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/c/a$a.class */
    public static class C0164a {

        /* renamed from: a  reason: collision with root package name */
        private final long f8832a;

        /* renamed from: b  reason: collision with root package name */
        private final String f8833b;

        private C0164a(long j, String str) {
            this.f8832a = j;
            this.f8833b = str;
        }
    }

    private a() {
    }

    public static a a() {
        if (f8827a == null) {
            synchronized (a.class) {
                try {
                    if (f8827a == null) {
                        f8827a = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8827a;
    }

    private void a(long j) {
        synchronized (this) {
            if (this.e == null) {
                this.e = new Handler(Looper.getMainLooper());
            }
            this.e.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.c.a.1
                @Override // java.lang.Runnable
                public void run() {
                    a.this.a(false);
                }
            }, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        synchronized (this) {
            f8828b = z;
        }
    }

    private void b(long j) {
        synchronized (this) {
            f8829c = j;
        }
    }

    private boolean b(String str) {
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis();
            int h = this.f.h();
            long g = this.f.g();
            if (this.f8830d.size() <= 0 || this.f8830d.size() < h) {
                this.f8830d.offer(new C0164a(currentTimeMillis, str));
            } else {
                long abs = Math.abs(currentTimeMillis - this.f8830d.peek().f8832a);
                if (abs <= g) {
                    b(g - abs);
                    return true;
                }
                this.f8830d.poll();
                this.f8830d.offer(new C0164a(currentTimeMillis, str));
            }
            return false;
        }
    }

    public boolean a(String str) {
        boolean z;
        synchronized (this) {
            if (b(str)) {
                a(true);
                a(f8829c);
            } else {
                a(false);
            }
            z = f8828b;
        }
        return z;
    }

    public boolean b() {
        boolean z;
        synchronized (this) {
            z = f8828b;
        }
        return z;
    }

    public String c() {
        String str;
        synchronized (this) {
            HashMap hashMap = new HashMap();
            for (C0164a aVar : this.f8830d) {
                if (hashMap.containsKey(aVar.f8833b)) {
                    hashMap.put(aVar.f8833b, Integer.valueOf(((Integer) hashMap.get(aVar.f8833b)).intValue() + 1));
                } else {
                    hashMap.put(aVar.f8833b, 1);
                }
            }
            int i = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            str = "";
            for (String str2 : hashMap.keySet()) {
                int intValue = ((Integer) hashMap.get(str2)).intValue();
                if (i < intValue) {
                    str = str2;
                    i = intValue;
                }
            }
        }
        return str;
    }
}
