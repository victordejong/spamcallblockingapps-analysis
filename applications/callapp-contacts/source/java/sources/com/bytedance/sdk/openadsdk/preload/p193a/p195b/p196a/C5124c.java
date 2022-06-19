package com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a;

import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v;
import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w;
import com.bytedance.sdk.openadsdk.preload.p193a.C5250f;
import com.bytedance.sdk.openadsdk.preload.p193a.C5270t;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5213e;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5225j;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a.p197a.C5121a;
import com.bytedance.sdk.openadsdk.preload.p193a.p199c.C5236a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.EnumC5246b;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.a.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/c.class */
public final class C5124c extends AbstractC5274v<Date> {

    /* renamed from: a */
    public static final AbstractC5276w f18391a = new AbstractC5276w() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.c.1
        @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w
        /* renamed from: a */
        public final <T> AbstractC5274v<T> mo32675a(C5250f c5250f, C5236a<T> c5236a) {
            if (c5236a.m32808a() == Date.class) {
                return new C5124c();
            }
            return null;
        }
    };

    /* renamed from: b */
    private final List<DateFormat> f18392b;

    public C5124c() {
        ArrayList arrayList = new ArrayList();
        this.f18392b = arrayList;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            arrayList.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (C5213e.m32838b()) {
            arrayList.add(C5225j.m32817a(2, 2));
        }
    }

    /* renamed from: a */
    private Date m32977a(String str) {
        synchronized (this) {
            for (DateFormat dateFormat : this.f18392b) {
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
        return m32977a(c5244a.mo32785h());
    }

    /* renamed from: a */
    public final void mo32518a(C5247c c5247c, Date date) throws IOException {
        synchronized (this) {
            if (date == null) {
                c5247c.mo32745f();
            } else {
                c5247c.mo32754b(this.f18392b.get(0).format(date));
            }
        }
    }
}
