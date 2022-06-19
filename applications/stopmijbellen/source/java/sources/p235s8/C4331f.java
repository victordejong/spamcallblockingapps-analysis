package p235s8;

import java.sql.Date;
/* renamed from: s8.f */
/* loaded from: classes2-dex2jar.jar:s8/f.class */
public class C4331f extends AbstractC4332g<Long, Date> {
    /* renamed from: b */
    public Long mo1095a(Date date) {
        return date == null ? null : Long.valueOf(date.getTime());
    }

    /* renamed from: c */
    public Date m1096c(Long l) {
        return l == null ? null : new Date(l.longValue());
    }
}
