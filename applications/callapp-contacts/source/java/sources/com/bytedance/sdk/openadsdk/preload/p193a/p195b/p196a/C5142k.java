package com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a;

import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v;
import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w;
import com.bytedance.sdk.openadsdk.preload.p193a.C5250f;
import com.bytedance.sdk.openadsdk.preload.p193a.C5270t;
import com.bytedance.sdk.openadsdk.preload.p193a.p199c.C5236a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.EnumC5246b;
import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.a.k */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/k.class */
public final class C5142k extends AbstractC5274v<Time> {

    /* renamed from: a */
    public static final AbstractC5276w f18433a = new AbstractC5276w() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.k.1
        @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w
        /* renamed from: a */
        public final <T> AbstractC5274v<T> mo32675a(C5250f c5250f, C5236a<T> c5236a) {
            if (c5236a.m32808a() == Time.class) {
                return new C5142k();
            }
            return null;
        }
    };

    /* renamed from: b */
    private final DateFormat f18434b = new SimpleDateFormat("hh:mm:ss a");

    /* renamed from: a */
    public final Time mo32517b(C5244a c5244a) throws IOException {
        synchronized (this) {
            if (c5244a.mo32787f() == EnumC5246b.NULL) {
                c5244a.mo32783j();
                return null;
            }
            try {
                return new Time(this.f18434b.parse(c5244a.mo32785h()).getTime());
            } catch (ParseException e) {
                throw new C5270t(e);
            }
        }
    }

    /* renamed from: a */
    public final void mo32518a(C5247c c5247c, Time time) throws IOException {
        synchronized (this) {
            c5247c.mo32754b(time == null ? null : this.f18434b.format((Date) time));
        }
    }
}
