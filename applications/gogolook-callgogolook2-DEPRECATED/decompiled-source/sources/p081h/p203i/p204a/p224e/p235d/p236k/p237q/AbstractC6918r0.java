package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.os.DeadObjectException;
import android.os.RemoteException;
import android.os.TransactionTooLargeException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6858e;
import p081h.p203i.p204a.p224e.p235d.p249s.C7083o;
/* renamed from: h.i.a.e.d.k.q.r0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/r0.class */
public abstract class AbstractC6918r0 {
    public AbstractC6918r0(int i) {
    }

    /* renamed from: a */
    public static Status m21589a(RemoteException remoteException) {
        StringBuilder sb = new StringBuilder();
        if (C7083o.m21130b() && (remoteException instanceof TransactionTooLargeException)) {
            sb.append("TransactionTooLargeException: ");
        }
        sb.append(remoteException.getLocalizedMessage());
        return new Status(8, sb.toString());
    }

    /* renamed from: a */
    public abstract void mo21588a(@NonNull Status status);

    /* renamed from: a */
    public abstract void mo21587a(C6858e.C6859a<?> aVar) throws DeadObjectException;

    /* renamed from: a */
    public abstract void mo21586a(@NonNull C6921s sVar, boolean z);

    /* renamed from: a */
    public abstract void mo21585a(@NonNull RuntimeException runtimeException);
}
