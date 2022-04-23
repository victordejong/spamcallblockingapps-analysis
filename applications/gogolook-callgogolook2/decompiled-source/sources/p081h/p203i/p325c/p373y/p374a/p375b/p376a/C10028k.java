package p081h.p203i.p325c.p373y.p374a.p375b.p376a;

import android.os.ParcelFileDescriptor;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.io.File;
import java.nio.MappedByteBuffer;
import java.util.HashMap;
import java.util.Map;
import p081h.p203i.p204a.p224e.p235d.p240n.C6999k;
import p081h.p203i.p204a.p224e.p259j.p271l.C8075e2;
import p081h.p203i.p204a.p224e.p259j.p271l.C8125g7;
import p081h.p203i.p204a.p224e.p259j.p271l.C8386u6;
import p081h.p203i.p204a.p224e.p259j.p271l.EnumC8223l4;
import p081h.p203i.p325c.p373y.p374a.C10009a;
import p081h.p203i.p325c.p373y.p374a.p377c.C10051e;
/* renamed from: h.i.c.y.a.b.a.k */
/* loaded from: classes2-dex2jar.jar:h/i/c/y/a/b/a/k.class */
public final class C10028k {

    /* renamed from: i */
    public static final C6999k f22688i = new C6999k("RemoteModelLoader", "");
    @GuardedBy("RemoteModelLoader.class")

    /* renamed from: j */
    public static final Map<String, C10028k> f22689j = new HashMap();

    /* renamed from: a */
    public final C8386u6 f22690a;

    /* renamed from: b */
    public final C10051e f22691b;

    /* renamed from: c */
    public final C10021f0 f22692c;

    /* renamed from: d */
    public final C10016d f22693d;

    /* renamed from: e */
    public final C10023g0 f22694e;

    /* renamed from: f */
    public final AbstractC10027j f22695f;

    /* renamed from: g */
    public final EnumC10040w f22696g;

    /* renamed from: h */
    public boolean f22697h = true;

    public C10028k(@NonNull C8386u6 u6Var, @NonNull C10051e eVar, @NonNull AbstractC10041x xVar, @NonNull AbstractC10027j jVar, @NonNull EnumC10040w wVar) {
        this.f22693d = new C10016d(u6Var, eVar, xVar, wVar, new C10038u(u6Var));
        this.f22694e = new C10023g0(u6Var, eVar);
        this.f22692c = C10021f0.m13606a(u6Var, eVar, new C10036s(u6Var), this.f22694e);
        this.f22695f = jVar;
        this.f22690a = u6Var;
        this.f22691b = eVar;
        this.f22696g = wVar;
    }

    /* renamed from: a */
    public static C10028k m13570a(@NonNull C8386u6 u6Var, @NonNull C10051e eVar, @NonNull AbstractC10041x xVar, AbstractC10027j jVar, EnumC10040w wVar) {
        C10028k kVar;
        synchronized (C10028k.class) {
            try {
                String d = eVar.m13522d();
                if (!f22689j.containsKey(d)) {
                    f22689j.put(d, new C10028k(u6Var, eVar, xVar, jVar, wVar));
                }
                kVar = f22689j.get(d);
            } catch (Throwable th) {
                throw th;
            }
        }
        return kVar;
    }

    @Nullable
    @WorkerThread
    /* renamed from: a */
    public final MappedByteBuffer m13571a() throws C10009a {
        MappedByteBuffer mappedByteBuffer;
        synchronized (this) {
            f22688i.m21339a("RemoteModelLoader", "Try to load newly downloaded model file.");
            MappedByteBuffer a = m13567a(this.f22697h);
            mappedByteBuffer = a;
            if (a == null) {
                f22688i.m21339a("RemoteModelLoader", "Loading existing model file.");
                mappedByteBuffer = m13566b();
            }
        }
        return mappedByteBuffer;
    }

    /* renamed from: a */
    public final MappedByteBuffer m13569a(File file) throws C10009a {
        try {
            return m13568a(file.getAbsolutePath());
        } catch (Exception e) {
            this.f22693d.m13618b(file);
            throw new C10009a("Failed to load newly downloaded model.", 14, e);
        }
    }

    @NonNull
    @WorkerThread
    /* renamed from: a */
    public final MappedByteBuffer m13568a(@NonNull String str) throws C10009a {
        return this.f22695f.mo13572a(str);
    }

    /* JADX WARN: Finally extract failed */
    @Nullable
    @WorkerThread
    /* renamed from: a */
    public final MappedByteBuffer m13567a(boolean z) throws C10009a {
        Long a = this.f22692c.m13609a();
        String b = this.f22692c.m13598b();
        if (a == null || b == null) {
            f22688i.m21339a("RemoteModelLoader", "No new model is downloading.");
            this.f22692c.m13594c();
            return null;
        }
        Integer d = this.f22692c.m13591d();
        if (d == null) {
            this.f22692c.m13594c();
            return null;
        }
        C6999k kVar = f22688i;
        String valueOf = String.valueOf(d);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
        sb.append("Download Status code: ");
        sb.append(valueOf);
        kVar.m21339a("RemoteModelLoader", sb.toString());
        if (d.intValue() == 8) {
            f22688i.m21339a("RemoteModelLoader", "Model downloaded successfully");
            this.f22694e.m13576a(EnumC8223l4.NO_ERROR, true, this.f22696g, C8075e2.EnumC8077b.SUCCEEDED);
            ParcelFileDescriptor e = this.f22692c.m13589e();
            if (e == null) {
                this.f22692c.m13594c();
                return null;
            }
            f22688i.m21339a("RemoteModelLoader", "moving downloaded model from external storage to private folder.");
            try {
                File a2 = this.f22693d.m13621a(e, b, this.f22694e);
                this.f22692c.m13594c();
                if (a2 == null) {
                    return null;
                }
                MappedByteBuffer a3 = m13569a(a2);
                C6999k kVar2 = f22688i;
                String valueOf2 = String.valueOf(a2.getParent());
                kVar2.m21339a("RemoteModelLoader", valueOf2.length() != 0 ? "Moved the downloaded model to private folder successfully: ".concat(valueOf2) : new String("Moved the downloaded model to private folder successfully: "));
                this.f22692c.m13599a(b, this.f22696g);
                MappedByteBuffer mappedByteBuffer = a3;
                if (z) {
                    mappedByteBuffer = a3;
                    if (this.f22693d.m13620a(a2)) {
                        f22688i.m21339a("RemoteModelLoader", "All old models are deleted.");
                        mappedByteBuffer = m13569a(this.f22693d.m13617c(a2));
                    }
                }
                return mappedByteBuffer;
            } catch (Throwable th) {
                this.f22692c.m13594c();
                throw th;
            }
        } else if (d.intValue() != 16) {
            return null;
        } else {
            this.f22694e.m13575a(false, this.f22696g, this.f22692c.m13600a(a));
            this.f22692c.m13594c();
            return null;
        }
    }

    @Nullable
    @WorkerThread
    /* renamed from: b */
    public final MappedByteBuffer m13566b() throws C10009a {
        String a = this.f22693d.m13622a();
        if (a == null) {
            f22688i.m21339a("RemoteModelLoader", "No existing model file");
            return null;
        }
        try {
            return m13568a(a);
        } catch (Exception e) {
            this.f22693d.m13618b(new File(a));
            C8125g7.m18518a(this.f22690a).m18499i(this.f22691b);
            throw new C10009a("Failed to load an already downloaded model.", 14, e);
        }
    }
}
