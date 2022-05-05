package p459j.p460a.p582w0.p585b5;

import android.telephony.TelephonyManager;
import androidx.annotation.NonNull;
import com.google.firebase.perf.metrics.Trace;
import gogolook.callgogolook2.developmode.LogManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import p081h.p203i.p325c.p379z.C10062a;
import p459j.p460a.p582w0.C14081m3;
import p660rx.Observable;
import p660rx.Subscriber;
import p660rx.functions.Actions;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.w0.b5.a */
/* loaded from: classes3-dex2jar.jar:j/a/w0/b5/a.class */
public class C13921a {

    /* renamed from: a */
    public EnumC13926e f31285a;

    /* renamed from: b */
    public ArrayList<C13928b> f31286b;

    /* renamed from: c */
    public HashMap<EnumC13927f, Long> f31287c;

    /* renamed from: d */
    public HashMap<EnumC13927f, Trace> f31288d;

    /* renamed from: j.a.w0.b5.a$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/b5/a$a.class */
    public class C13922a implements Observable.OnSubscribe<Void> {

        /* renamed from: a */
        public final /* synthetic */ ArrayList f31289a;

        public C13922a(ArrayList arrayList) {
            this.f31289a = arrayList;
        }

        /* renamed from: a */
        public void call(Subscriber<? super Void> subscriber) {
            Iterator it = this.f31289a.iterator();
            C13928b bVar = null;
            while (it.hasNext()) {
                C13928b bVar2 = (C13928b) it.next();
                if (bVar2 != null) {
                    long j = 0;
                    if (bVar != null) {
                        j = bVar2.f31302b - bVar.f31302b;
                    }
                    LogManager.m28581a(("[ " + C13921a.this.f31285a + " ] ") + bVar2.f31301a + (" [ " + j + " ms ]"));
                    bVar = bVar2;
                }
            }
            subscriber.onCompleted();
        }
    }

    /* renamed from: j.a.w0.b5.a$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/b5/a$b.class */
    public static /* synthetic */ class C13923b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f31291a = new int[EnumC13926e.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                f31291a[EnumC13926e.CD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31291a[EnumC13926e.CED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: j.a.w0.b5.a$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/b5/a$c.class */
    public static class C13924c {

        /* renamed from: a */
        public static volatile C13921a f31292a = new C13921a(EnumC13926e.CD, null);
    }

    /* renamed from: j.a.w0.b5.a$d */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/b5/a$d.class */
    public static class C13925d {

        /* renamed from: a */
        public static volatile C13921a f31293a = new C13921a(EnumC13926e.CED, null);
    }

    /* renamed from: j.a.w0.b5.a$e */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/b5/a$e.class */
    public enum EnumC13926e {
        CD,
        CED
    }

    /* renamed from: j.a.w0.b5.a$f */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/b5/a$f.class */
    public enum EnumC13927f {
        OUTGOING,
        RINGING,
        OFFHOOK
    }

    public C13921a(EnumC13926e eVar) {
        this.f31286b = new ArrayList<>();
        this.f31287c = new HashMap<>();
        this.f31288d = new HashMap<>();
        this.f31285a = eVar;
    }

    public /* synthetic */ C13921a(EnumC13926e eVar, C13922a aVar) {
        this(eVar);
    }

    /* renamed from: a */
    public static C13921a m3037a(@NonNull EnumC13926e eVar) {
        int i = C13923b.f31291a[eVar.ordinal()];
        if (i == 1) {
            return C13924c.f31292a;
        }
        if (i != 2) {
            return null;
        }
        return C13925d.f31293a;
    }

    /* renamed from: a */
    public void m3038a() {
        synchronized (this) {
            this.f31286b.clear();
        }
    }

    /* renamed from: a */
    public void m3035a(String str) {
        synchronized (this) {
            this.f31286b.add(new C13928b(str));
        }
    }

    /* renamed from: a */
    public void m3034a(String str, String str2) {
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis();
            Trace b = C10062a.m13512b("call_dialog_popup");
            if (str.equals("android.intent.action.NEW_OUTGOING_CALL") && !this.f31287c.containsKey(EnumC13927f.OUTGOING)) {
                this.f31287c.put(EnumC13927f.OUTGOING, Long.valueOf(currentTimeMillis));
            } else if (str.equals("android.intent.action.PHONE_STATE") && str2.equals(TelephonyManager.EXTRA_STATE_RINGING) && !this.f31287c.containsKey(EnumC13927f.RINGING)) {
                this.f31287c.put(EnumC13927f.RINGING, Long.valueOf(currentTimeMillis));
                this.f31288d.put(EnumC13927f.RINGING, b);
            }
            if (str.equals("android.intent.action.PHONE_STATE") && str2.equals(TelephonyManager.EXTRA_STATE_OFFHOOK) && !this.f31287c.containsKey(EnumC13927f.OFFHOOK) && this.f31287c.containsKey(EnumC13927f.OUTGOING) && !this.f31287c.containsKey(EnumC13927f.RINGING)) {
                this.f31287c.put(EnumC13927f.OFFHOOK, Long.valueOf(currentTimeMillis));
                this.f31288d.put(EnumC13927f.OFFHOOK, b);
            }
            if (str.equals("android.intent.action.PHONE_STATE") && str2.equals(TelephonyManager.EXTRA_STATE_IDLE)) {
                m3033b();
            }
        }
    }

    /* renamed from: b */
    public void m3033b() {
        synchronized (this) {
            this.f31287c.clear();
            this.f31288d.clear();
        }
    }

    /* renamed from: c */
    public void m3032c() {
        synchronized (this) {
            ArrayList arrayList = new ArrayList(this.f31286b);
            this.f31286b.clear();
            Observable.create(new C13922a(arrayList)).subscribeOn(Schedulers.m0io()).subscribe(Actions.empty(), C14081m3.m2611a());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m3031d() {
        /*
            r3 = this;
            r0 = r3
            monitor-enter(r0)
            r0 = -1
            r4 = r0
            r0 = 0
            r6 = r0
            r0 = r3
            java.util.HashMap<j.a.w0.b5.a$f, java.lang.Long> r0 = r0.f31287c     // Catch: all -> 0x00ad
            j.a.w0.b5.a$f r1 = p459j.p460a.p582w0.p585b5.C13921a.EnumC13927f.OUTGOING     // Catch: all -> 0x00ad
            boolean r0 = r0.containsKey(r1)     // Catch: all -> 0x00ad
            if (r0 == 0) goto L_0x0053
            r0 = r3
            java.util.HashMap<j.a.w0.b5.a$f, java.lang.Long> r0 = r0.f31287c     // Catch: all -> 0x00ad
            j.a.w0.b5.a$f r1 = p459j.p460a.p582w0.p585b5.C13921a.EnumC13927f.OFFHOOK     // Catch: all -> 0x00ad
            boolean r0 = r0.containsKey(r1)     // Catch: all -> 0x00ad
            if (r0 == 0) goto L_0x0053
            r0 = r3
            java.util.HashMap<j.a.w0.b5.a$f, java.lang.Long> r0 = r0.f31287c     // Catch: all -> 0x00ad
            j.a.w0.b5.a$f r1 = p459j.p460a.p582w0.p585b5.C13921a.EnumC13927f.RINGING     // Catch: all -> 0x00ad
            boolean r0 = r0.containsKey(r1)     // Catch: all -> 0x00ad
            if (r0 != 0) goto L_0x0053
            r0 = r3
            java.util.HashMap<j.a.w0.b5.a$f, java.lang.Long> r0 = r0.f31287c     // Catch: all -> 0x00ad
            j.a.w0.b5.a$f r1 = p459j.p460a.p582w0.p585b5.C13921a.EnumC13927f.OFFHOOK     // Catch: all -> 0x00ad
            java.lang.Object r0 = r0.get(r1)     // Catch: all -> 0x00ad
            java.lang.Long r0 = (java.lang.Long) r0     // Catch: all -> 0x00ad
            long r0 = r0.longValue()     // Catch: all -> 0x00ad
            r7 = r0
            r0 = r3
            java.util.HashMap<j.a.w0.b5.a$f, com.google.firebase.perf.metrics.Trace> r0 = r0.f31288d     // Catch: all -> 0x00ad
            j.a.w0.b5.a$f r1 = p459j.p460a.p582w0.p585b5.C13921a.EnumC13927f.OFFHOOK     // Catch: all -> 0x00ad
            java.lang.Object r0 = r0.get(r1)     // Catch: all -> 0x00ad
            com.google.firebase.perf.metrics.Trace r0 = (com.google.firebase.perf.metrics.Trace) r0     // Catch: all -> 0x00ad
            r9 = r0
            goto L_0x009a
        L_0x0053:
            r0 = r4
            r7 = r0
            r0 = r6
            r9 = r0
            r0 = r3
            java.util.HashMap<j.a.w0.b5.a$f, java.lang.Long> r0 = r0.f31287c     // Catch: all -> 0x00ad
            j.a.w0.b5.a$f r1 = p459j.p460a.p582w0.p585b5.C13921a.EnumC13927f.RINGING     // Catch: all -> 0x00ad
            boolean r0 = r0.containsKey(r1)     // Catch: all -> 0x00ad
            if (r0 == 0) goto L_0x009a
            r0 = r4
            r7 = r0
            r0 = r6
            r9 = r0
            r0 = r3
            java.util.HashMap<j.a.w0.b5.a$f, java.lang.Long> r0 = r0.f31287c     // Catch: all -> 0x00ad
            j.a.w0.b5.a$f r1 = p459j.p460a.p582w0.p585b5.C13921a.EnumC13927f.OUTGOING     // Catch: all -> 0x00ad
            boolean r0 = r0.containsKey(r1)     // Catch: all -> 0x00ad
            if (r0 != 0) goto L_0x009a
            r0 = r3
            java.util.HashMap<j.a.w0.b5.a$f, java.lang.Long> r0 = r0.f31287c     // Catch: all -> 0x00ad
            j.a.w0.b5.a$f r1 = p459j.p460a.p582w0.p585b5.C13921a.EnumC13927f.RINGING     // Catch: all -> 0x00ad
            java.lang.Object r0 = r0.get(r1)     // Catch: all -> 0x00ad
            java.lang.Long r0 = (java.lang.Long) r0     // Catch: all -> 0x00ad
            long r0 = r0.longValue()     // Catch: all -> 0x00ad
            r7 = r0
            r0 = r3
            java.util.HashMap<j.a.w0.b5.a$f, com.google.firebase.perf.metrics.Trace> r0 = r0.f31288d     // Catch: all -> 0x00ad
            j.a.w0.b5.a$f r1 = p459j.p460a.p582w0.p585b5.C13921a.EnumC13927f.RINGING     // Catch: all -> 0x00ad
            java.lang.Object r0 = r0.get(r1)     // Catch: all -> 0x00ad
            com.google.firebase.perf.metrics.Trace r0 = (com.google.firebase.perf.metrics.Trace) r0     // Catch: all -> 0x00ad
            r9 = r0
        L_0x009a:
            r0 = r9
            if (r0 == 0) goto L_0x00a4
            r0 = r9
            r0.stop()     // Catch: all -> 0x00ad
        L_0x00a4:
            r0 = r3
            r0.m3033b()     // Catch: all -> 0x00ad
            r0 = r3
            monitor-exit(r0)
            r0 = r7
            return r0
        L_0x00ad:
            r9 = move-exception
            r0 = r3
            monitor-exit(r0)
            r0 = r9
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.p585b5.C13921a.m3031d():long");
    }
}
