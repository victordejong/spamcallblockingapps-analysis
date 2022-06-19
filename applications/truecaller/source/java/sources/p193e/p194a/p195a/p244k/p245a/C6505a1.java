package p193e.p194a.p195a.p244k.p245a;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import com.google.protobuf.GeneratedMessageLite;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.api.services.messenger.p138v1.MediaHandles;
import com.truecaller.log.AssertionUtil;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.C20458b;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.u.i;
import s1.z.c.l;
import u3.c0;
import u3.d0;
import u3.e0;
import u3.g0;
import u3.j0;
import u3.k0;
import v3.g;
/* renamed from: e.a.a.k.a.a1 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a1.class */
public final class C6505a1 implements AbstractC6653z0 {

    /* renamed from: a */
    public final AbstractC6625s1 f21538a;

    /* renamed from: b */
    public final ContentResolver f21539b;

    /* renamed from: c */
    public final e0 f21540c;

    /* renamed from: d */
    public final Context f21541d;

    /* renamed from: e.a.a.k.a.a1$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a1$a.class */
    public static final class C6506a extends j0 {

        /* renamed from: b */
        public final ContentResolver f21542b;

        /* renamed from: c */
        public final String f21543c;

        /* renamed from: d */
        public final Uri f21544d;

        public C6506a(ContentResolver contentResolver, String str, Uri uri) {
            l.e(contentResolver, "resolver");
            l.e(str, "type");
            l.e(uri, "uri");
            this.f21542b = contentResolver;
            this.f21543c = str;
            this.f21544d = uri;
        }

        /* JADX WARN: Type inference failed for: r0v11, types: [long] */
        /* renamed from: a */
        public long m30824a() {
            char c;
            try {
                InputStream openInputStream = this.f21542b.openInputStream(this.f21544d);
                c = 65535;
                if (openInputStream != null) {
                    c = openInputStream.available();
                }
            } catch (IOException e) {
                c = 65535;
            }
            return c;
        }

        /* renamed from: b */
        public c0 m30823b() {
            c0.a aVar = c0.f;
            return c0.a.b(this.f21543c);
        }

        /* renamed from: c */
        public void m30822c(g gVar) {
            Throwable th;
            l.e(gVar, "sink");
            InputStream inputStream = null;
            try {
                InputStream openInputStream = this.f21542b.openInputStream(this.f21544d);
                if (openInputStream == null) {
                    throw new IOException();
                }
                try {
                    C19291g.m13574X1(openInputStream, gVar.j2());
                    try {
                        openInputStream.close();
                    } catch (IOException e) {
                    }
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = openInputStream;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e2) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    @Inject
    public C6505a1(AbstractC6625s1 abstractC6625s1, ContentResolver contentResolver, @Named("ImClient") e0 e0Var, Context context) {
        l.e(abstractC6625s1, "stubManager");
        l.e(contentResolver, "contentResolver");
        l.e(e0Var, "httpClient");
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f21538a = abstractC6625s1;
        this.f21539b = contentResolver;
        this.f21540c = e0Var;
        this.f21541d = context;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6653z0
    /* renamed from: a */
    public C6540d2 mo30600a(Uri uri) {
        C20458b.C20459a mo20911c;
        C6540d2 c6540d2;
        Integer valueOf = Integer.valueOf((int) C2752R.string.NewImGroupImageUploadError);
        if (uri != null) {
            mo20911c = this.f21538a.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
            C20458b.C20459a c20459a = mo20911c;
            if (c20459a == null) {
                return new C6540d2(false, null, valueOf, 2);
            }
            boolean z = TrueApp.f9585r;
            AbstractApplicationC8442a m28551L = AbstractApplicationC8442a.m28551L();
            l.d(m28551L, "getAppContext()");
            Long m13697G = C19286f.m13697G(uri, m28551L);
            if (m13697G == null) {
                return new C6540d2(false, null, Integer.valueOf((int) C2752R.string.NewImGroupImageUploadSizeError), 2);
            }
            long longValue = m13697G.longValue();
            String m13670i = C19286f.m13670i(uri, this.f21541d);
            if (m13670i == null) {
                return new C6540d2(false, null, Integer.valueOf((int) C2752R.string.NewImGroupImageUploadTypeError), 2);
            }
            try {
                MediaHandles.Request.C3079a newBuilder = MediaHandles.Request.newBuilder();
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setContentLength(longValue);
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setMimeType(m13670i);
                MediaHandles.Request.UploadType uploadType = MediaHandles.Request.UploadType.AVATAR;
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setUploadType(uploadType);
                MediaHandles.Response m11115j = c20459a.m11115j((MediaHandles.Request) newBuilder.build());
                l.d(m11115j, "stub.getMediaHandles(request)");
                Map<String, String> formFieldsMap = m11115j.getFormFieldsMap();
                l.d(formFieldsMap, "result.formFieldsMap");
                String uploadUrl = m11115j.getUploadUrl();
                l.d(uploadUrl, "result.uploadUrl");
                c6540d2 = m30825b(formFieldsMap, uploadUrl, m13670i, uri) ? new C6540d2(true, m11115j.getDownloadUrl(), null, 4) : new C6540d2(false, null, valueOf, 2);
            } catch (IOException e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
                c6540d2 = new C6540d2(false, null, valueOf, 2);
            } catch (RuntimeException e2) {
                c6540d2 = new C6540d2(false, null, valueOf, 2);
            }
            return c6540d2;
        }
        return new C6540d2(false, null, valueOf, 2);
    }

    /* renamed from: b */
    public final boolean m30825b(Map<String, String> map, String str, String str2, Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        l.d(pathSegments, "uri.pathSegments");
        String str3 = (String) i.Q(pathSegments);
        boolean z = true;
        d0.a aVar = new d0.a((String) null, 1);
        aVar.e(d0.h);
        for (Map.Entry<String, String> entry : map.entrySet()) {
            aVar.a(entry.getKey(), entry.getValue());
        }
        aVar.b("file", str3, new C6506a(this.f21539b, str2, uri));
        d0 d = aVar.d();
        g0.a aVar2 = new g0.a();
        aVar2.i(str);
        aVar2.h(Object.class, str3);
        aVar2.f(d);
        try {
            k0 execute = this.f21540c.a(aVar2.b()).execute();
            if (!execute.j()) {
                z = false;
            }
            C25225a.m4016G(execute, null);
            return z;
        } catch (IOException e) {
            C10480a.m26061I1(e);
            return false;
        }
    }
}
