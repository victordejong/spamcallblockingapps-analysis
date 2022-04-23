package com.google.firebase.analytics.connector;

import android.os.Bundle;
import java.util.List;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/connector/a.class */
public interface a {

    /* renamed from: com.google.firebase.analytics.connector.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/connector/a$a.class */
    public interface AbstractC0513a {
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/connector/a$b.class */
    public interface b {
        void onMessageTriggered(int i, Bundle bundle);
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/connector/a$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public String f32185a;

        /* renamed from: b  reason: collision with root package name */
        public String f32186b;

        /* renamed from: c  reason: collision with root package name */
        public Object f32187c;

        /* renamed from: d  reason: collision with root package name */
        public String f32188d;
        public long e;
        public String f;
        public Bundle g;
        public String h;
        public Bundle i;
        public long j;
        public String k;
        public Bundle l;
        public long m;
        public boolean n;
        public long o;
    }

    AbstractC0513a a(String str, b bVar);

    List<c> a(String str, String str2);

    Map<String, Object> a();

    void a(c cVar);

    void a(String str);

    void a(String str, String str2, Bundle bundle);

    void a(String str, String str2, Object obj);

    int b(String str);
}
