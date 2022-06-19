package p000;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.flexaspect.android.everycallcontrol.ui.activities.MainActivity;
import p000.md1;
import p000.w91;
/* renamed from: nd1 */
/* loaded from: classes3-dex2jar.jar:nd1.class */
public class nd1 extends md1 {

    /* renamed from: nd1$a */
    /* loaded from: classes3-dex2jar.jar:nd1$a.class */
    public class RunnableC1497a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f7125a;

        /* renamed from: b */
        public final /* synthetic */ Intent f7126b;

        public RunnableC1497a(Context context, Intent intent) {
            nd1.this = r4;
            this.f7125a = context;
            this.f7126b = intent;
        }

        @Override // java.lang.Runnable
        public void run() {
            Context context = this.f7125a;
            if (context != null) {
                context.startActivity(this.f7126b);
                Bundle bundle = new Bundle();
                bundle.putString("Payload Type", "" + nd1.this.f7001c);
                w91.m275c(this, w91.EnumC1708a.PUSH_NOTIFICATION_EXECUTED, bundle);
            }
        }
    }

    @Override // p000.md1
    /* renamed from: b */
    public boolean mo928b(md1.EnumC1473b enumC1473b, Context context) {
        if (this.f7000b == 0) {
            this.f7000b = this.f6999a + 1;
        }
        if (enumC1473b != md1.EnumC1473b.PUSH_CONTEXT_APP_OPEN) {
            return false;
        }
        Uri uri = null;
        try {
            if (!TextUtils.isEmpty(this.f7005h)) {
                uri = Uri.parse(this.f7005h);
            }
        } catch (Throwable th) {
            uri = null;
        }
        if (uri == null || !uri.getScheme().equals("callcontrol")) {
            return true;
        }
        Intent intent = new Intent(context, MainActivity.class);
        intent.setData(uri);
        intent.addFlags(268435456);
        new Handler(Looper.getMainLooper()).postDelayed(new RunnableC1497a(context, intent), 0L);
        return true;
    }
}
