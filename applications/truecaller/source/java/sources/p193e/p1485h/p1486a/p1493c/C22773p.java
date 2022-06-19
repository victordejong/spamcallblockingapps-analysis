package p193e.p1485h.p1486a.p1493c;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import com.clevertap.android.sdk.inbox.CTInboxActivity;
import com.clevertap.android.sdk.inbox.CTInboxActivity$c;
import com.clevertap.android.sdk.inbox.CTInboxMessage;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;
import p1727n3.p1789g0.C26232y;
import p193e.p1485h.p1486a.p1493c.p1494a1.C22712a;
import p193e.p1485h.p1486a.p1493c.p1494a1.C22714c;
import p193e.p1485h.p1486a.p1493c.p1502r0.C22820h;
import p193e.p1485h.p1486a.p1493c.p1502r0.C22825m;
import p193e.p1485h.p1486a.p1493c.p1502r0.CallableC22819g;
import p193e.p1485h.p1486a.p1493c.p1503s0.AbstractC22830c;
import p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22863e;
import p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22865g;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22882a;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22895k;
import p193e.p1485h.p1486a.p1493c.p1510y0.RunnableC22894j;
/* renamed from: e.h.a.c.p */
/* loaded from: classes-dex2jar.jar:e/h/a/c/p.class */
public class C22773p implements CTInboxActivity$c {

    /* renamed from: c */
    public static int f63083c = 0;

    /* renamed from: d */
    public static CleverTapInstanceConfig f63084d;

    /* renamed from: e */
    public static HashMap<String, C22773p> f63085e;

    /* renamed from: f */
    public static AbstractC22830c f63086f;

    /* renamed from: a */
    public final Context f63087a;

    /* renamed from: b */
    public C22877x f63088b;

    /* renamed from: e.h.a.c.p$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/p$a.class */
    public class CallableC22774a implements Callable<Void> {
        public CallableC22774a() {
            C22773p.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            String str;
            C22731f0 c22731f0 = C22773p.this.f63088b.f63524j.f62975d;
            Objects.requireNonNull(c22731f0);
            try {
                CleverTapInstanceConfig cleverTapInstanceConfig = c22731f0.f62938c;
                if (cleverTapInstanceConfig.f2255p) {
                    if (!cleverTapInstanceConfig.f2252m) {
                        str = "local_events:" + c22731f0.f62938c.f2240a;
                    } else {
                        str = "local_events";
                    }
                    c22731f0.m7874b("App Launched", c22731f0.m7869g("App Launched", null, str));
                }
            } catch (Throwable th) {
                C22735g0 m7872d = c22731f0.m7872d();
                String str2 = c22731f0.f62938c.f2240a;
                Objects.requireNonNull(m7872d);
            }
            C22718b0 c22718b0 = C22773p.this.f63088b.f63516b;
            boolean m2383a0 = C26232y.m2383a0(c22718b0.f62874e, c22718b0.f62873d, "NetworkInfo");
            c22718b0.f62873d.m42081b().m7855b(c22718b0.f62873d.f2240a, "Setting device network info reporting state from storage to " + m2383a0);
            c22718b0.f62876g = m2383a0;
            C22773p.this.f63088b.f63516b.m7903q();
            return null;
        }
    }

    /* renamed from: e.h.a.c.p$b */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/p$b.class */
    public class CallableC22775b implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ CleverTapInstanceConfig f63090a;

        /* renamed from: b */
        public final /* synthetic */ Context f63091b;

        public CallableC22775b(C22773p c22773p, CleverTapInstanceConfig cleverTapInstanceConfig, Context context) {
            this.f63090a = cleverTapInstanceConfig;
            this.f63091b = context;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            String str;
            CleverTapInstanceConfig cleverTapInstanceConfig = this.f63090a;
            Objects.requireNonNull(cleverTapInstanceConfig);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("accountId", cleverTapInstanceConfig.f2240a);
                jSONObject.put("accountToken", cleverTapInstanceConfig.f2242c);
                jSONObject.put("accountRegion", cleverTapInstanceConfig.f2241b);
                jSONObject.put("fcmSenderId", cleverTapInstanceConfig.f2251l);
                jSONObject.put("analyticsOnly", cleverTapInstanceConfig.f2244e);
                jSONObject.put("isDefaultInstance", cleverTapInstanceConfig.f2252m);
                jSONObject.put("useGoogleAdId", cleverTapInstanceConfig.f2258s);
                jSONObject.put("disableAppLaunchedEvent", cleverTapInstanceConfig.f2249j);
                jSONObject.put("personalization", cleverTapInstanceConfig.f2255p);
                jSONObject.put("debugLevel", cleverTapInstanceConfig.f2248i);
                jSONObject.put("createdPostAppLaunch", cleverTapInstanceConfig.f2247h);
                jSONObject.put("sslPinning", cleverTapInstanceConfig.f2257r);
                jSONObject.put("backgroundSync", cleverTapInstanceConfig.f2245f);
                jSONObject.put("getEnableCustomCleverTapId", cleverTapInstanceConfig.f2250k);
                jSONObject.put("packageName", cleverTapInstanceConfig.f2254o);
                jSONObject.put("beta", cleverTapInstanceConfig.f2246g);
                ArrayList<String> arrayList = cleverTapInstanceConfig.f2243d;
                JSONArray jSONArray = new JSONArray();
                for (String str2 : arrayList) {
                    if (str2 != null) {
                        jSONArray.put(str2);
                    }
                }
                jSONObject.put("allowedPushTypes", jSONArray);
                str = jSONObject.toString();
            } catch (Throwable th) {
                th.getCause();
                str = null;
            }
            if (str == null) {
                return null;
            }
            C26232y.m2466F1(this.f63091b, C26232y.m2398W1(this.f63090a, "instance"), str);
            return null;
        }
    }

    /* renamed from: e.h.a.c.p$c */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/p$c.class */
    public class CallableC22776c implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ CTInboxMessage f63092a;

        /* renamed from: b */
        public final /* synthetic */ Bundle f63093b;

        public CallableC22776c(CTInboxMessage cTInboxMessage, Bundle bundle) {
            C22773p.this = r4;
            this.f63092a = cTInboxMessage;
            this.f63093b = bundle;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            CTInboxMessage cTInboxMessage;
            C22773p c22773p = C22773p.this;
            String str = this.f63092a.f2382l;
            synchronized (c22773p.f63088b.f63519e.f63016a) {
                C22820h c22820h = c22773p.f63088b.f63521g.f63410e;
                if (c22820h != null) {
                    C22825m m7737c = c22820h.m7737c(str);
                    cTInboxMessage = m7737c != null ? new CTInboxMessage(m7737c.m7728d()) : null;
                } else {
                    c22773p.m7794g().m7856a(c22773p.m7795f(), "Notification Inbox not initialized");
                    cTInboxMessage = null;
                }
            }
            if (!cTInboxMessage.f2381k) {
                C22773p c22773p2 = C22773p.this;
                CTInboxMessage cTInboxMessage2 = this.f63092a;
                C22820h c22820h2 = c22773p2.f63088b.f63521g.f63410e;
                if (c22820h2 != null) {
                    C22895k m7641c = C22882a.m7644a(c22820h2.f63321h).m7641c();
                    m7641c.f63554c.execute(new RunnableC22894j(m7641c, "markReadInboxMessage", new CallableC22819g(c22820h2, cTInboxMessage2)));
                } else {
                    c22773p2.m7794g().m7856a(c22773p2.m7795f(), "Notification Inbox not initialized");
                }
                C22773p.this.f63088b.f63518d.m7880k(false, this.f63092a, this.f63093b);
                return null;
            }
            return null;
        }
    }

    /* renamed from: e.h.a.c.p$d */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/p$d.class */
    public class CallableC22777d implements Callable<Void> {
        public CallableC22777d() {
            C22773p.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            if (C22773p.this.f63088b.f63516b.m7910j() != null) {
                C22773p.this.f63088b.f63523i.m7718d();
                return null;
            }
            return null;
        }
    }

    /* renamed from: e.h.a.c.p$e */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/p$e.class */
    public class CallableC22778e implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ CleverTapInstanceConfig f63096a;

        public CallableC22778e(CleverTapInstanceConfig cleverTapInstanceConfig) {
            C22773p.this = r4;
            this.f63096a = cleverTapInstanceConfig;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            if (this.f63096a.f2252m) {
                C22773p c22773p = C22773p.this;
                C22895k m7641c = C22882a.m7644a(c22773p.f63088b.f63515a).m7641c();
                m7641c.f63554c.execute(new RunnableC22894j(m7641c, "Manifest Validation", new CallableC22785q(c22773p)));
                return null;
            }
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x044c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02f2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x05ca A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x05a1 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C22773p(android.content.Context r26, com.clevertap.android.sdk.CleverTapInstanceConfig r27, java.lang.String r28) {
        /*
            Method dump skipped, instructions count: 1980
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1485h.p1486a.p1493c.C22773p.<init>(android.content.Context, com.clevertap.android.sdk.CleverTapInstanceConfig, java.lang.String):void");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:30:0x009e
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:92)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:52)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:44)
        */
    /* renamed from: d */
    public static p193e.p1485h.p1486a.p1493c.C22773p m7797d(android.content.Context r4, java.lang.String r5, java.lang.String r6) {
        /*
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r5
            if (r0 != 0) goto L19
            r0 = r4
            r1 = r6
            e.h.a.c.p r0 = m7792i(r0, r1)     // Catch: java.lang.Throwable -> L11
            r4 = r0
            r0 = r4
            return r0
        L11:
            r4 = move-exception
            r0 = r4
            java.lang.Throwable r0 = r0.getCause()     // Catch: java.lang.Throwable -> La0
            r0 = 0
            return r0
        L19:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La0
            r9 = r0
            r0 = r9
            r0.<init>()     // Catch: java.lang.Throwable -> La0
            r0 = r9
            java.lang.String r1 = "instance:"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> La0
            r0 = r9
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> La0
            r0 = r4
            r1 = r9
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> La0
            java.lang.String r2 = ""
            java.lang.String r0 = p1727n3.p1789g0.C26232y.m2281y0(r0, r1, r2)     // Catch: java.lang.Throwable -> La0
            r9 = r0
            r0 = r9
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> La0
            r10 = r0
            r0 = r10
            if (r0 != 0) goto L6c
            com.clevertap.android.sdk.CleverTapInstanceConfig r0 = new com.clevertap.android.sdk.CleverTapInstanceConfig     // Catch: java.lang.Throwable -> L5a
            r5 = r0
            r0 = r5
            r1 = r9
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L5a
            goto L5d
        L5a:
            r5 = move-exception
            r0 = 0
            r5 = r0
        L5d:
            r0 = r5
            if (r0 == 0) goto L69
            r0 = r4
            r1 = r5
            r2 = r6
            e.h.a.c.p r0 = m7789l(r0, r1, r2)     // Catch: java.lang.Throwable -> La0
            r8 = r0
        L69:
            r0 = r8
            return r0
        L6c:
            r0 = r4
            e.h.a.c.p r0 = m7793h(r0)     // Catch: java.lang.Throwable -> L93
            r6 = r0
            r0 = r7
            r4 = r0
            r0 = r6
            if (r0 == 0) goto L97
            r0 = r6
            e.h.a.c.x r0 = r0.f63088b     // Catch: java.lang.Throwable -> L93
            com.clevertap.android.sdk.CleverTapInstanceConfig r0 = r0.f63515a     // Catch: java.lang.Throwable -> L93
            java.lang.String r0 = r0.f2240a     // Catch: java.lang.Throwable -> L93
            r1 = r5
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> L93
            r10 = r0
            r0 = r7
            r4 = r0
            r0 = r10
            if (r0 == 0) goto L97
            r0 = r6
            r4 = r0
            goto L97
        L93:
            r4 = move-exception
            goto L99
        L97:
            r0 = r4
            return r0
        L99:
            r0 = r4
            java.lang.Throwable r0 = r0.getCause()     // Catch: java.lang.Throwable -> La0
        L9e:
            r0 = 0
            return r0
        La0:
            r4 = move-exception
            goto L9e
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1485h.p1486a.p1493c.C22773p.m7797d(android.content.Context, java.lang.String, java.lang.String):e.h.a.c.p");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x005c, code lost:
        if (r0.m7795f().equals(r5) != false) goto L17;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p193e.p1485h.p1486a.p1493c.C22773p m7796e(android.content.Context r4, java.lang.String r5) {
        /*
            java.util.HashMap<java.lang.String, e.h.a.c.p> r0 = p193e.p1485h.p1486a.p1493c.C22773p.f63085e
            r6 = r0
            r0 = r6
            if (r0 != 0) goto Lf
            r0 = r4
            r1 = r5
            r2 = 0
            e.h.a.c.p r0 = m7797d(r0, r1, r2)
            return r0
        Lf:
            r0 = r6
            java.util.Set r0 = r0.keySet()
            java.util.Iterator r0 = r0.iterator()
            r4 = r0
        L19:
            r0 = r4
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L69
            r0 = r4
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r6 = r0
            java.util.HashMap<java.lang.String, e.h.a.c.p> r0 = p193e.p1485h.p1486a.p1493c.C22773p.f63085e
            r1 = r6
            java.lang.Object r0 = r0.get(r1)
            e.h.a.c.p r0 = (p193e.p1485h.p1486a.p1493c.C22773p) r0
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r7
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L62
            r0 = r5
            if (r0 != 0) goto L51
            r0 = r6
            e.h.a.c.x r0 = r0.f63088b
            com.clevertap.android.sdk.CleverTapInstanceConfig r0 = r0.f63515a
            boolean r0 = r0.f2252m
            if (r0 != 0) goto L5f
        L51:
            r0 = r7
            r8 = r0
            r0 = r6
            java.lang.String r0 = r0.m7795f()
            r1 = r5
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L62
        L5f:
            r0 = 1
            r8 = r0
        L62:
            r0 = r8
            if (r0 == 0) goto L19
            r0 = r6
            return r0
        L69:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1485h.p1486a.p1493c.C22773p.m7796e(android.content.Context, java.lang.String):e.h.a.c.p");
    }

    /* renamed from: h */
    public static C22773p m7793h(Context context) {
        return m7792i(context, null);
    }

    /* renamed from: i */
    public static C22773p m7792i(Context context, String str) {
        CleverTapInstanceConfig cleverTapInstanceConfig = f63084d;
        if (cleverTapInstanceConfig != null) {
            return m7789l(context, cleverTapInstanceConfig, str);
        }
        Objects.requireNonNull(C22737h0.m7853b(context));
        String str2 = C22737h0.f62953b;
        String str3 = C22737h0.f62954c;
        CleverTapInstanceConfig cleverTapInstanceConfig2 = (str2 == null || str3 == null) ? null : new CleverTapInstanceConfig(context, str2, str3, C22737h0.f62955d, true);
        f63084d = cleverTapInstanceConfig2;
        if (cleverTapInstanceConfig2 == null) {
            return null;
        }
        return m7789l(context, cleverTapInstanceConfig2, str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x007d, code lost:
        if (r0.m7795f().equals(r6) != false) goto L22;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m7791j(android.content.Context r4, android.os.Bundle r5) {
        /*
            r0 = r5
            java.lang.String r1 = "wzrk_acct_id"
            java.lang.String r0 = r0.getString(r1)     // Catch: java.lang.Throwable -> Lb
            r6 = r0
            goto Le
        Lb:
            r6 = move-exception
            r0 = 0
            r6 = r0
        Le:
            java.util.HashMap<java.lang.String, e.h.a.c.p> r0 = p193e.p1485h.p1486a.p1493c.C22773p.f63085e
            r7 = r0
            r0 = r7
            if (r0 != 0) goto L2d
            r0 = r4
            r1 = r6
            r2 = 0
            e.h.a.c.p r0 = m7797d(r0, r1, r2)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L2c
            r0 = r4
            e.h.a.c.x r0 = r0.f63088b
            e.h.a.c.f r0 = r0.f63518d
            r1 = r5
            r0.m7878m(r1)
        L2c:
            return
        L2d:
            r0 = r7
            java.util.Set r0 = r0.keySet()
            java.util.Iterator r0 = r0.iterator()
            r4 = r0
        L37:
            r0 = r4
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L93
            r0 = r4
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r7 = r0
            java.util.HashMap<java.lang.String, e.h.a.c.p> r0 = p193e.p1485h.p1486a.p1493c.C22773p.f63085e
            r1 = r7
            java.lang.Object r0 = r0.get(r1)
            e.h.a.c.p r0 = (p193e.p1485h.p1486a.p1493c.C22773p) r0
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L83
            r0 = r6
            if (r0 != 0) goto L71
            r0 = r7
            e.h.a.c.x r0 = r0.f63088b
            com.clevertap.android.sdk.CleverTapInstanceConfig r0 = r0.f63515a
            boolean r0 = r0.f2252m
            if (r0 != 0) goto L80
        L71:
            r0 = r8
            r9 = r0
            r0 = r7
            java.lang.String r0 = r0.m7795f()
            r1 = r6
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L83
        L80:
            r0 = 1
            r9 = r0
        L83:
            r0 = r9
            if (r0 == 0) goto L37
            r0 = r7
            e.h.a.c.x r0 = r0.f63088b
            e.h.a.c.f r0 = r0.f63518d
            r1 = r5
            r0.m7878m(r1)
        L93:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1485h.p1486a.p1493c.C22773p.m7791j(android.content.Context, android.os.Bundle):void");
    }

    /* renamed from: k */
    public static C22773p m7790k(Context context, CleverTapInstanceConfig cleverTapInstanceConfig) {
        return m7789l(context, cleverTapInstanceConfig, null);
    }

    /* renamed from: l */
    public static C22773p m7789l(Context context, CleverTapInstanceConfig cleverTapInstanceConfig, String str) {
        C22773p c22773p;
        if (cleverTapInstanceConfig == null) {
            return null;
        }
        if (f63085e == null) {
            f63085e = new HashMap<>();
        }
        C22773p c22773p2 = f63085e.get(cleverTapInstanceConfig.f2240a);
        if (c22773p2 == null) {
            c22773p = new C22773p(context, cleverTapInstanceConfig, str);
            f63085e.put(cleverTapInstanceConfig.f2240a, c22773p);
            C22895k m7641c = C22882a.m7644a(c22773p.f63088b.f63515a).m7641c();
            m7641c.f63554c.execute(new RunnableC22894j(m7641c, "recordDeviceIDErrors", new CallableC22777d()));
        } else {
            c22773p = c22773p2;
            if (c22773p2.f63088b.f63516b.m7905o()) {
                c22773p = c22773p2;
                if (c22773p2.f63088b.f63515a.f2250k) {
                    c22773p = c22773p2;
                    if (C22741j0.m7836n(str)) {
                        c22773p2.f63088b.f63523i.m7719c(null, null, str);
                        c22773p = c22773p2;
                    }
                }
            }
        }
        String str2 = "CleverTapAPI instance = " + c22773p;
        return c22773p;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:(3:95|8|9)|(6:(15:85|11|15|87|16|17|(3:19|20|(18:22|23|24|(4:26|27|28|(9:30|32|(2:93|34)|35|36|37|(2:39|40)|42|(5:91|47|(5:51|(5:97|53|(1:62)(2:60|61)|63|(1:102)(5:99|65|(1:71)|72|(3:89|74|104)(1:103)))(1:101)|100|48|49)|98|106)(1:46)))|31|32|(0)|35|36|37|(0)|42|(1:44)|91|47|(2:48|49)|98|106))|41|42|(0)|91|47|(2:48|49)|98|106)|91|47|(2:48|49)|98|106)|14|15|87|16|17|(0)|41|42|(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0179, code lost:
        r7 = r6;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a9 A[Catch: all -> 0x017e, TRY_LEAVE, TryCatch #5 {all -> 0x017e, blocks: (B:34:0x0092, B:37:0x009f, B:39:0x00a9), top: B:93:0x0092 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00e2 A[Catch: all -> 0x016a, TRY_LEAVE, TryCatch #4 {all -> 0x016a, blocks: (B:47:0x00cd, B:49:0x00da, B:51:0x00e2, B:53:0x00fb, B:55:0x010c, B:58:0x0117, B:67:0x0136, B:69:0x013d, B:71:0x0147), top: B:91:0x00cd }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0092 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m7788m(android.app.Activity r4, java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1485h.p1486a.p1493c.C22773p.m7788m(android.app.Activity, java.lang.String):void");
    }

    /* renamed from: n */
    public static void m7787n(Activity activity, String str) {
        if (f63085e == null) {
            m7797d(activity.getApplicationContext(), null, str);
        }
        C22858w.f63447t = true;
        if (f63085e == null) {
            return;
        }
        Activity m7674a = C22858w.m7674a();
        String str2 = null;
        if (m7674a != null) {
            str2 = m7674a.getLocalClassName();
        }
        C22858w.m7670e(activity);
        if (str2 == null || !str2.equals(activity.getLocalClassName())) {
            C22858w.f63449v++;
        }
        if (C22858w.f63450w <= 0) {
            boolean z = C22741j0.f62977a;
            C22858w.f63450w = (int) (System.currentTimeMillis() / 1000);
        }
        for (String str3 : f63085e.keySet()) {
            C22773p c22773p = f63085e.get(str3);
            if (c22773p != null) {
                try {
                    c22773p.f63088b.f63517c.m7928c(activity);
                } catch (Throwable th) {
                    th.getLocalizedMessage();
                }
            }
        }
    }

    /* renamed from: s */
    public static void m7782s(Context context, String str, AbstractC22865g.EnumC22866a enumC22866a) {
        ArrayList arrayList = new ArrayList();
        HashMap<String, C22773p> hashMap = f63085e;
        if (hashMap == null || hashMap.isEmpty()) {
            C22773p m7793h = m7793h(context);
            if (m7793h != null) {
                arrayList.add(m7793h);
            }
        } else {
            arrayList.addAll(f63085e.values());
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((C22773p) it.next()).f63088b.f63525k.m7655f(str, enumC22866a);
        }
    }

    @Override // com.clevertap.android.sdk.inbox.CTInboxActivity$c
    /* renamed from: a */
    public void mo7800a(CTInboxActivity cTInboxActivity, CTInboxMessage cTInboxMessage, Bundle bundle, HashMap<String, String> hashMap) {
        this.f63088b.f63518d.m7880k(true, cTInboxMessage, bundle);
        if (hashMap != null) {
            hashMap.isEmpty();
        }
    }

    @Override // com.clevertap.android.sdk.inbox.CTInboxActivity$c
    /* renamed from: b */
    public void mo7799b(CTInboxActivity cTInboxActivity, CTInboxMessage cTInboxMessage, Bundle bundle) {
        C22895k m7641c = C22882a.m7644a(this.f63088b.f63515a).m7641c();
        m7641c.f63554c.execute(new RunnableC22894j(m7641c, "handleMessageDidShow", new CallableC22776c(cTInboxMessage, bundle)));
    }

    /* renamed from: c */
    public void m7798c(String str, ArrayList<String> arrayList) {
        C22727f c22727f = this.f63088b.f63518d;
        C22895k m7641c = C22882a.m7644a(c22727f.f62918e).m7641c();
        m7641c.f63554c.execute(new RunnableC22894j(m7641c, "addMultiValuesForKey", new CallableC22725e(c22727f, str, arrayList)));
    }

    /* renamed from: f */
    public String m7795f() {
        return this.f63088b.f63515a.f2240a;
    }

    /* renamed from: g */
    public final C22735g0 m7794g() {
        return this.f63088b.f63515a.m42081b();
    }

    /* renamed from: o */
    public void m7786o(String str) {
        if (str == null || str.trim().equals("")) {
            return;
        }
        m7785p(str, null);
    }

    /* renamed from: p */
    public void m7785p(String str, Map<String, Object> map) {
        C22727f c22727f = this.f63088b.f63518d;
        Objects.requireNonNull(c22727f);
        if (str == null || str.equals("")) {
            return;
        }
        Objects.requireNonNull(c22727f.f62925l);
        C22712a c22712a = new C22712a();
        String[] strArr = C22714c.f62850e;
        int length = strArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            } else if (str.equalsIgnoreCase(strArr[i])) {
                C22712a m2468F = C26232y.m2468F(513, 16, str);
                c22712a.f62842a = m2468F.f62842a;
                c22712a.f62843b = m2468F.f62843b;
                break;
            } else {
                i++;
            }
        }
        if (c22712a.f62842a > 0) {
            c22727f.f62924k.m7926b(c22712a);
            return;
        }
        C22714c c22714c = c22727f.f62925l;
        Objects.requireNonNull(c22714c);
        C22712a c22712a2 = new C22712a();
        ArrayList<String> arrayList = c22714c.f62851a;
        if (arrayList != null) {
            Iterator<String> it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (str.equalsIgnoreCase(it.next())) {
                    C22712a m2468F2 = C26232y.m2468F(513, 17, str);
                    c22712a2.f62842a = m2468F2.f62842a;
                    c22712a2.f62843b = m2468F2.f62843b;
                    break;
                }
            }
        }
        if (c22712a2.f62842a > 0) {
            c22727f.f62924k.m7926b(c22712a2);
            return;
        }
        HashMap hashMap = map;
        if (map == null) {
            hashMap = new HashMap();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            C22712a m7925a = c22727f.f62925l.m7925a(str);
            if (m7925a.f62842a != 0) {
                jSONObject.put("wzrk_error", C26232y.m2333l0(m7925a));
            }
            String obj = m7925a.f62844c.toString();
            JSONObject jSONObject2 = new JSONObject();
            for (String str2 : hashMap.keySet()) {
                Object obj2 = hashMap.get(str2);
                C22712a m7923c = c22727f.f62925l.m7923c(str2);
                String obj3 = m7923c.f62844c.toString();
                if (m7923c.f62842a != 0) {
                    jSONObject.put("wzrk_error", C26232y.m2333l0(m7923c));
                }
                try {
                    C22712a m7922d = c22727f.f62925l.m7922d(obj2, C22714c.EnumC22716b.Event);
                    Object obj4 = m7922d.f62844c;
                    if (m7922d.f62842a != 0) {
                        jSONObject.put("wzrk_error", C26232y.m2333l0(m7922d));
                    }
                    jSONObject2.put(obj3, obj4);
                } catch (IllegalArgumentException e) {
                    C22712a m2468F3 = C26232y.m2468F(512, 7, obj, obj3, obj2 != null ? obj2.toString() : "");
                    c22727f.f62918e.m42081b().m7856a(c22727f.f62918e.f2240a, m2468F3.f62843b);
                    c22727f.f62924k.m7926b(m2468F3);
                }
            }
            jSONObject.put("evtName", obj);
            jSONObject.put("evtData", jSONObject2);
            c22727f.f62916c.mo7812d(c22727f.f62919f, jSONObject, 4);
        } catch (Throwable th) {
        }
    }

    /* renamed from: q */
    public void m7784q(String str, ArrayList<String> arrayList) {
        C22727f c22727f = this.f63088b.f63518d;
        C22895k m7641c = C22882a.m7644a(c22727f.f62918e).m7641c();
        m7641c.f63554c.execute(new RunnableC22894j(m7641c, "removeMultiValuesForKey", new CallableC22734g(c22727f, arrayList, str)));
    }

    /* renamed from: r */
    public void m7783r(AbstractC22863e abstractC22863e, Context context, Bundle bundle) {
        this.f63088b.f63525k.f63494h = abstractC22863e;
        if (bundle.containsKey("notificationId")) {
            this.f63088b.f63525k.m7659b(context, bundle, bundle.getInt("notificationId"));
        } else {
            this.f63088b.f63525k.m7659b(context, bundle, -1000);
        }
    }
}
