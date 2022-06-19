package com.bytedance.sdk.openadsdk.preload.p193a;

import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5213e;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5225j;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a.p197a.C5121a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.EnumC5246b;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/a.class */
final class C5111a extends AbstractC5274v<Date> {

    /* renamed from: a */
    private final Class<? extends Date> f18382a;

    /* renamed from: b */
    private final List<DateFormat> f18383b;

    public C5111a(Class<? extends Date> cls, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        this.f18383b = arrayList;
        this.f18382a = m32999a(cls);
        arrayList.add(DateFormat.getDateTimeInstance(i, i2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            arrayList.add(DateFormat.getDateTimeInstance(i, i2));
        }
        if (C5213e.m32838b()) {
            arrayList.add(C5225j.m32817a(i, i2));
        }
    }

    public C5111a(Class<? extends Date> cls, String str) {
        ArrayList arrayList = new ArrayList();
        this.f18383b = arrayList;
        this.f18382a = m32999a(cls);
        arrayList.add(new SimpleDateFormat(str, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            arrayList.add(new SimpleDateFormat(str));
        }
    }

    /* renamed from: a */
    private static Class<? extends Date> m32999a(Class<? extends Date> cls) {
        if (cls == Date.class || cls == java.sql.Date.class || cls == Timestamp.class) {
            return cls;
        }
        throw new IllegalArgumentException("Date type must be one of " + Date.class + ", " + Timestamp.class + ", or " + java.sql.Date.class + " but was " + cls);
    }

    /* renamed from: a */
    private Date m32998a(String str) {
        synchronized (this.f18383b) {
            for (DateFormat dateFormat : this.f18383b) {
                try {
                    return dateFormat.parse(str);
                } catch (ParseException e) {
                }
            }
            try {
                return C5121a.m32982a(str, new ParsePosition(0));
            } catch (ParseException e2) {
                throw new C5270t(str, e2);
            }
        }
    }

    /* renamed from: a */
    public final Date mo32517b(C5244a c5244a) throws IOException {
        if (c5244a.mo32787f() == EnumC5246b.NULL) {
            c5244a.mo32783j();
            return null;
        }
        Date m32998a = m32998a(c5244a.mo32785h());
        Class<? extends Date> cls = this.f18382a;
        if (cls == Date.class) {
            return m32998a;
        }
        if (cls == Timestamp.class) {
            return new Timestamp(m32998a.getTime());
        }
        if (cls != java.sql.Date.class) {
            throw new AssertionError();
        }
        return new java.sql.Date(m32998a.getTime());
    }

    /* renamed from: a */
    public final void mo32518a(C5247c c5247c, Date date) throws IOException {
        if (date == null) {
            c5247c.mo32745f();
            return;
        }
        synchronized (this.f18383b) {
            c5247c.mo32754b(this.f18383b.get(0).format(date));
        }
    }

    public final String toString() {
        DateFormat dateFormat = this.f18383b.get(0);
        if (dateFormat instanceof SimpleDateFormat) {
            return "DefaultDateTypeAdapter(" + ((SimpleDateFormat) dateFormat).toPattern() + ')';
        }
        return "DefaultDateTypeAdapter(" + dateFormat.getClass().getSimpleName() + ')';
    }
}
