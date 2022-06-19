package p193e.p1577m.p1578a.p1642f.p1675s.p1676a;

import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.wallet.callback.CallbackInput;
import com.google.android.gms.wallet.callback.CallbackOutput;
import com.google.android.gms.wallet.callback.zzj;
import java.util.Locale;
/* renamed from: e.m.a.f.s.a.c */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/s/a/c.class */
public final class RunnableC25154c implements Runnable {

    /* renamed from: a */
    public final CallbackInput f70391a;

    /* renamed from: b */
    public final String f70392b;

    /* renamed from: c */
    public final b f70393c;

    /* renamed from: d */
    public final /* synthetic */ AbstractServiceC25155d f70394d;

    public RunnableC25154c(AbstractServiceC25155d abstractServiceC25155d, CallbackInput callbackInput, Messenger messenger, String str, int i) {
        this.f70394d = abstractServiceC25155d;
        this.f70391a = callbackInput;
        this.f70392b = str;
        this.f70393c = new b(messenger, i);
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (Log.isLoggable("BaseCallbackTaskService", 4)) {
            String.format(Locale.US, "Running Callback Task w/ tag %s", this.f70392b);
        }
        try {
            this.f70394d.m4154a(this.f70392b, this.f70391a, this.f70393c);
        } catch (Throwable th) {
            b bVar = this.f70393c;
            zzj o2 = CallbackOutput.o2();
            int i = this.f70391a.a;
            CallbackOutput callbackOutput = o2.f6557a;
            callbackOutput.a = i;
            callbackOutput.b = 5;
            String message = th.getMessage();
            CallbackOutput callbackOutput2 = o2.f6557a;
            callbackOutput2.d = message;
            synchronized (bVar) {
                if (bVar.a != null) {
                    try {
                        Preconditions.m38906b(callbackOutput2.b != 0, "Callback Response Status must be set - status value must be non-zero.");
                        Message obtain = Message.obtain();
                        obtain.what = 1;
                        obtain.arg1 = bVar.b;
                        Bundle bundle = new Bundle();
                        Parcel obtain2 = Parcel.obtain();
                        callbackOutput2.writeToParcel(obtain2, 0);
                        byte[] marshall = obtain2.marshall();
                        obtain2.recycle();
                        bundle.putByteArray("extra_callback_output", marshall);
                        obtain.setData(bundle);
                        Messenger messenger = bVar.a;
                        if (messenger != null) {
                            messenger.send(obtain);
                        }
                        bVar.a = null;
                    } catch (RemoteException e) {
                        throw th;
                    }
                }
                throw th;
            }
        }
    }
}
