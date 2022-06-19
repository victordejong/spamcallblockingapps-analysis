package p193e.p1451f.p1452a.p1457n.p1464p;

import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import p193e.p1451f.p1452a.EnumC22227f;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
import p193e.p1451f.p1452a.p1479s.C22610d;
/* renamed from: e.f.a.n.p.e */
/* loaded from: classes-dex2jar.jar:e/f/a/n/p/e.class */
public final class C22414e<Model, Data> implements AbstractC22436n<Model, Data> {

    /* renamed from: a */
    public final AbstractC22415a<Data> f62249a;

    /* renamed from: e.f.a.n.p.e$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/e$a.class */
    public interface AbstractC22415a<Data> {
    }

    /* renamed from: e.f.a.n.p.e$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/e$b.class */
    public static final class C22416b<Data> implements AbstractC22274d<Data> {

        /* renamed from: a */
        public final String f62250a;

        /* renamed from: b */
        public final AbstractC22415a<Data> f62251b;

        /* renamed from: c */
        public Data f62252c;

        public C22416b(String str, AbstractC22415a<Data> abstractC22415a) {
            this.f62250a = str;
            this.f62251b = abstractC22415a;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        /* renamed from: a */
        public Class<Data> mo8220a() {
            Objects.requireNonNull((C22417c.C22418a) this.f62251b);
            return InputStream.class;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        /* renamed from: b */
        public void mo8219b() {
            try {
                AbstractC22415a<Data> abstractC22415a = this.f62251b;
                Data data = this.f62252c;
                Objects.requireNonNull((C22417c.C22418a) abstractC22415a);
                ((InputStream) data).close();
            } catch (IOException e) {
            }
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        /* renamed from: c */
        public EnumC22258a mo8218c() {
            return EnumC22258a.LOCAL;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        public void cancel() {
        }

        /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.Object, Data] */
        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        /* renamed from: d */
        public void mo8217d(EnumC22227f enumC22227f, AbstractC22274d.AbstractC22275a<? super Data> abstractC22275a) {
            try {
                ?? r0 = (Data) ((C22417c.C22418a) this.f62251b).m8242a(this.f62250a);
                this.f62252c = r0;
                abstractC22275a.mo8231e(r0);
            } catch (IllegalArgumentException e) {
                abstractC22275a.mo8230f(e);
            }
        }
    }

    /* renamed from: e.f.a.n.p.e$c */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/e$c.class */
    public static final class C22417c<Model> implements AbstractC22438o<Model, InputStream> {

        /* renamed from: a */
        public final AbstractC22415a<InputStream> f62253a = new C22418a(this);

        /* renamed from: e.f.a.n.p.e$c$a */
        /* loaded from: classes-dex2jar.jar:e/f/a/n/p/e$c$a.class */
        public class C22418a implements AbstractC22415a<InputStream> {
            public C22418a(C22417c c22417c) {
            }

            /* renamed from: a */
            public Object m8242a(String str) throws IllegalArgumentException {
                if (str.startsWith("data:image")) {
                    int indexOf = str.indexOf(44);
                    if (indexOf == -1) {
                        throw new IllegalArgumentException("Missing comma in data URL.");
                    }
                    if (!str.substring(0, indexOf).endsWith(";base64")) {
                        throw new IllegalArgumentException("Not a base64 image data URL.");
                    }
                    return new ByteArrayInputStream(Base64.decode(str.substring(indexOf + 1), 0));
                }
                throw new IllegalArgumentException("Not a valid image data URL.");
            }
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: b */
        public void mo8213b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: c */
        public AbstractC22436n<Model, InputStream> mo8212c(C22444r c22444r) {
            return new C22414e(this.f62253a);
        }
    }

    public C22414e(AbstractC22415a<Data> abstractC22415a) {
        this.f62249a = abstractC22415a;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: a */
    public AbstractC22436n.C22437a<Data> mo8215a(Model model, int i, int i2, C22267i c22267i) {
        return new AbstractC22436n.C22437a<>(new C22610d(model), new C22416b(model.toString(), this.f62249a));
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: b */
    public boolean mo8214b(Model model) {
        return model.toString().startsWith("data:image");
    }
}
