package p242t5;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import p221r5.AbstractC4211d;
import p221r5.AbstractC4213f;
import p221r5.AbstractC4214g;
import p232s5.AbstractC4299b;
/* renamed from: t5.e */
/* loaded from: classes-dex2jar.jar:t5/e.class */
public final class C4404e implements AbstractC4299b<C4404e> {

    /* renamed from: e */
    public static final C4405a f13722e = new C4405a(null);

    /* renamed from: a */
    public final Map<Class<?>, AbstractC4211d<?>> f13723a;

    /* renamed from: b */
    public final Map<Class<?>, AbstractC4213f<?>> f13724b;

    /* renamed from: c */
    public AbstractC4211d<Object> f13725c = C4400a.f13718a;

    /* renamed from: d */
    public boolean f13726d = false;

    /* renamed from: t5.e$a */
    /* loaded from: classes-dex2jar.jar:t5/e$a.class */
    public static final class C4405a implements AbstractC4213f<Date> {

        /* renamed from: a */
        public static final DateFormat f13727a;

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            f13727a = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        }

        public C4405a(C4403d c4403d) {
        }

        @Override // p221r5.AbstractC4209b
        /* renamed from: a */
        public void mo965a(Object obj, AbstractC4214g abstractC4214g) throws IOException {
            abstractC4214g.mo961d(f13727a.format((Date) obj));
        }
    }

    public C4404e() {
        HashMap hashMap = new HashMap();
        this.f13723a = hashMap;
        HashMap hashMap2 = new HashMap();
        this.f13724b = hashMap2;
        hashMap2.put(String.class, C4401b.f13719a);
        hashMap.remove(String.class);
        hashMap2.put(Boolean.class, C4402c.f13720a);
        hashMap.remove(Boolean.class);
        hashMap2.put(Date.class, f13722e);
        hashMap.remove(Date.class);
    }
}
