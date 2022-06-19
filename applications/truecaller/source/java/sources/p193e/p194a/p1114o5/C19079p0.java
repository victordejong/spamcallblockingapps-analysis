package p193e.p194a.p1114o5;

import android.net.Uri;
import com.truecaller.messaging.ForwardContentItem;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Entity;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
import p193e.p194a.p1187r2.C19895z;
import p193e.p194a.p195a.C4907a0;
import s1.k;
/* renamed from: e.a.o5.p0 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/p0.class */
public final class C19079p0 implements AbstractC19091q0 {

    /* renamed from: a */
    public final AbstractC19890w f53279a;

    /* renamed from: e.a.o5.p0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/p0$b.class */
    public static class C19081b extends AbstractC19889v<AbstractC19091q0, Boolean> {

        /* renamed from: b */
        public final Entity[] f53280b;

        public C19081b(C19852e c19852e, Entity[] entityArr, C19080a c19080a) {
            super(c19852e);
            this.f53280b = entityArr;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo14126h = ((AbstractC19091q0) obj).mo14126h(this.f53280b);
            m11836c(mo14126h);
            return mo14126h;
        }

        public String toString() {
            return C22128a.m8618h(C22128a.m8728C(".addToDownloads("), AbstractC19889v.m11837b(this.f53280b, 2), ")");
        }
    }

    /* renamed from: e.a.o5.p0$c */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/p0$c.class */
    public static class C19082c extends AbstractC19889v<AbstractC19091q0, k<BinaryEntity, AbstractC19073o0>> {

        /* renamed from: b */
        public final Uri f53281b;

        /* renamed from: c */
        public final boolean f53282c;

        public C19082c(C19852e c19852e, Uri uri, boolean z, C19080a c19080a) {
            super(c19852e);
            this.f53281b = uri;
            this.f53282c = z;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<k<BinaryEntity, AbstractC19073o0>> mo14130d = ((AbstractC19091q0) obj).mo14130d(this.f53281b, this.f53282c);
            m11836c(mo14130d);
            return mo14130d;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".audioEntityFromFile(");
            m8728C.append(AbstractC19889v.m11837b(this.f53281b, 1));
            m8728C.append(",");
            return C22128a.m8566u(this.f53282c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.o5.p0$d */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/p0$d.class */
    public static class C19083d extends AbstractC19889v<AbstractC19091q0, ArrayList<BinaryEntity>> {

        /* renamed from: b */
        public final ArrayList<ForwardContentItem> f53283b;

        public C19083d(C19852e c19852e, ArrayList arrayList, C19080a c19080a) {
            super(c19852e);
            this.f53283b = arrayList;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<ArrayList<BinaryEntity>> mo14133a = ((AbstractC19091q0) obj).mo14133a(this.f53283b);
            m11836c(mo14133a);
            return mo14133a;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".copyMediaEntitiesAsync(");
            m8728C.append(AbstractC19889v.m11837b(this.f53283b, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.o5.p0$e */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/p0$e.class */
    public static class C19084e extends AbstractC19889v<AbstractC19091q0, List<k<BinaryEntity, AbstractC19073o0>>> {

        /* renamed from: b */
        public final Collection<C4907a0> f53284b;

        /* renamed from: c */
        public final long f53285c;

        public C19084e(C19852e c19852e, Collection collection, long j, C19080a c19080a) {
            super(c19852e);
            this.f53284b = collection;
            this.f53285c = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<List<k<BinaryEntity, AbstractC19073o0>>> mo14127g = ((AbstractC19091q0) obj).mo14127g(this.f53284b, this.f53285c);
            m11836c(mo14127g);
            return mo14127g;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".entitiesFromUri(");
            m8728C.append(AbstractC19889v.m11837b(this.f53284b, 1));
            m8728C.append(",");
            return C22128a.m8665T1(this.f53285c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.o5.p0$f */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/p0$f.class */
    public static class C19085f extends AbstractC19889v<AbstractC19091q0, k<BinaryEntity, AbstractC19073o0>> {

        /* renamed from: b */
        public final Uri f53286b;

        /* renamed from: c */
        public final boolean f53287c;

        public C19085f(C19852e c19852e, Uri uri, boolean z, C19080a c19080a) {
            super(c19852e);
            this.f53286b = uri;
            this.f53287c = z;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<k<BinaryEntity, AbstractC19073o0>> mo14131c = ((AbstractC19091q0) obj).mo14131c(this.f53286b, this.f53287c);
            m11836c(mo14131c);
            return mo14131c;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".imageEntityFromUri(");
            m8728C.append(AbstractC19889v.m11837b(this.f53286b, 1));
            m8728C.append(",");
            return C22128a.m8566u(this.f53287c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.o5.p0$g */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/p0$g.class */
    public static class C19086g extends AbstractC19889v<AbstractC19091q0, k<BinaryEntity, AbstractC19073o0>> {

        /* renamed from: b */
        public final double f53288b;

        /* renamed from: c */
        public final double f53289c;

        /* renamed from: d */
        public final String f53290d;

        public C19086g(C19852e c19852e, double d, double d2, String str, C19080a c19080a) {
            super(c19852e);
            this.f53288b = d;
            this.f53289c = d2;
            this.f53290d = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<k<BinaryEntity, AbstractC19073o0>> mo14132b = ((AbstractC19091q0) obj).mo14132b(this.f53288b, this.f53289c, this.f53290d);
            m11836c(mo14132b);
            return mo14132b;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".locationEntity(");
            m8728C.append(AbstractC19889v.m11837b(Double.valueOf(this.f53288b), 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(Double.valueOf(this.f53289c), 2));
            m8728C.append(",");
            return C22128a.m8587o2(this.f53290d, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.o5.p0$h */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/p0$h.class */
    public static class C19087h extends AbstractC19889v<AbstractC19091q0, Boolean> {

        /* renamed from: b */
        public final List<? extends Uri> f53291b;

        public C19087h(C19852e c19852e, List list, C19080a c19080a) {
            super(c19852e);
            this.f53291b = list;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo14129e = ((AbstractC19091q0) obj).mo14129e(this.f53291b);
            m11836c(mo14129e);
            return mo14129e;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".verifyFilesExist(");
            m8728C.append(AbstractC19889v.m11837b(this.f53291b, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.o5.p0$i */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/p0$i.class */
    public static class C19088i extends AbstractC19889v<AbstractC19091q0, k<BinaryEntity, AbstractC19073o0>> {

        /* renamed from: b */
        public final Uri f53292b;

        /* renamed from: c */
        public final boolean f53293c;

        /* renamed from: d */
        public final long f53294d;

        public C19088i(C19852e c19852e, Uri uri, boolean z, long j, C19080a c19080a) {
            super(c19852e);
            this.f53292b = uri;
            this.f53293c = z;
            this.f53294d = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<k<BinaryEntity, AbstractC19073o0>> mo14128f = ((AbstractC19091q0) obj).mo14128f(this.f53292b, this.f53293c, this.f53294d);
            m11836c(mo14128f);
            return mo14128f;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".videoEntityFromUri(");
            m8728C.append(AbstractC19889v.m11837b(this.f53292b, 1));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(Boolean.valueOf(this.f53293c), 2));
            m8728C.append(",");
            return C22128a.m8665T1(this.f53294d, 2, m8728C, ")");
        }
    }

    public C19079p0(AbstractC19890w abstractC19890w) {
        this.f53279a = abstractC19890w;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19091q0
    /* renamed from: a */
    public AbstractC19891x<ArrayList<BinaryEntity>> mo14133a(ArrayList<ForwardContentItem> arrayList) {
        return new C19895z(this.f53279a, new C19083d(new C19852e(), arrayList, null));
    }

    @Override // p193e.p194a.p1114o5.AbstractC19091q0
    /* renamed from: b */
    public AbstractC19891x<k<BinaryEntity, AbstractC19073o0>> mo14132b(double d, double d2, String str) {
        return new C19895z(this.f53279a, new C19086g(new C19852e(), d, d2, str, null));
    }

    @Override // p193e.p194a.p1114o5.AbstractC19091q0
    /* renamed from: c */
    public AbstractC19891x<k<BinaryEntity, AbstractC19073o0>> mo14131c(Uri uri, boolean z) {
        return new C19895z(this.f53279a, new C19085f(new C19852e(), uri, z, null));
    }

    @Override // p193e.p194a.p1114o5.AbstractC19091q0
    /* renamed from: d */
    public AbstractC19891x<k<BinaryEntity, AbstractC19073o0>> mo14130d(Uri uri, boolean z) {
        return new C19895z(this.f53279a, new C19082c(new C19852e(), uri, z, null));
    }

    @Override // p193e.p194a.p1114o5.AbstractC19091q0
    /* renamed from: e */
    public AbstractC19891x<Boolean> mo14129e(List<? extends Uri> list) {
        return new C19895z(this.f53279a, new C19087h(new C19852e(), list, null));
    }

    @Override // p193e.p194a.p1114o5.AbstractC19091q0
    /* renamed from: f */
    public AbstractC19891x<k<BinaryEntity, AbstractC19073o0>> mo14128f(Uri uri, boolean z, long j) {
        return new C19895z(this.f53279a, new C19088i(new C19852e(), uri, z, j, null));
    }

    @Override // p193e.p194a.p1114o5.AbstractC19091q0
    /* renamed from: g */
    public AbstractC19891x<List<k<BinaryEntity, AbstractC19073o0>>> mo14127g(Collection<C4907a0> collection, long j) {
        return new C19895z(this.f53279a, new C19084e(new C19852e(), collection, j, null));
    }

    @Override // p193e.p194a.p1114o5.AbstractC19091q0
    /* renamed from: h */
    public AbstractC19891x<Boolean> mo14126h(Entity[] entityArr) {
        return new C19895z(this.f53279a, new C19081b(new C19852e(), entityArr, null));
    }
}
