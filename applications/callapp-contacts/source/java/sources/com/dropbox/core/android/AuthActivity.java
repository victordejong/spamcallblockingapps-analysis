package com.dropbox.core.android;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.dropbox.core.C8571c;
import com.dropbox.core.C8573e;
import com.dropbox.core.C8575g;
import com.dropbox.core.C8577h;
import com.dropbox.core.C8600i;
import com.dropbox.core.DbxException;
import com.dropbox.core.EnumC8620m;
import com.dropbox.core.EnumC8623o;
import com.dropbox.core.http.AbstractC8582a;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/android/AuthActivity.class */
public class AuthActivity extends Activity {

    /* renamed from: b */
    private static final String f30466b = "com.dropbox.core.android.AuthActivity";

    /* renamed from: e */
    private static String f30469e;

    /* renamed from: f */
    private static String f30470f;

    /* renamed from: g */
    private static String f30471g;

    /* renamed from: h */
    private static String[] f30472h;

    /* renamed from: i */
    private static String f30473i;

    /* renamed from: j */
    private static EnumC8623o f30474j;

    /* renamed from: k */
    private static C8577h f30475k;

    /* renamed from: l */
    private static C8573e f30476l;

    /* renamed from: m */
    private static String f30477m;

    /* renamed from: n */
    private static EnumC8620m f30478n;

    /* renamed from: o */
    private String f30480o;

    /* renamed from: p */
    private String f30481p;

    /* renamed from: q */
    private String f30482q;

    /* renamed from: r */
    private String[] f30483r;

    /* renamed from: s */
    private String f30484s;

    /* renamed from: t */
    private EnumC8623o f30485t;

    /* renamed from: u */
    private C8575g f30486u;

    /* renamed from: v */
    private C8577h f30487v;

    /* renamed from: w */
    private C8573e f30488w;

    /* renamed from: x */
    private String f30489x;

    /* renamed from: y */
    private EnumC8620m f30490y;

    /* renamed from: c */
    private static AbstractC8563a f30467c = new AbstractC8563a() { // from class: com.dropbox.core.android.AuthActivity.1
        @Override // com.dropbox.core.android.AuthActivity.AbstractC8563a
        public final SecureRandom getSecureRandom() {
            return C8567b.m25334a();
        }
    };

    /* renamed from: d */
    private static final Object f30468d = new Object();

    /* renamed from: a */
    public static Intent f30465a = null;

    /* renamed from: z */
    private String f30491z = null;

    /* renamed from: A */
    private boolean f30479A = false;

    /* renamed from: com.dropbox.core.android.AuthActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/android/AuthActivity$a.class */
    public interface AbstractC8563a {
        SecureRandom getSecureRandom();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.android.AuthActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/android/AuthActivity$b.class */
    public final class AsyncTaskC8564b extends AsyncTask<Void, Void, C8571c> {

        /* renamed from: b */
        private final String f30496b;

        private AsyncTaskC8564b(String str) {
            AuthActivity.this = r4;
            this.f30496b = str;
        }

        /* renamed from: a */
        private C8571c m25336a() {
            try {
                final C8575g c8575g = AuthActivity.this.f30486u;
                C8577h c8577h = AuthActivity.this.f30487v;
                String str = this.f30496b;
                String str2 = AuthActivity.this.f30480o;
                C8573e c8573e = AuthActivity.this.f30488w;
                HashMap hashMap = new HashMap();
                hashMap.put("grant_type", "authorization_code");
                hashMap.put("code", str);
                hashMap.put("locale", c8577h.f30545b);
                hashMap.put("client_id", str2);
                hashMap.put("code_verifier", c8575g.f30541a);
                return (C8571c) C8600i.m25280a(c8577h, "OfficialDropboxJavaSDKv2", c8573e.f30533b, "oauth2/token", C8600i.m25264a(hashMap), null, new C8600i.AbstractC8603b<C8571c>() { // from class: com.dropbox.core.g.1
                    @Override // com.dropbox.core.C8600i.AbstractC8603b
                    /* renamed from: a */
                    public final /* bridge */ /* synthetic */ C8571c mo25211a(AbstractC8582a.C8584b c8584b) throws DbxException {
                        if (c8584b.f30566a == 200) {
                            return (C8571c) C8600i.m25276a(C8571c.f30512j, c8584b);
                        }
                        throw C8600i.m25279a(c8584b);
                    }
                });
            } catch (DbxException e) {
                String str3 = AuthActivity.f30466b;
                Log.e(str3, "Token Request Failed: " + e.getMessage());
                return null;
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ C8571c doInBackground(Void[] voidArr) {
            return m25336a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.android.AuthActivity$c */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/android/AuthActivity$c.class */
    public enum EnumC8565c {
        OAUTH2("oauth2:"),
        OAUTH2CODE("oauth2code:");
        
        private String string;

        EnumC8565c(String str) {
            this.string = str;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.string;
        }
    }

    /* renamed from: a */
    static void m25348a() {
        m25344a(null, null, null, null, null, null, null, null, null, null, null);
    }

    /* renamed from: a */
    private void m25347a(Intent intent) {
        f30465a = intent;
        this.f30491z = null;
        m25348a();
        finish();
    }

    /* renamed from: a */
    static /* synthetic */ void m25345a(AuthActivity authActivity, String str) {
        Locale locale = Locale.getDefault();
        Locale locale2 = new Locale(locale.getLanguage(), locale.getCountry());
        String[] strArr = authActivity.f30483r;
        ArrayList arrayList = new ArrayList(Arrays.asList("k", authActivity.f30480o, "n", strArr.length > 0 ? strArr[0] : "0", "api", authActivity.f30481p, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, str));
        if (authActivity.f30485t != null) {
            arrayList.add("extra_query_params");
            arrayList.add(authActivity.m25338d());
        }
        authActivity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(C8600i.m25272a(locale2.toString(), authActivity.f30488w.f30535d, "1/connect", (String[]) arrayList.toArray(new String[0])))));
    }

    /* renamed from: a */
    public static void m25344a(String str, String str2, String[] strArr, String str3, String str4, String str5, EnumC8623o enumC8623o, C8577h c8577h, C8573e c8573e, String str6, EnumC8620m enumC8620m) {
        f30469e = str;
        f30471g = null;
        f30472h = new String[0];
        f30473i = null;
        f30470f = null;
        f30474j = null;
        f30475k = null;
        f30476l = C8573e.f30530a;
        f30477m = null;
        f30478n = null;
    }

    /* renamed from: c */
    private static String m25340c() {
        byte[] bArr = new byte[16];
        getSecureRandom().nextBytes(bArr);
        StringBuilder sb = new StringBuilder();
        sb.append("oauth2:");
        for (int i = 0; i < 16; i++) {
            sb.append(String.format("%02x", Integer.valueOf(bArr[i] & 255)));
        }
        return sb.toString();
    }

    /* renamed from: d */
    private String m25338d() {
        if (this.f30485t != null) {
            String format = String.format(Locale.US, "%s=%s&%s=%s&%s=%s&%s=%s", "code_challenge", this.f30486u.f30542b, "code_challenge_method", "S256", "token_access_type", this.f30485t.toString(), "response_type", "code");
            String str = format;
            if (this.f30489x != null) {
                str = format + String.format(Locale.US, "&%s=%s", "scope", this.f30489x);
            }
            String str2 = str;
            if (this.f30490y != null) {
                str2 = str + String.format(Locale.US, "&%s=%s", "include_granted_scopes", this.f30490y.toString());
            }
            return str2;
        }
        throw new IllegalStateException("Extra Query Param should only be used in short live token flow.");
    }

    static Intent getOfficialAuthIntent() {
        Intent intent = new Intent("com.dropbox.android.AUTHENTICATE_V2");
        intent.setPackage("com.dropbox.android");
        return intent;
    }

    private static SecureRandom getSecureRandom() {
        AbstractC8563a securityProvider = getSecurityProvider();
        return securityProvider != null ? securityProvider.getSecureRandom() : new SecureRandom();
    }

    private static AbstractC8563a getSecurityProvider() {
        AbstractC8563a abstractC8563a;
        synchronized (f30468d) {
            abstractC8563a = f30467c;
        }
        return abstractC8563a;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        this.f30480o = f30469e;
        this.f30481p = f30470f;
        this.f30482q = f30471g;
        this.f30483r = f30472h;
        this.f30484s = f30473i;
        this.f30485t = f30474j;
        this.f30487v = f30475k;
        this.f30488w = f30476l;
        this.f30489x = f30477m;
        this.f30490y = f30478n;
        if (bundle == null) {
            f30465a = null;
            this.f30491z = null;
            this.f30486u = new C8575g();
        } else {
            this.f30491z = bundle.getString("SIS_KEY_AUTH_STATE_NONCE");
            this.f30486u = new C8575g(bundle.getString("SIS_KEY_PKCE_CODE_VERIFIER"));
        }
        setTheme(16973840);
        super.onCreate(bundle);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00b1  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onNewIntent(android.content.Intent r8) {
        /*
            Method dump skipped, instructions count: 529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.android.AuthActivity.onNewIntent(android.content.Intent):void");
    }

    @Override // android.app.Activity
    protected void onResume() {
        String str;
        super.onResume();
        if (isFinishing()) {
            return;
        }
        if (this.f30491z != null || this.f30480o == null) {
            m25347a((Intent) null);
            return;
        }
        f30465a = null;
        if (this.f30479A) {
            Log.w(f30466b, "onResume called again before Handler run");
            return;
        }
        final Intent officialAuthIntent = getOfficialAuthIntent();
        if (this.f30485t != null) {
            String format = String.format(Locale.US, "oauth2code:%s:%s:%s", this.f30486u.f30542b, "S256", this.f30485t.toString());
            String str2 = format;
            if (this.f30489x != null) {
                str2 = format + ":" + this.f30489x;
            }
            str = str2;
            if (this.f30490y != null) {
                str = str2 + ":" + this.f30490y.toString();
            }
            officialAuthIntent.putExtra("AUTH_QUERY_PARAMS", m25338d());
        } else {
            str = m25340c();
        }
        officialAuthIntent.putExtra("CONSUMER_KEY", this.f30480o);
        officialAuthIntent.putExtra("CONSUMER_SIG", "");
        officialAuthIntent.putExtra("CALLING_PACKAGE", getPackageName());
        officialAuthIntent.putExtra("CALLING_CLASS", getClass().getName());
        officialAuthIntent.putExtra("AUTH_STATE", str);
        officialAuthIntent.putExtra("DESIRED_UID", this.f30482q);
        officialAuthIntent.putExtra("ALREADY_AUTHED_UIDS", this.f30483r);
        officialAuthIntent.putExtra("SESSION_ID", this.f30484s);
        final String str3 = str;
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.dropbox.core.android.AuthActivity.2
            @Override // java.lang.Runnable
            public final void run() {
                String unused = AuthActivity.f30466b;
                try {
                    if (C8566a.m25335a(AuthActivity.this, officialAuthIntent) != null) {
                        AuthActivity.this.startActivity(officialAuthIntent);
                    } else {
                        AuthActivity.m25345a(AuthActivity.this, str3);
                    }
                    AuthActivity.this.f30491z = str3;
                    AuthActivity.m25348a();
                } catch (ActivityNotFoundException e) {
                    Log.e(AuthActivity.f30466b, "Could not launch intent. User may have restricted profile", e);
                    AuthActivity.this.finish();
                }
            }
        });
        this.f30479A = true;
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("SIS_KEY_AUTH_STATE_NONCE", this.f30491z);
        bundle.putString("SIS_KEY_PKCE_CODE_VERIFIER", this.f30486u.f30541a);
    }
}
