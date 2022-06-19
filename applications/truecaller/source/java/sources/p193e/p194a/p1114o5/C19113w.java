package p193e.p194a.p1114o5;

import android.net.Uri;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
import p193e.p194a.p1187r2.C19895z;
/* renamed from: e.a.o5.w */
/* loaded from: classes15-dex2jar.jar:e/a/o5/w.class */
public final class C19113w implements AbstractC19126x {

    /* renamed from: a */
    public final AbstractC19890w f53335a;

    /* renamed from: e.a.o5.w$b */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/w$b.class */
    public static class C19115b extends AbstractC19889v<AbstractC19126x, Void> {

        /* renamed from: b */
        public final HistoryEvent f53336b;

        public C19115b(C19852e c19852e, HistoryEvent historyEvent, C19114a c19114a) {
            super(c19852e);
            this.f53336b = historyEvent;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC19126x) obj).mo14076e(this.f53336b);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".addRecordToCallHistory(");
            m8728C.append(AbstractC19889v.m11837b(this.f53336b, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.o5.w$c */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/w$c.class */
    public static class C19116c extends AbstractC19889v<AbstractC19126x, Map<Uri, C19107u>> {

        /* renamed from: b */
        public final List<Uri> f53337b;

        public C19116c(C19852e c19852e, List list, C19114a c19114a) {
            super(c19852e);
            this.f53337b = list;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Map<Uri, C19107u>> mo14080a = ((AbstractC19126x) obj).mo14080a(this.f53337b);
            m11836c(mo14080a);
            return mo14080a;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".fetchVCardsData(");
            m8728C.append(AbstractC19889v.m11837b(this.f53337b, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.o5.w$d */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/w$d.class */
    public static class C19117d extends AbstractC19889v<AbstractC19126x, Contact> {

        /* renamed from: b */
        public final String f53338b;

        public C19117d(C19852e c19852e, String str, C19114a c19114a) {
            super(c19852e);
            this.f53338b = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Contact> mo14079b = ((AbstractC19126x) obj).mo14079b(this.f53338b);
            m11836c(mo14079b);
            return mo14079b;
        }

        public String toString() {
            return C22128a.m8587o2(this.f53338b, 1, C22128a.m8728C(".getAggregatedContactByImId("), ")");
        }
    }

    /* renamed from: e.a.o5.w$e */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/w$e.class */
    public static class C19118e extends AbstractC19889v<AbstractC19126x, Contact> {

        /* renamed from: b */
        public final String f53339b;

        public C19118e(C19852e c19852e, String str, C19114a c19114a) {
            super(c19852e);
            this.f53339b = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Contact> mo14073h = ((AbstractC19126x) obj).mo14073h(this.f53339b);
            m11836c(mo14073h);
            return mo14073h;
        }

        public String toString() {
            return C22128a.m8587o2(this.f53339b, 1, C22128a.m8728C(".getAggregatedContactByNumber("), ")");
        }
    }

    /* renamed from: e.a.o5.w$f */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/w$f.class */
    public static class C19119f extends AbstractC19889v<AbstractC19126x, Contact> {

        /* renamed from: b */
        public final long f53340b;

        public C19119f(C19852e c19852e, long j, C19114a c19114a) {
            super(c19852e);
            this.f53340b = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Contact> mo14077d = ((AbstractC19126x) obj).mo14077d(this.f53340b);
            m11836c(mo14077d);
            return mo14077d;
        }

        public String toString() {
            return C22128a.m8665T1(this.f53340b, 1, C22128a.m8728C(".getAggregatedContactFromAggregatedId("), ")");
        }
    }

    /* renamed from: e.a.o5.w$g */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/w$g.class */
    public static class C19120g extends AbstractC19889v<AbstractC19126x, String> {

        /* renamed from: b */
        public final Uri f53341b;

        public C19120g(C19852e c19852e, Uri uri, C19114a c19114a) {
            super(c19852e);
            this.f53341b = uri;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<String> mo14078c = ((AbstractC19126x) obj).mo14078c(this.f53341b);
            m11836c(mo14078c);
            return mo14078c;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".getContactAsText(");
            m8728C.append(AbstractC19889v.m11837b(this.f53341b, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.o5.w$h */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/w$h.class */
    public static class C19121h extends AbstractC19889v<AbstractC19126x, C19107u> {

        /* renamed from: b */
        public final Uri f53342b;

        public C19121h(C19852e c19852e, Uri uri, C19114a c19114a) {
            super(c19852e);
            this.f53342b = uri;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<C19107u> mo14074g = ((AbstractC19126x) obj).mo14074g(this.f53342b);
            m11836c(mo14074g);
            return mo14074g;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".getContactAsVCard(");
            m8728C.append(AbstractC19889v.m11837b(this.f53342b, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.o5.w$i */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/w$i.class */
    public static class C19122i extends AbstractC19889v<AbstractC19126x, Uri> {

        /* renamed from: b */
        public final Uri f53343b;

        public C19122i(C19852e c19852e, Uri uri, C19114a c19114a) {
            super(c19852e);
            this.f53343b = uri;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Uri> mo14075f = ((AbstractC19126x) obj).mo14075f(this.f53343b);
            m11836c(mo14075f);
            return mo14075f;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".syncContactByUri(");
            m8728C.append(AbstractC19889v.m11837b(this.f53343b, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.o5.w$j */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/w$j.class */
    public static class C19123j extends AbstractC19889v<AbstractC19126x, Boolean> {
        public C19123j(C19852e c19852e, C19114a c19114a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo14072i = ((AbstractC19126x) obj).mo14072i();
            m11836c(mo14072i);
            return mo14072i;
        }

        public String toString() {
            return ".syncContacts()";
        }
    }

    public C19113w(AbstractC19890w abstractC19890w) {
        this.f53335a = abstractC19890w;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19126x
    /* renamed from: a */
    public AbstractC19891x<Map<Uri, C19107u>> mo14080a(List<Uri> list) {
        return new C19895z(this.f53335a, new C19116c(new C19852e(), list, null));
    }

    @Override // p193e.p194a.p1114o5.AbstractC19126x
    /* renamed from: b */
    public AbstractC19891x<Contact> mo14079b(String str) {
        return new C19895z(this.f53335a, new C19117d(new C19852e(), str, null));
    }

    @Override // p193e.p194a.p1114o5.AbstractC19126x
    /* renamed from: c */
    public AbstractC19891x<String> mo14078c(Uri uri) {
        return new C19895z(this.f53335a, new C19120g(new C19852e(), uri, null));
    }

    @Override // p193e.p194a.p1114o5.AbstractC19126x
    /* renamed from: d */
    public AbstractC19891x<Contact> mo14077d(long j) {
        return new C19895z(this.f53335a, new C19119f(new C19852e(), j, null));
    }

    @Override // p193e.p194a.p1114o5.AbstractC19126x
    /* renamed from: e */
    public void mo14076e(HistoryEvent historyEvent) {
        this.f53335a.mo11835a(new C19115b(new C19852e(), historyEvent, null));
    }

    @Override // p193e.p194a.p1114o5.AbstractC19126x
    /* renamed from: f */
    public AbstractC19891x<Uri> mo14075f(Uri uri) {
        return new C19895z(this.f53335a, new C19122i(new C19852e(), uri, null));
    }

    @Override // p193e.p194a.p1114o5.AbstractC19126x
    /* renamed from: g */
    public AbstractC19891x<C19107u> mo14074g(Uri uri) {
        return new C19895z(this.f53335a, new C19121h(new C19852e(), uri, null));
    }

    @Override // p193e.p194a.p1114o5.AbstractC19126x
    /* renamed from: h */
    public AbstractC19891x<Contact> mo14073h(String str) {
        return new C19895z(this.f53335a, new C19118e(new C19852e(), str, null));
    }

    @Override // p193e.p194a.p1114o5.AbstractC19126x
    /* renamed from: i */
    public AbstractC19891x<Boolean> mo14072i() {
        return new C19895z(this.f53335a, new C19123j(new C19852e(), null));
    }
}
