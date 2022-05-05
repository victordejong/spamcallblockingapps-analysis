package p459j.p460a.p582w0;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.Profile;
import com.facebook.internal.C2408g0;
import com.facebook.login.C2539g;
import com.facebook.login.C2546h;
import gogolook.callgogolook2.R$string;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;
import p081h.p154f.AbstractC6123e;
import p081h.p154f.AbstractC6128h;
import p081h.p154f.C6131k;
import p081h.p154f.C6148s;
import p459j.p460a.p530k.AsyncTaskC12828b;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p613z0.DialogC14628h;
/* renamed from: j.a.w0.d2 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/d2.class */
public class C13956d2 {

    /* renamed from: b */
    public static final List<String> f31342b = Arrays.asList("public_profile", "email");

    /* renamed from: c */
    public static final List<String> f31343c = Arrays.asList("publish_actions");

    /* renamed from: a */
    public AbstractC6123e f31344a;

    /* renamed from: j.a.w0.d2$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/d2$a.class */
    public class C13957a implements AbstractC6128h<C2546h> {

        /* renamed from: a */
        public final /* synthetic */ Activity f31345a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC6128h f31346b;

        public C13957a(Activity activity, AbstractC6128h hVar) {
            this.f31345a = activity;
            this.f31346b = hVar;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public void mo2981a(C2546h hVar) {
            C13956d2.this.m2987e(this.f31345a);
            AbstractC6128h hVar2 = this.f31346b;
            if (hVar2 != null) {
                hVar2.mo2981a((AbstractC6128h) hVar);
            }
        }

        @Override // p081h.p154f.AbstractC6128h
        /* renamed from: a */
        public void mo2982a(C6131k kVar) {
            AbstractC6128h hVar = this.f31346b;
            if (hVar != null) {
                hVar.mo2982a(kVar);
            }
        }

        @Override // p081h.p154f.AbstractC6128h
        public void onCancel() {
            AbstractC6128h hVar = this.f31346b;
            if (hVar != null) {
                hVar.onCancel();
            }
        }
    }

    /* renamed from: j.a.w0.d2$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/d2$b.class */
    public class C13958b implements GraphRequest.AbstractC2231g {

        /* renamed from: a */
        public final /* synthetic */ Activity f31348a;

        /* renamed from: b */
        public final /* synthetic */ DialogC14628h f31349b;

        /* renamed from: c */
        public final /* synthetic */ AccessToken f31350c;

        public C13958b(Activity activity, DialogC14628h hVar, AccessToken accessToken) {
            this.f31348a = activity;
            this.f31349b = hVar;
            this.f31350c = accessToken;
        }

        @Override // com.facebook.GraphRequest.AbstractC2231g
        /* renamed from: a */
        public void mo2985a(JSONObject jSONObject, C6148s sVar) {
            if (C14191v.m2262a(this.f31348a)) {
                this.f31349b.dismiss();
                if (jSONObject == null || TextUtils.isEmpty(jSONObject.optString("id"))) {
                    C13956d2.this.m2993a(this.f31348a, this.f31350c.m35490w(), this.f31350c.m35491v(), "");
                } else {
                    String optString = jSONObject.optString("id");
                    String optString2 = jSONObject.optString("link");
                    Profile.m35388a(new Profile(optString, jSONObject.optString("first_name"), jSONObject.optString("middle_name"), jSONObject.optString("last_name"), jSONObject.optString("name"), optString2 != null ? Uri.parse(optString2) : null));
                    C13956d2.this.m2993a(this.f31348a, optString, this.f31350c.m35491v(), jSONObject.optString("email"));
                }
                C14137r4.m2380a((C14137r4.AbstractC14146g) null);
            }
        }
    }

    /* renamed from: j.a.w0.d2$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/d2$c.class */
    public class C13959c implements AbstractC6128h<C2546h> {

        /* renamed from: a */
        public final /* synthetic */ Activity f31352a;

        public C13959c(Activity activity) {
            this.f31352a = activity;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public void mo2981a(C2546h hVar) {
            C13956d2.this.m2988d(this.f31352a);
            C13956d2.this.m2989c(this.f31352a);
        }

        @Override // p081h.p154f.AbstractC6128h
        /* renamed from: a */
        public void mo2982a(C6131k kVar) {
        }

        @Override // p081h.p154f.AbstractC6128h
        public void onCancel() {
        }
    }

    /* renamed from: j.a.w0.d2$d */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/d2$d.class */
    public class C13960d implements C2408g0.AbstractC2411c {

        /* renamed from: a */
        public final /* synthetic */ AbstractC13962f f31354a;

        public C13960d(C13956d2 d2Var, AbstractC13962f fVar) {
            this.f31354a = fVar;
        }

        @Override // com.facebook.internal.C2408g0.AbstractC2411c
        /* renamed from: a */
        public void mo2366a(C6131k kVar) {
        }

        @Override // com.facebook.internal.C2408g0.AbstractC2411c
        public void onSuccess(JSONObject jSONObject) {
            String optString = jSONObject.optString("id");
            if (optString != null) {
                String optString2 = jSONObject.optString("link");
                Profile profile = new Profile(optString, jSONObject.optString("first_name"), jSONObject.optString("middle_name"), jSONObject.optString("last_name"), jSONObject.optString("name"), optString2 != null ? Uri.parse(optString2) : null);
                Profile.m35388a(profile);
                AbstractC13962f fVar = this.f31354a;
                if (fVar != null) {
                    fVar.mo2979b(profile);
                }
            }
        }
    }

    /* renamed from: j.a.w0.d2$e */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/d2$e.class */
    public class C13961e implements AbstractC6128h<C2546h> {

        /* renamed from: a */
        public final /* synthetic */ Activity f31355a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC13962f f31356b;

        public C13961e(Activity activity, AbstractC13962f fVar) {
            this.f31355a = activity;
            this.f31356b = fVar;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public void mo2981a(C2546h hVar) {
            C13956d2.this.m2994a(this.f31355a, this.f31356b);
        }

        @Override // p081h.p154f.AbstractC6128h
        /* renamed from: a */
        public void mo2982a(C6131k kVar) {
        }

        @Override // p081h.p154f.AbstractC6128h
        public void onCancel() {
        }
    }

    /* renamed from: j.a.w0.d2$f */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/d2$f.class */
    public interface AbstractC13962f {
        /* renamed from: a */
        void mo2980a(Profile profile);

        /* renamed from: b */
        void mo2979b(Profile profile);
    }

    /* renamed from: a */
    public void m2997a(int i, int i2, Intent intent) {
        AbstractC6123e eVar = this.f31344a;
        if (eVar != null) {
            eVar.mo23784a(i, i2, intent);
        }
    }

    /* renamed from: a */
    public final void m2996a(Activity activity) {
        AccessToken.m35498b(null);
        C2539g.m34350b().m34344c(activity, f31342b);
    }

    /* renamed from: a */
    public void m2995a(Activity activity, AbstractC6128h hVar, boolean z) {
        this.f31344a = AbstractC6123e.C6124a.m23783a();
        C2539g.m34350b().m34354a(this.f31344a, new C13957a(activity, hVar));
        m2996a(activity);
    }

    /* renamed from: a */
    public void m2994a(Activity activity, AbstractC13962f fVar) {
        AccessToken B = AccessToken.m35507B();
        if (B != null) {
            Profile.m35385q();
            if (!(Profile.m35384r() == null || fVar == null)) {
                fVar.mo2980a(Profile.m35384r());
            }
            C2408g0.m34854a(B.m35491v(), (C2408g0.AbstractC2411c) new C13960d(this, fVar));
            return;
        }
        this.f31344a = AbstractC6123e.C6124a.m23783a();
        C2539g.m34350b().m34354a(this.f31344a, new C13961e(activity, fVar));
        m2988d(activity);
    }

    /* renamed from: a */
    public final void m2993a(Activity activity, String str, String str2, String str3) {
        String e = C14137r4.m2373e();
        e.length();
        if (e.length() != 0) {
            e = "+" + e;
        }
        new AsyncTaskC12828b(activity, e).m5201a(str, str2, str3);
    }

    /* renamed from: b */
    public void m2990b(Activity activity) {
        this.f31344a = AbstractC6123e.C6124a.m23783a();
        C2539g.m34350b().m34354a(this.f31344a, new C13959c(activity));
        AccessToken.m35498b(null);
        m2988d(activity);
        m2989c(activity);
    }

    /* renamed from: c */
    public void m2989c(Activity activity) {
        if (AccessToken.m35507B() == null || AccessToken.m35507B().m35493t() == null || !AccessToken.m35507B().m35493t().contains(f31343c.get(0))) {
            C2539g.m34350b().m34349b(activity, f31343c);
        }
    }

    /* renamed from: d */
    public void m2988d(Activity activity) {
        if (AccessToken.m35507B() == null || AccessToken.m35507B().m35493t() == null || !AccessToken.m35507B().m35493t().contains(f31342b.get(0))) {
            C2539g.m34350b().m34344c(activity, f31342b);
        }
    }

    /* renamed from: e */
    public final void m2987e(Activity activity) {
        AccessToken B = AccessToken.m35507B();
        if (B != null) {
            DialogC14628h hVar = new DialogC14628h(activity, (int) R$string.commit_waiting);
            hVar.setCanceledOnTouchOutside(false);
            hVar.setCancelable(true);
            hVar.show();
            GraphRequest a = GraphRequest.m35462a(B, new C13958b(activity, hVar, B));
            Bundle bundle = new Bundle();
            bundle.putString("fields", "id,name,email,first_name,middle_name,last_name,link");
            a.m35464a(bundle);
            a.m35430c();
            return;
        }
        m2988d(activity);
    }
}
