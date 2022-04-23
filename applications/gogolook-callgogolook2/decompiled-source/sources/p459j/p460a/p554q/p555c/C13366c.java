package p459j.p460a.p554q.p555c;

import p459j.p460a.p554q.p555c.AbstractC13357a;
import p626l.C14976h;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.q.c.c */
/* loaded from: classes2-dex2jar.jar:j/a/q/c/c.class */
public final class C13366c {
    /* renamed from: a */
    public static final AbstractC13357a m4120a(Object obj) {
        return obj instanceof String ? new AbstractC13357a.C13361d((String) obj) : obj instanceof Boolean ? new AbstractC13357a.C13358a(((Boolean) obj).booleanValue()) : obj instanceof Long ? new AbstractC13357a.C13360c(((Number) obj).longValue()) : obj instanceof Integer ? new AbstractC13357a.C13359b(((Number) obj).intValue()) : new AbstractC13357a.C13362e(obj);
    }

    /* renamed from: a */
    public static final Object m4122a(AbstractC13357a aVar) {
        Object obj;
        C15149k.m377b(aVar, "receiver$0");
        if (aVar instanceof AbstractC13357a.C13361d) {
            obj = ((AbstractC13357a.C13361d) aVar).m4129a();
        } else if (aVar instanceof AbstractC13357a.C13358a) {
            obj = Boolean.valueOf(((AbstractC13357a.C13358a) aVar).m4132a());
        } else if (aVar instanceof AbstractC13357a.C13360c) {
            obj = Long.valueOf(((AbstractC13357a.C13360c) aVar).m4130a());
        } else if (aVar instanceof AbstractC13357a.C13359b) {
            obj = Integer.valueOf(((AbstractC13357a.C13359b) aVar).m4131a());
        } else if (aVar instanceof AbstractC13357a.C13362e) {
            obj = ((AbstractC13357a.C13362e) aVar).m4128a();
        } else {
            throw new C14976h();
        }
        return obj;
    }

    /* renamed from: a */
    public static final Object m4121a(AbstractC13357a aVar, String str) {
        C15149k.m377b(aVar, "receiver$0");
        C15149k.m377b(str, "v");
        Object obj = str;
        if (!(aVar instanceof AbstractC13357a.C13361d)) {
            if (aVar instanceof AbstractC13357a.C13358a) {
                obj = Boolean.valueOf(Boolean.parseBoolean(str));
            } else if (aVar instanceof AbstractC13357a.C13360c) {
                obj = Long.valueOf(Long.parseLong(str));
            } else if (aVar instanceof AbstractC13357a.C13359b) {
                obj = Integer.valueOf(Integer.parseInt(str));
            } else {
                obj = str;
                if (!(aVar instanceof AbstractC13357a.C13362e)) {
                    throw new C14976h();
                }
            }
        }
        return obj;
    }
}
