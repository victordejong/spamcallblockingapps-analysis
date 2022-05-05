package p081h.p160h.p174c;

import android.app.Dialog;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.text.Html;
import android.util.Pair;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import com.facebook.ads.AdError;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import p081h.p160h.p178d.C6333a;
/* renamed from: h.h.c.b */
/* loaded from: classes2-dex2jar.jar:h/h/c/b.class */
public abstract class AbstractC6305b {

    /* renamed from: h */
    public static ArrayBlockingQueue<String> f15620h = new ArrayBlockingQueue<>(48, false);

    /* renamed from: b */
    public Context f15622b;

    /* renamed from: c */
    public int f15623c;

    /* renamed from: a */
    public int f15621a = 999999;

    /* renamed from: d */
    public List<Pair<String, String>> f15624d = new ArrayList();

    /* renamed from: f */
    public boolean f15626f = false;

    /* renamed from: g */
    public boolean f15627g = false;

    /* renamed from: e */
    public C6309d f15625e = new C6309d();

    /* renamed from: h.h.c.b$a */
    /* loaded from: classes2-dex2jar.jar:h/h/c/b$a.class */
    public class View$OnClickListenerC6306a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Pair f15628a;

        /* renamed from: b */
        public final /* synthetic */ Dialog f15629b;

        public View$OnClickListenerC6306a(Pair pair, Dialog dialog) {
            this.f15628a = pair;
            this.f15629b = dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AbstractC6305b.this.mo4049a((String) this.f15628a.first);
            this.f15629b.dismiss();
        }
    }

    /* renamed from: h.h.c.b$b */
    /* loaded from: classes2-dex2jar.jar:h/h/c/b$b.class */
    public class View$OnClickListenerC6307b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f15631a;

        /* renamed from: b */
        public final /* synthetic */ Dialog f15632b;

        public View$OnClickListenerC6307b(Context context, Dialog dialog) {
            this.f15631a = context;
            this.f15632b = dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            new DialogC6312d(this.f15631a, AbstractC6305b.this, 1).show();
            this.f15632b.dismiss();
        }
    }

    /* renamed from: h.h.c.b$c */
    /* loaded from: classes2-dex2jar.jar:h/h/c/b$c.class */
    public class DialogInterface$OnDismissListenerC6308c implements DialogInterface.OnDismissListener {
        public DialogInterface$OnDismissListenerC6308c() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            AbstractC6305b.this.f15627g = false;
        }
    }

    /* renamed from: h.h.c.b$d */
    /* loaded from: classes2-dex2jar.jar:h/h/c/b$d.class */
    public class C6309d extends BroadcastReceiver {
        public C6309d() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (Build.VERSION.SDK_INT >= 23 && !Settings.canDrawOverlays(AbstractC6305b.this.f15622b)) {
                Intent intent2 = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + AbstractC6305b.this.f15622b.getPackageName()));
                intent2.addFlags(268435456);
                AbstractC6305b.this.f15622b.startActivity(intent2);
            } else if ("rage_notification_popup".equals(intent.getAction())) {
                AbstractC6305b.this.mo4046e();
            }
        }
    }

    /* renamed from: h.h.c.b$e */
    /* loaded from: classes2-dex2jar.jar:h/h/c/b$e.class */
    public static class C6310e extends LinearLayout {

        /* renamed from: a */
        public TextView f15636a;

        /* renamed from: b */
        public TextView f15637b;

        /* renamed from: c */
        public int f15638c = C6333a.m23273a(getContext(), 3.0f);

        /* renamed from: d */
        public int f15639d = C6333a.m23273a(getContext(), 7.0f);

        /* renamed from: e */
        public int f15640e = Color.parseColor("#E6F2FF");

        /* renamed from: f */
        public int f15641f = Color.parseColor("#020C17");

        public C6310e(Context context) {
            super(context);
            int i = this.f15638c;
            setPadding(i, i, i, i);
            setBackgroundColor(this.f15641f);
            setOrientation(1);
            this.f15636a = new TextView(context);
            this.f15636a.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            this.f15636a.setBackgroundColor(-16777216);
            this.f15636a.setTextColor(-1);
            this.f15636a.setGravity(17);
            this.f15636a.setTextSize(15.0f);
            TextView textView = this.f15636a;
            int i2 = this.f15638c;
            int i3 = this.f15639d;
            textView.setPadding(i2, i3, i2, i3);
            addView(this.f15636a);
            m23316a();
            this.f15637b = new TextView(context);
            m23315a("Show API Log", this.f15637b);
            m23316a();
        }

        /* renamed from: a */
        public View m23314a(String str, String str2) {
            View view = new View(getContext());
            view.setLayoutParams(new LinearLayout.LayoutParams(-1, 1));
            view.setBackgroundColor(-7829368);
            addView(view);
            TextView textView = new TextView(getContext());
            textView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            textView.setTextColor(this.f15641f);
            textView.setGravity(17);
            textView.setTextSize(20.0f);
            textView.setText(str2);
            textView.setBackgroundColor(this.f15640e);
            int i = this.f15638c;
            int i2 = this.f15639d;
            textView.setPadding(i, i2, i, i2);
            addView(textView);
            return textView;
        }

        /* renamed from: a */
        public void m23316a() {
            View view = new View(getContext());
            view.setLayoutParams(new LinearLayout.LayoutParams(-1, 1));
            view.setBackgroundColor(-7829368);
            addView(view);
        }

        /* renamed from: a */
        public void m23315a(String str, TextView textView) {
            textView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            textView.setTextColor(this.f15641f);
            textView.setGravity(17);
            textView.setTextSize(20.0f);
            textView.setText(str);
            textView.setBackgroundColor(this.f15640e);
            int i = this.f15638c;
            int i2 = this.f15639d;
            textView.setPadding(i, i2, i, i2);
            addView(textView);
        }
    }

    public AbstractC6305b(Context context) {
        this.f15622b = context;
        f15620h.clear();
    }

    /* renamed from: a */
    public final Notification m23325a() {
        if (this.f15623c != 0) {
            return new NotificationCompat.Builder(this.f15622b, "develop_channel").setSmallIcon(this.f15623c).setContentText(mo4048c()).setContentTitle(mo4047d()).setTicker(mo4048c()).setStyle(new NotificationCompat.BigTextStyle().setSummaryText(null).bigText(mo4048c())).setDefaults(0).setContentIntent(PendingIntent.getBroadcast(this.f15622b, 0, new Intent("rage_notification_popup").setPackage(this.f15622b.getPackageName()), 134217728)).setAutoCancel(false).setOngoing(true).setPriority(1).build();
        }
        throw new RuntimeException("please provide icon");
    }

    /* renamed from: a */
    public void m23324a(int i) {
        this.f15623c = i;
    }

    /* renamed from: a */
    public void mo4049a(String str) {
    }

    /* renamed from: a */
    public void m23323a(String str, String str2) {
        this.f15624d.add(new Pair<>(str, str2));
    }

    /* renamed from: a */
    public void m23322a(boolean z) {
        if (z) {
            m23319f();
        } else {
            m23318g();
        }
    }

    /* renamed from: b */
    public ArrayBlockingQueue<String> m23321b() {
        return f15620h;
    }

    /* renamed from: b */
    public void m23320b(String str) {
        synchronized (this) {
            if (f15620h.remainingCapacity() == 0) {
                f15620h.poll();
            }
            f15620h.add(str);
        }
    }

    /* renamed from: c */
    public abstract String mo4048c();

    /* renamed from: d */
    public abstract String mo4047d();

    /* renamed from: e */
    public void mo4046e() {
        Context context;
        if (!(this.f15627g || (context = this.f15622b) == null)) {
            Dialog dialog = new Dialog(context);
            C6310e eVar = new C6310e(context);
            TextView textView = eVar.f15636a;
            TextView textView2 = eVar.f15637b;
            for (Pair<String, String> pair : this.f15624d) {
                eVar.m23314a((String) pair.first, (String) pair.second).setOnClickListener(new View$OnClickListenerC6306a(pair, dialog));
            }
            textView.setText(Html.fromHtml(mo4048c()));
            textView.setSingleLine(false);
            textView2.setOnClickListener(new View$OnClickListenerC6307b(context, dialog));
            dialog.requestWindowFeature(1);
            dialog.setContentView(eVar);
            dialog.getWindow().setType(Build.VERSION.SDK_INT >= 26 ? 2038 : AdError.INTERNAL_ERROR_2003);
            dialog.show();
            dialog.setOnDismissListener(new DialogInterface$OnDismissListenerC6308c());
            this.f15627g = true;
        }
    }

    /* renamed from: f */
    public final void m23319f() {
        synchronized (this) {
            if (!this.f15626f) {
                this.f15626f = true;
                NotificationManagerCompat.from(this.f15622b).notify(this.f15621a, m23325a());
                this.f15622b.registerReceiver(this.f15625e, new IntentFilter("rage_notification_popup"));
            }
        }
    }

    /* renamed from: g */
    public final void m23318g() {
        synchronized (this) {
            if (this.f15626f) {
                this.f15626f = false;
                NotificationManagerCompat.from(this.f15622b).cancel(this.f15621a);
                try {
                    this.f15622b.unregisterReceiver(this.f15625e);
                } catch (Throwable th) {
                }
            }
        }
    }

    /* renamed from: h */
    public void m23317h() {
        synchronized (this) {
            if (this.f15626f) {
                NotificationManagerCompat.from(this.f15622b).notify(this.f15621a, m23325a());
            }
        }
    }
}
