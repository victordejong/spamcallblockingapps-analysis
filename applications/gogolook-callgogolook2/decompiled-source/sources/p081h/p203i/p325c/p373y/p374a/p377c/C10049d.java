package p081h.p203i.p325c.p373y.p374a.p377c;

import androidx.annotation.NonNull;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9148k;
import p081h.p203i.p325c.C9435c;
import p081h.p203i.p325c.p366u.AbstractC9929a;
import p081h.p203i.p325c.p373y.p374a.C10009a;
import p081h.p203i.p325c.p373y.p374a.p375b.p376a.AbstractC10010a;
/* renamed from: h.i.c.y.a.c.d */
/* loaded from: classes2-dex2jar.jar:h/i/c/y/a/c/d.class */
public class C10049d {

    /* renamed from: a */
    public final Map<Class<? extends C10051e>, AbstractC9929a<? extends AbstractC10010a<? extends C10051e>>> f22742a = new HashMap();

    /* renamed from: h.i.c.y.a.c.d$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/y/a/c/d$a.class */
    public static class C10050a {

        /* renamed from: a */
        public final Class<? extends C10051e> f22743a;

        /* renamed from: b */
        public final AbstractC9929a<? extends AbstractC10010a<? extends C10051e>> f22744b;

        public <TRemote extends C10051e> C10050a(Class<TRemote> cls, AbstractC9929a<? extends AbstractC10010a<TRemote>> aVar) {
            this.f22743a = cls;
            this.f22744b = aVar;
        }

        /* renamed from: a */
        public final Class<? extends C10051e> m13529a() {
            return this.f22743a;
        }

        /* renamed from: b */
        public final AbstractC9929a<? extends AbstractC10010a<? extends C10051e>> m13528b() {
            return this.f22744b;
        }
    }

    public C10049d(Set<C10050a> set) {
        for (C10050a aVar : set) {
            this.f22742a.put(aVar.m13529a(), aVar.m13528b());
        }
    }

    @NonNull
    /* renamed from: a */
    public static C10049d m13535a() {
        C10049d a;
        synchronized (C10049d.class) {
            try {
                a = m13534a(C9435c.m15163j());
            } catch (Throwable th) {
                throw th;
            }
        }
        return a;
    }

    @NonNull
    /* renamed from: a */
    public static C10049d m13534a(@NonNull C9435c cVar) {
        C10049d dVar;
        synchronized (C10049d.class) {
            try {
                C7021t.m21289a(cVar, "Please provide a valid FirebaseApp");
                dVar = (C10049d) cVar.m15176a(C10049d.class);
            } catch (Throwable th) {
                throw th;
            }
        }
        return dVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    /* renamed from: a */
    public AbstractC9143h<File> m13533a(@NonNull C10051e eVar) {
        C7021t.m21289a(eVar, "FirebaseRemoteModel cannot be null");
        return this.f22742a.containsKey(eVar.getClass()) ? m13531a((Class<? extends C10051e>) eVar.getClass()).mo13632b(eVar) : C9148k.m16000a((Exception) new C10009a("Feature model doesn't have a corresponding modelmanager registered.", 13));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    /* renamed from: a */
    public AbstractC9143h<Void> m13532a(@NonNull C10051e eVar, @NonNull C10047c cVar) {
        C7021t.m21289a(eVar, "FirebaseRemoteModel cannot be null");
        C7021t.m21289a(cVar, "FirebaseModelDownloadConditions cannot be null");
        return this.f22742a.containsKey(eVar.getClass()) ? m13531a((Class<? extends C10051e>) eVar.getClass()).mo13633a(eVar, cVar) : C9148k.m16000a((Exception) new C10009a("Feature model doesn't have a corresponding modelmanager registered.", 13));
    }

    /* renamed from: a */
    public final AbstractC10010a<C10051e> m13531a(Class<? extends C10051e> cls) {
        return (AbstractC10010a) this.f22742a.get(cls).get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    /* renamed from: b */
    public AbstractC9143h<Boolean> m13530b(@NonNull C10051e eVar) {
        C7021t.m21289a(eVar, "FirebaseRemoteModel cannot be null");
        return m13531a((Class<? extends C10051e>) eVar.getClass()).mo13634a(eVar);
    }
}
