package com.bytedance.sdk.openadsdk.preload.a.b.a;

import com.bytedance.sdk.openadsdk.preload.a.c.a;
import com.bytedance.sdk.openadsdk.preload.a.d.b;
import com.bytedance.sdk.openadsdk.preload.a.d.c;
import com.bytedance.sdk.openadsdk.preload.a.f;
import com.bytedance.sdk.openadsdk.preload.a.t;
import com.bytedance.sdk.openadsdk.preload.a.v;
import com.bytedance.sdk.openadsdk.preload.a.w;
import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/k.class */
public final class k extends v<Time> {

    /* renamed from: a  reason: collision with root package name */
    public static final w f9948a = new w() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.k.1
        @Override // com.bytedance.sdk.openadsdk.preload.a.w
        public final <T> v<T> a(f fVar, a<T> aVar) {
            if (aVar.a() == Time.class) {
                return new k();
            }
            return null;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final DateFormat f9949b = new SimpleDateFormat("hh:mm:ss a");

    /* renamed from: a */
    public final Time b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
        synchronized (this) {
            if (aVar.f() == b.NULL) {
                aVar.j();
                return null;
            }
            try {
                return new Time(this.f9949b.parse(aVar.h()).getTime());
            } catch (ParseException e) {
                throw new t(e);
            }
        }
    }

    public final void a(c cVar, Time time) throws IOException {
        synchronized (this) {
            cVar.b(time == null ? null : this.f9949b.format((Date) time));
        }
    }
}
