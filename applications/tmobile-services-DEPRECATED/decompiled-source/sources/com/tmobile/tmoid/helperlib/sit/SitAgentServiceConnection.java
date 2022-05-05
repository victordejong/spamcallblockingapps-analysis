package com.tmobile.tmoid.helperlib.sit;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.IBinder;
import androidx.core.app.NotificationCompat;
import com.apptentive.android.sdk.Apptentive;
import com.tmobile.tmoid.helperlib.AgentNotFoundException;
import com.tmobile.tmoid.helperlib.AgentServiceConnectionMode;
import com.tmobile.tmoid.helperlib.C2031R;
import com.tmobile.tmoid.helperlib.sit.internal.ISitHelperLibrary;
import com.tmobile.tmoid.helperlib.sit.internal.SitAgentImpl;
import com.tmobile.tmoid.helperlib.util.Log;
import java.util.concurrent.Semaphore;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/SitAgentServiceConnection.class */
public class SitAgentServiceConnection {

    /* renamed from: e */
    private static final String f14780e = SitAgentServiceConnection.class.getSimpleName() + "_preferences";

    /* renamed from: a */
    volatile SitAgent f14781a;

    /* renamed from: b */
    ServiceConnection f14782b;

    /* renamed from: c */
    Semaphore f14783c = new Semaphore(0);

    /* renamed from: d */
    AgentServiceConnectionMode f14784d;

    /* renamed from: com.tmobile.tmoid.helperlib.sit.SitAgentServiceConnection$2 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/SitAgentServiceConnection$2.class */
    class ServiceConnectionC20452 implements ServiceConnection {

        /* renamed from: a */
        final /* synthetic */ SitAgentServiceConnection f14787a;

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.m4654d("TMO-Agent.SitAgentServiceConnection", "onServiceConnected(thread:" + Thread.currentThread().getId() + ")");
            this.f14787a.f14781a = new SitAgentImpl(ISitHelperLibrary.Stub.m4806a(iBinder));
            this.f14787a.f14783c.release();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.m4654d("TMO-Agent.SitAgentServiceConnection", "onServiceDisconnected(thread:" + Thread.currentThread().getId() + ")");
            this.f14787a.f14781a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tmobile.tmoid.helperlib.sit.SitAgentServiceConnection$3 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/SitAgentServiceConnection$3.class */
    public static /* synthetic */ class C20463 {

        /* renamed from: a */
        static final /* synthetic */ int[] f14788a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[AgentServiceConnectionMode.values().length];
            f14788a = iArr;
            try {
                iArr[AgentServiceConnectionMode.REMOTE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f14788a[AgentServiceConnectionMode.REMOTE_ELSE_LOCAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f14788a[AgentServiceConnectionMode.LOCAL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/SitAgentServiceConnection$ConnectedCallback.class */
    public interface ConnectedCallback {
        /* renamed from: a */
        void mo4989a(SitAgentServiceConnection sitAgentServiceConnection);
    }

    public SitAgentServiceConnection(Context context, final ConnectedCallback connectedCallback, AgentServiceConnectionMode agentServiceConnectionMode) throws AgentNotFoundException {
        this.f14784d = AgentServiceConnectionMode.REMOTE;
        this.f14784d = agentServiceConnectionMode;
        m4992c(context);
        Log.init(context, Log.LoggingMode.REMOTE_VIA_IPC, "TMO-Agent.SitAgentServiceConnection");
        this.f14782b = new ServiceConnection() { // from class: com.tmobile.tmoid.helperlib.sit.SitAgentServiceConnection.1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                Log.m4654d("TMO-Agent.SitAgentServiceConnection", "onServiceConnected");
                SitAgentServiceConnection.this.f14781a = new SitAgentImpl(ISitHelperLibrary.Stub.m4806a(iBinder));
                connectedCallback.mo4989a(SitAgentServiceConnection.this);
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                Log.m4654d("TMO-Agent.SitAgentServiceConnection", "onServiceDisconnected");
                SitAgentServiceConnection.this.f14781a = null;
            }
        };
        m4994a(context);
        Log.m4654d("TMO-Agent.SitAgentServiceConnection", "Done dispatching Intent to SIT service.");
    }

    /* renamed from: a */
    private void m4994a(Context context) {
        Intent intent = new Intent("com.tmobile.tmoid.helperlib.sit.ISitHelperLibrary");
        if (AgentServiceConnectionMode.LOCAL.equals(this.f14784d)) {
            intent.setPackage(context.getPackageName());
        } else {
            intent.setPackage("com.tmobile.tmoid.agent");
        }
        intent.putExtra(Apptentive.Version.TYPE, "1.0");
        context.bindService(intent, this.f14782b, 1);
        Log.m4650i("TMO-Agent.SitAgentServiceConnection", "Binding to SIT service with SIT_LIBRARY_VERSION: 1.0");
    }

    /* renamed from: b */
    private void m4993b(Context context) throws AgentNotFoundException {
        try {
            context.getPackageManager().getPackageInfo("com.tmobile.tmoid.agent", 1);
        } catch (PackageManager.NameNotFoundException e) {
            throw new AgentNotFoundException(e);
        }
    }

    /* renamed from: c */
    private void m4992c(Context context) throws AgentNotFoundException {
        Log.m4654d("TMO-Agent.SitAgentServiceConnection", "Checking for SIT agent; connection mode: " + this.f14784d);
        int i = C20463.f14788a[this.f14784d.ordinal()];
        if (i == 1) {
            m4993b(context);
        } else if (i == 2) {
            try {
                m4993b(context);
                this.f14784d = AgentServiceConnectionMode.REMOTE;
            } catch (AgentNotFoundException e) {
                SharedPreferences sharedPreferences = context.getSharedPreferences(f14780e, 0);
                if (sharedPreferences.getBoolean("sit_showldDisplayFullVersionNotification", true)) {
                    sharedPreferences.edit().putBoolean("sit_showldDisplayFullVersionNotification", false);
                    sharedPreferences.edit().commit();
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setData(Uri.parse("https://play.google.com/store/apps/details?id=com.tmobile.tmoid.agent"));
                    NotificationCompat.Builder builder = new NotificationCompat.Builder(context);
                    builder.setSmallIcon(C2031R.C2033drawable.ic_launcher);
                    builder.setContentTitle(context.getString(C2031R.string.notif_install_agent_title));
                    builder.setAutoCancel(true);
                    builder.setContentText(context.getString(C2031R.string.notif_install_agent_content));
                    builder.setContentIntent(PendingIntent.getActivity(context, 0, intent, 134217728));
                    NotificationCompat.BigTextStyle bigTextStyle = new NotificationCompat.BigTextStyle();
                    bigTextStyle.m19787q(context.getString(C2031R.string.notif_install_agent_expanded_content));
                    builder.setStyle(bigTextStyle);
                    ((NotificationManager) context.getSystemService("notification")).notify(1, builder.build());
                }
                this.f14784d = AgentServiceConnectionMode.LOCAL;
            }
        }
        Log.m4654d("TMO-Agent.SitAgentServiceConnection", "Done checking for SIT agent; new connection mode: " + this.f14784d);
    }

    /* renamed from: d */
    public SitAgent m4991d() {
        return this.f14781a;
    }

    /* renamed from: e */
    public boolean m4990e() {
        return this.f14781a != null;
    }
}
