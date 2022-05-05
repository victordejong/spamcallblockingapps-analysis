package com.google.firebase.appindexing;

import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.appindexing.internal.zzn;
import java.lang.ref.WeakReference;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/FirebaseUserActions.class */
public abstract class FirebaseUserActions {
    public static final String APP_INDEXING_API_TAG = "FirebaseUserActions";
    @GuardedBy
    private static WeakReference<FirebaseUserActions> zzen;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4, types: [com.google.firebase.appindexing.FirebaseUserActions] */
    public static FirebaseUserActions getInstance() {
        zzn zznVar;
        synchronized (FirebaseUserActions.class) {
            try {
                zzn zznVar2 = zzen == null ? null : zzen.get();
                zznVar = zznVar2;
                if (zznVar2 == null) {
                    zznVar = new zzn(FirebaseApp.getInstance().getApplicationContext());
                    zzen = new WeakReference<>(zznVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zznVar;
    }

    public abstract Task<Void> end(Action action);

    public abstract Task<Void> start(Action action);
}
