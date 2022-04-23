package com.google.firebase.crashlytics.internal.model;

import com.android.volley.Request;
import java.nio.charset.Charset;
import p131c.p161d.p282e.p289l.p290d.p295j.C5326b;
import p131c.p161d.p282e.p289l.p290d.p295j.C5329c;
import p131c.p161d.p282e.p289l.p290d.p295j.C5332d;
import p131c.p161d.p282e.p289l.p290d.p295j.C5335e;
import p131c.p161d.p282e.p289l.p290d.p295j.C5338f;
import p131c.p161d.p282e.p289l.p290d.p295j.C5341g;
import p131c.p161d.p282e.p289l.p290d.p295j.C5345i;
import p131c.p161d.p282e.p289l.p290d.p295j.C5348j;
import p131c.p161d.p282e.p289l.p290d.p295j.C5351k;
import p131c.p161d.p282e.p289l.p290d.p295j.C5354l;
import p131c.p161d.p282e.p289l.p290d.p295j.C5357m;
import p131c.p161d.p282e.p289l.p290d.p295j.C5360n;
import p131c.p161d.p282e.p289l.p290d.p295j.C5363o;
import p131c.p161d.p282e.p289l.p290d.p295j.C5366p;
import p131c.p161d.p282e.p289l.p290d.p295j.C5369q;
import p131c.p161d.p282e.p289l.p290d.p295j.C5372r;
import p131c.p161d.p282e.p289l.p290d.p295j.C5375s;
import p131c.p161d.p282e.p289l.p290d.p295j.C5378t;
import p131c.p161d.p282e.p289l.p290d.p295j.C5381u;
import p131c.p161d.p282e.p289l.p290d.p295j.C5384v;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport.class */
public abstract class CrashlyticsReport {

    /* renamed from: a */
    public static final Charset f30950a = Charset.forName(Request.DEFAULT_PARAMS_ENCODING);

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type.class */
    public enum Type {
        INCOMPLETE,
        JAVA,
        NATIVE
    }

    /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$a.class */
    public static abstract class AbstractC7778a {
        /* renamed from: a */
        public abstract AbstractC7778a mo7622a(int i);

        /* renamed from: a */
        public abstract AbstractC7778a mo7621a(AbstractC7781c cVar);

        /* renamed from: a */
        public abstract AbstractC7778a mo7620a(AbstractC7785d dVar);

        /* renamed from: a */
        public abstract AbstractC7778a mo7619a(String str);

        /* renamed from: a */
        public abstract CrashlyticsReport mo7623a();

        /* renamed from: b */
        public abstract AbstractC7778a mo7618b(String str);

        /* renamed from: c */
        public abstract AbstractC7778a mo7617c(String str);

        /* renamed from: d */
        public abstract AbstractC7778a mo7616d(String str);

        /* renamed from: e */
        public abstract AbstractC7778a mo7615e(String str);
    }

    /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$b.class */
    public static abstract class AbstractC7779b {

        /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$b$a */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$b$a.class */
        public static abstract class AbstractC7780a {
            /* renamed from: a */
            public abstract AbstractC7780a mo7610a(String str);

            /* renamed from: a */
            public abstract AbstractC7779b mo7611a();

            /* renamed from: b */
            public abstract AbstractC7780a mo7609b(String str);
        }

        /* renamed from: c */
        public static AbstractC7780a m7612c() {
            return new C5329c.C5331b();
        }

        /* renamed from: a */
        public abstract String mo7614a();

        /* renamed from: b */
        public abstract String mo7613b();
    }

    /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$c */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$c.class */
    public static abstract class AbstractC7781c {

        /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$c$a */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$c$a.class */
        public static abstract class AbstractC7782a {
            /* renamed from: a */
            public abstract AbstractC7782a mo7604a(C5384v<AbstractC7783b> vVar);

            /* renamed from: a */
            public abstract AbstractC7782a mo7603a(String str);

            /* renamed from: a */
            public abstract AbstractC7781c mo7605a();
        }

        /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$c$b */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$c$b.class */
        public static abstract class AbstractC7783b {

            /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$c$b$a */
            /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$c$b$a.class */
            public static abstract class AbstractC7784a {
                /* renamed from: a */
                public abstract AbstractC7784a mo7598a(String str);

                /* renamed from: a */
                public abstract AbstractC7784a mo7597a(byte[] bArr);

                /* renamed from: a */
                public abstract AbstractC7783b mo7599a();
            }

            /* renamed from: c */
            public static AbstractC7784a m7600c() {
                return new C5335e.C5337b();
            }

            /* renamed from: a */
            public abstract byte[] mo7602a();

            /* renamed from: b */
            public abstract String mo7601b();
        }

        /* renamed from: c */
        public static AbstractC7782a m7606c() {
            return new C5332d.C5334b();
        }

        /* renamed from: a */
        public abstract C5384v<AbstractC7783b> mo7608a();

        /* renamed from: b */
        public abstract String mo7607b();
    }

    /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d.class */
    public static abstract class AbstractC7785d {

        /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$a */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a.class */
        public static abstract class AbstractC7786a {

            /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$a$a */
            /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a$a.class */
            public static abstract class AbstractC7787a {
                /* renamed from: a */
                public abstract AbstractC7787a mo7571a(String str);

                /* renamed from: a */
                public abstract AbstractC7786a mo7572a();

                /* renamed from: b */
                public abstract AbstractC7787a mo7570b(String str);

                /* renamed from: c */
                public abstract AbstractC7787a mo7569c(String str);

                /* renamed from: d */
                public abstract AbstractC7787a mo7568d(String str);

                /* renamed from: e */
                public abstract AbstractC7787a mo7567e(String str);

                /* renamed from: f */
                public abstract AbstractC7787a mo7566f(String str);
            }

            /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$a$b */
            /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a$b.class */
            public static abstract class AbstractC7788b {
                /* renamed from: a */
                public abstract String mo7565a();
            }

            /* renamed from: h */
            public static AbstractC7787a m7573h() {
                return new C5341g.C5343b();
            }

            /* renamed from: a */
            public abstract String mo7580a();

            /* renamed from: b */
            public abstract String mo7579b();

            /* renamed from: c */
            public abstract String mo7578c();

            /* renamed from: d */
            public abstract String mo7577d();

            /* renamed from: e */
            public abstract String mo7576e();

            /* renamed from: f */
            public abstract AbstractC7788b mo7575f();

            /* renamed from: g */
            public abstract String mo7574g();
        }

        /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$b */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b.class */
        public static abstract class AbstractC7789b {
            /* renamed from: a */
            public abstract AbstractC7789b mo7563a(int i);

            /* renamed from: a */
            public abstract AbstractC7789b mo7562a(long j);

            /* renamed from: a */
            public abstract AbstractC7789b mo7561a(C5384v<AbstractC7792d> vVar);

            /* renamed from: a */
            public abstract AbstractC7789b mo7560a(AbstractC7786a aVar);

            /* renamed from: a */
            public abstract AbstractC7789b mo7559a(AbstractC7790c cVar);

            /* renamed from: a */
            public abstract AbstractC7789b mo7558a(AbstractC7812e eVar);

            /* renamed from: a */
            public abstract AbstractC7789b mo7557a(AbstractC7814f fVar);

            /* renamed from: a */
            public abstract AbstractC7789b mo7556a(Long l);

            /* renamed from: a */
            public abstract AbstractC7789b mo7555a(String str);

            /* renamed from: a */
            public abstract AbstractC7789b mo7554a(boolean z);

            /* renamed from: a */
            public AbstractC7789b m7553a(byte[] bArr) {
                mo7552b(new String(bArr, CrashlyticsReport.f30950a));
                return this;
            }

            /* renamed from: a */
            public abstract AbstractC7785d mo7564a();

            /* renamed from: b */
            public abstract AbstractC7789b mo7552b(String str);
        }

        /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$c */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$c.class */
        public static abstract class AbstractC7790c {

            /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$c$a */
            /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$c$a.class */
            public static abstract class AbstractC7791a {
                /* renamed from: a */
                public abstract AbstractC7791a mo7540a(int i);

                /* renamed from: a */
                public abstract AbstractC7791a mo7539a(long j);

                /* renamed from: a */
                public abstract AbstractC7791a mo7538a(String str);

                /* renamed from: a */
                public abstract AbstractC7791a mo7537a(boolean z);

                /* renamed from: a */
                public abstract AbstractC7790c mo7541a();

                /* renamed from: b */
                public abstract AbstractC7791a mo7536b(int i);

                /* renamed from: b */
                public abstract AbstractC7791a mo7535b(long j);

                /* renamed from: b */
                public abstract AbstractC7791a mo7534b(String str);

                /* renamed from: c */
                public abstract AbstractC7791a mo7533c(int i);

                /* renamed from: c */
                public abstract AbstractC7791a mo7532c(String str);
            }

            /* renamed from: j */
            public static AbstractC7791a m7542j() {
                return new C5345i.C5347b();
            }

            /* renamed from: a */
            public abstract int mo7551a();

            /* renamed from: b */
            public abstract int mo7550b();

            /* renamed from: c */
            public abstract long mo7549c();

            /* renamed from: d */
            public abstract String mo7548d();

            /* renamed from: e */
            public abstract String mo7547e();

            /* renamed from: f */
            public abstract String mo7546f();

            /* renamed from: g */
            public abstract long mo7545g();

            /* renamed from: h */
            public abstract int mo7544h();

            /* renamed from: i */
            public abstract boolean mo7543i();
        }

        /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d.class */
        public static abstract class AbstractC7792d {

            /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a */
            /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a.class */
            public static abstract class AbstractC7793a {

                /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$a */
                /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a$a.class */
                public static abstract class AbstractC7794a {
                    /* renamed from: a */
                    public abstract AbstractC7794a mo7517a(int i);

                    /* renamed from: a */
                    public abstract AbstractC7794a mo7516a(C5384v<AbstractC7779b> vVar);

                    /* renamed from: a */
                    public abstract AbstractC7794a mo7515a(AbstractC7795b bVar);

                    /* renamed from: a */
                    public abstract AbstractC7794a mo7514a(Boolean bool);

                    /* renamed from: a */
                    public abstract AbstractC7793a mo7518a();
                }

                /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b */
                /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a$b.class */
                public static abstract class AbstractC7795b {

                    /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$a */
                    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a$b$a.class */
                    public static abstract class AbstractC7796a {

                        /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$a$a */
                        /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a$b$a$a.class */
                        public static abstract class AbstractC7797a {
                            /* renamed from: a */
                            public abstract AbstractC7797a mo7501a(long j);

                            /* renamed from: a */
                            public abstract AbstractC7797a mo7500a(String str);

                            /* renamed from: a */
                            public AbstractC7797a m7499a(byte[] bArr) {
                                mo7497b(new String(bArr, CrashlyticsReport.f30950a));
                                return this;
                            }

                            /* renamed from: a */
                            public abstract AbstractC7796a mo7502a();

                            /* renamed from: b */
                            public abstract AbstractC7797a mo7498b(long j);

                            /* renamed from: b */
                            public abstract AbstractC7797a mo7497b(String str);
                        }

                        /* renamed from: f */
                        public static AbstractC7797a m7503f() {
                            return new C5357m.C5359b();
                        }

                        /* renamed from: a */
                        public abstract long mo7508a();

                        /* renamed from: b */
                        public abstract String mo7507b();

                        /* renamed from: c */
                        public abstract long mo7506c();

                        /* renamed from: d */
                        public abstract String mo7505d();

                        /* renamed from: e */
                        public byte[] m7504e() {
                            String d = mo7505d();
                            return d != null ? d.getBytes(CrashlyticsReport.f30950a) : null;
                        }
                    }

                    /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$b */
                    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a$b$b.class */
                    public static abstract class AbstractC7798b {
                        /* renamed from: a */
                        public abstract AbstractC7798b mo7495a(C5384v<AbstractC7796a> vVar);

                        /* renamed from: a */
                        public abstract AbstractC7798b mo7494a(AbstractC7799c cVar);

                        /* renamed from: a */
                        public abstract AbstractC7798b mo7493a(AbstractC7801d dVar);

                        /* renamed from: a */
                        public abstract AbstractC7795b mo7496a();

                        /* renamed from: b */
                        public abstract AbstractC7798b mo7492b(C5384v<AbstractC7803e> vVar);
                    }

                    /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$c */
                    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a$b$c.class */
                    public static abstract class AbstractC7799c {

                        /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$c$a */
                        /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a$b$c$a.class */
                        public static abstract class AbstractC7800a {
                            /* renamed from: a */
                            public abstract AbstractC7800a mo7484a(int i);

                            /* renamed from: a */
                            public abstract AbstractC7800a mo7483a(C5384v<AbstractC7803e.AbstractC7805b> vVar);

                            /* renamed from: a */
                            public abstract AbstractC7800a mo7482a(AbstractC7799c cVar);

                            /* renamed from: a */
                            public abstract AbstractC7800a mo7481a(String str);

                            /* renamed from: a */
                            public abstract AbstractC7799c mo7485a();

                            /* renamed from: b */
                            public abstract AbstractC7800a mo7480b(String str);
                        }

                        /* renamed from: f */
                        public static AbstractC7800a m7486f() {
                            return new C5360n.C5362b();
                        }

                        /* renamed from: a */
                        public abstract AbstractC7799c mo7491a();

                        /* renamed from: b */
                        public abstract C5384v<AbstractC7803e.AbstractC7805b> mo7490b();

                        /* renamed from: c */
                        public abstract int mo7489c();

                        /* renamed from: d */
                        public abstract String mo7488d();

                        /* renamed from: e */
                        public abstract String mo7487e();
                    }

                    /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$d */
                    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a$b$d.class */
                    public static abstract class AbstractC7801d {

                        /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$d$a */
                        /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a$b$d$a.class */
                        public static abstract class AbstractC7802a {
                            /* renamed from: a */
                            public abstract AbstractC7802a mo7474a(long j);

                            /* renamed from: a */
                            public abstract AbstractC7802a mo7473a(String str);

                            /* renamed from: a */
                            public abstract AbstractC7801d mo7475a();

                            /* renamed from: b */
                            public abstract AbstractC7802a mo7472b(String str);
                        }

                        /* renamed from: d */
                        public static AbstractC7802a m7476d() {
                            return new C5363o.C5365b();
                        }

                        /* renamed from: a */
                        public abstract long mo7479a();

                        /* renamed from: b */
                        public abstract String mo7478b();

                        /* renamed from: c */
                        public abstract String mo7477c();
                    }

                    /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$e */
                    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a$b$e.class */
                    public static abstract class AbstractC7803e {

                        /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$e$a */
                        /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a$b$e$a.class */
                        public static abstract class AbstractC7804a {
                            /* renamed from: a */
                            public abstract AbstractC7804a mo7466a(int i);

                            /* renamed from: a */
                            public abstract AbstractC7804a mo7465a(C5384v<AbstractC7805b> vVar);

                            /* renamed from: a */
                            public abstract AbstractC7804a mo7464a(String str);

                            /* renamed from: a */
                            public abstract AbstractC7803e mo7467a();
                        }

                        /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$e$b */
                        /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a$b$e$b.class */
                        public static abstract class AbstractC7805b {

                            /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$a$b$e$b$a */
                            /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$a$b$e$b$a.class */
                            public static abstract class AbstractC7806a {
                                /* renamed from: a */
                                public abstract AbstractC7806a mo7456a(int i);

                                /* renamed from: a */
                                public abstract AbstractC7806a mo7455a(long j);

                                /* renamed from: a */
                                public abstract AbstractC7806a mo7454a(String str);

                                /* renamed from: a */
                                public abstract AbstractC7805b mo7457a();

                                /* renamed from: b */
                                public abstract AbstractC7806a mo7453b(long j);

                                /* renamed from: b */
                                public abstract AbstractC7806a mo7452b(String str);
                            }

                            /* renamed from: f */
                            public static AbstractC7806a m7458f() {
                                return new C5369q.C5371b();
                            }

                            /* renamed from: a */
                            public abstract String mo7463a();

                            /* renamed from: b */
                            public abstract int mo7462b();

                            /* renamed from: c */
                            public abstract long mo7461c();

                            /* renamed from: d */
                            public abstract long mo7460d();

                            /* renamed from: e */
                            public abstract String mo7459e();
                        }

                        /* renamed from: d */
                        public static AbstractC7804a m7468d() {
                            return new C5366p.C5368b();
                        }

                        /* renamed from: a */
                        public abstract C5384v<AbstractC7805b> mo7471a();

                        /* renamed from: b */
                        public abstract int mo7470b();

                        /* renamed from: c */
                        public abstract String mo7469c();
                    }

                    /* renamed from: e */
                    public static AbstractC7798b m7509e() {
                        return new C5354l.C5356b();
                    }

                    /* renamed from: a */
                    public abstract C5384v<AbstractC7796a> mo7513a();

                    /* renamed from: b */
                    public abstract AbstractC7799c mo7512b();

                    /* renamed from: c */
                    public abstract AbstractC7801d mo7511c();

                    /* renamed from: d */
                    public abstract C5384v<AbstractC7803e> mo7510d();
                }

                /* renamed from: f */
                public static AbstractC7794a m7519f() {
                    return new C5351k.C5353b();
                }

                /* renamed from: a */
                public abstract Boolean mo7524a();

                /* renamed from: b */
                public abstract C5384v<AbstractC7779b> mo7523b();

                /* renamed from: c */
                public abstract AbstractC7795b mo7522c();

                /* renamed from: d */
                public abstract int mo7521d();

                /* renamed from: e */
                public abstract AbstractC7794a mo7520e();
            }

            /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$b */
            /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$b.class */
            public static abstract class AbstractC7807b {
                /* renamed from: a */
                public abstract AbstractC7807b mo7450a(long j);

                /* renamed from: a */
                public abstract AbstractC7807b mo7449a(AbstractC7793a aVar);

                /* renamed from: a */
                public abstract AbstractC7807b mo7448a(AbstractC7808c cVar);

                /* renamed from: a */
                public abstract AbstractC7807b mo7447a(AbstractC7810d dVar);

                /* renamed from: a */
                public abstract AbstractC7807b mo7446a(String str);

                /* renamed from: a */
                public abstract AbstractC7792d mo7451a();
            }

            /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$c */
            /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$c.class */
            public static abstract class AbstractC7808c {

                /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$c$a */
                /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$c$a.class */
                public static abstract class AbstractC7809a {
                    /* renamed from: a */
                    public abstract AbstractC7809a mo7437a(int i);

                    /* renamed from: a */
                    public abstract AbstractC7809a mo7436a(long j);

                    /* renamed from: a */
                    public abstract AbstractC7809a mo7435a(Double d);

                    /* renamed from: a */
                    public abstract AbstractC7809a mo7434a(boolean z);

                    /* renamed from: a */
                    public abstract AbstractC7808c mo7438a();

                    /* renamed from: b */
                    public abstract AbstractC7809a mo7433b(int i);

                    /* renamed from: b */
                    public abstract AbstractC7809a mo7432b(long j);
                }

                /* renamed from: g */
                public static AbstractC7809a m7439g() {
                    return new C5372r.C5374b();
                }

                /* renamed from: a */
                public abstract Double mo7445a();

                /* renamed from: b */
                public abstract int mo7444b();

                /* renamed from: c */
                public abstract long mo7443c();

                /* renamed from: d */
                public abstract int mo7442d();

                /* renamed from: e */
                public abstract long mo7441e();

                /* renamed from: f */
                public abstract boolean mo7440f();
            }

            /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$d */
            /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$d.class */
            public static abstract class AbstractC7810d {

                /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$d$a */
                /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$d$d$a.class */
                public static abstract class AbstractC7811a {
                    /* renamed from: a */
                    public abstract AbstractC7811a mo7428a(String str);

                    /* renamed from: a */
                    public abstract AbstractC7810d mo7429a();
                }

                /* renamed from: b */
                public static AbstractC7811a m7430b() {
                    return new C5375s.C5377b();
                }

                /* renamed from: a */
                public abstract String mo7431a();
            }

            /* renamed from: g */
            public static AbstractC7807b m7525g() {
                return new C5348j.C5350b();
            }

            /* renamed from: a */
            public abstract AbstractC7793a mo7531a();

            /* renamed from: b */
            public abstract AbstractC7808c mo7530b();

            /* renamed from: c */
            public abstract AbstractC7810d mo7529c();

            /* renamed from: d */
            public abstract long mo7528d();

            /* renamed from: e */
            public abstract String mo7527e();

            /* renamed from: f */
            public abstract AbstractC7807b mo7526f();
        }

        /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$e */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$e.class */
        public static abstract class AbstractC7812e {

            /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$e$a */
            /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$e$a.class */
            public static abstract class AbstractC7813a {
                /* renamed from: a */
                public abstract AbstractC7813a mo7421a(int i);

                /* renamed from: a */
                public abstract AbstractC7813a mo7420a(String str);

                /* renamed from: a */
                public abstract AbstractC7813a mo7419a(boolean z);

                /* renamed from: a */
                public abstract AbstractC7812e mo7422a();

                /* renamed from: b */
                public abstract AbstractC7813a mo7418b(String str);
            }

            /* renamed from: e */
            public static AbstractC7813a m7423e() {
                return new C5378t.C5380b();
            }

            /* renamed from: a */
            public abstract String mo7427a();

            /* renamed from: b */
            public abstract int mo7426b();

            /* renamed from: c */
            public abstract String mo7425c();

            /* renamed from: d */
            public abstract boolean mo7424d();
        }

        /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$f */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$f.class */
        public static abstract class AbstractC7814f {

            /* renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$f$a */
            /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$f$a.class */
            public static abstract class AbstractC7815a {
                /* renamed from: a */
                public abstract AbstractC7815a mo7414a(String str);

                /* renamed from: a */
                public abstract AbstractC7814f mo7415a();
            }

            /* renamed from: b */
            public static AbstractC7815a m7416b() {
                return new C5381u.C5383b();
            }

            /* renamed from: a */
            public abstract String mo7417a();
        }

        /* renamed from: n */
        public static AbstractC7789b m7581n() {
            C5338f.C5340b bVar = new C5338f.C5340b();
            bVar.mo7554a(false);
            return bVar;
        }

        /* renamed from: a */
        public abstract AbstractC7786a mo7596a();

        /* renamed from: a */
        public AbstractC7785d m7595a(long j, boolean z, String str) {
            AbstractC7789b m = mo7582m();
            m.mo7556a(Long.valueOf(j));
            m.mo7554a(z);
            if (str != null) {
                AbstractC7814f.AbstractC7815a b = AbstractC7814f.m7416b();
                b.mo7414a(str);
                m.mo7557a(b.mo7415a());
                m.mo7564a();
            }
            return m.mo7564a();
        }

        /* renamed from: a */
        public AbstractC7785d m7594a(C5384v<AbstractC7792d> vVar) {
            AbstractC7789b m = mo7582m();
            m.mo7561a(vVar);
            return m.mo7564a();
        }

        /* renamed from: b */
        public abstract AbstractC7790c mo7593b();

        /* renamed from: c */
        public abstract Long mo7592c();

        /* renamed from: d */
        public abstract C5384v<AbstractC7792d> mo7591d();

        /* renamed from: e */
        public abstract String mo7590e();

        /* renamed from: f */
        public abstract int mo7589f();

        /* renamed from: g */
        public abstract String mo7588g();

        /* renamed from: h */
        public byte[] m7587h() {
            return mo7588g().getBytes(CrashlyticsReport.f30950a);
        }

        /* renamed from: i */
        public abstract AbstractC7812e mo7586i();

        /* renamed from: j */
        public abstract long mo7585j();

        /* renamed from: k */
        public abstract AbstractC7814f mo7584k();

        /* renamed from: l */
        public abstract boolean mo7583l();

        /* renamed from: m */
        public abstract AbstractC7789b mo7582m();
    }

    /* renamed from: l */
    public static AbstractC7778a m7624l() {
        return new C5326b.C5328b();
    }

    /* renamed from: a */
    public CrashlyticsReport m7637a(long j, boolean z, String str) {
        AbstractC7778a j2 = mo7626j();
        if (mo7628h() != null) {
            j2.mo7620a(mo7628h().m7595a(j, z, str));
        }
        return j2.mo7623a();
    }

    /* renamed from: a */
    public CrashlyticsReport m7636a(C5384v<AbstractC7785d.AbstractC7792d> vVar) {
        if (mo7628h() != null) {
            AbstractC7778a j = mo7626j();
            j.mo7620a(mo7628h().m7594a(vVar));
            return j.mo7623a();
        }
        throw new IllegalStateException("Reports without sessions cannot have events added to them.");
    }

    /* renamed from: a */
    public CrashlyticsReport m7635a(AbstractC7781c cVar) {
        AbstractC7778a j = mo7626j();
        j.mo7620a((AbstractC7785d) null);
        j.mo7621a(cVar);
        return j.mo7623a();
    }

    /* renamed from: a */
    public abstract String mo7638a();

    /* renamed from: b */
    public abstract String mo7634b();

    /* renamed from: c */
    public abstract String mo7633c();

    /* renamed from: d */
    public abstract String mo7632d();

    /* renamed from: e */
    public abstract AbstractC7781c mo7631e();

    /* renamed from: f */
    public abstract int mo7630f();

    /* renamed from: g */
    public abstract String mo7629g();

    /* renamed from: h */
    public abstract AbstractC7785d mo7628h();

    /* renamed from: i */
    public Type m7627i() {
        return mo7628h() != null ? Type.JAVA : mo7631e() != null ? Type.NATIVE : Type.INCOMPLETE;
    }

    /* renamed from: j */
    public abstract AbstractC7778a mo7626j();
}
