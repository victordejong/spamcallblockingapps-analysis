package com.tmobile.tmoid.helperlib;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.IBinder;
import com.tmobile.tmoid.helperlib.impl.AgentImpl;
import com.tmobile.tmoid.helperlib.impl.IHelperLibrary;
import com.tmobile.tmoid.helperlib.util.Log;
import java.util.concurrent.Semaphore;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/AgentServiceConnection.class */
public class AgentServiceConnection {

    /* renamed from: a */
    private AgentServiceState f14718a;

    /* renamed from: c */
    volatile Agent f14720c;

    /* renamed from: b */
    Semaphore f14719b = new Semaphore(0);

    /* renamed from: d */
    AgentServiceConnectionMode f14721d = AgentServiceConnectionMode.REMOTE;

    /* renamed from: com.tmobile.tmoid.helperlib.AgentServiceConnection$1 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/AgentServiceConnection$1.class */
    class ServiceConnectionC20261 implements ServiceConnection {

        /* renamed from: a */
        final /* synthetic */ Context f14722a;

        /* renamed from: b */
        final /* synthetic */ ConnectedCallback f14723b;

        /* renamed from: c */
        final /* synthetic */ AgentServiceConnection f14724c;

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.m4654d("TMO-Helperlib", "onServiceConnected(thread:" + Thread.currentThread().getId() + ")");
            this.f14724c.f14720c = new AgentImpl(IHelperLibrary.Stub.m5005a(iBinder), this.f14722a, this.f14724c.f14721d);
            this.f14724c.f14718a = AgentServiceState.CONNECTED;
            this.f14723b.m5060a(this.f14724c);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.m4654d("TMO-Helperlib", "onServiceDisconnected(thread:" + Thread.currentThread().getId() + ")");
            this.f14724c.f14718a = AgentServiceState.DISCONNECTED;
            this.f14724c.f14720c = null;
        }
    }

    /* renamed from: com.tmobile.tmoid.helperlib.AgentServiceConnection$2 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/AgentServiceConnection$2.class */
    class ServiceConnectionC20272 implements ServiceConnection {

        /* renamed from: a */
        final /* synthetic */ Context f14725a;

        /* renamed from: b */
        final /* synthetic */ AgentServiceConnection f14726b;

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.m4654d("TMO-Helperlib", "onServiceConnected(thread:" + Thread.currentThread().getId() + ")");
            this.f14726b.f14720c = new AgentImpl(IHelperLibrary.Stub.m5005a(iBinder), this.f14725a, this.f14726b.f14721d);
            this.f14726b.f14718a = AgentServiceState.CONNECTED;
            this.f14726b.f14719b.release();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.m4654d("TMO-Helperlib", "onServiceDisconnected(thread:" + Thread.currentThread().getId() + ")");
            this.f14726b.f14718a = AgentServiceState.DISCONNECTED;
            this.f14726b.f14720c = null;
        }
    }

    /* renamed from: com.tmobile.tmoid.helperlib.AgentServiceConnection$3 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/AgentServiceConnection$3.class */
    final class DialogInterface$OnClickListenerC20283 implements DialogInterface.OnClickListener {

        /* renamed from: f */
        final /* synthetic */ Activity f14727f;

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse("https://play.google.com/store/apps/details?id=com.tmobile.tmoid.agent"));
            this.f14727f.startActivity(intent);
            this.f14727f.finish();
        }
    }

    /* renamed from: com.tmobile.tmoid.helperlib.AgentServiceConnection$4 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/AgentServiceConnection$4.class */
    static /* synthetic */ class C20294 {

        /* renamed from: a */
        static final /* synthetic */ int[] f14728a;

        static {
            int[] iArr = new int[AgentServiceState.values().length];
            f14728a = iArr;
            try {
                iArr[AgentServiceState.NOT_INITIALIZED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/AgentServiceConnection$AgentServiceState.class */
    private enum AgentServiceState {
        NOT_INITIALIZED,
        CONNECTED,
        DISCONNECTED
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/AgentServiceConnection$ConnectedCallback.class */
    public interface ConnectedCallback {
        /* renamed from: a */
        void m5060a(AgentServiceConnection agentServiceConnection);
    }

    static {
        String str = AgentServiceConnection.class.getSimpleName() + "_preferences";
    }

    public AgentServiceConnection() {
        AgentServiceState agentServiceState = AgentServiceState.NOT_INITIALIZED;
    }
}
