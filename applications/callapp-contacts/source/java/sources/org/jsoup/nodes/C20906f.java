package org.jsoup.nodes;

import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import org.jsoup.nodes.C20914i;
import org.jsoup.p591b.C20782c;
import org.jsoup.p592c.C20813f;
import org.jsoup.p592c.C20814g;
import org.jsoup.p592c.C20815h;
/* renamed from: org.jsoup.nodes.f */
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/f.class */
public final class C20906f extends C20911h {

    /* renamed from: b */
    public C20814g f67458b;

    /* renamed from: i */
    private String f67461i;

    /* renamed from: a */
    public C20907a f67457a = new C20907a();

    /* renamed from: c */
    public int f67459c = EnumC20909b.f67473a;

    /* renamed from: d */
    public boolean f67460d = false;

    /* renamed from: org.jsoup.nodes.f$a */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/f$a.class */
    public static final class C20907a implements Cloneable {

        /* renamed from: d */
        int f67465d;

        /* renamed from: a */
        C20914i.EnumC20917b f67462a = C20914i.EnumC20917b.base;

        /* renamed from: c */
        ThreadLocal<CharsetEncoder> f67464c = new ThreadLocal<>();

        /* renamed from: e */
        boolean f67466e = true;

        /* renamed from: f */
        boolean f67467f = false;

        /* renamed from: g */
        int f67468g = 1;

        /* renamed from: h */
        public int f67469h = EnumC20908a.f67470a;

        /* renamed from: b */
        public Charset f67463b = Charset.forName("UTF8");

        /* renamed from: org.jsoup.nodes.f$a$a */
        /* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/f$a$a.class */
        public static final class EnumC20908a extends Enum<EnumC20908a> {

            /* renamed from: a */
            public static final int f67470a = 1;

            /* renamed from: b */
            public static final int f67471b = 2;

            /* renamed from: c */
            private static final /* synthetic */ int[] f67472c = {1, 2};

            private EnumC20908a(String str, int i) {
                super(str, i);
            }
        }

        /* renamed from: a */
        public final CharsetEncoder m283a() {
            CharsetEncoder newEncoder = this.f67463b.newEncoder();
            this.f67464c.set(newEncoder);
            this.f67465d = C20914i.EnumC20916a.m250a(newEncoder.charset().name());
            return newEncoder;
        }

        /* renamed from: b */
        public final C20907a clone() {
            try {
                C20907a c20907a = (C20907a) super.clone();
                c20907a.f67463b = Charset.forName(this.f67463b.name());
                c20907a.f67462a = C20914i.EnumC20917b.valueOf(this.f67462a.name());
                return c20907a;
            } catch (CloneNotSupportedException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: org.jsoup.nodes.f$b */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/f$b.class */
    public static final class EnumC20909b extends Enum<EnumC20909b> {

        /* renamed from: a */
        public static final int f67473a = 1;

        /* renamed from: b */
        public static final int f67474b = 2;

        /* renamed from: c */
        public static final int f67475c = 3;

        /* renamed from: d */
        private static final /* synthetic */ int[] f67476d = {1, 2, 3};

        private EnumC20909b(String str, int i) {
            super(str, i);
        }
    }

    public C20906f(String str) {
        super(C20815h.m392a("#root", C20813f.f67372a), str);
        this.f67461i = str;
    }

    /* renamed from: C */
    public C20906f mo248d() {
        C20906f c20906f = (C20906f) super.clone();
        c20906f.f67457a = this.f67457a.clone();
        return c20906f;
    }

    @Override // org.jsoup.nodes.C20911h, org.jsoup.nodes.AbstractC20921m
    /* renamed from: a */
    public final String mo215a() {
        return "#document";
    }

    /* renamed from: a */
    public final C20911h m284a(String str, AbstractC20921m abstractC20921m) {
        if (abstractC20921m.mo215a().equals(str)) {
            return (C20911h) abstractC20921m;
        }
        int mo206f = abstractC20921m.mo206f();
        for (int i = 0; i < mo206f; i++) {
            C20911h m284a = m284a(str, abstractC20921m.m243a(i));
            if (m284a != null) {
                return m284a;
            }
        }
        return null;
    }

    @Override // org.jsoup.nodes.AbstractC20921m
    public final String aB_() {
        StringBuilder m496a = C20782c.m496a();
        mo241a((C20906f) m496a);
        String m491a = C20782c.m491a(m496a);
        String str = m491a;
        if (C20923n.m219a(this).f67466e) {
            str = m491a.trim();
        }
        return str;
    }
}
