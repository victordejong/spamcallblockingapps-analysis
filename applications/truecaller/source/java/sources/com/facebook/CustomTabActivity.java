package com.facebook;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p1727n3.p1872x.p1873a.C27062a;
import s1.z.c.l;
@Metadata(d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� \u00102\u00020\u0001:\u0001\u0010B\u0005¢\u0006\u0002\u0010\u0002J\"\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014J\u0012\u0010\f\u001a\u00020\u00062\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014J\b\u0010\u000f\u001a\u00020\u0006H\u0014R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0011"}, d2 = {"Lcom/facebook/CustomTabActivity;", "Landroid/app/Activity;", "()V", "closeReceiver", "Landroid/content/BroadcastReceiver;", "onActivityResult", "", "requestCode", "", "resultCode", RemoteMessageConst.DATA, "Landroid/content/Intent;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2-dex2jar.jar:com/facebook/CustomTabActivity.class */
public final class CustomTabActivity extends Activity {

    /* renamed from: b */
    public static final String f2509b = l.j(CustomTabActivity.class.getSimpleName(), ".action_customTabRedirect");

    /* renamed from: c */
    public static final String f2510c = l.j(CustomTabActivity.class.getSimpleName(), ".action_destroy");

    /* renamed from: a */
    public BroadcastReceiver f2511a;

    @Metadata(d1 = {"��\u001d\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"com/facebook/CustomTabActivity$onActivityResult$closeReceiver$1", "Landroid/content/BroadcastReceiver;", "onReceive", "", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.CustomTabActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/CustomTabActivity$a.class */
    public static final class C0912a extends BroadcastReceiver {
        public C0912a() {
            CustomTabActivity.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(intent, "intent");
            CustomTabActivity.this.finish();
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == 0) {
            Intent intent2 = new Intent(f2509b);
            intent2.putExtra(CustomTabMainActivity.f2517g, getIntent().getDataString());
            C27062a.m968b(this).m966d(intent2);
            C0912a c0912a = new C0912a();
            C27062a.m968b(this).m967c(c0912a, new IntentFilter(f2510c));
            this.f2511a = c0912a;
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = new Intent(this, CustomTabMainActivity.class);
        intent.setAction(f2509b);
        intent.putExtra(CustomTabMainActivity.f2517g, getIntent().getDataString());
        intent.addFlags(603979776);
        startActivityForResult(intent, 2);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        BroadcastReceiver broadcastReceiver = this.f2511a;
        if (broadcastReceiver != null) {
            C27062a.m968b(this).m965e(broadcastReceiver);
        }
        super.onDestroy();
    }
}
