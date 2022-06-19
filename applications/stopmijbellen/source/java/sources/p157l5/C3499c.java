package p157l5;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;
import p015b0.C0713a;
import p080e5.C2538a0;
import p124i4.C3108j;
import p134j4.C3249s1;
import p168m5.AbstractC3644d;
import p168m5.C3641a;
import p168m5.C3642b;
import p168m5.C3643c;
import p168m5.C3645e;
import p168m5.C3646f;
import p237t.C4350g;
/* renamed from: l5.c */
/* loaded from: classes-dex2jar.jar:l5/c.class */
public class C3499c implements AbstractC3500d {

    /* renamed from: a */
    public final Context f11611a;

    /* renamed from: b */
    public final C3646f f11612b;

    /* renamed from: c */
    public final C3501e f11613c;

    /* renamed from: d */
    public final C0713a f11614d;

    /* renamed from: e */
    public final C3108j f11615e;

    /* renamed from: f */
    public final C3249s1 f11616f;

    /* renamed from: g */
    public final C2538a0 f11617g;

    /* renamed from: h */
    public final AtomicReference<AbstractC3644d> f11618h;

    /* renamed from: i */
    public final AtomicReference<TaskCompletionSource<C3641a>> f11619i = new AtomicReference<>(new TaskCompletionSource());

    public C3499c(Context context, C3646f c3646f, C0713a c0713a, C3501e c3501e, C3108j c3108j, C3249s1 c3249s1, C2538a0 c2538a0) {
        AtomicReference<AbstractC3644d> atomicReference = new AtomicReference<>();
        this.f11618h = atomicReference;
        this.f11611a = context;
        this.f11612b = c3646f;
        this.f11614d = c0713a;
        this.f11613c = c3501e;
        this.f11615e = c3108j;
        this.f11616f = c3249s1;
        this.f11617g = c2538a0;
        JSONObject jSONObject = new JSONObject();
        atomicReference.set(new C3645e(C3497a.m2228b(c0713a, 3600L, jSONObject), null, new C3643c(jSONObject.optInt("max_custom_exception_events", 8), 4), new C3642b(jSONObject.optBoolean("collect_reports", true)), 0, 3600));
    }

    /* renamed from: a */
    public final C3645e m2227a(int i) {
        C3645e c3645e;
        if (!C4350g.m1022b(2, i)) {
            JSONObject m2606b = this.f11615e.m2606b();
            if (m2606b != null) {
                c3645e = this.f11613c.m2225a(m2606b);
                if (c3645e != null) {
                    m2606b.toString();
                    Log.isLoggable("FirebaseCrashlytics", 3);
                    Objects.requireNonNull(this.f11614d);
                    long currentTimeMillis = System.currentTimeMillis();
                    if (!C4350g.m1022b(3, i)) {
                        if (c3645e.f11930d < currentTimeMillis) {
                            Log.isLoggable("FirebaseCrashlytics", 2);
                        }
                    }
                    try {
                        Log.isLoggable("FirebaseCrashlytics", 2);
                    } catch (Exception e) {
                    }
                    return c3645e;
                }
            } else {
                Log.isLoggable("FirebaseCrashlytics", 3);
            }
        }
        c3645e = null;
        return c3645e;
    }

    /* renamed from: b */
    public AbstractC3644d m2226b() {
        return this.f11618h.get();
    }
}
