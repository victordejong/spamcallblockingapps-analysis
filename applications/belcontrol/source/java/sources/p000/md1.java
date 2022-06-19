package p000;

import android.content.Context;
import java.io.Serializable;
import java.util.EnumSet;
/* renamed from: md1 */
/* loaded from: classes3-dex2jar.jar:md1.class */
public abstract class md1 implements Serializable {

    /* renamed from: j */
    public static final String f6998j = md1.class.getSimpleName();

    /* renamed from: a */
    public long f6999a;

    /* renamed from: b */
    public long f7000b;

    /* renamed from: c */
    public Integer f7001c;

    /* renamed from: d */
    public EnumSet<EnumC1472a> f7002d;

    /* renamed from: f */
    public String f7003f;

    /* renamed from: g */
    public String f7004g;

    /* renamed from: h */
    public String f7005h;

    /* renamed from: md1$a */
    /* loaded from: classes3-dex2jar.jar:md1$a.class */
    public enum EnumC1472a implements Serializable {
        FLAG_NTENABLE(1, 1),
        FLAG_NTTYPE_NOTIFICATION(2, 0),
        FLAG_NTTYPE_ALERT(2, 1),
        FLAG_NTMOMENT_APP_OPEN(4, 0),
        FLAG_NTMOMENT_IMMEDIATELY(4, 1);
        

        /* renamed from: a */
        public int f7012a;

        /* renamed from: b */
        public int f7013b;

        EnumC1472a(int i, int i2) {
            this.f7012a = i;
            this.f7013b = i2;
        }

        /* renamed from: a */
        public static EnumSet<EnumC1472a> m1267a(int i) {
            EnumC1472a[] values;
            EnumSet<EnumC1472a> noneOf = EnumSet.noneOf(EnumC1472a.class);
            for (EnumC1472a enumC1472a : values()) {
                int i2 = enumC1472a.f7012a;
                if ((i & i2) == i2 && enumC1472a.f7013b == 1) {
                    noneOf.add(enumC1472a);
                }
                if ((enumC1472a.f7012a & i) == 0 && enumC1472a.f7013b == 0) {
                    noneOf.add(enumC1472a);
                }
            }
            return noneOf;
        }
    }

    /* renamed from: md1$b */
    /* loaded from: classes3-dex2jar.jar:md1$b.class */
    public enum EnumC1473b {
        PUSH_CONTEXT_RECEIVE,
        PUSH_CONTEXT_APP_OPEN
    }

    /* renamed from: md1$c */
    /* loaded from: classes3-dex2jar.jar:md1$c.class */
    public enum EnumC1474c implements Serializable {
        PUSH_NOP(0, 0),
        PUSH_NOTIFICATION(10000, 11000),
        PUSH_INFO_REQUEST(11001, 11001),
        PUSH_SCREEN_DISPLAY_REQUEST(11002, 11002),
        PUSH_DEVICE_TO_SYNCHRONIZE_REQUEST(11003, 11003),
        PUSH_DEVICE_TO_SENT_PURCHASE_TOKEN_REQUEST(11004, 11004),
        PUSH_DEVICE_TO_SYNCHRONIZE_COMMUNITY(11005, 11005);
        

        /* renamed from: a */
        public int f7025a;

        /* renamed from: b */
        public int f7026b;

        /* renamed from: c */
        public int f7027c;

        EnumC1474c(int i, int i2) {
            this.f7025a = i;
            this.f7026b = i2;
        }

        /* renamed from: b */
        public static EnumC1474c m1265b(int i) {
            EnumC1474c[] values;
            for (EnumC1474c enumC1474c : values()) {
                if (enumC1474c.f7025a <= i && enumC1474c.f7026b >= i) {
                    enumC1474c.f7027c = i;
                    return enumC1474c;
                }
            }
            return PUSH_NOP;
        }

        /* renamed from: a */
        public int m1266a() {
            return this.f7027c;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003e A[Catch: all -> 0x0053, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0053, blocks: (B:15:0x003e, B:18:0x0049), top: B:24:0x003b }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0045  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.HashMap<java.lang.Integer, p000.md1> m1270g() {
        /*
            r0 = 0
            r3 = r0
            android.app.Application r0 = p000.fa1.m1840j()     // Catch: java.lang.Throwable -> L25
            java.lang.String r1 = "ppd.dat"
            java.io.FileInputStream r0 = r0.openFileInput(r1)     // Catch: java.lang.Throwable -> L25
            r4 = r0
            java.io.ObjectInputStream r0 = new java.io.ObjectInputStream     // Catch: java.lang.Throwable -> L1f java.lang.Throwable -> L25
            r5 = r0
            r0 = r5
            r1 = r4
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L1f
            r0 = r5
            java.lang.Object r0 = r0.readObject()     // Catch: java.lang.Throwable -> L4f
            java.util.HashMap r0 = (java.util.HashMap) r0     // Catch: java.lang.Throwable -> L4f
            r3 = r0
            goto L3a
        L1f:
            r5 = move-exception
            r0 = 0
            r5 = r0
        L22:
            goto L2a
        L25:
            r5 = move-exception
            r0 = 0
            r5 = r0
            r0 = r3
            r4 = r0
        L2a:
            java.util.HashMap r0 = new java.util.HashMap
            r1 = r0
            r1.<init>()
            r3 = r0
            java.lang.String r0 = p000.md1.f6998j
            java.lang.String r1 = "Unable to load"
            p000.j91.m1505k(r0, r1)
        L3a:
            r0 = r5
            if (r0 == 0) goto L45
            r0 = r5
            r0.close()     // Catch: java.lang.Throwable -> L53
            goto L4d
        L45:
            r0 = r4
            if (r0 == 0) goto L4d
            r0 = r4
            r0.close()     // Catch: java.lang.Throwable -> L53
        L4d:
            r0 = r3
            return r0
        L4f:
            r3 = move-exception
            goto L22
        L53:
            r5 = move-exception
            goto L4d
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.md1.m1270g():java.util.HashMap");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0036 A[Catch: all -> 0x004c, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x004c, blocks: (B:16:0x0036, B:19:0x0041), top: B:29:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003d  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m1269h(java.util.HashMap<java.lang.Integer, p000.md1> r4) {
        /*
            r0 = 0
            r5 = r0
            android.app.Application r0 = p000.fa1.m1840j()     // Catch: java.lang.Throwable -> L25
            java.lang.String r1 = "ppd.dat"
            r2 = 0
            java.io.FileOutputStream r0 = r0.openFileOutput(r1, r2)     // Catch: java.lang.Throwable -> L25
            r6 = r0
            java.io.ObjectOutputStream r0 = new java.io.ObjectOutputStream     // Catch: java.lang.Throwable -> L1f java.lang.Throwable -> L25
            r5 = r0
            r0 = r5
            r1 = r6
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L1f
            r0 = r5
            r1 = r4
            r0.writeObject(r1)     // Catch: java.lang.Throwable -> L46
            r0 = r5
            r4 = r0
            goto L32
        L1f:
            r4 = move-exception
            r0 = 0
            r4 = r0
        L22:
            goto L2a
        L25:
            r4 = move-exception
            r0 = 0
            r4 = r0
            r0 = r5
            r6 = r0
        L2a:
            java.lang.String r0 = p000.md1.f6998j
            java.lang.String r1 = "Unable to save"
            p000.j91.m1505k(r0, r1)
        L32:
            r0 = r4
            if (r0 == 0) goto L3d
            r0 = r4
            r0.close()     // Catch: java.lang.Throwable -> L4c
            goto L45
        L3d:
            r0 = r6
            if (r0 == 0) goto L45
            r0 = r6
            r0.close()     // Catch: java.lang.Throwable -> L4c
        L45:
            return
        L46:
            r4 = move-exception
            r0 = r5
            r4 = r0
            goto L22
        L4c:
            r4 = move-exception
            goto L45
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.md1.m1269h(java.util.HashMap):void");
    }

    /* renamed from: a */
    public boolean m1275a() {
        return m1271f() && (System.currentTimeMillis() / 1000) - this.f6999a >= 604800;
    }

    /* renamed from: b */
    public abstract boolean mo928b(EnumC1473b enumC1473b, Context context);

    /* renamed from: c */
    public void m1274c(EnumC1473b enumC1473b, Context context) {
        if (m1271f() && mo928b(enumC1473b, context)) {
            m1272e();
        }
    }

    /* renamed from: d */
    public EnumC1474c m1273d() {
        return EnumC1474c.m1265b(this.f7001c.intValue());
    }

    /* renamed from: e */
    public void m1272e() {
        this.f7000b = -1L;
    }

    /* renamed from: f */
    public boolean m1271f() {
        long j = this.f7000b;
        return j == 0 || j - (System.currentTimeMillis() / 1000) > 0;
    }

    /* renamed from: i */
    public void m1268i(Integer num) {
        this.f7001c = num;
    }
}
