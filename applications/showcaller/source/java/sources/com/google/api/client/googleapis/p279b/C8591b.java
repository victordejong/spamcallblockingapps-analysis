package com.google.api.client.googleapis.p279b;

import com.google.api.client.http.AbstractC8657s;
import com.google.api.client.http.AbstractC8661w;
import com.google.api.client.http.C8645i;
import com.google.api.client.http.C8655q;
import com.google.api.client.http.C8656r;
import com.google.api.client.util.AbstractC8733y;
import com.google.api.client.util.C8731w;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
/* renamed from: com.google.api.client.googleapis.b.b */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/b/b.class */
public final class C8591b {

    /* renamed from: a */
    private static final Logger f38205a = Logger.getLogger(C8591b.class.getName());

    /* renamed from: c */
    private final C8656r f38207c;

    /* renamed from: b */
    private C8645i f38206b = new C8645i("https://www.googleapis.com/batch");

    /* renamed from: d */
    List<C8592a<?, ?>> f38208d = new ArrayList();

    /* renamed from: e */
    private AbstractC8733y f38209e = AbstractC8733y.f38567a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.api.client.googleapis.b.b$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/b/b$a.class */
    public static class C8592a<T, E> {

        /* renamed from: a */
        final AbstractC8590a<T, E> f38210a;

        /* renamed from: b */
        final Class<T> f38211b;

        /* renamed from: c */
        final Class<E> f38212c;

        /* renamed from: d */
        final C8655q f38213d;

        C8592a(AbstractC8590a<T, E> abstractC8590a, Class<T> cls, Class<E> cls2, C8655q c8655q) {
            this.f38210a = abstractC8590a;
            this.f38211b = cls;
            this.f38212c = cls2;
            this.f38213d = c8655q;
        }
    }

    @Deprecated
    public C8591b(AbstractC8661w abstractC8661w, AbstractC8657s abstractC8657s) {
        this.f38207c = abstractC8657s == null ? abstractC8661w.m3052c() : abstractC8661w.m3051d(abstractC8657s);
    }

    /* renamed from: a */
    public <T, E> C8591b m3288a(C8655q c8655q, Class<T> cls, Class<E> cls2, AbstractC8590a<T, E> abstractC8590a) {
        C8731w.m2836d(c8655q);
        C8731w.m2836d(abstractC8590a);
        C8731w.m2836d(cls);
        C8731w.m2836d(cls2);
        this.f38208d.add(new C8592a<>(abstractC8590a, cls, cls2, c8655q));
        return this;
    }

    /* renamed from: b */
    public C8591b m3287b(C8645i c8645i) {
        this.f38206b = c8645i;
        return this;
    }
}
