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
import com.dropbox.core.DbxException;
import com.dropbox.core.e;
import com.dropbox.core.g;
import com.dropbox.core.h;
import com.dropbox.core.http.a;
import com.dropbox.core.i;
import com.dropbox.core.m;
import com.dropbox.core.o;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/android/AuthActivity.class */
public class AuthActivity extends Activity {

    /* renamed from: b  reason: collision with root package name */
    private static final String f17724b = "com.dropbox.core.android.AuthActivity";
    private static String e;
    private static String f;
    private static String g;
    private static String[] h;
    private static String i;
    private static o j;
    private static h k;
    private static e l;
    private static String m;
    private static m n;
    private String o;
    private String p;
    private String q;
    private String[] r;
    private String s;
    private o t;
    private g u;
    private h v;
    private e w;
    private String x;
    private m y;

    /* renamed from: c  reason: collision with root package name */
    private static a f17725c = new a() { // from class: com.dropbox.core.android.AuthActivity.1
        @Override // com.dropbox.core.android.AuthActivity.a
        public final SecureRandom getSecureRandom() {
            return com.dropbox.core.android.b.a();
        }
    };

    /* renamed from: d  reason: collision with root package name */
    private static final Object f17726d = new Object();

    /* renamed from: a  reason: collision with root package name */
    public static Intent f17723a = null;
    private String z = null;
    private boolean A = false;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/android/AuthActivity$a.class */
    public interface a {
        SecureRandom getSecureRandom();
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/android/AuthActivity$b.class */
    final class b extends AsyncTask<Void, Void, com.dropbox.core.c> {

        /* renamed from: b  reason: collision with root package name */
        private final String f17731b;

        private b(String str) {
            this.f17731b = str;
        }

        private com.dropbox.core.c a() {
            try {
                final g gVar = AuthActivity.this.u;
                h hVar = AuthActivity.this.v;
                String str = this.f17731b;
                String str2 = AuthActivity.this.o;
                e eVar = AuthActivity.this.w;
                HashMap hashMap = new HashMap();
                hashMap.put("grant_type", "authorization_code");
                hashMap.put("code", str);
                hashMap.put("locale", hVar.f17764b);
                hashMap.put("client_id", str2);
                hashMap.put("code_verifier", gVar.f17760a);
                return (com.dropbox.core.c) i.a(hVar, "OfficialDropboxJavaSDKv2", eVar.f17753b, "oauth2/token", i.a(hashMap), null, new i.b<com.dropbox.core.c>() { // from class: com.dropbox.core.g.1
                    @Override // com.dropbox.core.i.b
                    public final /* bridge */ /* synthetic */ c a(a.b bVar) throws DbxException {
                        if (bVar.f17782a == 200) {
                            return (c) i.a(c.j, bVar);
                        }
                        throw i.a(bVar);
                    }
                });
            } catch (DbxException e) {
                String str3 = AuthActivity.f17724b;
                Log.e(str3, "Token Request Failed: " + e.getMessage());
                return null;
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ com.dropbox.core.c doInBackground(Void[] voidArr) {
            return a();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/android/AuthActivity$c.class */
    enum c {
        OAUTH2("oauth2:"),
        OAUTH2CODE("oauth2code:");
        
        private String string;

        c(String str) {
            this.string = str;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.string;
        }
    }

    static void a() {
        a(null, null, null, null, null, null, null, null, null, null, null);
    }

    private void a(Intent intent) {
        f17723a = intent;
        this.z = null;
        a();
        finish();
    }

    static /* synthetic */ void a(AuthActivity authActivity, String str) {
        Locale locale = Locale.getDefault();
        Locale locale2 = new Locale(locale.getLanguage(), locale.getCountry());
        String[] strArr = authActivity.r;
        ArrayList arrayList = new ArrayList(Arrays.asList("k", authActivity.o, "n", strArr.length > 0 ? strArr[0] : "0", "api", authActivity.p, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, str));
        if (authActivity.t != null) {
            arrayList.add("extra_query_params");
            arrayList.add(authActivity.d());
        }
        authActivity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(i.a(locale2.toString(), authActivity.w.f17755d, "1/connect", (String[]) arrayList.toArray(new String[0])))));
    }

    public static void a(String str, String str2, String[] strArr, String str3, String str4, String str5, o oVar, h hVar, e eVar, String str6, m mVar) {
        e = str;
        g = null;
        h = new String[0];
        i = null;
        f = null;
        j = null;
        k = null;
        l = e.f17752a;
        m = null;
        n = null;
    }

    private static String c() {
        byte[] bArr = new byte[16];
        getSecureRandom().nextBytes(bArr);
        StringBuilder sb = new StringBuilder();
        sb.append("oauth2:");
        for (int i2 = 0; i2 < 16; i2++) {
            sb.append(String.format("%02x", Integer.valueOf(bArr[i2] & 255)));
        }
        return sb.toString();
    }

    private String d() {
        if (this.t != null) {
            String format = String.format(Locale.US, "%s=%s&%s=%s&%s=%s&%s=%s", "code_challenge", this.u.f17761b, "code_challenge_method", "S256", "token_access_type", this.t.toString(), "response_type", "code");
            String str = format;
            if (this.x != null) {
                str = format + String.format(Locale.US, "&%s=%s", "scope", this.x);
            }
            String str2 = str;
            if (this.y != null) {
                str2 = str + String.format(Locale.US, "&%s=%s", "include_granted_scopes", this.y.toString());
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
        a securityProvider = getSecurityProvider();
        return securityProvider != null ? securityProvider.getSecureRandom() : new SecureRandom();
    }

    private static a getSecurityProvider() {
        a aVar;
        synchronized (f17726d) {
            aVar = f17725c;
        }
        return aVar;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        this.o = e;
        this.p = f;
        this.q = g;
        this.r = h;
        this.s = i;
        this.t = j;
        this.v = k;
        this.w = l;
        this.x = m;
        this.y = n;
        if (bundle == null) {
            f17723a = null;
            this.z = null;
            this.u = new g();
        } else {
            this.z = bundle.getString("SIS_KEY_AUTH_STATE_NONCE");
            this.u = new g(bundle.getString("SIS_KEY_PKCE_CODE_VERIFIER"));
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
        final String str;
        super.onResume();
        if (!isFinishing()) {
            if (this.z != null || this.o == null) {
                a((Intent) null);
                return;
            }
            f17723a = null;
            if (this.A) {
                Log.w(f17724b, "onResume called again before Handler run");
                return;
            }
            final Intent officialAuthIntent = getOfficialAuthIntent();
            if (this.t != null) {
                String format = String.format(Locale.US, "oauth2code:%s:%s:%s", this.u.f17761b, "S256", this.t.toString());
                String str2 = format;
                if (this.x != null) {
                    str2 = format + ":" + this.x;
                }
                str = str2;
                if (this.y != null) {
                    str = str2 + ":" + this.y.toString();
                }
                officialAuthIntent.putExtra("AUTH_QUERY_PARAMS", d());
            } else {
                str = c();
            }
            officialAuthIntent.putExtra("CONSUMER_KEY", this.o);
            officialAuthIntent.putExtra("CONSUMER_SIG", "");
            officialAuthIntent.putExtra("CALLING_PACKAGE", getPackageName());
            officialAuthIntent.putExtra("CALLING_CLASS", getClass().getName());
            officialAuthIntent.putExtra("AUTH_STATE", str);
            officialAuthIntent.putExtra("DESIRED_UID", this.q);
            officialAuthIntent.putExtra("ALREADY_AUTHED_UIDS", this.r);
            officialAuthIntent.putExtra("SESSION_ID", this.s);
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.dropbox.core.android.AuthActivity.2
                @Override // java.lang.Runnable
                public final void run() {
                    String unused = AuthActivity.f17724b;
                    try {
                        if (com.dropbox.core.android.a.a(AuthActivity.this, officialAuthIntent) != null) {
                            AuthActivity.this.startActivity(officialAuthIntent);
                        } else {
                            AuthActivity.a(AuthActivity.this, str);
                        }
                        AuthActivity.this.z = str;
                        AuthActivity.a();
                    } catch (ActivityNotFoundException e2) {
                        Log.e(AuthActivity.f17724b, "Could not launch intent. User may have restricted profile", e2);
                        AuthActivity.this.finish();
                    }
                }
            });
            this.A = true;
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("SIS_KEY_AUTH_STATE_NONCE", this.z);
        bundle.putString("SIS_KEY_PKCE_CODE_VERIFIER", this.u.f17760a);
    }
}
