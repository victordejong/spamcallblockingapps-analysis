package p081h.p203i.p325c.p359q.p361i;

import androidx.annotation.NonNull;
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
import p081h.p203i.p325c.p359q.AbstractC9838a;
import p081h.p203i.p325c.p359q.AbstractC9841d;
import p081h.p203i.p325c.p359q.AbstractC9842e;
import p081h.p203i.p325c.p359q.AbstractC9843f;
import p081h.p203i.p325c.p359q.AbstractC9844g;
import p081h.p203i.p325c.p359q.C9840c;
import p081h.p203i.p325c.p359q.p360h.AbstractC9845a;
import p081h.p203i.p325c.p359q.p360h.AbstractC9846b;
/* renamed from: h.i.c.q.i.d */
/* loaded from: classes2-dex2jar.jar:h/i/c/q/i/d.class */
public final class C9850d implements AbstractC9846b<C9850d> {

    /* renamed from: e */
    public static final AbstractC9841d<Object> f22312e = C9847a.m14114a();

    /* renamed from: f */
    public static final AbstractC9843f<String> f22313f = C9848b.m14113a();

    /* renamed from: g */
    public static final AbstractC9843f<Boolean> f22314g = C9849c.m14112a();

    /* renamed from: h */
    public static final C9852b f22315h = new C9852b(null);

    /* renamed from: a */
    public final Map<Class<?>, AbstractC9841d<?>> f22316a = new HashMap();

    /* renamed from: b */
    public final Map<Class<?>, AbstractC9843f<?>> f22317b = new HashMap();

    /* renamed from: c */
    public AbstractC9841d<Object> f22318c = f22312e;

    /* renamed from: d */
    public boolean f22319d = false;

    /* renamed from: h.i.c.q.i.d$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/q/i/d$a.class */
    public class C9851a implements AbstractC9838a {
        public C9851a() {
        }

        @Override // p081h.p203i.p325c.p359q.AbstractC9838a
        /* renamed from: a */
        public String mo14099a(@NonNull Object obj) {
            StringWriter stringWriter = new StringWriter();
            try {
                mo14098a(obj, stringWriter);
            } catch (IOException e) {
            }
            return stringWriter.toString();
        }

        @Override // p081h.p203i.p325c.p359q.AbstractC9838a
        /* renamed from: a */
        public void mo14098a(@NonNull Object obj, @NonNull Writer writer) throws IOException {
            C9853e eVar = new C9853e(writer, C9850d.this.f22316a, C9850d.this.f22317b, C9850d.this.f22318c, C9850d.this.f22319d);
            eVar.m14091a(obj, false);
            eVar.m14096a();
        }
    }

    /* renamed from: h.i.c.q.i.d$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/q/i/d$b.class */
    public static final class C9852b implements AbstractC9843f<Date> {

        /* renamed from: a */
        public static final DateFormat f22321a = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);

        static {
            f22321a.setTimeZone(TimeZone.getTimeZone("UTC"));
        }

        public C9852b() {
        }

        public /* synthetic */ C9852b(C9851a aVar) {
            this();
        }

        /* renamed from: a */
        public void mo13750a(@NonNull Date date, @NonNull AbstractC9844g gVar) throws IOException {
            gVar.mo14090a(f22321a.format(date));
        }
    }

    public C9850d() {
        m14106a(String.class, f22313f);
        m14106a(Boolean.class, f22314g);
        m14106a(Date.class, f22315h);
    }

    /* renamed from: a */
    public static /* synthetic */ void m14105a(Object obj, AbstractC9842e eVar) throws IOException {
        throw new C9840c("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
    }

    @NonNull
    /* renamed from: a */
    public AbstractC9838a m14111a() {
        return new C9851a();
    }

    @NonNull
    /* renamed from: a */
    public C9850d m14110a(@NonNull AbstractC9845a aVar) {
        aVar.mo14115a(this);
        return this;
    }

    @Override // p081h.p203i.p325c.p359q.p360h.AbstractC9846b
    @NonNull
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public <T> C9850d mo14107a(@NonNull Class<T> cls, @NonNull AbstractC9841d<? super T> dVar) {
        this.f22316a.put(cls, dVar);
        this.f22317b.remove(cls);
        return this;
    }

    @NonNull
    /* renamed from: a */
    public <T> C9850d m14106a(@NonNull Class<T> cls, @NonNull AbstractC9843f<? super T> fVar) {
        this.f22317b.put(cls, fVar);
        this.f22316a.remove(cls);
        return this;
    }

    @NonNull
    /* renamed from: a */
    public C9850d m14103a(boolean z) {
        this.f22319d = z;
        return this;
    }
}
