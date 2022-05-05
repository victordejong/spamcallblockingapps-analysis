package gogolook.callgogolook2.messaging.p078ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ContentValues;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.work.PeriodicWorkRequest;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.datamodel.action.ReceiveSmsMessageAction;
import java.util.ArrayList;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p582w0.p590x4.C14300r;
/* renamed from: gogolook.callgogolook2.messaging.ui.ClassZeroActivity */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/ClassZeroActivity.class */
public class ClassZeroActivity extends Activity {

    /* renamed from: a */
    public ContentValues f11461a = null;

    /* renamed from: b */
    public boolean f11462b = false;

    /* renamed from: c */
    public long f11463c = 0;

    /* renamed from: d */
    public AlertDialog f11464d = null;

    /* renamed from: e */
    public ArrayList<ContentValues> f11465e = null;

    /* renamed from: f */
    public final Handler f11466f = new HandlerC4687a();

    /* renamed from: g */
    public final DialogInterface.OnClickListener f11467g = new DialogInterface$OnClickListenerC4688b();

    /* renamed from: h */
    public final DialogInterface.OnClickListener f11468h = new DialogInterface$OnClickListenerC4689c();

    /* renamed from: gogolook.callgogolook2.messaging.ui.ClassZeroActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/ClassZeroActivity$a.class */
    public class HandlerC4687a extends Handler {
        public HandlerC4687a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1) {
                ClassZeroActivity.this.f11462b = false;
                ClassZeroActivity.this.f11464d.dismiss();
                ClassZeroActivity.this.m27376b();
                ClassZeroActivity.this.m27381a();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.ClassZeroActivity$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/ClassZeroActivity$b.class */
    public class DialogInterface$OnClickListenerC4688b implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC4688b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
            ClassZeroActivity.this.m27381a();
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.ClassZeroActivity$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/ClassZeroActivity$c.class */
    public class DialogInterface$OnClickListenerC4689c implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC4689c() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            ClassZeroActivity.this.f11462b = true;
            ClassZeroActivity.this.m27376b();
            dialogInterface.dismiss();
            ClassZeroActivity.this.m27381a();
        }
    }

    /* renamed from: a */
    public final void m27381a() {
        if (this.f11465e.size() > 0) {
            this.f11465e.remove(0);
        }
        if (this.f11465e.size() == 0) {
            finish();
        } else {
            m27380a(this.f11465e.get(0));
        }
    }

    /* renamed from: a */
    public final void m27380a(ContentValues contentValues) {
        this.f11461a = contentValues;
        this.f11464d = new AlertDialog.Builder(this).setMessage(contentValues.getAsString("body")).setPositiveButton(R$string.save, this.f11468h).setNegativeButton(17039360, this.f11467g).setTitle(R$string.class_0_message_activity).setCancelable(false).show();
        this.f11463c = SystemClock.uptimeMillis() + PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS;
    }

    /* renamed from: a */
    public final boolean m27379a(Intent intent) {
        ContentValues contentValues = (ContentValues) intent.getParcelableExtra("message_values");
        if (!TextUtils.isEmpty(contentValues.getAsString("body"))) {
            this.f11465e.add(contentValues);
            return true;
        } else if (this.f11465e.size() != 0) {
            return false;
        } else {
            finish();
            return false;
        }
    }

    /* renamed from: b */
    public final void m27376b() {
        this.f11461a.put("read", Integer.valueOf(this.f11462b ? 1 : 0));
        new ReceiveSmsMessageAction(this.f11461a).m27742x();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C14300r.m1652b("ClassZeroActivity", getIntent());
        requestWindowFeature(1);
        if (this.f11465e == null) {
            this.f11465e = new ArrayList<>();
        }
        if (m27379a(getIntent())) {
            C12151d.m6999b(this.f11465e.size() == 1);
            if (this.f11465e.size() == 1) {
                m27380a(this.f11465e.get(0));
            }
            if (bundle != null) {
                this.f11463c = bundle.getLong("timer_fire", this.f11463c);
            }
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        m27379a(intent);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putLong("timer_fire", this.f11463c);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        long uptimeMillis = SystemClock.uptimeMillis();
        long j = this.f11463c;
        if (j <= uptimeMillis) {
            this.f11466f.sendEmptyMessage(1);
        } else {
            this.f11466f.sendEmptyMessageAtTime(1, j);
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.f11466f.removeMessages(1);
    }
}
