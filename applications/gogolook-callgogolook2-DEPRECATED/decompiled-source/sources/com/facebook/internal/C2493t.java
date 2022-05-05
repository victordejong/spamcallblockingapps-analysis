package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import java.util.Locale;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.internal.t */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/t.class */
public class C2493t {

    /* renamed from: a */
    public Context f3200a;

    /* renamed from: b */
    public Uri f3201b;

    /* renamed from: c */
    public AbstractC2496c f3202c;

    /* renamed from: d */
    public boolean f3203d;

    /* renamed from: e */
    public Object f3204e;

    /* renamed from: com.facebook.internal.t$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/t$b.class */
    public static class C2495b {

        /* renamed from: a */
        public Context f3205a;

        /* renamed from: b */
        public Uri f3206b;

        /* renamed from: c */
        public AbstractC2496c f3207c;

        /* renamed from: d */
        public boolean f3208d;

        /* renamed from: e */
        public Object f3209e;

        public C2495b(Context context, Uri uri) {
            C2416h0.m34791a(uri, "imageUri");
            this.f3205a = context;
            this.f3206b = uri;
        }

        /* renamed from: a */
        public C2495b m34581a(AbstractC2496c cVar) {
            this.f3207c = cVar;
            return this;
        }

        /* renamed from: a */
        public C2495b m34580a(Object obj) {
            this.f3209e = obj;
            return this;
        }

        /* renamed from: a */
        public C2495b m34579a(boolean z) {
            this.f3208d = z;
            return this;
        }

        /* renamed from: a */
        public C2493t m34583a() {
            return new C2493t(this);
        }
    }

    /* renamed from: com.facebook.internal.t$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/t$c.class */
    public interface AbstractC2496c {
        /* renamed from: a */
        void mo34279a(C2497u uVar);
    }

    public C2493t(C2495b bVar) {
        this.f3200a = bVar.f3205a;
        this.f3201b = bVar.f3206b;
        this.f3202c = bVar.f3207c;
        this.f3203d = bVar.f3208d;
        this.f3204e = bVar.f3209e == null ? new Object() : bVar.f3209e;
    }

    /* renamed from: a */
    public static Uri m34588a(String str, int i, int i2, String str2) {
        C2416h0.m34790a(str, "userId");
        int max = Math.max(i, 0);
        int max2 = Math.max(i2, 0);
        if (max == 0 && max2 == 0) {
            throw new IllegalArgumentException("Either width or height must be greater than 0");
        }
        Uri.Builder path = Uri.parse(C2401d0.m34896c()).buildUpon().path(String.format(Locale.US, "%s/%s/picture", C6135n.m23735p(), str));
        if (max2 != 0) {
            path.appendQueryParameter("height", String.valueOf(max2));
        }
        if (max != 0) {
            path.appendQueryParameter("width", String.valueOf(max));
        }
        path.appendQueryParameter("migration_overrides", "{october_2012:true}");
        if (!C2408g0.m34816d(str2)) {
            path.appendQueryParameter("access_token", str2);
        }
        return path.build();
    }

    /* renamed from: a */
    public AbstractC2496c m34589a() {
        return this.f3202c;
    }

    /* renamed from: b */
    public Object m34587b() {
        return this.f3204e;
    }

    /* renamed from: c */
    public Context m34586c() {
        return this.f3200a;
    }

    /* renamed from: d */
    public Uri m34585d() {
        return this.f3201b;
    }

    /* renamed from: e */
    public boolean m34584e() {
        return this.f3203d;
    }
}
