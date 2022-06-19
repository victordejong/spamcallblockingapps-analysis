package p193e.p194a.p1342w4;

import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.data.dto.ContactDto;
import e.m.e.b0;
import e.m.e.g0.c;
import e.m.e.l;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import p193e.p194a.p372b0.p394b.p395a.C8365b;
import x3.g0.a.a;
/* renamed from: e.a.w4.l */
/* loaded from: classes13-dex2jar.jar:e/a/w4/l.class */
public class C21212l {

    /* renamed from: a */
    public static final a f59418a;

    /* renamed from: e.a.w4.l$b */
    /* loaded from: classes13-dex2jar.jar:e/a/w4/l$b.class */
    public static class C21214b extends b0<ContactDto.Contact.Tag> {
        public C21214b(C21213a c21213a) {
        }

        public Object read(e.m.e.g0.a aVar) throws IOException {
            ContactDto.Contact.Tag tag = new ContactDto.Contact.Tag();
            tag.tag = aVar.z0();
            return tag;
        }

        public void write(c cVar, Object obj) throws IOException {
            cVar.t0(((ContactDto.Contact.Tag) obj).tag);
        }
    }

    static {
        l lVar = new l();
        lVar.b(ContactDto.Contact.Tag.class, new C21214b(null).nullSafe());
        f59418a = new a(lVar.a());
    }

    /* renamed from: a */
    public static AbstractC21215m m10129a() {
        return m10128b(0, null);
    }

    /* renamed from: b */
    public static AbstractC21215m m10128b(int i, TimeUnit timeUnit) {
        C8365b c8365b = new C8365b();
        c8365b.m28639a(KnownEndpoints.SEARCH);
        c8365b.f25721g = i;
        c8365b.f25722h = timeUnit;
        c8365b.m28638b(f59418a);
        c8365b.m28634f(AbstractC21215m.class);
        return (AbstractC21215m) c8365b.m28637c(AbstractC21215m.class);
    }
}
