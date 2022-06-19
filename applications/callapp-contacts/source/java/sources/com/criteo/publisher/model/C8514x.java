package com.criteo.publisher.model;

import android.content.Context;
import com.criteo.publisher.p249i.C8350c;
import com.criteo.publisher.p256m0.C8424b;
import com.criteo.publisher.p256m0.C8433g;
/* renamed from: com.criteo.publisher.model.x */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/x.class */
public class C8514x {

    /* renamed from: a */
    private final Context f30370a;

    /* renamed from: b */
    private final String f30371b;

    /* renamed from: c */
    private final C8433g f30372c;

    /* renamed from: d */
    private final C8350c f30373d;

    /* renamed from: e */
    private final C8424b f30374e;

    public C8514x(Context context, String str, C8433g c8433g, C8350c c8350c, C8424b c8424b) {
        this.f30370a = context;
        this.f30371b = str;
        this.f30372c = c8433g;
        this.f30373d = c8350c;
        this.f30374e = c8424b;
    }

    /* renamed from: a */
    public AbstractC8513w m25499a() {
        return AbstractC8513w.m25505a(this.f30371b, this.f30370a.getPackageName(), C8433g.m25694a(), this.f30373d.m25808a().m25812a(), this.f30374e.m25707a().f30186a);
    }
}
