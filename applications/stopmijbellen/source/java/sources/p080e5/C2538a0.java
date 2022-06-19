package p080e5;

import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;
import p241t4.C4392c;
/* renamed from: e5.a0 */
/* loaded from: classes-dex2jar.jar:e5/a0.class */
public class C2538a0 {

    /* renamed from: a */
    public final SharedPreferences f8888a;

    /* renamed from: b */
    public final C4392c f8889b;

    /* renamed from: e */
    public boolean f8892e;

    /* renamed from: f */
    public Boolean f8893f;

    /* renamed from: c */
    public final Object f8890c = new Object();

    /* renamed from: d */
    public TaskCompletionSource<Void> f8891d = new TaskCompletionSource<>();

    /* renamed from: g */
    public final TaskCompletionSource<Void> f8894g = new TaskCompletionSource<>();

    /* JADX WARN: Removed duplicated region for block: B:20:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C2538a0(p241t4.C4392c r5) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p080e5.C2538a0.<init>(t4.c):void");
    }

    /* renamed from: a */
    public boolean m3461a() {
        boolean booleanValue;
        synchronized (this) {
            Boolean bool = this.f8893f;
            booleanValue = bool != null ? bool.booleanValue() : this.f8889b.m969f();
            String.format("Crashlytics automatic data collection %s by %s.", booleanValue ? "ENABLED" : "DISABLED", this.f8893f == null ? "global Firebase setting" : this.f8892e ? "firebase_crashlytics_collection_enabled manifest flag" : "API");
            Log.isLoggable("FirebaseCrashlytics", 3);
        }
        return booleanValue;
    }
}
