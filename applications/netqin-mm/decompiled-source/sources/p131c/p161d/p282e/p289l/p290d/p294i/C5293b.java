package p131c.p161d.p282e.p289l.p290d.p294i;

import android.content.Context;
import com.google.common.collect.MapMakerInternalMap;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.io.File;
import java.util.Set;
import p131c.p161d.p282e.p289l.p290d.C5192b;
/* renamed from: c.d.e.l.d.i.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/i/b.class */
public class C5293b {

    /* renamed from: d */
    public static final C5296c f18075d = new C5296c();

    /* renamed from: a */
    public final Context f18076a;

    /* renamed from: b */
    public final AbstractC5295b f18077b;

    /* renamed from: c */
    public AbstractC5292a f18078c;

    /* renamed from: c.d.e.l.d.i.b$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/i/b$b.class */
    public interface AbstractC5295b {
        /* renamed from: a */
        File mo24030a();
    }

    /* renamed from: c.d.e.l.d.i.b$c */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/i/b$c.class */
    public static final class C5296c implements AbstractC5292a {
        public C5296c() {
        }

        @Override // p131c.p161d.p282e.p289l.p290d.p294i.AbstractC5292a
        /* renamed from: a */
        public void mo24003a() {
        }

        @Override // p131c.p161d.p282e.p289l.p290d.p294i.AbstractC5292a
        /* renamed from: a */
        public void mo24002a(long j, String str) {
        }

        @Override // p131c.p161d.p282e.p289l.p290d.p294i.AbstractC5292a
        /* renamed from: b */
        public String mo24001b() {
            return null;
        }

        @Override // p131c.p161d.p282e.p289l.p290d.p294i.AbstractC5292a
        /* renamed from: c */
        public byte[] mo23999c() {
            return null;
        }

        @Override // p131c.p161d.p282e.p289l.p290d.p294i.AbstractC5292a
        /* renamed from: d */
        public void mo23998d() {
        }
    }

    public C5293b(Context context, AbstractC5295b bVar) {
        this(context, bVar, null);
    }

    public C5293b(Context context, AbstractC5295b bVar, String str) {
        this.f18076a = context;
        this.f18077b = bVar;
        this.f18078c = f18075d;
        m24032b(str);
    }

    /* renamed from: a */
    public final File m24035a(String str) {
        return new File(this.f18077b.mo24030a(), "crashlytics-userlog-" + str + ".temp");
    }

    /* renamed from: a */
    public final String m24037a(File file) {
        String name = file.getName();
        int lastIndexOf = name.lastIndexOf(".temp");
        return lastIndexOf == -1 ? name : name.substring(20, lastIndexOf);
    }

    /* renamed from: a */
    public void m24039a() {
        this.f18078c.mo23998d();
    }

    /* renamed from: a */
    public void m24038a(long j, String str) {
        this.f18078c.mo24002a(j, str);
    }

    /* renamed from: a */
    public void m24036a(File file, int i) {
        this.f18078c = new C5302d(file, i);
    }

    /* renamed from: a */
    public void m24034a(Set<String> set) {
        File[] listFiles = this.f18077b.mo24030a().listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (!set.contains(m24037a(file))) {
                    file.delete();
                }
            }
        }
    }

    /* renamed from: b */
    public final void m24032b(String str) {
        this.f18078c.mo24003a();
        this.f18078c = f18075d;
        if (str != null) {
            if (!CommonUtils.m7667a(this.f18076a, "com.crashlytics.CollectCustomLogs", true)) {
                C5192b.m24319a().m24317a("Preferences requested no custom logs. Aborting log file creation.");
            } else {
                m24036a(m24035a(str), MapMakerInternalMap.MAX_SEGMENTS);
            }
        }
    }

    /* renamed from: b */
    public byte[] m24033b() {
        return this.f18078c.mo23999c();
    }

    /* renamed from: c */
    public String m24031c() {
        return this.f18078c.mo24001b();
    }
}
