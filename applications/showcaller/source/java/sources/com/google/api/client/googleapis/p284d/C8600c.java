package com.google.api.client.googleapis.p284d;
/* renamed from: com.google.api.client.googleapis.d.c */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/d/c.class */
public class C8600c implements AbstractC8602d {
    private static final String REQUEST_REASON_HEADER_NAME = "X-Goog-Request-Reason";
    private static final String USER_PROJECT_HEADER_NAME = "X-Goog-User-Project";
    private final String key;
    private final String requestReason;
    private final String userAgent;
    private final String userIp;
    private final String userProject;

    /* renamed from: com.google.api.client.googleapis.d.c$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/d/c$a.class */
    public static class C8601a {

        /* renamed from: a */
        private String f38220a;

        /* renamed from: b */
        private String f38221b;

        /* renamed from: c */
        private String f38222c;

        /* renamed from: d */
        private String f38223d;

        /* renamed from: e */
        private String f38224e;

        protected C8601a() {
        }

        /* renamed from: a */
        public String m3282a() {
            return this.f38220a;
        }

        /* renamed from: b */
        public String m3281b() {
            return this.f38223d;
        }

        /* renamed from: c */
        public String m3280c() {
            return this.f38222c;
        }

        /* renamed from: d */
        public String m3279d() {
            return this.f38221b;
        }

        /* renamed from: e */
        public String m3278e() {
            return this.f38224e;
        }

        /* renamed from: f */
        protected C8601a m3277f() {
            return this;
        }

        /* renamed from: g */
        public C8601a m3276g(String str) {
            this.f38220a = str;
            return m3277f();
        }

        /* renamed from: h */
        public C8601a m3275h(String str) {
            this.f38221b = str;
            return m3277f();
        }
    }

    @Deprecated
    public C8600c() {
        this(newBuilder());
    }

    protected C8600c(C8601a c8601a) {
        this.key = c8601a.m3282a();
        this.userIp = c8601a.m3279d();
        this.userAgent = c8601a.m3280c();
        this.requestReason = c8601a.m3281b();
        this.userProject = c8601a.m3278e();
    }

    @Deprecated
    public C8600c(String str) {
        this(str, null);
    }

    @Deprecated
    public C8600c(String str, String str2) {
        this(newBuilder().m3276g(str).m3275h(str2));
    }

    public static C8601a newBuilder() {
        return new C8601a();
    }

    public final String getKey() {
        return this.key;
    }

    public final String getRequestReason() {
        return this.requestReason;
    }

    public final String getUserAgent() {
        return this.userAgent;
    }

    public final String getUserIp() {
        return this.userIp;
    }

    public final String getUserProject() {
        return this.userProject;
    }

    @Override // com.google.api.client.googleapis.p284d.AbstractC8602d
    public void initialize(AbstractC8597b<?> abstractC8597b) {
        String str = this.key;
        if (str != null) {
            abstractC8597b.put("key", (Object) str);
        }
        String str2 = this.userIp;
        if (str2 != null) {
            abstractC8597b.put("userIp", (Object) str2);
        }
        if (this.userAgent != null) {
            abstractC8597b.getRequestHeaders().m3150I(this.userAgent);
        }
        if (this.requestReason != null) {
            abstractC8597b.getRequestHeaders().set(REQUEST_REASON_HEADER_NAME, this.requestReason);
        }
        if (this.userProject != null) {
            abstractC8597b.getRequestHeaders().set(USER_PROJECT_HEADER_NAME, this.userProject);
        }
    }
}
