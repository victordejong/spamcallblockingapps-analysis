package p131c.p161d.p282e.p310n.p312h;

import com.google.firebase.encoders.EncodingException;
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
import p131c.p161d.p282e.p310n.AbstractC5455a;
import p131c.p161d.p282e.p310n.AbstractC5457c;
import p131c.p161d.p282e.p310n.AbstractC5458d;
import p131c.p161d.p282e.p310n.AbstractC5459e;
import p131c.p161d.p282e.p310n.AbstractC5460f;
import p131c.p161d.p282e.p310n.p311g.AbstractC5461a;
import p131c.p161d.p282e.p310n.p311g.AbstractC5462b;
/* renamed from: c.d.e.n.h.d */
/* loaded from: classes2-dex2jar.jar:c/d/e/n/h/d.class */
public final class C5466d implements AbstractC5462b<C5466d> {

    /* renamed from: e */
    public static final AbstractC5457c<Object> f18439e = C5463a.m23754a();

    /* renamed from: f */
    public static final AbstractC5459e<String> f18440f = C5464b.m23753a();

    /* renamed from: g */
    public static final AbstractC5459e<Boolean> f18441g = C5465c.m23752a();

    /* renamed from: h */
    public static final C5468b f18442h = new C5468b(null);

    /* renamed from: a */
    public final Map<Class<?>, AbstractC5457c<?>> f18443a = new HashMap();

    /* renamed from: b */
    public final Map<Class<?>, AbstractC5459e<?>> f18444b = new HashMap();

    /* renamed from: c */
    public AbstractC5457c<Object> f18445c = f18439e;

    /* renamed from: d */
    public boolean f18446d = false;

    /* renamed from: c.d.e.n.h.d$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/n/h/d$a.class */
    public class C5467a implements AbstractC5455a {
        public C5467a() {
        }

        @Override // p131c.p161d.p282e.p310n.AbstractC5455a
        /* renamed from: a */
        public String mo23739a(Object obj) {
            StringWriter stringWriter = new StringWriter();
            try {
                mo23738a(obj, stringWriter);
            } catch (IOException e) {
            }
            return stringWriter.toString();
        }

        @Override // p131c.p161d.p282e.p310n.AbstractC5455a
        /* renamed from: a */
        public void mo23738a(Object obj, Writer writer) throws IOException {
            C5469e eVar = new C5469e(writer, C5466d.this.f18443a, C5466d.this.f18444b, C5466d.this.f18445c, C5466d.this.f18446d);
            eVar.m23730a(obj, false);
            eVar.m23735a();
        }
    }

    /* renamed from: c.d.e.n.h.d$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/n/h/d$b.class */
    public static final class C5468b implements AbstractC5459e<Date> {

        /* renamed from: a */
        public static final DateFormat f18448a;

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            f18448a = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        }

        public C5468b() {
        }

        public /* synthetic */ C5468b(C5467a aVar) {
            this();
        }

        /* renamed from: a */
        public void mo23737a(Date date, AbstractC5460f fVar) throws IOException {
            fVar.mo23729a(f18448a.format(date));
        }
    }

    public C5466d() {
        m23746a(String.class, f18440f);
        m23746a(Boolean.class, f18441g);
        m23746a(Date.class, f18442h);
    }

    /* renamed from: a */
    public static /* synthetic */ void m23745a(Object obj, AbstractC5458d dVar) throws IOException {
        throw new EncodingException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
    }

    /* renamed from: a */
    public AbstractC5455a m23751a() {
        return new C5467a();
    }

    /* renamed from: a */
    public C5466d m23750a(AbstractC5461a aVar) {
        aVar.mo23755a(this);
        return this;
    }

    @Override // p131c.p161d.p282e.p310n.p311g.AbstractC5462b
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public <T> C5466d mo23747a(Class<T> cls, AbstractC5457c<? super T> cVar) {
        this.f18443a.put(cls, cVar);
        this.f18444b.remove(cls);
        return this;
    }

    /* renamed from: a */
    public <T> C5466d m23746a(Class<T> cls, AbstractC5459e<? super T> eVar) {
        this.f18444b.put(cls, eVar);
        this.f18443a.remove(cls);
        return this;
    }

    /* renamed from: a */
    public C5466d m23743a(boolean z) {
        this.f18446d = z;
        return this;
    }
}
