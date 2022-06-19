package com.google.android.gms.internal.measurement;

import android.content.Context;
import java.util.Collection;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.internal.measurement.ec */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ec.class */
public abstract class AbstractC13463ec<T> {

    /* renamed from: c */
    public static final /* synthetic */ int f50672c = 0;

    /* renamed from: e */
    private static volatile AbstractC13462eb f50674e;

    /* renamed from: f */
    private static volatile boolean f50675f = false;

    /* renamed from: a */
    final C13461ea f50679a;

    /* renamed from: b */
    final String f50680b;

    /* renamed from: i */
    private final T f50681i;

    /* renamed from: k */
    private volatile int f50682k = -1;

    /* renamed from: l */
    private volatile T f50683l;

    /* renamed from: m */
    private final boolean f50684m;

    /* renamed from: d */
    private static final Object f50673d = new Object();

    /* renamed from: g */
    private static final AtomicReference<Collection<AbstractC13463ec<?>>> f50676g = new AtomicReference<>();

    /* renamed from: h */
    private static final C13465ee f50677h = new C13465ee(C13455dv.f50658a);

    /* renamed from: j */
    private static final AtomicInteger f50678j = new AtomicInteger();

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ AbstractC13463ec(C13461ea c13461ea, String str, Object obj, boolean z, C13456dw c13456dw) {
        if (c13461ea.f50664b != null) {
            this.f50679a = c13461ea;
            this.f50680b = str;
            this.f50681i = obj;
            this.f50684m = true;
            return;
        }
        throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
    }

    /* renamed from: a */
    public static void m12904a() {
        f50678j.incrementAndGet();
    }

    @Deprecated
    /* renamed from: a */
    public static void m12903a(Context context) {
        synchronized (f50673d) {
            AbstractC13462eb abstractC13462eb = f50674e;
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (abstractC13462eb == null || abstractC13462eb.mo12906a() != context) {
                C13443dj.m12919b();
                C13464ed.m12898b();
                C13449dp.m12915a();
                f50674e = new C13440dg(context, C13475eo.m12893a(new AbstractC13471ek(context) { // from class: com.google.android.gms.internal.measurement.dt

                    /* renamed from: a */
                    private final Context f50657a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f50657a = context;
                    }

                    @Override // com.google.android.gms.internal.measurement.AbstractC13471ek
                    /* renamed from: a */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object mo12298a() {
                        /*
                            Method dump skipped, instructions count: 605
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C13453dt.mo12298a():java.lang.Object");
                    }
                }));
                f50678j.incrementAndGet();
            }
        }
    }

    /* renamed from: a */
    abstract T mo12902a(Object obj);

    /* JADX WARN: Removed duplicated region for block: B:40:0x00e2 A[Catch: all -> 0x01bf, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:9:0x0022, B:11:0x002a, B:13:0x0032, B:16:0x0046, B:18:0x0053, B:20:0x005c, B:22:0x006b, B:23:0x0075, B:26:0x0084, B:28:0x008e, B:30:0x009f, B:32:0x00b9, B:35:0x00c6, B:37:0x00d5, B:40:0x00e2, B:42:0x00f5, B:46:0x010a, B:48:0x0110, B:50:0x011f, B:52:0x0125, B:55:0x0145, B:58:0x0163, B:60:0x016f, B:61:0x0179, B:63:0x0185, B:66:0x0193, B:67:0x019b, B:69:0x01a2, B:70:0x01ae, B:71:0x01b9, B:73:0x01bb), top: B:82:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0125 A[Catch: all -> 0x01bf, TRY_LEAVE, TryCatch #0 {, blocks: (B:9:0x0022, B:11:0x002a, B:13:0x0032, B:16:0x0046, B:18:0x0053, B:20:0x005c, B:22:0x006b, B:23:0x0075, B:26:0x0084, B:28:0x008e, B:30:0x009f, B:32:0x00b9, B:35:0x00c6, B:37:0x00d5, B:40:0x00e2, B:42:0x00f5, B:46:0x010a, B:48:0x0110, B:50:0x011f, B:52:0x0125, B:55:0x0145, B:58:0x0163, B:60:0x016f, B:61:0x0179, B:63:0x0185, B:66:0x0193, B:67:0x019b, B:69:0x01a2, B:70:0x01ae, B:71:0x01b9, B:73:0x01bb), top: B:82:0x0022 }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T m12901b() {
        /*
            Method dump skipped, instructions count: 457
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.AbstractC13463ec.m12901b():java.lang.Object");
    }
}
