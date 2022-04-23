package com.google.firebase.appindexing;

import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.appindexing.internal.zzo;
import java.lang.ref.WeakReference;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/FirebaseUserActions.class */
public abstract class FirebaseUserActions {
    public static final String APP_INDEXING_API_TAG = "FirebaseUserActions";
    @GuardedBy("FirebaseUserActions.class")
    private static WeakReference<FirebaseUserActions> zzcc;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4, types: [com.google.firebase.appindexing.FirebaseUserActions] */
    public static FirebaseUserActions getInstance() {
        zzo zzoVar;
        synchronized (FirebaseUserActions.class) {
            try {
                zzo zzoVar2 = zzcc == null ? null : zzcc.get();
                zzoVar = zzoVar2;
                if (zzoVar2 == null) {
                    zzoVar = new zzo(FirebaseApp.getInstance().getApplicationContext());
                    zzcc = new WeakReference<>(zzoVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzoVar;
    }

    public abstract Task<Void> end(Action action);

    public abstract Task<Void> start(Action action);
}
