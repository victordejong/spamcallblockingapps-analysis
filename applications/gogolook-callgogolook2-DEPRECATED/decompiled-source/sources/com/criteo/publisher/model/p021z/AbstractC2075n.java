package com.criteo.publisher.model.p021z;

import androidx.annotation.NonNull;
import com.criteo.publisher.C1974i;
import com.criteo.publisher.model.p021z.AbstractC2056b;
import com.criteo.publisher.model.p021z.C2064h;
import com.criteo.publisher.p020a0.C1926n;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
import p081h.p203i.p384e.C10108n;
import p081h.p203i.p384e.p385v.AbstractC10120c;
/* renamed from: com.criteo.publisher.model.z.n */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/z/n.class */
public abstract class AbstractC2075n {

    /* renamed from: com.criteo.publisher.model.z.n$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/z/n$a.class */
    public static abstract class AbstractC2076a {
        /* renamed from: a */
        public abstract AbstractC2076a mo35741a(AbstractC2074m mVar);

        /* renamed from: a */
        public abstract AbstractC2076a mo35740a(AbstractC2079q qVar);

        /* renamed from: a */
        public abstract AbstractC2076a mo35739a(List<AbstractC2080r> list);

        /* renamed from: a */
        public abstract AbstractC2075n mo35742a();

        /* renamed from: b */
        public abstract AbstractC2076a mo35737b(List<AbstractC2078p> list);

        /* renamed from: b */
        public AbstractC2075n m35738b() {
            if (mo35736c().isEmpty()) {
                throw new C10108n("Expect that native payload has, at least, one product.");
            } else if (!mo35735d().isEmpty()) {
                return mo35742a();
            } else {
                throw new C10108n("Expect that native payload has, at least, one impression pixel.");
            }
        }

        /* renamed from: c */
        public abstract List<AbstractC2080r> mo35736c();

        /* renamed from: d */
        public abstract List<AbstractC2078p> mo35735d();
    }

    /* renamed from: a */
    public static AbstractC2075n m35756a(JSONObject jSONObject) throws IOException {
        C1926n y = C1974i.m35912U().m35884y();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(jSONObject.toString().getBytes());
        try {
            AbstractC2075n nVar = (AbstractC2075n) y.m36007a(AbstractC2075n.class, byteArrayInputStream);
            byteArrayInputStream.close();
            return nVar;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    /* renamed from: a */
    public static TypeAdapter<AbstractC2075n> m35757a(Gson gson) {
        return new C2064h.C2065a(gson);
    }

    /* renamed from: n */
    public static AbstractC2076a m35743n() {
        return new AbstractC2056b.C2057a();
    }

    @NonNull
    /* renamed from: a */
    public abstract AbstractC2074m mo35758a();

    @NonNull
    /* renamed from: b */
    public String m35755b() {
        return mo35758a().mo35763a();
    }

    @NonNull
    /* renamed from: c */
    public String m35754c() {
        return mo35758a().mo35761b();
    }

    @NonNull
    /* renamed from: d */
    public URI m35753d() {
        return mo35758a().mo35759d();
    }

    @NonNull
    /* renamed from: e */
    public URL m35752e() {
        return mo35758a().mo35760c().mo35734a();
    }

    @NonNull
    /* renamed from: f */
    public List<URL> m35751f() {
        ArrayList arrayList = new ArrayList();
        for (AbstractC2078p pVar : mo35749h()) {
            arrayList.add(pVar.mo35732a());
        }
        return arrayList;
    }

    @NonNull
    @AbstractC10120c(IapPlanRealmObject.PRODUCTS)
    /* renamed from: g */
    public abstract List<AbstractC2080r> mo35750g();

    @NonNull
    @AbstractC10120c("impressionPixels")
    /* renamed from: h */
    public abstract List<AbstractC2078p> mo35749h();

    @NonNull
    /* renamed from: i */
    public abstract AbstractC2079q mo35748i();

    @NonNull
    /* renamed from: j */
    public String m35747j() {
        return mo35748i().mo35727c();
    }

    @NonNull
    /* renamed from: k */
    public URI m35746k() {
        return mo35748i().mo35730a();
    }

    @NonNull
    /* renamed from: l */
    public URL m35745l() {
        return mo35748i().mo35728b();
    }

    @NonNull
    /* renamed from: m */
    public AbstractC2080r m35744m() {
        return mo35750g().iterator().next();
    }
}
