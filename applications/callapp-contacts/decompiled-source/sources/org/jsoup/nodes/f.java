package org.jsoup.nodes;

import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import org.jsoup.b.c;
import org.jsoup.c.g;
import org.jsoup.c.h;
import org.jsoup.nodes.i;
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/f.class */
public final class f extends h {

    /* renamed from: b  reason: collision with root package name */
    public g f39266b;
    private String i;

    /* renamed from: a  reason: collision with root package name */
    public a f39265a = new a();

    /* renamed from: c  reason: collision with root package name */
    public int f39267c = b.f39276a;

    /* renamed from: d  reason: collision with root package name */
    public boolean f39268d = false;

    /* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/f$a.class */
    public static final class a implements Cloneable {

        /* renamed from: d  reason: collision with root package name */
        int f39272d;

        /* renamed from: a  reason: collision with root package name */
        i.b f39269a = i.b.base;

        /* renamed from: c  reason: collision with root package name */
        ThreadLocal<CharsetEncoder> f39271c = new ThreadLocal<>();
        boolean e = true;
        boolean f = false;
        int g = 1;
        public int h = EnumC0751a.f39273a;

        /* renamed from: b  reason: collision with root package name */
        public Charset f39270b = Charset.forName("UTF8");

        /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
        /* renamed from: org.jsoup.nodes.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/f$a$a.class */
        public static final class EnumC0751a extends Enum<EnumC0751a> {

            /* renamed from: a  reason: collision with root package name */
            public static final int f39273a = 1;

            /* renamed from: b  reason: collision with root package name */
            public static final int f39274b = 2;

            /* renamed from: c  reason: collision with root package name */
            private static final /* synthetic */ int[] f39275c = {1, 2};

            private EnumC0751a(String str, int i) {
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final CharsetEncoder a() {
            CharsetEncoder newEncoder = this.f39270b.newEncoder();
            this.f39271c.set(newEncoder);
            this.f39272d = i.a.a(newEncoder.charset().name());
            return newEncoder;
        }

        /* renamed from: b */
        public final a clone() {
            try {
                a aVar = (a) super.clone();
                aVar.f39270b = Charset.forName(this.f39270b.name());
                aVar.f39269a = i.b.valueOf(this.f39269a.name());
                return aVar;
            } catch (CloneNotSupportedException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/f$b.class */
    public static final class b extends Enum<b> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f39276a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f39277b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f39278c = 3;

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ int[] f39279d = {1, 2, 3};

        private b(String str, int i) {
        }
    }

    public f(String str) {
        super(h.a("#root", org.jsoup.c.f.f39224a), str);
        this.i = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: C */
    public f d() {
        f fVar = (f) super.clone();
        fVar.f39265a = this.f39265a.clone();
        return fVar;
    }

    @Override // org.jsoup.nodes.h, org.jsoup.nodes.m
    public final String a() {
        return "#document";
    }

    public final h a(String str, m mVar) {
        if (mVar.a().equals(str)) {
            return (h) mVar;
        }
        int f = mVar.f();
        for (int i = 0; i < f; i++) {
            h a2 = a(str, mVar.a(i));
            if (a2 != null) {
                return a2;
            }
        }
        return null;
    }

    @Override // org.jsoup.nodes.m
    public final String aB_() {
        StringBuilder a2 = c.a();
        a((f) a2);
        String a3 = c.a(a2);
        String str = a3;
        if (n.a(this).e) {
            str = a3.trim();
        }
        return str;
    }
}
