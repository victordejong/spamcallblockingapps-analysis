package p193e.p194a.p1041l0.p1042u.p1044e;

import com.truecaller.data.entity.CallRecording;
import java.util.Collection;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
import p193e.p194a.p1187r2.C19895z;
/* renamed from: e.a.l0.u.e.a */
/* loaded from: classes6-dex2jar.jar:e/a/l0/u/e/a.class */
public final class C17377a implements AbstractC17384b {

    /* renamed from: a */
    public final AbstractC19890w f48722a;

    /* renamed from: e.a.l0.u.e.a$b */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/u/e/a$b.class */
    public static class C17379b extends AbstractC19889v<AbstractC17384b, Boolean> {

        /* renamed from: b */
        public final Collection<Long> f48723b;

        public C17379b(C19852e c19852e, Collection collection, C17378a c17378a) {
            super(c19852e);
            this.f48723b = collection;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo16150P1 = ((AbstractC17384b) obj).mo16150P1(this.f48723b);
            m11836c(mo16150P1);
            return mo16150P1;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".delete(");
            m8728C.append(AbstractC19889v.m11837b(this.f48723b, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.l0.u.e.a$c */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/u/e/a$c.class */
    public static class C17380c extends AbstractC19889v<AbstractC17384b, Boolean> {

        /* renamed from: b */
        public final CallRecording f48724b;

        public C17380c(C19852e c19852e, CallRecording callRecording, C17378a c17378a) {
            super(c19852e);
            this.f48724b = callRecording;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo16153M1 = ((AbstractC17384b) obj).mo16153M1(this.f48724b);
            m11836c(mo16153M1);
            return mo16153M1;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".delete(");
            m8728C.append(AbstractC19889v.m11837b(this.f48724b, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.l0.u.e.a$d */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/u/e/a$d.class */
    public static class C17381d extends AbstractC19889v<AbstractC17384b, AbstractC17373b> {
        public C17381d(C19852e c19852e, C17378a c17378a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<AbstractC17373b> mo16152N1 = ((AbstractC17384b) obj).mo16152N1();
            m11836c(mo16152N1);
            return mo16152N1;
        }

        public String toString() {
            return ".getAllCallRecordings()";
        }
    }

    /* renamed from: e.a.l0.u.e.a$e */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/u/e/a$e.class */
    public static class C17382e extends AbstractC19889v<AbstractC17384b, Long> {

        /* renamed from: b */
        public final String f48725b;

        public C17382e(C19852e c19852e, String str, C17378a c17378a) {
            super(c19852e);
            this.f48725b = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Long> mo16151O1 = ((AbstractC17384b) obj).mo16151O1(this.f48725b);
            m11836c(mo16151O1);
            return mo16151O1;
        }

        public String toString() {
            return C22128a.m8587o2(this.f48725b, 2, C22128a.m8728C(".getCallRecSize("), ")");
        }
    }

    /* renamed from: e.a.l0.u.e.a$f */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/u/e/a$f.class */
    public static class C17383f extends AbstractC19889v<AbstractC17384b, List<String>> {

        /* renamed from: b */
        public final Collection<Long> f48726b;

        public C17383f(C19852e c19852e, Collection collection, C17378a c17378a) {
            super(c19852e);
            this.f48726b = collection;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<List<String>> mo16149Q1 = ((AbstractC17384b) obj).mo16149Q1(this.f48726b);
            m11836c(mo16149Q1);
            return mo16149Q1;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".getCallRecordingsPaths(");
            m8728C.append(AbstractC19889v.m11837b(this.f48726b, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public C17377a(AbstractC19890w abstractC19890w) {
        this.f48722a = abstractC19890w;
    }

    @Override // p193e.p194a.p1041l0.p1042u.p1044e.AbstractC17384b
    /* renamed from: M1 */
    public AbstractC19891x<Boolean> mo16153M1(CallRecording callRecording) {
        return new C19895z(this.f48722a, new C17380c(new C19852e(), callRecording, null));
    }

    @Override // p193e.p194a.p1041l0.p1042u.p1044e.AbstractC17384b
    /* renamed from: N1 */
    public AbstractC19891x<AbstractC17373b> mo16152N1() {
        return new C19895z(this.f48722a, new C17381d(new C19852e(), null));
    }

    @Override // p193e.p194a.p1041l0.p1042u.p1044e.AbstractC17384b
    /* renamed from: O1 */
    public AbstractC19891x<Long> mo16151O1(String str) {
        return new C19895z(this.f48722a, new C17382e(new C19852e(), str, null));
    }

    @Override // p193e.p194a.p1041l0.p1042u.p1044e.AbstractC17384b
    /* renamed from: P1 */
    public AbstractC19891x<Boolean> mo16150P1(Collection<Long> collection) {
        return new C19895z(this.f48722a, new C17379b(new C19852e(), collection, null));
    }

    @Override // p193e.p194a.p1041l0.p1042u.p1044e.AbstractC17384b
    /* renamed from: Q1 */
    public AbstractC19891x<List<String>> mo16149Q1(Collection<Long> collection) {
        return new C19895z(this.f48722a, new C17383f(new C19852e(), collection, null));
    }
}
