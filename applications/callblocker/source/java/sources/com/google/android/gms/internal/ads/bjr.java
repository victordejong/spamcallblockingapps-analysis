package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bjr.class */
public final class bjr extends bjp {

    /* renamed from: f */
    private static final Pattern f11395f = Pattern.compile("Received error HTTP response code: (.*)");

    /* renamed from: a */
    private final bix f11396a;

    /* renamed from: b */
    private final crs f11397b;

    /* renamed from: c */
    private final chh f11398c;

    /* renamed from: d */
    private final ScheduledExecutorService f11399d;

    /* renamed from: e */
    private final bmg f11400e;

    public bjr(asc ascVar, chh chhVar, bix bixVar, crs crsVar, ScheduledExecutorService scheduledExecutorService, bmg bmgVar) {
        super(ascVar);
        this.f11398c = chhVar;
        this.f11396a = bixVar;
        this.f11397b = crsVar;
        this.f11399d = scheduledExecutorService;
        this.f11400e = bmgVar;
    }

    @Override // com.google.android.gms.internal.ads.bjp
    /* renamed from: a */
    public final crt<chd> mo11843a(C3423pw c3423pw) {
        crt<chd> m10782a = crg.m10782a(this.f11396a.m11867a(c3423pw), new cqt(this) { // from class: com.google.android.gms.internal.ads.bju

            /* renamed from: a */
            private final bjr f11403a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11403a = this;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return this.f11403a.m11842a((InputStream) obj);
            }
        }, this.f11397b);
        if (((Boolean) dyx.m8158e().m7876a(edi.f16496cw)).booleanValue()) {
            m10782a = crg.m10780a(crg.m10784a(m10782a, ((Integer) dyx.m8158e().m7876a(edi.f16497cx)).intValue(), TimeUnit.SECONDS, this.f11399d), TimeoutException.class, bjt.f11402a, C3650yg.f17647f);
        }
        crg.m10781a(m10782a, new bjw(this), C3650yg.f17647f);
        return m10782a;
    }

    /* renamed from: a */
    public final /* synthetic */ crt m11842a(InputStream inputStream) {
        return crg.m10778a(new chd(new cgx(this.f11398c), cha.m11360a(new InputStreamReader(inputStream))));
    }
}
