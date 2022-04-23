package com.google.android.gms.internal.measurement;

import android.content.Context;
import java.util.Collection;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ec.class */
public abstract class ec<T> {

    /* renamed from: c  reason: collision with root package name */
    public static final /* synthetic */ int f28982c = 0;
    private static volatile eb e;
    private static volatile boolean f = false;

    /* renamed from: a  reason: collision with root package name */
    final ea f28984a;

    /* renamed from: b  reason: collision with root package name */
    final String f28985b;
    private final T i;
    private volatile int k = -1;
    private volatile T l;
    private final boolean m;

    /* renamed from: d  reason: collision with root package name */
    private static final Object f28983d = new Object();
    private static final AtomicReference<Collection<ec<?>>> g = new AtomicReference<>();
    private static final ee h = new ee(dv.f28973a);
    private static final AtomicInteger j = new AtomicInteger();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ ec(ea eaVar, String str, Object obj, boolean z, dw dwVar) {
        if (eaVar.f28979b != null) {
            this.f28984a = eaVar;
            this.f28985b = str;
            this.i = obj;
            this.m = true;
            return;
        }
        throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        j.incrementAndGet();
    }

    @Deprecated
    public static void a(final Context context) {
        synchronized (f28983d) {
            eb ebVar = e;
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (ebVar == null || ebVar.a() != context) {
                dj.b();
                ed.b();
                dp.a();
                e = new dg(context, eo.a(new ek(context) { // from class: com.google.android.gms.internal.measurement.dt

                    /* renamed from: a  reason: collision with root package name */
                    private final Context f28972a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f28972a = context;
                    }

                    /* JADX WARN: Code restructure failed: missing block: B:58:0x0198, code lost:
                        if (r0 == r0) goto L_0x019b;
                     */
                    @Override // com.google.android.gms.internal.measurement.ek
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object a() {
                        /*
                            Method dump skipped, instructions count: 605
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.dt.a():java.lang.Object");
                    }
                }));
                j.incrementAndGet();
            }
        }
    }

    abstract T a(Object obj);

    /* JADX WARN: Removed duplicated region for block: B:40:0x00e2 A[Catch: all -> 0x01bf, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:9:0x0022, B:11:0x002a, B:13:0x0032, B:16:0x0046, B:18:0x0053, B:20:0x005c, B:22:0x006b, B:23:0x0075, B:26:0x0084, B:28:0x008e, B:30:0x009f, B:32:0x00b9, B:35:0x00c6, B:37:0x00d5, B:40:0x00e2, B:42:0x00f5, B:46:0x010a, B:48:0x0110, B:50:0x011f, B:52:0x0125, B:55:0x0145, B:58:0x0163, B:60:0x016f, B:61:0x0179, B:63:0x0185, B:66:0x0193, B:67:0x019b, B:69:0x01a2, B:70:0x01ae, B:71:0x01b9, B:73:0x01bb), top: B:82:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0125 A[Catch: all -> 0x01bf, TRY_LEAVE, TryCatch #0 {, blocks: (B:9:0x0022, B:11:0x002a, B:13:0x0032, B:16:0x0046, B:18:0x0053, B:20:0x005c, B:22:0x006b, B:23:0x0075, B:26:0x0084, B:28:0x008e, B:30:0x009f, B:32:0x00b9, B:35:0x00c6, B:37:0x00d5, B:40:0x00e2, B:42:0x00f5, B:46:0x010a, B:48:0x0110, B:50:0x011f, B:52:0x0125, B:55:0x0145, B:58:0x0163, B:60:0x016f, B:61:0x0179, B:63:0x0185, B:66:0x0193, B:67:0x019b, B:69:0x01a2, B:70:0x01ae, B:71:0x01b9, B:73:0x01bb), top: B:82:0x0022 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T b() {
        /*
            Method dump skipped, instructions count: 457
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.ec.b():java.lang.Object");
    }
}
