package com.google.android.gms.stats;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.p271j.C6193a;
import com.google.android.gms.common.util.C6241s;
import com.google.android.gms.common.util.C6243u;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.stats.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/stats/a.class */
public class C7950a {

    /* renamed from: a */
    private static ScheduledExecutorService f35920a;

    /* renamed from: b */
    private static volatile AbstractC7951a f35921b = new C7952b();

    /* renamed from: c */
    private final Object f35922c;

    /* renamed from: d */
    private final PowerManager.WakeLock f35923d;

    /* renamed from: e */
    private WorkSource f35924e;

    /* renamed from: f */
    private final int f35925f;

    /* renamed from: g */
    private final String f35926g;

    /* renamed from: h */
    private final String f35927h;

    /* renamed from: i */
    private final String f35928i;

    /* renamed from: j */
    private final Context f35929j;

    /* renamed from: k */
    private boolean f35930k;

    /* renamed from: l */
    private final Map<String, Integer[]> f35931l;

    /* renamed from: m */
    private final Set<Future<?>> f35932m;

    /* renamed from: n */
    private int f35933n;

    /* renamed from: o */
    private AtomicInteger f35934o;

    /* renamed from: com.google.android.gms.stats.a$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/stats/a$a.class */
    public interface AbstractC7951a {
    }

    public C7950a(Context context, int i, String str) {
        this(context, i, str, null, context == null ? null : context.getPackageName());
    }

    private C7950a(Context context, int i, String str, String str2, String str3) {
        this(context, i, str, null, str3, null);
    }

    @SuppressLint({"UnwrappedWakeLock"})
    private C7950a(Context context, int i, String str, String str2, String str3, String str4) {
        this.f35922c = this;
        this.f35930k = true;
        this.f35931l = new HashMap();
        this.f35932m = Collections.synchronizedSet(new HashSet());
        this.f35934o = new AtomicInteger(0);
        C6155o.m17017k(context, "WakeLock: context must not be null");
        C6155o.m17021g(str, "WakeLock: wakeLockName must not be empty");
        this.f35925f = i;
        this.f35927h = null;
        this.f35928i = null;
        Context applicationContext = context.getApplicationContext();
        this.f35929j = applicationContext;
        if (!"com.google.android.gms".equals(context.getPackageName())) {
            String valueOf = String.valueOf(str);
            this.f35926g = valueOf.length() != 0 ? "*gcore*:".concat(valueOf) : new String("*gcore*:");
        } else {
            this.f35926g = str;
        }
        PowerManager.WakeLock newWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(i, str);
        this.f35923d = newWakeLock;
        if (C6243u.m16763c(context)) {
            WorkSource m16765a = C6243u.m16765a(context, C6241s.m16768a(str3) ? context.getPackageName() : str3);
            this.f35924e = m16765a;
            if (m16765a != null && C6243u.m16763c(applicationContext)) {
                WorkSource workSource = this.f35924e;
                if (workSource != null) {
                    workSource.add(m16765a);
                } else {
                    this.f35924e = m16765a;
                }
                try {
                    newWakeLock.setWorkSource(this.f35924e);
                } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException e) {
                    Log.wtf("WakeLock", e.toString());
                }
            }
        }
        if (f35920a == null) {
            f35920a = C6193a.m16896a().mo16895a();
        }
    }

    /* renamed from: d */
    private final String m5843d(String str) {
        if (this.f35930k && !TextUtils.isEmpty(str)) {
            return str;
        }
        return this.f35927h;
    }

    /* renamed from: e */
    private final List<String> m5842e() {
        return C6243u.m16764b(this.f35924e);
    }

    /* renamed from: f */
    public final void m5841f(int i) {
        if (this.f35923d.isHeld()) {
            try {
                this.f35923d.release();
            } catch (RuntimeException e) {
                if (!e.getClass().equals(RuntimeException.class)) {
                    throw e;
                }
                Log.e("WakeLock", String.valueOf(this.f35926g).concat(" was already released!"), e);
            }
            this.f35923d.isHeld();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0092, code lost:
        if (r18 == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a0, code lost:
        if (r12.f35933n == 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a6, code lost:
        com.google.android.gms.common.stats.C6219c.m16839a().m16837c(r12.f35929j, com.google.android.gms.common.stats.C6218b.m16840a(r12.f35923d, r0), 7, r12.f35926g, r0, null, r12.f35925f, m5842e(), r13);
        r12.f35933n++;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m5846a(long r13) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.stats.C7950a.m5846a(long):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0077, code lost:
        if (r14 != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0086, code lost:
        if (r10.f35933n == 1) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008c, code lost:
        com.google.android.gms.common.stats.C6219c.m16839a().m16838b(r10.f35929j, com.google.android.gms.common.stats.C6218b.m16840a(r10.f35923d, r0), 8, r10.f35926g, r0, null, r10.f35925f, m5842e());
        r10.f35933n--;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m5845b() {
        /*
            Method dump skipped, instructions count: 194
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.stats.C7950a.m5845b():void");
    }

    /* renamed from: c */
    public void m5844c(boolean z) {
        this.f35923d.setReferenceCounted(z);
        this.f35930k = z;
    }
}
