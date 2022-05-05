package p081h.p203i.p204a.p224e.p226b.p227e.p232h.p233b;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.b.e.h.b.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/h/b/b.class */
public class C6740b {

    /* renamed from: c */
    public static final Lock f16627c = new ReentrantLock();
    @GuardedBy("sLk")

    /* renamed from: d */
    public static C6740b f16628d;

    /* renamed from: a */
    public final Lock f16629a = new ReentrantLock();
    @GuardedBy("mLk")

    /* renamed from: b */
    public final SharedPreferences f16630b;

    public C6740b(Context context) {
        this.f16630b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    /* renamed from: a */
    public static C6740b m21973a(Context context) {
        C7021t.m21290a(context);
        f16627c.lock();
        try {
            if (f16628d == null) {
                f16628d = new C6740b(context.getApplicationContext());
            }
            C6740b bVar = f16628d;
            f16627c.unlock();
            return bVar;
        } catch (Throwable th) {
            f16627c.unlock();
            throw th;
        }
    }

    /* renamed from: b */
    public static String m21967b(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        return sb.toString();
    }

    @Nullable
    /* renamed from: a */
    public final GoogleSignInAccount m21971a(String str) {
        String c;
        if (TextUtils.isEmpty(str) || (c = m21965c(m21967b("googleSignInAccount", str))) == null) {
            return null;
        }
        try {
            return GoogleSignInAccount.m32043a(c);
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: a */
    public void m21974a() {
        this.f16629a.lock();
        try {
            this.f16630b.edit().clear().apply();
        } finally {
            this.f16629a.unlock();
        }
    }

    /* renamed from: a */
    public void m21972a(GoogleSignInAccount googleSignInAccount, GoogleSignInOptions googleSignInOptions) {
        C7021t.m21290a(googleSignInAccount);
        C7021t.m21290a(googleSignInOptions);
        m21970a("defaultGoogleSignInAccount", googleSignInAccount.m32038l0());
        C7021t.m21290a(googleSignInAccount);
        C7021t.m21290a(googleSignInOptions);
        String l0 = googleSignInAccount.m32038l0();
        m21970a(m21967b("googleSignInAccount", l0), googleSignInAccount.m32037m0());
        m21970a(m21967b("googleSignInOptions", l0), googleSignInOptions.m32016j0());
    }

    /* renamed from: a */
    public final void m21970a(String str, String str2) {
        this.f16629a.lock();
        try {
            this.f16630b.edit().putString(str, str2).apply();
        } finally {
            this.f16629a.unlock();
        }
    }

    @Nullable
    /* renamed from: b */
    public GoogleSignInAccount m21969b() {
        return m21971a(m21965c("defaultGoogleSignInAccount"));
    }

    @Nullable
    /* renamed from: b */
    public final GoogleSignInOptions m21968b(String str) {
        String c;
        if (TextUtils.isEmpty(str) || (c = m21965c(m21967b("googleSignInOptions", str))) == null) {
            return null;
        }
        try {
            return GoogleSignInOptions.m32027a(c);
        } catch (JSONException e) {
            return null;
        }
    }

    @Nullable
    /* renamed from: c */
    public GoogleSignInOptions m21966c() {
        return m21968b(m21965c("defaultGoogleSignInAccount"));
    }

    @Nullable
    /* renamed from: c */
    public final String m21965c(String str) {
        this.f16629a.lock();
        try {
            return this.f16630b.getString(str, null);
        } finally {
            this.f16629a.unlock();
        }
    }

    @Nullable
    /* renamed from: d */
    public String m21964d() {
        return m21965c("refreshToken");
    }

    /* renamed from: d */
    public final void m21963d(String str) {
        this.f16629a.lock();
        try {
            this.f16630b.edit().remove(str).apply();
        } finally {
            this.f16629a.unlock();
        }
    }

    /* renamed from: e */
    public final void m21962e() {
        String c = m21965c("defaultGoogleSignInAccount");
        m21963d("defaultGoogleSignInAccount");
        if (!TextUtils.isEmpty(c)) {
            m21963d(m21967b("googleSignInAccount", c));
            m21963d(m21967b("googleSignInOptions", c));
        }
    }
}
