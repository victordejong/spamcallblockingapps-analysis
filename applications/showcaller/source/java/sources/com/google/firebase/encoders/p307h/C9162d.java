package com.google.firebase.encoders.p307h;

import com.google.firebase.encoders.AbstractC9151a;
import com.google.firebase.encoders.AbstractC9153c;
import com.google.firebase.encoders.AbstractC9154d;
import com.google.firebase.encoders.AbstractC9155e;
import com.google.firebase.encoders.AbstractC9156f;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.p306g.AbstractC9157a;
import com.google.firebase.encoders.p306g.AbstractC9158b;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
/* renamed from: com.google.firebase.encoders.h.d */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/encoders/h/d.class */
public final class C9162d implements AbstractC9158b<C9162d> {

    /* renamed from: a */
    private static final AbstractC9153c<Object> f39465a = C9159a.m1708b();

    /* renamed from: b */
    private static final AbstractC9155e<String> f39466b = C9160b.m1707b();

    /* renamed from: c */
    private static final AbstractC9155e<Boolean> f39467c = C9161c.m1706b();

    /* renamed from: d */
    private static final C9164b f39468d = new C9164b(null);

    /* renamed from: e */
    private final Map<Class<?>, AbstractC9153c<?>> f39469e = new HashMap();

    /* renamed from: f */
    private final Map<Class<?>, AbstractC9155e<?>> f39470f = new HashMap();

    /* renamed from: g */
    private AbstractC9153c<Object> f39471g = f39465a;

    /* renamed from: h */
    private boolean f39472h = false;

    /* renamed from: com.google.firebase.encoders.h.d$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/encoders/h/d$a.class */
    public class C9163a implements AbstractC9151a {
        C9163a() {
            C9162d.this = r4;
        }

        @Override // com.google.firebase.encoders.AbstractC9151a
        /* renamed from: a */
        public void mo1692a(Object obj, Writer writer) {
            C9165e c9165e = new C9165e(writer, C9162d.this.f39469e, C9162d.this.f39470f, C9162d.this.f39471g, C9162d.this.f39472h);
            c9165e.m1678k(obj, false);
            c9165e.m1669t();
        }

        @Override // com.google.firebase.encoders.AbstractC9151a
        /* renamed from: b */
        public String mo1691b(Object obj) {
            StringWriter stringWriter = new StringWriter();
            try {
                mo1692a(obj, stringWriter);
            } catch (IOException e) {
            }
            return stringWriter.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.firebase.encoders.h.d$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/encoders/h/d$b.class */
    public static final class C9164b implements AbstractC9155e<Date> {

        /* renamed from: a */
        private static final DateFormat f39474a;

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            f39474a = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        }

        private C9164b() {
        }

        /* synthetic */ C9164b(C9163a c9163a) {
            this();
        }

        /* renamed from: b */
        public void mo1690a(Date date, AbstractC9156f abstractC9156f) {
            abstractC9156f.mo1684e(f39474a.format(date));
        }
    }

    public C9162d() {
        m1693m(String.class, f39466b);
        m1693m(Boolean.class, f39467c);
        m1693m(Date.class, f39468d);
    }

    /* renamed from: i */
    public static /* synthetic */ void m1697i(Object obj, AbstractC9154d abstractC9154d) {
        throw new EncodingException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
    }

    /* renamed from: f */
    public AbstractC9151a m1700f() {
        return new C9163a();
    }

    /* renamed from: g */
    public C9162d m1699g(AbstractC9157a abstractC9157a) {
        abstractC9157a.mo1709a(this);
        return this;
    }

    /* renamed from: h */
    public C9162d m1698h(boolean z) {
        this.f39472h = z;
        return this;
    }

    /* renamed from: l */
    public <T> C9162d mo1705a(Class<T> cls, AbstractC9153c<? super T> abstractC9153c) {
        this.f39469e.put(cls, abstractC9153c);
        this.f39470f.remove(cls);
        return this;
    }

    /* renamed from: m */
    public <T> C9162d m1693m(Class<T> cls, AbstractC9155e<? super T> abstractC9155e) {
        this.f39470f.put(cls, abstractC9155e);
        this.f39469e.remove(cls);
        return this;
    }
}
