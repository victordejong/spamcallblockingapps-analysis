package com.bytedance.sdk.openadsdk.preload.a.b.a;

import com.bytedance.sdk.openadsdk.preload.a.b.e;
import com.bytedance.sdk.openadsdk.preload.a.b.j;
import com.bytedance.sdk.openadsdk.preload.a.c.a;
import com.bytedance.sdk.openadsdk.preload.a.d.b;
import com.bytedance.sdk.openadsdk.preload.a.f;
import com.bytedance.sdk.openadsdk.preload.a.t;
import com.bytedance.sdk.openadsdk.preload.a.v;
import com.bytedance.sdk.openadsdk.preload.a.w;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/c.class */
public final class c extends v<Date> {

    /* renamed from: a  reason: collision with root package name */
    public static final w f9917a = new w() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.c.1
        @Override // com.bytedance.sdk.openadsdk.preload.a.w
        public final <T> v<T> a(f fVar, a<T> aVar) {
            if (aVar.a() == Date.class) {
                return new c();
            }
            return null;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final List<DateFormat> f9918b;

    public c() {
        ArrayList arrayList = new ArrayList();
        this.f9918b = arrayList;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            arrayList.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (e.b()) {
            arrayList.add(j.a(2, 2));
        }
    }

    private Date a(String str) {
        synchronized (this) {
            for (DateFormat dateFormat : this.f9918b) {
                try {
                    return dateFormat.parse(str);
                } catch (ParseException e) {
                }
            }
            try {
                return com.bytedance.sdk.openadsdk.preload.a.b.a.a.a.a(str, new ParsePosition(0));
            } catch (ParseException e2) {
                throw new t(str, e2);
            }
        }
    }

    /* renamed from: a */
    public final Date b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
        if (aVar.f() != b.NULL) {
            return a(aVar.h());
        }
        aVar.j();
        return null;
    }

    public final void a(com.bytedance.sdk.openadsdk.preload.a.d.c cVar, Date date) throws IOException {
        synchronized (this) {
            if (date == null) {
                cVar.f();
            } else {
                cVar.b(this.f9918b.get(0).format(date));
            }
        }
    }
}
