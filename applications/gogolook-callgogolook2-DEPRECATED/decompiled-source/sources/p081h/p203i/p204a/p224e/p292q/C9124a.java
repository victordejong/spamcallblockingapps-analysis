package p081h.p203i.p204a.p224e.p292q;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.ThreadSafe;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p244p.C7052a;
import p081h.p203i.p204a.p224e.p235d.p249s.C7085q;
import p081h.p203i.p204a.p224e.p235d.p249s.C7087s;
@ThreadSafe
/* renamed from: h.i.a.e.q.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/q/a.class */
public class C9124a {

    /* renamed from: l */
    public static ScheduledExecutorService f20804l;

    /* renamed from: a */
    public final Object f20805a;

    /* renamed from: b */
    public final PowerManager.WakeLock f20806b;

    /* renamed from: c */
    public WorkSource f20807c;

    /* renamed from: d */
    public final int f20808d;

    /* renamed from: e */
    public final String f20809e;

    /* renamed from: f */
    public final String f20810f;

    /* renamed from: g */
    public final Context f20811g;

    /* renamed from: h */
    public boolean f20812h;

    /* renamed from: i */
    public final Map<String, Integer[]> f20813i;

    /* renamed from: j */
    public int f20814j;

    /* renamed from: k */
    public AtomicInteger f20815k;

    /* renamed from: h.i.a.e.q.a$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/q/a$a.class */
    public interface AbstractC9125a {
    }

    static {
        new C9126b();
    }

    public C9124a(@NonNull Context context, int i, @NonNull String str) {
        this(context, i, str, null, context == null ? null : context.getPackageName());
    }

    public C9124a(@NonNull Context context, int i, @NonNull String str, @Nullable String str2, @NonNull String str3) {
        this(context, i, str, null, str3, null);
    }

    @SuppressLint({"UnwrappedWakeLock"})
    public C9124a(@NonNull Context context, int i, @NonNull String str, @Nullable String str2, @NonNull String str3, @Nullable String str4) {
        this.f20805a = this;
        this.f20812h = true;
        this.f20813i = new HashMap();
        Collections.synchronizedSet(new HashSet());
        this.f20815k = new AtomicInteger(0);
        C7021t.m21289a(context, "WakeLock: context must not be null");
        C7021t.m21287a(str, (Object) "WakeLock: wakeLockName must not be empty");
        this.f20808d = i;
        this.f20810f = null;
        this.f20811g = context.getApplicationContext();
        if (!"com.google.android.gms".equals(context.getPackageName())) {
            String valueOf = String.valueOf(str);
            this.f20809e = valueOf.length() != 0 ? "*gcore*:".concat(valueOf) : new String("*gcore*:");
        } else {
            this.f20809e = str;
        }
        this.f20806b = ((PowerManager) context.getSystemService("power")).newWakeLock(i, str);
        if (C7087s.m21112a(context)) {
            this.f20807c = C7087s.m21111a(context, C7085q.m21117a(str3) ? context.getPackageName() : str3);
            WorkSource workSource = this.f20807c;
            if (workSource != null && C7087s.m21112a(this.f20811g)) {
                WorkSource workSource2 = this.f20807c;
                if (workSource2 != null) {
                    workSource2.add(workSource);
                } else {
                    this.f20807c = workSource;
                }
                try {
                    this.f20806b.setWorkSource(this.f20807c);
                } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException e) {
                    Log.wtf("WakeLock", e.toString());
                }
            }
        }
        if (f20804l == null) {
            f20804l = C7052a.m21186a().mo21185a();
        }
    }

    /* renamed from: a */
    public final String m16050a(String str) {
        if (this.f20812h && !TextUtils.isEmpty(str)) {
            return str;
        }
        return this.f20810f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0076, code lost:
        if (r14 != false) goto L_0x0088;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0085, code lost:
        if (r10.f20814j == 1) goto L_0x0088;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008b, code lost:
        p081h.p203i.p204a.p224e.p235d.p248r.C7067d.m21177a().m21175a(r10.f20811g, p081h.p203i.p204a.p224e.p235d.p248r.C7066c.m21180a(r10.f20806b, r0), 8, r10.f20809e, r0, null, r10.f20808d, m16048b());
        r10.f20814j--;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m16054a() {
        /*
            Method dump skipped, instructions count: 193
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p292q.C9124a.m16054a():void");
    }

    /* renamed from: a */
    public final void m16053a(int i) {
        if (this.f20806b.isHeld()) {
            try {
                this.f20806b.release();
            } catch (RuntimeException e) {
                if (e.getClass().equals(RuntimeException.class)) {
                    Log.e("WakeLock", String.valueOf(this.f20809e).concat(" was already released!"), e);
                } else {
                    throw e;
                }
            }
            this.f20806b.isHeld();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0092, code lost:
        if (r18 == false) goto L_0x0095;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a0, code lost:
        if (r12.f20814j == 0) goto L_0x00a3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a6, code lost:
        p081h.p203i.p204a.p224e.p235d.p248r.C7067d.m21177a().m21174a(r12.f20811g, p081h.p203i.p204a.p224e.p235d.p248r.C7066c.m21180a(r12.f20806b, r0), 7, r12.f20809e, r0, null, r12.f20808d, m16048b(), r13);
        r12.f20814j++;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m16052a(long r13) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p292q.C9124a.m16052a(long):void");
    }

    /* renamed from: a */
    public void m16049a(boolean z) {
        this.f20806b.setReferenceCounted(z);
        this.f20812h = z;
    }

    /* renamed from: b */
    public final List<String> m16048b() {
        return C7087s.m21110a(this.f20807c);
    }
}
