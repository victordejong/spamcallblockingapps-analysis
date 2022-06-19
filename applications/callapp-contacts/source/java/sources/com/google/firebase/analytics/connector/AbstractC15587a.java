package com.google.firebase.analytics.connector;

import android.os.Bundle;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.firebase.analytics.connector.a */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/connector/a.class */
public interface AbstractC15587a {

    /* renamed from: com.google.firebase.analytics.connector.a$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/connector/a$a.class */
    public interface AbstractC15588a {
    }

    /* renamed from: com.google.firebase.analytics.connector.a$b */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/connector/a$b.class */
    public interface AbstractC15589b {
        void onMessageTriggered(int i, Bundle bundle);
    }

    /* renamed from: com.google.firebase.analytics.connector.a$c */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/connector/a$c.class */
    public static final class C15590c {

        /* renamed from: a */
        public String f55934a;

        /* renamed from: b */
        public String f55935b;

        /* renamed from: c */
        public Object f55936c;

        /* renamed from: d */
        public String f55937d;

        /* renamed from: e */
        public long f55938e;

        /* renamed from: f */
        public String f55939f;

        /* renamed from: g */
        public Bundle f55940g;

        /* renamed from: h */
        public String f55941h;

        /* renamed from: i */
        public Bundle f55942i;

        /* renamed from: j */
        public long f55943j;

        /* renamed from: k */
        public String f55944k;

        /* renamed from: l */
        public Bundle f55945l;

        /* renamed from: m */
        public long f55946m;

        /* renamed from: n */
        public boolean f55947n;

        /* renamed from: o */
        public long f55948o;
    }

    /* renamed from: a */
    AbstractC15588a mo8599a(String str, AbstractC15589b abstractC15589b);

    /* renamed from: a */
    List<C15590c> mo8598a(String str, String str2);

    /* renamed from: a */
    Map<String, Object> mo8604a();

    /* renamed from: a */
    void mo8603a(C15590c c15590c);

    /* renamed from: a */
    void mo8600a(String str);

    /* renamed from: a */
    void mo8597a(String str, String str2, Bundle bundle);

    /* renamed from: a */
    void mo8596a(String str, String str2, Object obj);

    /* renamed from: b */
    int mo8595b(String str);
}
