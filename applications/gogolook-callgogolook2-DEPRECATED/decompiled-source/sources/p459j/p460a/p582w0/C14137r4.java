package p459j.p460a.p582w0;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.facebook.AccessToken;
import com.facebook.Profile;
import com.facebook.internal.C2408g0;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.intro.registration.RegistrationActivity;
import gogolook.callgogolook2.main.MainActivity;
import org.json.JSONObject;
import p081h.p154f.C6131k;
import p081h.p160h.p179e.p180a.p184j.C6364a;
import p081h.p160h.p179e.p180a.p184j.C6367b;
import p081h.p160h.p179e.p180a.p186m.AbstractC6378d;
import p081h.p160h.p179e.p180a.p190p.C6432e;
import p459j.p460a.p507f0.C12378a;
import p459j.p460a.p530k.AbstractAsyncTaskC12818a;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p567t0.C13625a;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p596x.C14376j;
import p459j.p460a.p613z0.DialogC14618f;
/* renamed from: j.a.w0.r4 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/r4.class */
public class C14137r4 {

    /* renamed from: j.a.w0.r4$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/r4$a.class */
    public static final class DialogInterface$OnClickListenerC14138a implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Activity f31645a;

        public DialogInterface$OnClickListenerC14138a(Activity activity) {
            this.f31645a = activity;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C14217x3.m2167b(this.f31645a);
        }
    }

    /* renamed from: j.a.w0.r4$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/r4$b.class */
    public static final class DialogInterface$OnClickListenerC14139b implements DialogInterface.OnClickListener {
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: j.a.w0.r4$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/r4$c.class */
    public static final class C14140c implements C2408g0.AbstractC2411c {

        /* renamed from: a */
        public final /* synthetic */ AbstractC14146g f31646a;

        public C14140c(AbstractC14146g gVar) {
            this.f31646a = gVar;
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
                AbstractC14146g gVar = this.f31646a;
                if (gVar != null) {
                    gVar.m2363a(profile.m35389a());
                }
            }
        }
    }

    /* renamed from: j.a.w0.r4$d */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/r4$d.class */
    public static final class DialogInterface$OnClickListenerC14141d implements DialogInterface.OnClickListener {
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: j.a.w0.r4$e */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/r4$e.class */
    public static final class DialogInterface$OnClickListenerC14142e implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Activity f31647a;

        /* renamed from: j.a.w0.r4$e$a */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/r4$e$a.class */
        public class AsyncTaskC14143a extends AbstractAsyncTaskC12818a {
            public AsyncTaskC14143a(Context context, boolean z, String str) {
                super(context, z, str);
            }

            @Override // p459j.p460a.p530k.AbstractAsyncTaskC12818a
            /* renamed from: a */
            public C12378a mo2365a() throws Exception {
                return C12378a.m6275a(C12378a.EnumC12382d.DELETE_ACCOUNT, new String[0]);
            }

            @Override // p459j.p460a.p530k.AbstractAsyncTaskC12818a
            /* renamed from: b */
            public boolean mo2364b(C12378a.C12380b bVar) {
                if (bVar == null || bVar.f27921b != 200) {
                    return false;
                }
                C13625a.m3822a(DialogInterface$OnClickListenerC14142e.this.f31647a);
                C13565v.m3921g().m3925d();
                Intent intent = new Intent(DialogInterface$OnClickListenerC14142e.this.f31647a, MainActivity.class);
                intent.setFlags(67108864);
                DialogInterface$OnClickListenerC14142e.this.f31647a.startActivity(intent);
                DialogInterface$OnClickListenerC14142e.this.f31647a.finish();
                C13565v.m3921g().m23331c();
                return true;
            }
        }

        /* renamed from: j.a.w0.r4$e$b */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/r4$e$b.class */
        public class C14144b extends AbstractC6378d {

            /* renamed from: a */
            public final /* synthetic */ AbstractAsyncTaskC12818a f31649a;

            public C14144b(DialogInterface$OnClickListenerC14142e eVar, AbstractAsyncTaskC12818a aVar) {
                this.f31649a = aVar;
            }

            @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6378d
            /* renamed from: a */
            public void mo1272a(int i, JSONObject jSONObject) throws Exception {
                if (i == 200) {
                    C14217x3.m2181a(this.f31649a);
                }
            }
        }

        public DialogInterface$OnClickListenerC14142e(Activity activity) {
            this.f31647a = activity;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C6364a.m22982a(new C14144b(this, new AsyncTaskC14143a(this.f31647a, true, C14206w4.m2225a((int) R$string.wait))));
        }
    }

    /* renamed from: j.a.w0.r4$f */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/r4$f.class */
    public static final class C14145f extends AbstractC6378d {
        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6378d
        /* renamed from: a */
        public void mo1272a(int i, JSONObject jSONObject) throws Exception {
            if (i == 400) {
                C6432e.m22605a("AuthMigrateError", C14137r4.m2375c());
            }
        }
    }

    /* renamed from: j.a.w0.r4$g */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/r4$g.class */
    public interface AbstractC14146g {
        /* renamed from: a */
        void m2363a(String str);
    }

    /* renamed from: a */
    public static String m2380a(@Nullable AbstractC14146g gVar) {
        if (TextUtils.isEmpty(C14092n3.m2584a("fbAccount", "")) || AccessToken.m35507B() == null) {
            return "";
        }
        C2408g0.m34854a(AccessToken.m35507B().m35491v(), (C2408g0.AbstractC2411c) new C14140c(gVar));
        Profile r = Profile.m35384r();
        return r != null ? r.m35389a() : "";
    }

    /* renamed from: a */
    public static void m2387a() {
        C6364a.m22986a(C6367b.m22958a("whoscall", C14017g4.m2810n(), 3, C14217x3.m2120o(), C14217x3.m2170b()), new C14145f());
    }

    /* renamed from: a */
    public static void m2386a(Activity activity) {
        DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(activity);
        fVar.m976c(C14206w4.m2225a((int) R$string.settings_delete_account));
        fVar.m979b(C14206w4.m2225a((int) R$string.settings_delete_account_content));
        fVar.m978b(C14206w4.m2225a((int) R$string.confirm), new DialogInterface$OnClickListenerC14142e(activity));
        fVar.m984a(C14206w4.m2225a((int) R$string.cancel), new DialogInterface$OnClickListenerC14141d());
        fVar.m977c(4);
        fVar.m982b();
    }

    /* renamed from: a */
    public static void m2385a(Context context) {
        m2383a(context, C14376j.EnumC14379c.none, RegistrationActivity.EnumC4523g.UNKNOWN);
    }

    /* renamed from: a */
    public static void m2384a(final Context context, final C14376j.EnumC14379c cVar, final Bundle bundle, final RegistrationActivity.EnumC4523g gVar, final boolean z, final boolean z2, DialogInterface.OnClickListener onClickListener) {
        int i;
        int i2;
        boolean f = m2372f();
        if (C13891a.m3140v()) {
            i = f ? R$string.none_verify_phone_titie : R$string.none_verify_register_titie;
            i2 = R$string.none_verify_verify;
        } else {
            i = R$string.none_registered_reminder_titie;
            i2 = R$string.none_registered_reminder_register;
        }
        DialogC14618f fVar = new DialogC14618f(context);
        fVar.m995c(i);
        fVar.m999b(i2, new DialogInterface.OnClickListener() { // from class: j.a.w0.i
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                C14137r4.m2378a(z, cVar, gVar, context, z2, bundle, dialogInterface, i3);
            }
        });
        fVar.m1007a(R$string.none_registered_reminder_later, onClickListener);
        fVar.setCancelable(false);
        fVar.show();
    }

    /* renamed from: a */
    public static void m2383a(Context context, C14376j.EnumC14379c cVar, RegistrationActivity.EnumC4523g gVar) {
        m2384a(context, cVar, null, gVar, false, false, null);
    }

    /* renamed from: a */
    public static void m2381a(@Nullable AbstractC6378d dVar) {
        C6364a.m22986a(C6367b.m22954c("whoscall", C14017g4.m2810n()), dVar);
    }

    /* renamed from: a */
    public static /* synthetic */ void m2378a(boolean z, C14376j.EnumC14379c cVar, RegistrationActivity.EnumC4523g gVar, Context context, boolean z2, Bundle bundle, DialogInterface dialogInterface, int i) {
        C14376j.m1456a(z);
        C14376j.m1457a(cVar);
        C14376j.m1458a(gVar);
        C14376j.m1453b(context, z2);
        if (bundle != null) {
            C14376j.m1459a(bundle);
        }
    }

    /* renamed from: a */
    public static boolean m2382a(Context context, String str) {
        return TextUtils.equals(m2370h() ? m2374d() : null, C14108o4.m2474l(str));
    }

    /* renamed from: a */
    public static boolean m2379a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return false;
        }
        return jSONObject.toString().equals("{\"personal\":[289]}");
    }

    /* renamed from: b */
    public static Dialog m2376b(Activity activity) {
        DialogC14618f fVar = new DialogC14618f(activity);
        fVar.m995c(R$string.myprofile_cancel_dialog_title);
        fVar.m999b(R$string.card_notsave_save_btn, new DialogInterface$OnClickListenerC14138a(activity));
        fVar.m1007a(R$string.card_notsave_leave_btn, new DialogInterface$OnClickListenerC14139b());
        fVar.show();
        return fVar;
    }

    /* renamed from: b */
    public static String m2377b() {
        String str = "";
        if (!TextUtils.isEmpty(C14092n3.m2584a("fbAccount", "")) || !TextUtils.isEmpty(m2380a((AbstractC14146g) null))) {
            return m2380a((AbstractC14146g) null);
        }
        if (UserProfile.m28128n().m28134h()) {
            str = UserProfile.m28128n().m28137e();
        }
        return str;
    }

    /* renamed from: c */
    public static String m2375c() {
        if (!m2372f()) {
            return "";
        }
        String a = C14092n3.m2584a("gmailAccount", "");
        if (TextUtils.isEmpty(a)) {
            a = C14092n3.m2584a("fbAccount", "");
        }
        return a;
    }

    /* renamed from: d */
    public static String m2374d() {
        String e = m2373e();
        String str = e;
        if (!C14217x3.m2160b(e)) {
            str = "+" + e;
        }
        return str;
    }

    /* renamed from: e */
    public static String m2373e() {
        return C14092n3.m2584a("userNumber", "");
    }

    /* renamed from: f */
    public static boolean m2372f() {
        if (C6364a.m22963k()) {
            return true;
        }
        if (TextUtils.isEmpty(C6364a.m22969e())) {
            return !TextUtils.isEmpty(C14217x3.m2120o());
        }
        return false;
    }

    /* renamed from: g */
    public static boolean m2371g() {
        return !m2370h() && C13891a.m3140v();
    }

    /* renamed from: h */
    public static boolean m2370h() {
        return !TextUtils.isEmpty(m2373e());
    }

    /* renamed from: i */
    public static boolean m2369i() {
        return m2372f() && !m2371g();
    }

    /* renamed from: j */
    public static boolean m2368j() {
        return TextUtils.isEmpty(C14217x3.m2120o());
    }

    /* renamed from: k */
    public static boolean m2367k() {
        return !TextUtils.isEmpty(C14217x3.m2120o()) && TextUtils.isEmpty(C6364a.m22969e());
    }
}
