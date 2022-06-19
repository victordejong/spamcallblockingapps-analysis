package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import okhttp3.AbstractC5402ab;
import okhttp3.AbstractC5406ad;
import retrofit2.AbstractC5590e;
import retrofit2.p198a.AbstractC5584w;
/* renamed from: retrofit2.a */
/* loaded from: classes-dex2jar.jar:retrofit2/a.class */
public final class C5556a extends AbstractC5590e.AbstractC5591a {

    /* renamed from: retrofit2.a$a */
    /* loaded from: classes-dex2jar.jar:retrofit2/a$a.class */
    static final class C5557a implements AbstractC5590e<AbstractC5406ad, AbstractC5406ad> {

        /* renamed from: a */
        static final C5557a f23247a = new C5557a();

        C5557a() {
        }

        /* renamed from: a */
        public AbstractC5406ad mo113a(AbstractC5406ad abstractC5406ad) {
            try {
                return C5633o.m7a(abstractC5406ad);
            } finally {
                abstractC5406ad.close();
            }
        }
    }

    /* renamed from: retrofit2.a$b */
    /* loaded from: classes-dex2jar.jar:retrofit2/a$b.class */
    static final class C5558b implements AbstractC5590e<AbstractC5402ab, AbstractC5402ab> {

        /* renamed from: a */
        static final C5558b f23248a = new C5558b();

        C5558b() {
        }

        /* renamed from: a */
        public AbstractC5402ab mo113a(AbstractC5402ab abstractC5402ab) {
            return abstractC5402ab;
        }
    }

    /* renamed from: retrofit2.a$c */
    /* loaded from: classes-dex2jar.jar:retrofit2/a$c.class */
    static final class C5559c implements AbstractC5590e<AbstractC5406ad, AbstractC5406ad> {

        /* renamed from: a */
        static final C5559c f23249a = new C5559c();

        C5559c() {
        }

        /* renamed from: a */
        public AbstractC5406ad mo113a(AbstractC5406ad abstractC5406ad) {
            return abstractC5406ad;
        }
    }

    /* renamed from: retrofit2.a$d */
    /* loaded from: classes-dex2jar.jar:retrofit2/a$d.class */
    public static final class C5560d implements AbstractC5590e<Object, String> {

        /* renamed from: a */
        static final C5560d f23250a = new C5560d();

        C5560d() {
        }

        /* renamed from: b */
        public String mo113a(Object obj) {
            return obj.toString();
        }
    }

    /* renamed from: retrofit2.a$e */
    /* loaded from: classes-dex2jar.jar:retrofit2/a$e.class */
    static final class C5561e implements AbstractC5590e<AbstractC5406ad, Void> {

        /* renamed from: a */
        static final C5561e f23251a = new C5561e();

        C5561e() {
        }

        /* renamed from: a */
        public Void mo113a(AbstractC5406ad abstractC5406ad) {
            abstractC5406ad.close();
            return null;
        }
    }

    @Override // retrofit2.AbstractC5590e.AbstractC5591a
    /* renamed from: a */
    public AbstractC5590e<AbstractC5406ad, ?> mo112a(Type type, Annotation[] annotationArr, C5628m c5628m) {
        return type == AbstractC5406ad.class ? C5633o.m5a(annotationArr, (Class<? extends Annotation>) AbstractC5584w.class) ? C5559c.f23249a : C5557a.f23247a : type == Void.class ? C5561e.f23251a : null;
    }

    @Override // retrofit2.AbstractC5590e.AbstractC5591a
    /* renamed from: a */
    public AbstractC5590e<?, AbstractC5402ab> mo111a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, C5628m c5628m) {
        return AbstractC5402ab.class.isAssignableFrom(C5633o.m13a(type)) ? C5558b.f23248a : null;
    }
}
