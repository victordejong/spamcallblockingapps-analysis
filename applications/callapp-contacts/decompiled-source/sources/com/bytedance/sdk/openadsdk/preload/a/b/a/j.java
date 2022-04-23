package com.bytedance.sdk.openadsdk.preload.a.b.a;

import com.bytedance.sdk.openadsdk.preload.a.c.a;
import com.bytedance.sdk.openadsdk.preload.a.d.b;
import com.bytedance.sdk.openadsdk.preload.a.d.c;
import com.bytedance.sdk.openadsdk.preload.a.f;
import com.bytedance.sdk.openadsdk.preload.a.t;
import com.bytedance.sdk.openadsdk.preload.a.v;
import com.bytedance.sdk.openadsdk.preload.a.w;
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/j.class */
public final class j extends v<Date> {

    /* renamed from: a  reason: collision with root package name */
    public static final w f9946a = new w() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.j.1
        @Override // com.bytedance.sdk.openadsdk.preload.a.w
        public final <T> v<T> a(f fVar, a<T> aVar) {
            if (aVar.a() == Date.class) {
                return new j();
            }
            return null;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final DateFormat f9947b = new SimpleDateFormat("MMM d, yyyy");

    /* renamed from: a */
    public final Date b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
        synchronized (this) {
            if (aVar.f() == b.NULL) {
                aVar.j();
                return null;
            }
            try {
                return new Date(this.f9947b.parse(aVar.h()).getTime());
            } catch (ParseException e) {
                throw new t(e);
            }
        }
    }

    public final void a(c cVar, Date date) throws IOException {
        synchronized (this) {
            cVar.b(date == null ? null : this.f9947b.format((java.util.Date) date));
        }
    }
}
