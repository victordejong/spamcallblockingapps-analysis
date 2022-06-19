package p211q6;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.BiConsumer;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.remoteconfig.internal.C1853a;
import com.google.firebase.remoteconfig.internal.C1855b;
import com.google.firebase.remoteconfig.internal.ConfigFetchHttpClient;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONObject;
import p124i4.C3117s;
import p222r6.C4218d;
import p222r6.C4221e;
import p222r6.C4224h;
import p222r6.C4225i;
import p241t4.C4392c;
import p252u4.C4485b;
import p275w5.AbstractC4739b;
import p285x4.AbstractC4857a;
import p286x5.AbstractC4871e;
@KeepForSdk
/* renamed from: q6.g */
/* loaded from: classes-dex2jar.jar:q6/g.class */
public class C4164g {

    /* renamed from: j */
    public static final Clock f13130j = DefaultClock.getInstance();

    /* renamed from: k */
    public static final Random f13131k = new Random();

    /* renamed from: b */
    public final Context f13133b;

    /* renamed from: c */
    public final ExecutorService f13134c;

    /* renamed from: d */
    public final C4392c f13135d;

    /* renamed from: e */
    public final AbstractC4871e f13136e;

    /* renamed from: f */
    public final C4485b f13137f;

    /* renamed from: g */
    public final AbstractC4739b<AbstractC4857a> f13138g;

    /* renamed from: h */
    public final String f13139h;

    /* renamed from: a */
    public final Map<String, C4157b> f13132a = new HashMap();

    /* renamed from: i */
    public Map<String, String> f13140i = new HashMap();

    public C4164g(Context context, C4392c c4392c, AbstractC4871e abstractC4871e, C4485b c4485b, AbstractC4739b<AbstractC4857a> abstractC4739b) {
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        this.f13133b = context;
        this.f13134c = newCachedThreadPool;
        this.f13135d = c4392c;
        this.f13136e = abstractC4871e;
        this.f13137f = c4485b;
        this.f13138g = abstractC4739b;
        c4392c.m974a();
        this.f13139h = c4392c.f13690c.f13712b;
        Tasks.call(newCachedThreadPool, new Callable() { // from class: q6.f
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return C4164g.this.m1348a("firebase");
            }
        });
    }

    /* renamed from: e */
    public static boolean m1344e(C4392c c4392c) {
        c4392c.m974a();
        return c4392c.f13689b.equals("[DEFAULT]");
    }

    @KeepForSdk
    /* renamed from: a */
    public C4157b m1348a(String str) {
        C4157b m1347b;
        synchronized (this) {
            C4218d m1346c = m1346c(str, "fetch");
            C4218d m1346c2 = m1346c(str, "activate");
            C4218d m1346c3 = m1346c(str, "defaults");
            C1855b c1855b = new C1855b(this.f13133b.getSharedPreferences(String.format("%s_%s_%s_%s", "frc", this.f13139h, str, "settings"), 0));
            C4224h c4224h = new C4224h(this.f13134c, m1346c2, m1346c3);
            C4392c c4392c = this.f13135d;
            AbstractC4739b<AbstractC4857a> abstractC4739b = this.f13138g;
            c4392c.m974a();
            C3117s c3117s = (!c4392c.f13689b.equals("[DEFAULT]") || !str.equals("firebase")) ? null : new C3117s(abstractC4739b);
            if (c3117s != null) {
                final C3117s c3117s2 = c3117s;
                BiConsumer<String, C4221e> biConsumer = new BiConsumer() { // from class: q6.e
                    @Override // com.google.android.gms.common.util.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        JSONObject optJSONObject;
                        C3117s c3117s3 = C3117s.this;
                        String str2 = (String) obj;
                        C4221e c4221e = (C4221e) obj2;
                        AbstractC4857a abstractC4857a = (AbstractC4857a) ((AbstractC4739b) c3117s3.f10550a).get();
                        if (abstractC4857a == null) {
                            return;
                        }
                        JSONObject jSONObject = c4221e.f13222e;
                        if (jSONObject.length() < 1) {
                            return;
                        }
                        JSONObject jSONObject2 = c4221e.f13219b;
                        if (jSONObject2.length() < 1 || (optJSONObject = jSONObject.optJSONObject(str2)) == null) {
                            return;
                        }
                        String optString = optJSONObject.optString("choiceId");
                        if (optString.isEmpty()) {
                            return;
                        }
                        synchronized (((Map) c3117s3.f10551b)) {
                            if (!optString.equals(((Map) c3117s3.f10551b).get(str2))) {
                                ((Map) c3117s3.f10551b).put(str2, optString);
                                Bundle bundle = new Bundle();
                                bundle.putString("arm_key", str2);
                                bundle.putString("arm_value", jSONObject2.optString(str2));
                                bundle.putString("personalization_id", optJSONObject.optString("personalizationId"));
                                bundle.putInt("arm_index", optJSONObject.optInt("armIndex", -1));
                                bundle.putString("group", optJSONObject.optString("group"));
                                abstractC4857a.mo343e("fp", "personalization_assignment", bundle);
                                Bundle bundle2 = new Bundle();
                                bundle2.putString("_fpid", optString);
                                abstractC4857a.mo343e("fp", "_fpc", bundle2);
                            }
                        }
                    }
                };
                synchronized (c4224h.f13231a) {
                    c4224h.f13231a.add(biConsumer);
                }
            }
            m1347b = m1347b(this.f13135d, str, this.f13136e, this.f13137f, this.f13134c, m1346c, m1346c2, m1346c3, m1345d(str, m1346c, c1855b), c4224h, c1855b);
        }
        return m1347b;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0044  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p211q6.C4157b m1347b(p241t4.C4392c r14, java.lang.String r15, p286x5.AbstractC4871e r16, p252u4.C4485b r17, java.util.concurrent.Executor r18, p222r6.C4218d r19, p222r6.C4218d r20, p222r6.C4218d r21, com.google.firebase.remoteconfig.internal.C1853a r22, p222r6.C4224h r23, com.google.firebase.remoteconfig.internal.C1855b r24) {
        /*
            r13 = this;
            r0 = r13
            monitor-enter(r0)
            r0 = r13
            java.util.Map<java.lang.String, q6.b> r0 = r0.f13132a     // Catch: java.lang.Throwable -> L91
            r1 = r15
            boolean r0 = r0.containsKey(r1)     // Catch: java.lang.Throwable -> L91
            if (r0 != 0) goto L7f
            q6.b r0 = new q6.b     // Catch: java.lang.Throwable -> L91
            r25 = r0
            r0 = r13
            android.content.Context r0 = r0.f13133b     // Catch: java.lang.Throwable -> L91
            r26 = r0
            r0 = r15
            java.lang.String r1 = "firebase"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> L91
            if (r0 == 0) goto L39
            r0 = r14
            r0.m974a()     // Catch: java.lang.Throwable -> L91
            r0 = r14
            java.lang.String r0 = r0.f13689b     // Catch: java.lang.Throwable -> L91
            java.lang.String r1 = "[DEFAULT]"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> L91
            if (r0 == 0) goto L39
            r0 = 1
            r27 = r0
            goto L3c
        L39:
            r0 = 0
            r27 = r0
        L3c:
            r0 = r27
            if (r0 == 0) goto L44
            goto L47
        L44:
            r0 = 0
            r17 = r0
        L47:
            r0 = r25
            r1 = r26
            r2 = r14
            r3 = r16
            r4 = r17
            r5 = r18
            r6 = r19
            r7 = r20
            r8 = r21
            r9 = r22
            r10 = r23
            r11 = r24
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L91
            r0 = r20
            com.google.android.gms.tasks.Task r0 = r0.m1284b()     // Catch: java.lang.Throwable -> L91
            r0 = r21
            com.google.android.gms.tasks.Task r0 = r0.m1284b()     // Catch: java.lang.Throwable -> L91
            r0 = r19
            com.google.android.gms.tasks.Task r0 = r0.m1284b()     // Catch: java.lang.Throwable -> L91
            r0 = r13
            java.util.Map<java.lang.String, q6.b> r0 = r0.f13132a     // Catch: java.lang.Throwable -> L91
            r1 = r15
            r2 = r25
            java.lang.Object r0 = r0.put(r1, r2)     // Catch: java.lang.Throwable -> L91
        L7f:
            r0 = r13
            java.util.Map<java.lang.String, q6.b> r0 = r0.f13132a     // Catch: java.lang.Throwable -> L91
            r1 = r15
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> L91
            q6.b r0 = (p211q6.C4157b) r0     // Catch: java.lang.Throwable -> L91
            r14 = r0
            r0 = r13
            monitor-exit(r0)
            r0 = r14
            return r0
        L91:
            r14 = move-exception
            r0 = r13
            monitor-exit(r0)
            r0 = r14
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p211q6.C4164g.m1347b(t4.c, java.lang.String, x5.e, u4.b, java.util.concurrent.Executor, r6.d, r6.d, r6.d, com.google.firebase.remoteconfig.internal.a, r6.h, com.google.firebase.remoteconfig.internal.b):q6.b");
    }

    /* renamed from: c */
    public final C4218d m1346c(String str, String str2) {
        C4225i c4225i;
        C4218d c4218d;
        String format = String.format("%s_%s_%s_%s.json", "frc", this.f13139h, str, str2);
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        Context context = this.f13133b;
        Map<String, C4225i> map = C4225i.f13235c;
        synchronized (C4225i.class) {
            try {
                Map<String, C4225i> map2 = C4225i.f13235c;
                if (!((HashMap) map2).containsKey(format)) {
                    ((HashMap) map2).put(format, new C4225i(context, format));
                }
                c4225i = (C4225i) ((HashMap) map2).get(format);
            } catch (Throwable th) {
                throw th;
            }
        }
        Map<String, C4218d> map3 = C4218d.f13211d;
        synchronized (C4218d.class) {
            try {
                String str3 = c4225i.f13237b;
                Map<String, C4218d> map4 = C4218d.f13211d;
                if (!((HashMap) map4).containsKey(str3)) {
                    ((HashMap) map4).put(str3, new C4218d(newCachedThreadPool, c4225i));
                }
                c4218d = (C4218d) ((HashMap) map4).get(str3);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return c4218d;
    }

    /* renamed from: d */
    public C1853a m1345d(String str, C4218d c4218d, C1855b c1855b) {
        C1853a c1853a;
        synchronized (this) {
            AbstractC4871e abstractC4871e = this.f13136e;
            AbstractC4739b<AbstractC4857a> abstractC4739b = m1344e(this.f13135d) ? this.f13138g : null;
            ExecutorService executorService = this.f13134c;
            Clock clock = f13130j;
            Random random = f13131k;
            C4392c c4392c = this.f13135d;
            c4392c.m974a();
            String str2 = c4392c.f13690c.f13711a;
            C4392c c4392c2 = this.f13135d;
            c4392c2.m974a();
            c1853a = new C1853a(abstractC4871e, abstractC4739b, executorService, clock, random, c4218d, new ConfigFetchHttpClient(this.f13133b, c4392c2.f13690c.f13712b, str2, str, c1855b.f7024a.getLong("fetch_timeout_in_seconds", 60L), c1855b.f7024a.getLong("fetch_timeout_in_seconds", 60L)), c1855b, this.f13140i);
        }
        return c1853a;
    }
}
