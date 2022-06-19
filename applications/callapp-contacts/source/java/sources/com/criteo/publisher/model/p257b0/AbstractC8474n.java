package com.criteo.publisher.model.p257b0;

import com.criteo.publisher.model.p257b0.AbstractC8455b;
import com.criteo.publisher.model.p257b0.C8463h;
import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.JsonParseException;
import com.google.gson.annotations.AbstractC15952b;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.criteo.publisher.model.b0.n */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/n.class */
public abstract class AbstractC8474n {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.model.b0.n$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/n$a.class */
    public static abstract class AbstractC8475a {
        /* renamed from: a */
        public abstract AbstractC8475a mo25624a(AbstractC8473m abstractC8473m);

        /* renamed from: a */
        public abstract AbstractC8475a mo25623a(AbstractC8478q abstractC8478q);

        /* renamed from: a */
        public abstract AbstractC8475a mo25622a(List<AbstractC8479r> list);

        /* renamed from: a */
        abstract AbstractC8474n mo25625a();

        /* renamed from: b */
        public abstract AbstractC8475a mo25620b(List<AbstractC8477p> list);

        /* renamed from: b */
        public AbstractC8474n m25621b() {
            if (!mo25619c().isEmpty()) {
                if (mo25618d().isEmpty()) {
                    throw new JsonParseException("Expect that native payload has, at least, one impression pixel.");
                }
                return mo25625a();
            }
            throw new JsonParseException("Expect that native payload has, at least, one product.");
        }

        /* renamed from: c */
        abstract List<AbstractC8479r> mo25619c();

        /* renamed from: d */
        abstract List<AbstractC8477p> mo25618d();
    }

    /* renamed from: a */
    public static AbstractC8475a m25640a() {
        return new AbstractC8455b.C8456a();
    }

    /* renamed from: a */
    public static AbstractC16088j<AbstractC8474n> m25639a(C15965f c15965f) {
        return new C8463h.C8464a(c15965f);
    }

    /* renamed from: b */
    public abstract AbstractC8473m mo25638b();

    /* renamed from: c */
    public String m25637c() {
        return mo25638b().mo25645a();
    }

    /* renamed from: d */
    public String m25636d() {
        return mo25638b().mo25643b();
    }

    /* renamed from: e */
    public URI m25635e() {
        return mo25638b().mo25641d();
    }

    /* renamed from: f */
    public URL m25634f() {
        return mo25638b().mo25642c().mo25617a();
    }

    /* renamed from: g */
    public List<URL> m25633g() {
        ArrayList arrayList = new ArrayList();
        for (AbstractC8477p abstractC8477p : mo25631i()) {
            arrayList.add(abstractC8477p.mo25615a());
        }
        return arrayList;
    }

    @AbstractC15952b(m7988a = "products")
    /* renamed from: h */
    public abstract List<AbstractC8479r> mo25632h();

    @AbstractC15952b(m7988a = "impressionPixels")
    /* renamed from: i */
    public abstract List<AbstractC8477p> mo25631i();

    /* renamed from: j */
    public abstract AbstractC8478q mo25630j();

    /* renamed from: k */
    public String m25629k() {
        return mo25630j().mo25610c();
    }

    /* renamed from: l */
    public URI m25628l() {
        return mo25630j().mo25613a();
    }

    /* renamed from: m */
    public URL m25627m() {
        return mo25630j().mo25611b();
    }

    /* renamed from: n */
    public AbstractC8479r m25626n() {
        return mo25632h().iterator().next();
    }
}
