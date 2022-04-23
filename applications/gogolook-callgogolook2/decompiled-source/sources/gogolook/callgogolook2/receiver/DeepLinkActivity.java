package gogolook.callgogolook2.receiver;

import android.app.Activity;
import android.app.Dialog;
import android.app.NotificationManager;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import androidx.annotation.NonNull;
import com.facebook.ads.AdError;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import java.util.ArrayList;
import java.util.HashMap;
import p459j.p460a.p538m0.C13020c;
import p459j.p460a.p549o0.C13297a;
import p459j.p460a.p564s.DialogC13479u;
import p459j.p460a.p582w0.C14081m3;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p590x4.C14312y;
import p459j.p460a.p596x.C14376j;
import p660rx.Single;
import p660rx.SingleSubscriber;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/receiver/DeepLinkActivity.class */
public class DeepLinkActivity extends Activity {

    /* renamed from: a */
    public Dialog f12561a;

    /* renamed from: gogolook.callgogolook2.receiver.DeepLinkActivity$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/receiver/DeepLinkActivity$a.class */
    public class C5089a implements Single.OnSubscribe<Object> {

        /* renamed from: a */
        public final /* synthetic */ long f12562a;

        public C5089a(long j) {
            this.f12562a = j;
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Object> singleSubscriber) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("_read", (Integer) 1);
            contentValues.put("_updatetime", String.valueOf(System.currentTimeMillis()));
            DeepLinkActivity.this.getContentResolver().update(C13020c.f29447a, contentValues, "_id =?", new String[]{String.valueOf(this.f12562a)});
            singleSubscriber.onSuccess(null);
        }
    }

    /* renamed from: gogolook.callgogolook2.receiver.DeepLinkActivity$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/receiver/DeepLinkActivity$b.class */
    public class DialogC5090b extends Dialog {
        public DialogC5090b(Context context, int i) {
            super(context, i);
        }

        @Override // android.app.Dialog, android.content.DialogInterface
        public void dismiss() {
            super.dismiss();
            DeepLinkActivity.this.finish();
        }
    }

    /* renamed from: a */
    public final void m26394a() {
        if (this.f12561a == null) {
            this.f12561a = new DialogC5090b(this, 16974065);
            View inflate = getLayoutInflater().inflate(R$layout.iconfont_layout, (ViewGroup) null);
            ListView listView = (ListView) inflate.findViewById(R$id.iconfont_listview);
            String[] stringArray = getResources().getStringArray(2130903044);
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < stringArray.length; i++) {
                HashMap hashMap = new HashMap();
                hashMap.put("icon", getResources().getString(getResources().getIdentifier(stringArray[i], "string", getPackageName())));
                hashMap.put("text", stringArray[i]);
                arrayList.add(hashMap);
            }
            listView.setAdapter((ListAdapter) new SimpleAdapter(this, arrayList, R$layout.debug_iconfont_list, new String[]{"icon", "text"}, new int[]{R$id.iftv_iconfont, R$id.tv_iconfont_name}));
            this.f12561a.requestWindowFeature(1);
            this.f12561a.setContentView(inflate);
        }
        this.f12561a.show();
    }

    /* renamed from: a */
    public final void m26393a(NotificationManager notificationManager, int i, int i2) {
        if (notificationManager != null) {
            notificationManager.cancel(AdError.CACHE_ERROR_CODE);
        }
        if (i == 2 || i == 4) {
            C14312y.m1616a(i, i2);
        }
    }

    /* renamed from: a */
    public boolean m26392a(Intent intent) {
        setIntent(intent);
        overridePendingTransition(0, 0);
        if (getIntent().getBooleanExtra("debugui", false)) {
            new DialogC13479u(this).show();
            return true;
        } else if (getIntent().getBooleanExtra("iconfont", false)) {
            m26394a();
            return true;
        } else {
            Uri data = intent.getData();
            if (data == null) {
                finish();
                return false;
            } else if (!C14217x3.m2107z()) {
                C14376j.m1452b(this, false, false);
                finish();
                return true;
            } else {
                Intent a = C13297a.m4312a(this, data, null, getIntent().getStringExtra("title"), getIntent().getIntExtra("outside_page", 0));
                long longExtra = getIntent().getLongExtra("id", 0L);
                if (longExtra != 0) {
                    C14081m3.m2610a(new C5089a(longExtra));
                }
                String stringExtra = getIntent().getStringExtra("pushid");
                if (!TextUtils.isEmpty(stringExtra)) {
                    NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
                    notificationManager.cancel(1);
                    m26393a(notificationManager, getIntent().getIntExtra("source", -1), getIntent().getIntExtra("action", -1));
                    C14289m.m1905a(2, stringExtra);
                }
                finish();
                return a != null && m26391b(a);
            }
        }
    }

    /* renamed from: b */
    public final boolean m26391b(@NonNull Intent intent) {
        try {
            if ((!intent.hasExtra("url") || !intent.hasExtra("title")) && !intent.getBooleanExtra("with_parent_stack", false)) {
                startActivity(intent);
                return true;
            }
            C14217x3.m2165b(this, intent);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        onNewIntent(getIntent());
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        if (!m26392a(intent)) {
            m26391b(C13297a.m4313a(this));
        }
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        overridePendingTransition(0, 0);
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        overridePendingTransition(0, 0);
    }
}
