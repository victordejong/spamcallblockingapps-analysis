package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
/* renamed from: h.i.a.e.d.k.q.j1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/j1.class */
public interface AbstractC6887j1 {
    /* renamed from: a */
    <A extends C6805a.AbstractC6807b, T extends AbstractC6850c<? extends AbstractC6835k, A>> T mo21516a(@NonNull T t);

    /* renamed from: a */
    void mo21519a();

    /* renamed from: a */
    void mo21511a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    /* renamed from: a */
    boolean mo21515a(AbstractC6893l lVar);

    /* renamed from: b */
    <A extends C6805a.AbstractC6807b, R extends AbstractC6835k, T extends AbstractC6850c<R, A>> T mo21509b(@NonNull T t);

    /* renamed from: b */
    void mo21510b();

    /* renamed from: c */
    ConnectionResult mo21507c();

    void connect();

    void disconnect();

    boolean isConnected();
}
