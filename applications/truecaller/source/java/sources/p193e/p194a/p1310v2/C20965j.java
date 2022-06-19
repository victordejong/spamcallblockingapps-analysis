package p193e.p194a.p1310v2;

import android.content.Context;
import android.util.Base64;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.PendingResultUtil;
import com.google.android.gms.internal.safetynet.zzk;
import com.google.android.gms.internal.safetynet.zzx;
import com.google.android.gms.safetynet.SafetyNet;
import com.google.android.gms.safetynet.SafetyNetApi;
import com.google.android.gms.safetynet.SafetyNetClient;
import com.huawei.agconnect.config.AGConnectServicesConfig;
import com.huawei.hmf.tasks.Tasks;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.support.api.entity.safetydetect.SysIntegrityResp;
import com.huawei.hms.support.api.safetydetect.SafetyDetect;
import com.razorpay.AnalyticsConstants;
import com.truecaller.attestation.AttestationEngine;
import com.truecaller.attestation.C3447R;
import com.truecaller.log.AssertionUtil;
import e.m.a.h.a.c.h;
import e.m.a.h.a.c.j;
import e.m.a.h.a.h.g;
import e.m.a.h.a.h.r;
import java.nio.charset.Charset;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p1727n3.p1789g0.C26232y;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1310v2.AbstractC20968l;
import p193e.p194a.p1310v2.AbstractC20978o;
import q3.a.i0;
import s1.f0.b;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.v2.j */
/* loaded from: classes5-dex2jar.jar:e/a/v2/j.class */
public final class C20965j implements AbstractC20964i {

    /* renamed from: a */
    public final Context f58929a;

    /* renamed from: b */
    public final C20981p f58930b;

    /* renamed from: c */
    public final f f58931c;

    @e(c = "com.truecaller.attestation.AttestationProviderImpl$attest$2", f = "AttestationProvider.kt", l = {41}, m = "invokeSuspend")
    /* renamed from: e.a.v2.j$a */
    /* loaded from: classes5-dex2jar.jar:e/a/v2/j$a.class */
    public static final class C20966a extends i implements p<i0, d<? super AbstractC20978o<String>>, Object> {

        /* renamed from: e */
        public int f58932e;

        /* renamed from: g */
        public final /* synthetic */ AttestationEngine f58934g;

        /* renamed from: h */
        public final /* synthetic */ String f58935h;

        /* renamed from: i */
        public final /* synthetic */ boolean f58936i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20966a(AttestationEngine attestationEngine, String str, boolean z, d dVar) {
            super(2, dVar);
            C20965j.this = r5;
            this.f58934g = attestationEngine;
            this.f58935h = str;
            this.f58936i = z;
        }

        /* renamed from: i */
        public final d<s> m10451i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C20966a(this.f58934g, this.f58935h, this.f58936i, dVar);
        }

        /* renamed from: k */
        public final Object m10450k(Object obj, Object obj2) {
            return m10451i(obj, (d) obj2).m10449s(s.a);
        }

        /* renamed from: s */
        public final Object m10449s(Object obj) {
            AbstractC20978o.C20979a c20979a;
            e.m.a.h.a.c.i iVar;
            Integer num;
            AbstractC20968l.AbstractC20969a.C20972c c20972c = AbstractC20968l.AbstractC20969a.C20972c.f58941b;
            a aVar = a.a;
            int i = this.f58932e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                int ordinal = this.f58934g.ordinal();
                if (ordinal != 0) {
                    Integer num2 = null;
                    if (ordinal != 1) {
                        if (ordinal != 2) {
                            throw new s1.i();
                        }
                        byte[] m10453a = C20965j.m10453a(C20965j.this, this.f58935h, this.f58936i);
                        if (m10453a != null) {
                            C20965j c20965j = C20965j.this;
                            Objects.requireNonNull(c20965j);
                            try {
                                Object await = Tasks.await(SafetyDetect.getClient(c20965j.f58929a).sysIntegrity(m10453a, AGConnectServicesConfig.fromContext(c20965j.f58929a).getString("client/app_id")));
                                l.d(await, "HMSTasks.await(\n        …nce, appId)\n            )");
                                String result = ((SysIntegrityResp) await).getResult();
                                if (result == null) {
                                    c20979a = new AbstractC20978o.C20979a(new AbstractC20968l.AbstractC20969a.C20973d(null, 1));
                                } else {
                                    c20979a = new AbstractC20978o.C20980b(result);
                                }
                            } catch (Exception e) {
                                if (e instanceof ApiException) {
                                    num = Integer.valueOf(((ApiException) e).getStatusCode());
                                } else {
                                    num = null;
                                    if (e.getCause() instanceof ApiException) {
                                        Throwable cause = e.getCause();
                                        Objects.requireNonNull(cause, "null cannot be cast to non-null type com.huawei.hms.common.ApiException");
                                        num = Integer.valueOf(((ApiException) cause).getStatusCode());
                                    }
                                }
                                c20979a = new AbstractC20978o.C20979a(new AbstractC20968l.AbstractC20969a.C20973d(num));
                            }
                        } else {
                            c20979a = new AbstractC20978o.C20979a(c20972c);
                        }
                        return c20979a;
                    }
                    byte[] m10453a2 = C20965j.m10453a(C20965j.this, this.f58935h, this.f58936i);
                    if (m10453a2 != null) {
                        C20965j c20965j2 = C20965j.this;
                        Objects.requireNonNull(c20965j2);
                        try {
                            Context context = c20965j2.f58929a;
                            Api.ClientKey<zzx> clientKey = SafetyNet.f6458a;
                            Object m38514a = com.google.android.gms.tasks.Tasks.m38514a(PendingResultUtil.m38908a(zzk.zza(new SafetyNetClient(context).asGoogleApiClient(), m10453a2, c20965j2.f58929a.getString(C3447R.string.google_api_key)), new SafetyNetApi.AttestationResponse()));
                            l.d(m38514a, "GMSTasks.await(\n        …e_api_key))\n            )");
                            String jwsResult = ((SafetyNetApi.AttestationResponse) m38514a).f5719a.getJwsResult();
                            if (jwsResult == null) {
                                c20979a = new AbstractC20978o.C20979a(new AbstractC20968l.AbstractC20969a.C20973d(null, 1));
                            } else {
                                c20979a = new AbstractC20978o.C20980b(jwsResult);
                            }
                        } catch (Exception e2) {
                            if (e2 instanceof com.google.android.gms.common.api.ApiException) {
                                num2 = Integer.valueOf(((com.google.android.gms.common.api.ApiException) e2).f5693a.f5728b);
                            } else if (e2.getCause() instanceof com.google.android.gms.common.api.ApiException) {
                                Throwable cause2 = e2.getCause();
                                Objects.requireNonNull(cause2, "null cannot be cast to non-null type com.google.android.gms.common.api.ApiException");
                                num2 = Integer.valueOf(((com.google.android.gms.common.api.ApiException) cause2).f5693a.f5728b);
                            }
                            c20979a = new AbstractC20978o.C20979a(new AbstractC20968l.AbstractC20969a.C20973d(num2));
                        }
                    } else {
                        c20979a = new AbstractC20978o.C20979a(c20972c);
                    }
                    return c20979a;
                    return c20979a;
                }
                C20965j c20965j3 = C20965j.this;
                String str = this.f58935h;
                this.f58932e = 1;
                Objects.requireNonNull(c20965j3);
                s1.w.i iVar2 = new s1.w.i(C25225a.m3844s1(this));
                Objects.requireNonNull(str, "Null nonce");
                e.m.a.h.a.c.f fVar = new e.m.a.h.a.c.f(str);
                Context context2 = c20965j3.f58929a;
                synchronized (j.class) {
                    try {
                        if (j.a == null) {
                            h hVar = new h();
                            Context applicationContext = context2.getApplicationContext();
                            if (applicationContext != null) {
                                context2 = applicationContext;
                            }
                            hVar.a = context2;
                            C26232y.m2461G2(context2, Context.class);
                            j.a = new e.m.a.h.a.c.i(hVar.a);
                        }
                        iVar = j.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                r a = ((e.m.a.h.a.c.a) iVar.d.zza()).a(fVar);
                C20967k c20967k = new C20967k(iVar2);
                Objects.requireNonNull(a);
                a.b.a(new g(e.m.a.h.a.h.e.a, c20967k));
                a.h();
                Object a2 = iVar2.a();
                if (a2 == aVar) {
                    l.e(this, "frame");
                }
                obj = a2;
                if (a2 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            c20979a = (AbstractC20978o) obj;
            return c20979a;
        }
    }

    @Inject
    public C20965j(Context context, C20981p c20981p, @Named("IO") f fVar) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(c20981p, "utils");
        l.e(fVar, "ioContext");
        this.f58929a = context;
        this.f58930b = c20981p;
        this.f58931c = fVar;
    }

    /* renamed from: a */
    public static final byte[] m10453a(C20965j c20965j, String str, boolean z) {
        byte[] bArr;
        Objects.requireNonNull(c20965j);
        if (z) {
            Charset charset = b.a;
            Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
            bArr = str.getBytes(charset);
            l.d(bArr, "(this as java.lang.String).getBytes(charset)");
        } else {
            try {
                Objects.requireNonNull(c20965j.f58930b);
                l.e(str, "string");
                bArr = Base64.decode(str, 0);
                l.d(bArr, "Base64.decode(string, Base64.DEFAULT)");
            } catch (IllegalArgumentException e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
                bArr = null;
            }
        }
        return bArr;
    }

    /* renamed from: b */
    public Object m10452b(AttestationEngine attestationEngine, String str, boolean z, d<? super AbstractC20978o<String>> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f58931c, new C20966a(attestationEngine, str, z, null), dVar);
    }
}
