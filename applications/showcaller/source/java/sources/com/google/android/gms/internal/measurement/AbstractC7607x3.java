package com.google.android.gms.internal.measurement;

import android.content.Context;
import java.util.Collection;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.internal.measurement.x3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/x3.class */
public abstract class AbstractC7607x3<T> {

    /* renamed from: b */
    private static volatile AbstractC7594w3 f34755b;

    /* renamed from: f */
    public static final /* synthetic */ int f34759f = 0;

    /* renamed from: g */
    final C7581v3 f34760g;

    /* renamed from: h */
    final String f34761h;

    /* renamed from: i */
    private final T f34762i;

    /* renamed from: j */
    private volatile int f34763j = -1;

    /* renamed from: k */
    private volatile T f34764k;

    /* renamed from: l */
    private final boolean f34765l;

    /* renamed from: a */
    private static final Object f34754a = new Object();

    /* renamed from: c */
    private static final AtomicReference<Collection<AbstractC7607x3<?>>> f34756c = new AtomicReference<>();

    /* renamed from: d */
    private static final C7633z3 f34757d = new C7633z3(C7516q3.f34638a);

    /* renamed from: e */
    private static final AtomicInteger f34758e = new AtomicInteger();

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ AbstractC7607x3(C7581v3 c7581v3, String str, Object obj, boolean z, C7529r3 c7529r3) {
        if (c7581v3.f34723b != null) {
            this.f34760g = c7581v3;
            this.f34761h = str;
            this.f34762i = obj;
            this.f34765l = true;
            return;
        }
        throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
    }

    @Deprecated
    /* renamed from: b */
    public static void m6774b(Context context) {
        synchronized (f34754a) {
            AbstractC7594w3 abstractC7594w3 = f34755b;
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (abstractC7594w3 == null || abstractC7594w3.mo6797a() != context) {
                C7334d3.m7609d();
                C7620y3.m6739b();
                C7432k3.m7212c();
                f34755b = new C7292a3(context, C7349e4.m7558a(new AbstractC7321c4(context) { // from class: com.google.android.gms.internal.measurement.o3

                    /* renamed from: d */
                    private final Context f34616d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f34616d = context;
                    }

                    @Override // com.google.android.gms.internal.measurement.AbstractC7321c4
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object zza() {
                        /*
                            Method dump skipped, instructions count: 612
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C7488o3.zza():java.lang.Object");
                    }
                }));
                f34758e.incrementAndGet();
            }
        }
    }

    /* renamed from: c */
    public static void m6773c() {
        f34758e.incrementAndGet();
    }

    /* renamed from: a */
    abstract T mo6775a(Object obj);

    /* renamed from: d */
    public final String m6772d() {
        String str = this.f34760g.f34725d;
        return this.f34761h;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0117 A[Catch: all -> 0x01d1, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:9:0x0022, B:11:0x002a, B:13:0x0032, B:15:0x004d, B:17:0x005b, B:19:0x0064, B:21:0x0075, B:22:0x0081, B:24:0x008e, B:27:0x009a, B:29:0x00a4, B:31:0x00b5, B:33:0x00d9, B:36:0x00f5, B:38:0x0107, B:41:0x0117, B:43:0x0140, B:47:0x0157, B:49:0x015e, B:51:0x016d, B:53:0x0173, B:55:0x019e, B:56:0x01a7, B:58:0x01b0, B:59:0x01bd, B:60:0x01cb, B:62:0x01cd), top: B:71:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0173 A[Catch: all -> 0x01d1, TRY_LEAVE, TryCatch #0 {, blocks: (B:9:0x0022, B:11:0x002a, B:13:0x0032, B:15:0x004d, B:17:0x005b, B:19:0x0064, B:21:0x0075, B:22:0x0081, B:24:0x008e, B:27:0x009a, B:29:0x00a4, B:31:0x00b5, B:33:0x00d9, B:36:0x00f5, B:38:0x0107, B:41:0x0117, B:43:0x0140, B:47:0x0157, B:49:0x015e, B:51:0x016d, B:53:0x0173, B:55:0x019e, B:56:0x01a7, B:58:0x01b0, B:59:0x01bd, B:60:0x01cb, B:62:0x01cd), top: B:71:0x0022 }] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T m6771e() {
        /*
            Method dump skipped, instructions count: 477
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.AbstractC7607x3.m6771e():java.lang.Object");
    }
}
