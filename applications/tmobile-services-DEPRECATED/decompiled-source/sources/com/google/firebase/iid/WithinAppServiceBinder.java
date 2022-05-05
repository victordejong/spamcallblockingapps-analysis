package com.google.firebase.iid;

import android.content.Intent;
import android.os.Binder;
import android.os.Process;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.iid.WithinAppServiceConnection;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/WithinAppServiceBinder.class */
public class WithinAppServiceBinder extends Binder {
    private final IntentHandler intentHandler;

    /* loaded from: classes-dex2jar.jar:com/google/firebase/iid/WithinAppServiceBinder$IntentHandler.class */
    public interface IntentHandler {
        @KeepForSdk
        Task<Void> handle(Intent intent);
    }

    @KeepForSdk
    public WithinAppServiceBinder(IntentHandler intentHandler) {
        this.intentHandler = intentHandler;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void send(final WithinAppServiceConnection.BindRequest bindRequest) {
        if (Binder.getCallingUid() == Process.myUid()) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                Log.d("FirebaseInstanceId", "service received new intent via bind strategy");
            }
            this.intentHandler.handle(bindRequest.intent).mo10793c(FirebaseIidExecutors.directExecutor(), new OnCompleteListener(bindRequest) { // from class: com.google.firebase.iid.WithinAppServiceBinder$$Lambda$0
                private final WithinAppServiceConnection.BindRequest arg$1;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = bindRequest;
                }

                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    this.arg$1.finish();
                }
            });
            return;
        }
        throw new SecurityException("Binding only allowed within app");
    }
}
