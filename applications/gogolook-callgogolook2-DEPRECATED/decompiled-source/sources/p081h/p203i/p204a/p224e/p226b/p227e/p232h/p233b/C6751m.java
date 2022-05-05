package p081h.p203i.p204a.p224e.p226b.p227e.p232h.p233b;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
/* renamed from: h.i.a.e.b.e.h.b.m */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/h/b/m.class */
public final class C6751m {

    /* renamed from: b */
    public static C6751m f16639b;

    /* renamed from: a */
    public C6740b f16640a;

    public C6751m(Context context) {
        this.f16640a = C6740b.m21973a(context);
        this.f16640a.m21969b();
        this.f16640a.m21966c();
    }

    /* renamed from: a */
    public static C6751m m21953a(@NonNull Context context) {
        C6751m b;
        synchronized (C6751m.class) {
            try {
                b = m21951b(context.getApplicationContext());
            } catch (Throwable th) {
                throw th;
            }
        }
        return b;
    }

    /* renamed from: b */
    public static C6751m m21951b(Context context) {
        C6751m mVar;
        synchronized (C6751m.class) {
            try {
                if (f16639b == null) {
                    f16639b = new C6751m(context);
                }
                mVar = f16639b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return mVar;
    }

    /* renamed from: a */
    public final void m21954a() {
        synchronized (this) {
            this.f16640a.m21974a();
        }
    }

    /* renamed from: a */
    public final void m21952a(GoogleSignInOptions googleSignInOptions, GoogleSignInAccount googleSignInAccount) {
        synchronized (this) {
            this.f16640a.m21972a(googleSignInAccount, googleSignInOptions);
        }
    }
}
