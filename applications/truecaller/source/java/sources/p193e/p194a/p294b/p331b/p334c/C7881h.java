package p193e.p194a.p294b.p331b.p334c;

import android.content.Context;
import android.net.Uri;
import android.widget.Toast;
import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.p152ui.profile.CreateBusinessProfileActivity;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p430q.C8612s;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
@e(c = "com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$downloadLogoLocally$1", f = "CreateBusinessProfileActivity.kt", l = {527, 533}, m = "invokeSuspend")
/* renamed from: e.a.b.b.c.h */
/* loaded from: classes6-dex2jar.jar:e/a/b/b/c/h.class */
public final class C7881h extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f24456e;

    /* renamed from: f */
    public Object f24457f;

    /* renamed from: g */
    public int f24458g;

    /* renamed from: h */
    public final /* synthetic */ CreateBusinessProfileActivity f24459h;

    /* renamed from: i */
    public final /* synthetic */ Uri f24460i;

    @e(c = "com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$downloadLogoLocally$1$2", f = "CreateBusinessProfileActivity.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.b.b.c.h$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/b/c/h$a.class */
    public static final class C7882a extends i implements p<i0, d<? super s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7882a(d dVar) {
            super(2, dVar);
            C7881h.this = r5;
        }

        /* renamed from: i */
        public final d<s> m29191i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7882a(dVar);
        }

        /* JADX WARN: Type inference failed for: r0v10, types: [android.content.Context, java.lang.Object, com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity] */
        /* renamed from: k */
        public final Object m29190k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C7881h c7881h = C7881h.this;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            ?? r0 = c7881h.f24459h;
            CreateBusinessProfileActivity.C3532b c3532b = CreateBusinessProfileActivity.f10399r;
            Objects.requireNonNull(r0);
            Toast.makeText((Context) r0, C3478R.string.BusinessProfile_ErrorOpeningLogo, 0).show();
            return sVar;
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [android.content.Context, java.lang.Object, com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity] */
        /* renamed from: s */
        public final Object m29189s(Object obj) {
            C25225a.m3932a3(obj);
            ?? r0 = C7881h.this.f24459h;
            CreateBusinessProfileActivity.C3532b c3532b = CreateBusinessProfileActivity.f10399r;
            Objects.requireNonNull(r0);
            Toast.makeText((Context) r0, C3478R.string.BusinessProfile_ErrorOpeningLogo, 0).show();
            return s.a;
        }
    }

    @e(c = "com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$downloadLogoLocally$1$1$1$1", f = "CreateBusinessProfileActivity.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.b.b.c.h$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/b/c/h$b.class */
    public static final class C7883b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public final /* synthetic */ InputStream f24462e;

        /* renamed from: f */
        public final /* synthetic */ C7881h f24463f;

        /* renamed from: g */
        public final /* synthetic */ c0 f24464g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7883b(d dVar, InputStream inputStream, C7881h c7881h, c0 c0Var) {
            super(2, dVar);
            this.f24462e = inputStream;
            this.f24463f = c7881h;
            this.f24464g = c0Var;
        }

        /* renamed from: i */
        public final d<s> m29188i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7883b(dVar, this.f24462e, this.f24463f, this.f24464g);
        }

        /* renamed from: k */
        public final Object m29187k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C7881h c7881h = this.f24463f;
            c0 c0Var = this.f24464g;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            C7893q m35829qa = c7881h.f24459h.m35829qa();
            String uri = ((Uri) c0Var.a).toString();
            l.d(uri, "tempCaptureUri.toString()");
            Objects.requireNonNull(m35829qa);
            l.e(uri, "logo");
            AbstractC7892p abstractC7892p = (AbstractC7892p) m35829qa.f57683a;
            if (abstractC7892p != null) {
                abstractC7892p.mo29153l2(uri);
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m29186s(Object obj) {
            C25225a.m3932a3(obj);
            C7893q m35829qa = this.f24463f.f24459h.m35829qa();
            String uri = ((Uri) this.f24464g.a).toString();
            l.d(uri, "tempCaptureUri.toString()");
            Objects.requireNonNull(m35829qa);
            l.e(uri, "logo");
            AbstractC7892p abstractC7892p = (AbstractC7892p) m35829qa.f57683a;
            if (abstractC7892p != null) {
                abstractC7892p.mo29153l2(uri);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7881h(CreateBusinessProfileActivity createBusinessProfileActivity, Uri uri, d dVar) {
        super(2, dVar);
        this.f24459h = createBusinessProfileActivity;
        this.f24460i = uri;
    }

    /* renamed from: i */
    public final d<s> m29194i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C7881h(this.f24459h, this.f24460i, dVar);
    }

    /* renamed from: k */
    public final Object m29193k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C7881h(this.f24459h, this.f24460i, dVar).m29192s(s.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 11, insn: 0x00fa: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r11 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:32:0x00fa */
    /* JADX WARN: Type inference failed for: r0v28, types: [android.app.Activity, com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity] */
    /* JADX WARN: Type inference failed for: r0v33, types: [android.app.Activity, com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity] */
    /* JADX WARN: Type inference failed for: r0v62, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v9, types: [android.content.Context, com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity] */
    /* renamed from: s */
    public final Object m29192s(Object obj) {
        Throwable th;
        InputStream inputStream;
        Throwable th2;
        OutputStream outputStream;
        InputStream inputStream2;
        a aVar = a.a;
        int i = this.f24458g;
        try {
            if (i == 0) {
                C25225a.m3932a3(obj);
                try {
                    c0 c0Var = new c0();
                    c0Var.a = C8612s.m28215g(this.f24459h);
                    inputStream2 = this.f24459h.getContentResolver().openInputStream(this.f24460i);
                    if (inputStream2 != null) {
                        try {
                            OutputStream openOutputStream = this.f24459h.getContentResolver().openOutputStream((Uri) c0Var.a);
                            inputStream = inputStream2;
                            if (openOutputStream != null) {
                                try {
                                    l.d(inputStream2, "input");
                                    l.d(openOutputStream, "output");
                                    C25225a.m3960U(inputStream2, openOutputStream, 0, 2);
                                    f m35828ra = this.f24459h.m35828ra();
                                    C7883b c7883b = new C7883b(null, inputStream2, this, c0Var);
                                    this.f24456e = inputStream2;
                                    this.f24457f = openOutputStream;
                                    this.f24458g = 1;
                                    if (s1.a.a.a.v0.f.d.a4(m35828ra, c7883b, this) == aVar) {
                                        return aVar;
                                    }
                                    outputStream = openOutputStream;
                                } catch (Throwable th3) {
                                    th2 = th3;
                                    throw th2;
                                }
                            }
                            C25225a.m4016G(inputStream, null);
                        } catch (Throwable th4) {
                            th = th4;
                            throw th;
                        }
                    }
                } catch (IOException e) {
                    f m35828ra2 = this.f24459h.m35828ra();
                    C7882a c7882a = new C7882a(null);
                    this.f24456e = null;
                    this.f24457f = null;
                    this.f24458g = 2;
                    if (s1.a.a.a.v0.f.d.a4(m35828ra2, c7882a, this) == aVar) {
                        return aVar;
                    }
                }
                return s.a;
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                return s.a;
            } else {
                outputStream = (Closeable) this.f24457f;
                ?? r0 = (Closeable) this.f24456e;
                try {
                    C25225a.m3932a3(obj);
                    inputStream2 = r0;
                } catch (Throwable th5) {
                    th2 = th5;
                    throw th2;
                }
            }
            C25225a.m4016G(outputStream, null);
            inputStream = inputStream2;
            C25225a.m4016G(inputStream, null);
            return s.a;
        } catch (Throwable th6) {
            th = th6;
        }
    }
}
