package com.facebook;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.facebook.internal.C1146l0;
import com.facebook.internal.C1168q0;
import com.facebook.login.EnumC1290x;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p1727n3.p1872x.p1873a.C27062a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\u0018�� \u00132\u00020\u0001:\u0001\u0013B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0014J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rH\u0014J\b\u0010\u000e\u001a\u00020\bH\u0014J\u001a\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\rH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0014"}, d2 = {"Lcom/facebook/CustomTabMainActivity;", "Landroid/app/Activity;", "()V", "redirectReceiver", "Landroid/content/BroadcastReceiver;", "shouldCloseCustomTab", "", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onNewIntent", "intent", "Landroid/content/Intent;", "onResume", "sendResult", "resultCode", "", "resultIntent", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2-dex2jar.jar:com/facebook/CustomTabMainActivity.class */
public final class CustomTabMainActivity extends Activity {

    /* renamed from: c */
    public static final C0913a f2513c = new C0913a(null);

    /* renamed from: d */
    public static final String f2514d = l.j(CustomTabMainActivity.class.getSimpleName(), ".extra_action");

    /* renamed from: e */
    public static final String f2515e = l.j(CustomTabMainActivity.class.getSimpleName(), ".extra_params");

    /* renamed from: f */
    public static final String f2516f = l.j(CustomTabMainActivity.class.getSimpleName(), ".extra_chromePackage");

    /* renamed from: g */
    public static final String f2517g = l.j(CustomTabMainActivity.class.getSimpleName(), ".extra_url");

    /* renamed from: h */
    public static final String f2518h = l.j(CustomTabMainActivity.class.getSimpleName(), ".extra_targetApp");

    /* renamed from: i */
    public static final String f2519i = l.j(CustomTabMainActivity.class.getSimpleName(), ".action_refresh");

    /* renamed from: j */
    public static final String f2520j = l.j(CustomTabMainActivity.class.getSimpleName(), ".no_activity_exception");

    /* renamed from: a */
    public boolean f2521a = true;

    /* renamed from: b */
    public BroadcastReceiver f2522b;

    @Metadata(d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0004H\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\u000e"}, d2 = {"Lcom/facebook/CustomTabMainActivity$Companion;", "", "()V", "EXTRA_ACTION", "", "EXTRA_CHROME_PACKAGE", "EXTRA_PARAMS", "EXTRA_TARGET_APP", "EXTRA_URL", "NO_ACTIVITY_EXCEPTION", "REFRESH_ACTION", "parseResponseUri", "Landroid/os/Bundle;", "urlString", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.CustomTabMainActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/CustomTabMainActivity$a.class */
    public static final class C0913a {
        public C0913a(f fVar) {
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.CustomTabMainActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/facebook/CustomTabMainActivity$b.class */
    public final /* synthetic */ class C0914b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f2523a = {0, 1};

        static {
            EnumC1290x.values();
        }
    }

    @Metadata(d1 = {"��\u001d\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"com/facebook/CustomTabMainActivity$onCreate$redirectReceiver$1", "Landroid/content/BroadcastReceiver;", "onReceive", "", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.CustomTabMainActivity$c */
    /* loaded from: classes2-dex2jar.jar:com/facebook/CustomTabMainActivity$c.class */
    public static final class C0915c extends BroadcastReceiver {
        public C0915c() {
            CustomTabMainActivity.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(intent, "intent");
            Intent intent2 = new Intent(CustomTabMainActivity.this, CustomTabMainActivity.class);
            intent2.setAction(CustomTabMainActivity.f2519i);
            String str = CustomTabMainActivity.f2517g;
            intent2.putExtra(str, intent.getStringExtra(str));
            intent2.addFlags(603979776);
            CustomTabMainActivity.this.startActivity(intent2);
        }
    }

    /* renamed from: a */
    public final void m42022a(int i, Intent intent) {
        Bundle bundle;
        BroadcastReceiver broadcastReceiver = this.f2522b;
        if (broadcastReceiver != null) {
            C27062a.m968b(this).m965e(broadcastReceiver);
        }
        if (intent != null) {
            String stringExtra = intent.getStringExtra(f2517g);
            if (stringExtra != null) {
                Uri parse = Uri.parse(stringExtra);
                bundle = C1168q0.m41692J(parse.getQuery());
                bundle.putAll(C1168q0.m41692J(parse.getFragment()));
            } else {
                bundle = new Bundle();
            }
            C1146l0 c1146l0 = C1146l0.f3146a;
            Intent intent2 = getIntent();
            l.d(intent2, "intent");
            Intent m41722e = C1146l0.m41722e(intent2, bundle, null);
            if (m41722e != null) {
                intent = m41722e;
            }
            setResult(i, intent);
        } else {
            C1146l0 c1146l02 = C1146l0.f3146a;
            Intent intent3 = getIntent();
            l.d(intent3, "intent");
            setResult(i, C1146l0.m41722e(intent3, null, null));
        }
        finish();
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01bb  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r7) {
        /*
            Method dump skipped, instructions count: 480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.CustomTabMainActivity.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        l.e(intent, "intent");
        super.onNewIntent(intent);
        if (l.a(f2519i, intent.getAction())) {
            C27062a.m968b(this).m966d(new Intent(CustomTabActivity.f2510c));
            m42022a(-1, intent);
        } else if (!l.a(CustomTabActivity.f2509b, intent.getAction())) {
        } else {
            m42022a(-1, intent);
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f2521a) {
            m42022a(0, null);
        }
        this.f2521a = true;
    }
}
