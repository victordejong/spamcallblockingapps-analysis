package com.truecaller.bizmon.newBusiness.workers;

import android.content.Context;
import android.net.Uri;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.background_work.TrackedWorker;
import java.io.File;
import java.io.IOException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1834m0.C26829f;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p294b.p295a.p296a.p301b.p303d.AbstractC7602a;
import p193e.p194a.p294b.p295a.p296a.p301b.p303d.C7613b;
import p193e.p194a.p294b.p295a.p324g.C7805e;
import p193e.p194a.p294b.p295a.p329i.p330b.C7837a;
import p193e.p194a.p294b.p295a.p329i.p330b.C7838b;
import p193e.p194a.p372b0.p430q.C8612s;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.i0;
import q3.a.t0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010#\u001a\u00020\"\u0012\u0006\u0010%\u001a\u00020$¢\u0006\u0004\b&\u0010'J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0017¢\u0006\u0004\b\u0006\u0010\u0007R\"\u0010\u000f\u001a\u00020\b8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0017\u001a\u00020\u00108\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R(\u0010!\u001a\u00020\u00188\u0016@\u0016X\u0097.¢\u0006\u0018\n\u0004\b\u0019\u0010\u001a\u0012\u0004\b\u001f\u0010 \u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006("}, d2 = {"Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker;", "Lcom/truecaller/background_work/TrackedWorker;", "", "q", "()Z", "Landroidx/work/ListenableWorker$a;", "r", "()Landroidx/work/ListenableWorker$a;", "Le/a/b/a/a/b/d/b;", "a", "Le/a/b/a/a/b/d/b;", "getBizProfileRemoteDataSource", "()Le/a/b/a/a/b/d/b;", "setBizProfileRemoteDataSource", "(Le/a/b/a/a/b/d/b;)V", "bizProfileRemoteDataSource", "Le/a/q2/a;", C22021b.f61237c, "Le/a/q2/a;", "n", "()Le/a/q2/a;", "setAnalytics", "(Le/a/q2/a;)V", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Le/a/u3/g;", AbstractC2405c.f7629a, "Le/a/u3/g;", "o", "()Le/a/u3/g;", "setFeaturesRegistry", "(Le/a/u3/g;)V", "getFeaturesRegistry$annotations", "()V", "featuresRegistry", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/workers/ImageUploadWorker.class */
public final class ImageUploadWorker extends TrackedWorker {
    @Inject

    /* renamed from: a */
    public C7613b f10368a = new C7613b();
    @Inject

    /* renamed from: b */
    public AbstractC19462a f10369b;
    @Inject

    /* renamed from: c */
    public C20592g f10370c;

    @e(c = "com.truecaller.bizmon.newBusiness.workers.ImageUploadWorker$work$compressedImagePath$1$1", f = "ImageUploadWorker.kt", l = {60}, m = "invokeSuspend")
    /* renamed from: com.truecaller.bizmon.newBusiness.workers.ImageUploadWorker$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$a.class */
    public static final class C3514a extends i implements p<i0, d<? super String>, Object> {

        /* renamed from: e */
        public int f10371e;

        /* renamed from: f */
        public final /* synthetic */ File f10372f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3514a(File file, d dVar) {
            super(2, dVar);
            this.f10372f = file;
        }

        /* renamed from: i */
        public final d<s> m35843i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C3514a(this.f10372f, dVar);
        }

        /* renamed from: k */
        public final Object m35842k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C3514a(this.f10372f, dVar).m35841s(s.a);
        }

        /* renamed from: s */
        public final Object m35841s(Object obj) {
            a aVar = a.a;
            int i = this.f10371e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                File file = this.f10372f;
                this.f10371e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(t0.d, new C7838b(file, new C7837a(800, 612, 80, null, 8), null), this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return ((File) obj).getPath();
        }
    }

    @e(c = "com.truecaller.bizmon.newBusiness.workers.ImageUploadWorker$work$imgUploadedUrl$1", f = "ImageUploadWorker.kt", l = {67, 68}, m = "invokeSuspend")
    /* renamed from: com.truecaller.bizmon.newBusiness.workers.ImageUploadWorker$b */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$b.class */
    public static final class C3515b extends i implements p<i0, d<? super AbstractC7602a<String>>, Object> {

        /* renamed from: e */
        public int f10373e;

        /* renamed from: g */
        public final /* synthetic */ c0 f10375g;

        /* renamed from: h */
        public final /* synthetic */ c0 f10376h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3515b(c0 c0Var, c0 c0Var2, d dVar) {
            super(2, dVar);
            ImageUploadWorker.this = r5;
            this.f10375g = c0Var;
            this.f10376h = c0Var2;
        }

        /* renamed from: i */
        public final d<s> m35840i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C3515b(this.f10375g, this.f10376h, dVar);
        }

        /* renamed from: k */
        public final Object m35839k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C3515b(this.f10375g, this.f10376h, dVar).m35838s(s.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:39:0x0148, code lost:
            if (r7 != null) goto L41;
         */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m35838s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 369
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.truecaller.bizmon.newBusiness.workers.ImageUploadWorker.C3515b.m35838s(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageUploadWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
        C7805e c7805e = (C7805e) C18334g0.m15219l(context);
        AbstractC19462a mo12776C4 = c7805e.f24300h.mo12776C4();
        Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
        this.f10369b = mo12776C4;
        C20592g mo12343i5 = c7805e.f24288b.mo12343i5();
        Objects.requireNonNull(mo12343i5, "Cannot return null from a non-@Nullable component method");
        this.f10370c = mo12343i5;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: n */
    public AbstractC19462a mo34359n() {
        AbstractC19462a abstractC19462a = this.f10369b;
        if (abstractC19462a != null) {
            return abstractC19462a;
        }
        l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        throw null;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: o */
    public C20592g mo34358o() {
        C20592g c20592g = this.f10370c;
        if (c20592g != null) {
            return c20592g;
        }
        l.l("featuresRegistry");
        throw null;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: q */
    public boolean mo34357q() {
        return true;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: r */
    public ListenableWorker.AbstractC0414a mo34356r() {
        Object obj;
        ListenableWorker.AbstractC0414a.C0417c c0417c;
        c0 c0Var = new c0();
        ImageType m35844a = ImageType.Companion.m35844a(getInputData().m1304c("keyImageType", ImageType.GALLERY.getValue()));
        if (m35844a == null) {
            ListenableWorker.AbstractC0414a.C0415a c0415a = new ListenableWorker.AbstractC0414a.C0415a();
            l.d(c0415a, "Result.failure()");
            return c0415a;
        }
        c0Var.a = m35844a;
        c0 c0Var2 = new c0();
        Uri m28217e = C8612s.m28217e(getApplicationContext());
        if (m28217e != null) {
            l.e(m28217e, "<this>");
            if (!l.a(m28217e.getScheme(), "file")) {
                throw new IllegalArgumentException(l.j("Uri lacks 'file' scheme: ", m28217e).toString());
            }
            String path = m28217e.getPath();
            if (path == null) {
                throw new IllegalArgumentException(l.j("Uri path is null: ", m28217e).toString());
            }
            String str = (String) s1.a.a.a.v0.f.d.c3((f) null, new C3514a(new File(path), null), 1, (Object) null);
            if (str != null) {
                c0Var2.a = str;
                try {
                    obj = (AbstractC7602a) s1.a.a.a.v0.f.d.c3((f) null, new C3515b(c0Var, c0Var2, null), 1, (Object) null);
                } catch (Exception e) {
                    if (!(e instanceof UnknownHostException) && !(e instanceof IOException)) {
                        C10480a.m26061I1(e);
                        obj = new AbstractC7602a.AbstractC7604b.C7610f(0, e.getMessage());
                    } else {
                        obj = new AbstractC7602a.AbstractC7604b.C7608d(601);
                    }
                }
                if (obj instanceof AbstractC7602a.C7612c) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("imageUploadedUrl", (String) ((AbstractC7602a.C7612c) obj).f23953a);
                    C26829f c26829f = new C26829f(hashMap);
                    C26829f.m1300g(c26829f);
                    ListenableWorker.AbstractC0414a.C0417c c0417c2 = new ListenableWorker.AbstractC0414a.C0417c(c26829f);
                    l.d(c0417c2, "Result.success(Data.Buil…ploadedUrl.body).build())");
                    c0417c = c0417c2;
                } else if (!(obj instanceof AbstractC7602a.AbstractC7604b)) {
                    ListenableWorker.AbstractC0414a.C0415a c0415a2 = new ListenableWorker.AbstractC0414a.C0415a();
                    l.d(c0415a2, "Result.failure()");
                    return c0415a2;
                } else {
                    HashMap hashMap2 = new HashMap();
                    Integer m15265H = C18334g0.m15265H((AbstractC7602a.AbstractC7604b) obj);
                    String str2 = null;
                    if (m15265H != null) {
                        str2 = String.valueOf(m15265H.intValue());
                    }
                    hashMap2.put("errorStringResInt", str2);
                    C26829f c26829f2 = new C26829f(hashMap2);
                    C26829f.m1300g(c26829f2);
                    ListenableWorker.AbstractC0414a.C0415a c0415a3 = new ListenableWorker.AbstractC0414a.C0415a(c26829f2);
                    l.d(c0415a3, "Result.failure(Data.Buil…d()?.toString()).build())");
                    c0417c = c0415a3;
                }
                return c0417c;
            }
        }
        ListenableWorker.AbstractC0414a.C0415a c0415a4 = new ListenableWorker.AbstractC0414a.C0415a();
        l.d(c0415a4, "Result.failure()");
        return c0415a4;
    }
}
