package com.google.android.gms.stats;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.common.p079f.C1558a;
import com.google.android.gms.common.util.C1621r;
import com.google.android.gms.common.util.C1623t;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.ThreadSafe;
@ThreadSafe
/* renamed from: com.google.android.gms.stats.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/stats/a.class */
public class C2385a {

    /* renamed from: l */
    private static ScheduledExecutorService f10526l;

    /* renamed from: a */
    private final Object f10527a;

    /* renamed from: b */
    private final PowerManager.WakeLock f10528b;

    /* renamed from: c */
    private WorkSource f10529c;

    /* renamed from: d */
    private final int f10530d;

    /* renamed from: e */
    private final String f10531e;

    /* renamed from: f */
    private final String f10532f;

    /* renamed from: g */
    private final Context f10533g;

    /* renamed from: h */
    private boolean f10534h;

    /* renamed from: i */
    private final Map<String, Integer[]> f10535i;

    /* renamed from: j */
    private int f10536j;

    /* renamed from: k */
    private AtomicInteger f10537k;

    public C2385a(Context context, int i, String str) {
        this(context, i, str, null, context == null ? null : context.getPackageName());
    }

    private C2385a(Context context, int i, String str, String str2, String str3) {
        this(context, i, str, null, str3, null);
    }

    @SuppressLint({"UnwrappedWakeLock"})
    private C2385a(Context context, int i, String str, String str2, String str3, String str4) {
        this.f10527a = this;
        this.f10534h = true;
        this.f10535i = new HashMap();
        Collections.synchronizedSet(new HashSet());
        this.f10537k = new AtomicInteger(0);
        C1581h.m8346i(context, "WakeLock: context must not be null");
        C1581h.m8350e(str, "WakeLock: wakeLockName must not be empty");
        this.f10530d = i;
        this.f10532f = null;
        Context applicationContext = context.getApplicationContext();
        this.f10533g = applicationContext;
        if (!"com.google.android.gms".equals(context.getPackageName())) {
            String valueOf = String.valueOf(str);
            this.f10531e = valueOf.length() != 0 ? "*gcore*:".concat(valueOf) : new String("*gcore*:");
        } else {
            this.f10531e = str;
        }
        PowerManager.WakeLock newWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(i, str);
        this.f10528b = newWakeLock;
        if (C1623t.m8196c(context)) {
            WorkSource m8198a = C1623t.m8198a(context, C1621r.m8201a(str3) ? context.getPackageName() : str3);
            this.f10529c = m8198a;
            if (m8198a != null && C1623t.m8196c(applicationContext)) {
                WorkSource workSource = this.f10529c;
                if (workSource != null) {
                    workSource.add(m8198a);
                } else {
                    this.f10529c = m8198a;
                }
                try {
                    newWakeLock.setWorkSource(this.f10529c);
                } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException e) {
                    Log.wtf("WakeLock", e.toString());
                }
            }
        }
        if (f10526l == null) {
            f10526l = C1558a.m8438a().m8437a();
        }
    }

    /* renamed from: d */
    private final String m3795d(String str) {
        if (this.f10534h && !TextUtils.isEmpty(str)) {
            return str;
        }
        return this.f10532f;
    }

    /* renamed from: e */
    private final List<String> m3794e() {
        return C1623t.m8197b(this.f10529c);
    }

    /* renamed from: f */
    public final void m3793f(int i) {
        if (this.f10528b.isHeld()) {
            try {
                this.f10528b.release();
            } catch (RuntimeException e) {
                if (!e.getClass().equals(RuntimeException.class)) {
                    throw e;
                }
                Log.e("WakeLock", String.valueOf(this.f10531e).concat(" was already released!"), e);
            }
            this.f10528b.isHeld();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0092, code lost:
        if (r18 == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a0, code lost:
        if (r12.f10536j == 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a6, code lost:
        com.google.android.gms.common.stats.C1601c.m8258a().m8256c(r12.f10533g, com.google.android.gms.common.stats.C1600b.m8259a(r12.f10528b, r0), 7, r12.f10531e, r0, null, r12.f10530d, m3794e(), r13);
        r12.f10536j++;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m3798a(long r13) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.stats.C2385a.m3798a(long):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0077, code lost:
        if (r14 != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0086, code lost:
        if (r10.f10536j == 1) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008c, code lost:
        com.google.android.gms.common.stats.C1601c.m8258a().m8257b(r10.f10533g, com.google.android.gms.common.stats.C1600b.m8259a(r10.f10528b, r0), 8, r10.f10531e, r0, null, r10.f10530d, m3794e());
        r10.f10536j--;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m3797b() {
        /*
            Method dump skipped, instructions count: 200
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.stats.C2385a.m3797b():void");
    }

    /* renamed from: c */
    public void m3796c(boolean z) {
        this.f10528b.setReferenceCounted(z);
        this.f10534h = z;
    }
}
