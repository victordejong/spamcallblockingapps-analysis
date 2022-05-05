package p081h.p203i.p204a.p224e.p226b.p227e;

import android.os.Bundle;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import p081h.p203i.p204a.p224e.p226b.p227e.p231g.AbstractC6735a;
import p081h.p203i.p204a.p224e.p226b.p227e.p232h.AbstractC6738a;
import p081h.p203i.p204a.p224e.p226b.p227e.p232h.p233b.C6745g;
import p081h.p203i.p204a.p224e.p226b.p227e.p232h.p233b.C6746h;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p259j.p263d.C7507d;
import p081h.p203i.p204a.p224e.p259j.p263d.C7508e;
/* renamed from: h.i.a.e.b.e.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/a.class */
public final class C6714a {

    /* renamed from: a */
    public static final C6805a.C6817g<C7508e> f16610a = new C6805a.C6817g<>();

    /* renamed from: b */
    public static final C6805a.C6817g<C6746h> f16611b = new C6805a.C6817g<>();

    /* renamed from: c */
    public static final C6805a.AbstractC6806a<C7508e, C6715a> f16612c = new C6767j();

    /* renamed from: d */
    public static final C6805a.AbstractC6806a<C6746h, GoogleSignInOptions> f16613d = new C6768k();

    /* renamed from: e */
    public static final C6805a<GoogleSignInOptions> f16614e = new C6805a<>("Auth.GOOGLE_SIGN_IN_API", f16613d, f16611b);

    /* renamed from: f */
    public static final AbstractC6738a f16615f = new C6745g();

    @Deprecated
    /* renamed from: h.i.a.e.b.e.a$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/a$a.class */
    public static class C6715a implements C6805a.AbstractC6809d.AbstractC6814e {

        /* renamed from: a */
        public final boolean f16616a;

        @Deprecated
        /* renamed from: h.i.a.e.b.e.a$a$a */
        /* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/a$a$a.class */
        public static class C6716a {

            /* renamed from: a */
            public Boolean f16617a = false;

            /* renamed from: a */
            public C6715a m21979a() {
                return new C6715a(this);
            }
        }

        static {
            new C6716a().m21979a();
        }

        public C6715a(C6716a aVar) {
            this.f16616a = aVar.f16617a.booleanValue();
        }

        /* renamed from: a */
        public final Bundle m21980a() {
            Bundle bundle = new Bundle();
            bundle.putString("consumer_package", null);
            bundle.putBoolean("force_save_dialog", this.f16616a);
            return bundle;
        }
    }

    static {
        C6805a<C6718c> aVar = C6717b.f16620c;
        new C6805a("Auth.CREDENTIALS_API", f16612c, f16610a);
        AbstractC6735a aVar2 = C6717b.f16621d;
        new C7507d();
    }
}
