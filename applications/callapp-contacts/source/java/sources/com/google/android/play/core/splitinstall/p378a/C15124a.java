package com.google.android.play.core.splitinstall.p378a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.play.core.internal.C15023an;
import com.google.android.play.core.internal.C15071g;
import com.google.android.play.core.internal.C15088x;
import com.google.android.play.core.splitcompat.C15121q;
import com.google.android.play.core.splitinstall.AbstractC15123a;
import com.google.android.play.core.splitinstall.AbstractC15152c;
import com.google.android.play.core.splitinstall.AbstractC15170t;
import com.google.android.play.core.splitinstall.C15139ae;
import com.google.android.play.core.splitinstall.C15150b;
import com.google.android.play.core.splitinstall.C15173w;
import com.google.android.play.core.splitinstall.EnumC15135aa;
import com.google.android.play.core.splitinstall.SplitInstallException;
import com.google.android.play.core.tasks.AbstractC15180d;
import com.google.android.play.core.tasks.C15182f;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.play.core.splitinstall.a.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/a/a.class */
public final class C15124a implements AbstractC15123a {

    /* renamed from: a */
    static final long f54870a = TimeUnit.SECONDS.toMillis(1);

    /* renamed from: h */
    public static final /* synthetic */ int f54871h = 0;

    /* renamed from: b */
    final Context f54872b;

    /* renamed from: c */
    final C15071g<AbstractC15152c> f54873c;

    /* renamed from: d */
    final C15071g<AbstractC15152c> f54874d;

    /* renamed from: e */
    final Executor f54875e;

    /* renamed from: f */
    final AbstractC15170t f54876f;

    /* renamed from: g */
    final AtomicBoolean f54877g;

    /* renamed from: i */
    private final Handler f54878i;

    /* renamed from: j */
    private final C15139ae f54879j;

    /* renamed from: k */
    private final C15023an f54880k;

    /* renamed from: l */
    private final File f54881l;

    /* renamed from: m */
    private final AtomicReference<AbstractC15152c> f54882m;

    /* renamed from: n */
    private final Set<String> f54883n;

    /* renamed from: o */
    private final Set<String> f54884o;

    /* renamed from: p */
    private final C15125b f54885p;

    @Deprecated
    public C15124a(Context context, File file) {
        this(context, file, new C15139ae(context, context.getPackageName()));
    }

    public C15124a(Context context, File file, C15139ae c15139ae) {
        Executor m9424a = C15121q.m9424a();
        C15023an c15023an = new C15023an(context);
        C15125b c15125b = C15125b.f54886a;
        this.f54878i = new Handler(Looper.getMainLooper());
        this.f54882m = new AtomicReference<>();
        this.f54883n = Collections.synchronizedSet(new HashSet());
        this.f54884o = Collections.synchronizedSet(new HashSet());
        this.f54877g = new AtomicBoolean(false);
        this.f54872b = context;
        this.f54881l = file;
        this.f54879j = c15139ae;
        this.f54875e = m9424a;
        this.f54880k = c15023an;
        this.f54885p = c15125b;
        this.f54874d = new C15071g<>();
        this.f54873c = new C15071g<>();
        this.f54876f = EnumC15135aa.f54917a;
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC15152c m9420a(int i, AbstractC15152c abstractC15152c) {
        int mo9380b;
        if (abstractC15152c != null && i == abstractC15152c.mo9381a() && ((mo9380b = abstractC15152c.mo9380b()) == 1 || mo9380b == 2 || mo9380b == 8 || mo9380b == 9 || mo9380b == 7)) {
            return AbstractC15152c.m9385a(i, 7, abstractC15152c.mo9379c(), abstractC15152c.mo9378d(), abstractC15152c.mo9377e(), abstractC15152c.m9383f(), abstractC15152c.m9382g());
        }
        throw new SplitInstallException(-3);
    }

    /* renamed from: a */
    private final AbstractC15152c m9416a(AbstractC15133j abstractC15133j) {
        synchronized (this) {
            AbstractC15152c m9410b = m9410b();
            AbstractC15152c mo9406a = abstractC15133j.mo9406a(m9410b);
            if (this.f54882m.compareAndSet(m9410b, mo9406a)) {
                return mo9406a;
            }
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* renamed from: a */
    public static final /* synthetic */ AbstractC15152c m9414a(Integer num, int i, int i2, Long l, Long l2, List list, List list2, AbstractC15152c abstractC15152c) {
        if (abstractC15152c == null) {
            abstractC15152c = AbstractC15152c.m9385a(0, 0, 0, 0L, 0L, new ArrayList(), new ArrayList());
        }
        int mo9381a = num == null ? abstractC15152c.mo9381a() : num.intValue();
        char mo9378d = l == null ? abstractC15152c.mo9378d() : l.longValue();
        char mo9377e = l2 == null ? abstractC15152c.mo9377e() : l2.longValue();
        List<String> m9383f = list == null ? abstractC15152c.m9383f() : list;
        List<String> list3 = list2;
        if (list2 == null) {
            list3 = abstractC15152c.m9382g();
        }
        return AbstractC15152c.m9385a(mo9381a, i, i2, mo9378d, mo9377e, m9383f, list3);
    }

    /* renamed from: a */
    public static String m9413a(String str) {
        return str.split("\\.config\\.", 2)[0];
    }

    /* renamed from: a */
    private final void m9415a(AbstractC15152c abstractC15152c) {
        this.f54878i.post(new Runnable(this, abstractC15152c) { // from class: com.google.android.play.core.splitinstall.a.g

            /* renamed from: a */
            private final C15124a f54900a;

            /* renamed from: b */
            private final AbstractC15152c f54901b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f54900a = this;
                this.f54901b = abstractC15152c;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C15124a c15124a = this.f54900a;
                AbstractC15152c abstractC15152c2 = this.f54901b;
                c15124a.f54873c.m9514a(abstractC15152c2);
                c15124a.f54874d.m9514a(abstractC15152c2);
            }
        });
    }

    /* renamed from: c */
    private final C15173w m9408c() {
        C15173w m9397c = this.f54879j.m9397c();
        if (m9397c != null) {
            return m9397c;
        }
        throw new IllegalStateException("Language information could not be found. Make sure you are using the target application context, not the tests context, and the app is built as a bundle.");
    }

    /* renamed from: c */
    private final AbstractC15180d<Integer> m9407c(int i) {
        m9416a(new C15129f(i, null));
        return C15182f.m9329a((Exception) new SplitInstallException(i));
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15123a
    /* renamed from: a */
    public final AbstractC15180d<AbstractC15152c> mo9339a(int i) {
        AbstractC15152c m9410b = m9410b();
        return (m9410b == null || m9410b.mo9381a() != i) ? C15182f.m9329a((Exception) new SplitInstallException(-4)) : C15182f.m9328a(m9410b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v71 */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    @Override // com.google.android.play.core.splitinstall.AbstractC15123a
    /* renamed from: a */
    public final AbstractC15180d<Integer> mo9338a(C15150b c15150b) {
        char c;
        char c2;
        int i;
        int i2;
        int i3;
        int i4;
        try {
            AbstractC15152c m9416a = m9416a(new AbstractC15133j(c15150b) { // from class: com.google.android.play.core.splitinstall.a.e

                /* renamed from: a */
                private final C15150b f54897a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f54897a = c15150b;
                }

                @Override // com.google.android.play.core.splitinstall.p378a.AbstractC15133j
                /* renamed from: a */
                public final AbstractC15152c mo9406a(AbstractC15152c abstractC15152c) {
                    C15150b c15150b2 = this.f54897a;
                    int i5 = C15124a.f54871h;
                    if (abstractC15152c != null) {
                        int mo9380b = abstractC15152c.mo9380b();
                        if (!(mo9380b == 0 || mo9380b == 5 || mo9380b == 6 || mo9380b == 7)) {
                            throw new SplitInstallException(-1);
                        }
                    }
                    return AbstractC15152c.m9385a(abstractC15152c == null ? 1 : 1 + abstractC15152c.mo9381a(), 1, 0, 0L, 0L, c15150b2.f54950a, new ArrayList());
                }
            });
            if (m9416a == null) {
                return m9407c(-100);
            }
            int mo9381a = m9416a.mo9381a();
            ArrayList arrayList = new ArrayList();
            for (Locale locale : c15150b.f54951b) {
                arrayList.add(locale.getLanguage());
            }
            HashSet hashSet = new HashSet();
            ArrayList arrayList2 = new ArrayList();
            File[] listFiles = this.f54881l.listFiles();
            if (listFiles == null) {
                Log.w("FakeSplitInstallManager", "Specified splits directory does not exist.");
                return m9407c(-5);
            }
            int length = listFiles.length;
            int i5 = 0;
            ?? r0 = 0;
            while (true) {
                c = r0;
                if (i5 >= length) {
                    break;
                }
                File file = listFiles[i5];
                String m9481a = C15088x.m9481a(file);
                String m9413a = m9413a(m9481a);
                hashSet.add(m9481a);
                if (c15150b.f54950a.contains(m9413a)) {
                    String m9413a2 = m9413a(m9481a);
                    HashSet<String> hashSet2 = new HashSet(this.f54880k.m9587a());
                    Map<String, Set<String>> m9341a = m9408c().m9341a(Arrays.asList(m9413a2));
                    HashSet hashSet3 = new HashSet();
                    for (Set<String> set : m9341a.values()) {
                        hashSet3.addAll(set);
                    }
                    int i6 = length;
                    HashSet hashSet4 = new HashSet();
                    for (String str : hashSet2) {
                        if (str.contains("_")) {
                            str = str.split("_", -1)[0];
                        }
                        hashSet4.add(str);
                    }
                    int i7 = mo9381a;
                    hashSet4.addAll(this.f54884o);
                    hashSet4.addAll(arrayList);
                    HashSet hashSet5 = new HashSet();
                    for (Map.Entry<String, Set<String>> entry : m9341a.entrySet()) {
                        if (hashSet4.contains(entry.getKey())) {
                            hashSet5.addAll(entry.getValue());
                        }
                    }
                    i4 = i6;
                    i3 = i7;
                    if (hashSet3.contains(m9481a)) {
                        i4 = i6;
                        i3 = i7;
                        if (hashSet5.contains(m9481a)) {
                            i4 = i6;
                            i3 = i7;
                        }
                    }
                    c2 = c + file.length();
                    arrayList2.add(file);
                    i2 = i3;
                    i = i4;
                    i5++;
                    length = i;
                    mo9381a = i2;
                    r0 = c2;
                } else {
                    int i8 = mo9381a;
                    i4 = length;
                    i3 = i8;
                }
                List<Locale> list = c15150b.f54951b;
                ArrayList arrayList3 = new ArrayList(this.f54883n);
                arrayList3.addAll(Arrays.asList("", "base"));
                Map<String, Set<String>> m9341a2 = m9408c().m9341a(arrayList3);
                Iterator<Locale> it2 = list.iterator();
                while (true) {
                    c2 = c;
                    i = i4;
                    i2 = i3;
                    if (it2.hasNext()) {
                        Locale next = it2.next();
                        if (m9341a2.containsKey(next.getLanguage()) && m9341a2.get(next.getLanguage()).contains(m9481a)) {
                            break;
                        }
                    }
                }
                c2 = c + file.length();
                arrayList2.add(file);
                i2 = i3;
                i = i4;
                i5++;
                length = i;
                mo9381a = i2;
                r0 = c2;
            }
            String valueOf = String.valueOf(hashSet);
            String valueOf2 = String.valueOf(c15150b.f54950a);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22 + String.valueOf(valueOf2).length());
            sb.append("availableSplits ");
            sb.append(valueOf);
            sb.append(" want ");
            sb.append(valueOf2);
            if (!hashSet.containsAll(new HashSet(c15150b.f54950a))) {
                return m9407c(-2);
            }
            List<String> list2 = c15150b.f54950a;
            Integer valueOf3 = Integer.valueOf(mo9381a);
            m9421a(1, 0, 0L, Long.valueOf(c), list2, valueOf3, arrayList);
            this.f54875e.execute(new Runnable(this, arrayList2, arrayList) { // from class: com.google.android.play.core.splitinstall.a.d

                /* renamed from: a */
                private final C15124a f54894a;

                /* renamed from: b */
                private final List f54895b;

                /* renamed from: c */
                private final List f54896c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f54894a = this;
                    this.f54895b = arrayList2;
                    this.f54896c = arrayList;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C15124a c15124a = this.f54894a;
                    List<File> list3 = this.f54895b;
                    List list4 = this.f54896c;
                    ArrayList arrayList4 = new ArrayList();
                    ArrayList arrayList5 = new ArrayList();
                    for (File file2 : list3) {
                        String m9481a2 = C15088x.m9481a(file2);
                        Uri fromFile = Uri.fromFile(file2);
                        Intent intent = new Intent("android.intent.action.VIEW");
                        intent.setDataAndType(fromFile, c15124a.f54872b.getContentResolver().getType(fromFile));
                        intent.addFlags(1);
                        intent.putExtra("module_name", C15124a.m9413a(m9481a2));
                        intent.putExtra("split_id", m9481a2);
                        arrayList4.add(intent);
                        arrayList5.add(C15124a.m9413a(C15088x.m9481a(file2)));
                    }
                    AbstractC15152c m9410b = c15124a.m9410b();
                    if (m9410b != null) {
                        c15124a.f54875e.execute(new RunnableC15131h(c15124a, m9410b.mo9377e(), arrayList4, arrayList5, list4));
                    }
                }
            });
            return C15182f.m9328a(valueOf3);
        } catch (SplitInstallException e) {
            return m9407c(e.f54869a);
        }
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15123a
    /* renamed from: a */
    public final Set<String> mo9340a() {
        HashSet hashSet = new HashSet();
        if (this.f54879j.m9399b() != null) {
            hashSet.addAll(this.f54879j.m9399b());
        }
        hashSet.addAll(this.f54884o);
        return hashSet;
    }

    /* renamed from: a */
    public final void m9412a(List<String> list, List<String> list2, long j) {
        this.f54883n.addAll(list);
        this.f54884o.addAll(list2);
        Long valueOf = Long.valueOf(j);
        m9421a(5, 0, valueOf, valueOf, null, null, null);
    }

    /* renamed from: a */
    public final void m9411a(List<Intent> list, List<String> list2, List<String> list3, long j, boolean z) {
        this.f54876f.mo9344a().mo9343a(list, new C15132i(this, list2, list3, j, z, list));
    }

    /* renamed from: a */
    public final boolean m9421a(int i, int i2, Long l, Long l2, List<String> list, Integer num, List<String> list2) {
        AbstractC15152c m9416a = m9416a(new AbstractC15133j(num, i, i2, l, l2, list, list2) { // from class: com.google.android.play.core.splitinstall.a.c

            /* renamed from: a */
            private final Integer f54887a;

            /* renamed from: b */
            private final int f54888b;

            /* renamed from: c */
            private final int f54889c;

            /* renamed from: d */
            private final Long f54890d;

            /* renamed from: e */
            private final Long f54891e;

            /* renamed from: f */
            private final List f54892f;

            /* renamed from: g */
            private final List f54893g;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f54887a = num;
                this.f54888b = i;
                this.f54889c = i2;
                this.f54890d = l;
                this.f54891e = l2;
                this.f54892f = list;
                this.f54893g = list2;
            }

            @Override // com.google.android.play.core.splitinstall.p378a.AbstractC15133j
            /* renamed from: a */
            public final AbstractC15152c mo9406a(AbstractC15152c abstractC15152c) {
                return C15124a.m9414a(this.f54887a, this.f54888b, this.f54889c, this.f54890d, this.f54891e, this.f54892f, this.f54893g, abstractC15152c);
            }
        });
        if (m9416a != null) {
            m9415a(m9416a);
            return true;
        }
        return false;
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15123a
    /* renamed from: a */
    public final boolean mo9337a(AbstractC15152c abstractC15152c, Activity activity, int i) throws IntentSender.SendIntentException {
        return false;
    }

    /* renamed from: b */
    public final AbstractC15152c m9410b() {
        return this.f54882m.get();
    }

    /* renamed from: b */
    public final boolean m9409b(int i) {
        return m9421a(6, i, null, null, null, null, null);
    }
}
