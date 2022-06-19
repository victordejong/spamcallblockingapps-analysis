package p193e.p1538j;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.facebook.GraphRequest;
import com.facebook.internal.p037u0.p040m.C1220a;
import java.net.HttpURLConnection;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n��\n\u0002\u0010\u001e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0016\u0018�� #2\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001:\u0001#B\u001b\b\u0016\u0012\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006\"\u00020\u0007¢\u0006\u0002\u0010\bB\u0015\b\u0016\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\t¢\u0006\u0002\u0010\nB\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u000b¢\u0006\u0002\u0010\fB%\b\u0016\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006\"\u00020\u0007¢\u0006\u0002\u0010\u000fB\u001f\b\u0016\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\t¢\u0006\u0002\u0010\u0010B\u0017\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0005\u001a\u00020\u000b¢\u0006\u0002\u0010\u0011J)\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0012\u0010\u001b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u0006\"\u00020\u0002H\u0017¢\u0006\u0002\u0010\u001cJ\u0016\u0010\u001d\u001a\u00020\u001e2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0014J\b\u0010 \u001a\u00020\u001eH\u0017J\b\u0010!\u001a\u00020\"H\u0016R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u0004¢\u0006\u0002\n��R.\u0010\u0015\u001a\n\u0018\u00010\u0013j\u0004\u0018\u0001`\u00142\u000e\u0010\u0012\u001a\n\u0018\u00010\u0013j\u0004\u0018\u0001`\u0014@BX\u0084\u000e¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u0005\u001a\u00020\u000b¢\u0006\b\n��\u001a\u0004\b\u0018\u0010\u0019¨\u0006$"}, d2 = {"Lcom/facebook/GraphRequestAsyncTask;", "Landroid/os/AsyncTask;", "Ljava/lang/Void;", "", "Lcom/facebook/GraphResponse;", "requests", "", "Lcom/facebook/GraphRequest;", "([Lcom/facebook/GraphRequest;)V", "", "(Ljava/util/Collection;)V", "Lcom/facebook/GraphRequestBatch;", "(Lcom/facebook/GraphRequestBatch;)V", "connection", "Ljava/net/HttpURLConnection;", "(Ljava/net/HttpURLConnection;[Lcom/facebook/GraphRequest;)V", "(Ljava/net/HttpURLConnection;Ljava/util/Collection;)V", "(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)V", "<set-?>", "Ljava/lang/Exception;", "Lkotlin/Exception;", "exception", "getException", "()Ljava/lang/Exception;", "getRequests", "()Lcom/facebook/GraphRequestBatch;", "doInBackground", "params", "([Ljava/lang/Void;)Ljava/util/List;", "onPostExecute", "", "result", "onPreExecute", "toString", "", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.j.j0 */
/* loaded from: classes2-dex2jar.jar:e/j/j0.class */
public class AsyncTaskC23238j0 extends AsyncTask<Void, Void, List<? extends C23244l0>> {

    /* renamed from: d */
    public static final String f64318d = AsyncTaskC23238j0.class.getCanonicalName();

    /* renamed from: a */
    public final HttpURLConnection f64319a = null;

    /* renamed from: b */
    public final C23240k0 f64320b;

    /* renamed from: c */
    public Exception f64321c;

    public AsyncTaskC23238j0(C23240k0 c23240k0) {
        l.e(c23240k0, "requests");
        l.e(c23240k0, "requests");
        this.f64320b = c23240k0;
    }

    /* renamed from: a */
    public void m7335a(List<C23244l0> list) {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            l.e(list, "result");
            super.onPostExecute(list);
            Exception exc = this.f64321c;
            if (exc == null) {
                return;
            }
            l.d(String.format("onPostExecute: exception encountered during request: %s", Arrays.copyOf(new Object[]{exc.getMessage()}, 1)), "java.lang.String.format(format, *args)");
            C23228f0 c23228f0 = C23228f0.f64291a;
            boolean z = C23228f0.f64299i;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    @Override // android.os.AsyncTask
    public List<? extends C23244l0> doInBackground(Void[] voidArr) {
        List<C23244l0> list;
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            Void[] voidArr2 = voidArr;
            if (C1220a.m41623b(this)) {
                list = null;
            } else {
                l.e(voidArr2, "params");
                try {
                    HttpURLConnection httpURLConnection = this.f64319a;
                    if (httpURLConnection == null) {
                        C23240k0 c23240k0 = this.f64320b;
                        Objects.requireNonNull(c23240k0);
                        list = GraphRequest.f2543k.m42005c(c23240k0);
                    } else {
                        list = GraphRequest.f2543k.m42003e(httpURLConnection, this.f64320b);
                    }
                } catch (Exception e) {
                    this.f64321c = e;
                    list = null;
                }
            }
            return list;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public /* bridge */ /* synthetic */ void onPostExecute(List<? extends C23244l0> list) {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            m7335a(list);
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            super.onPreExecute();
            C23228f0 c23228f0 = C23228f0.f64291a;
            if (C23228f0.f64299i) {
                l.d(String.format("execute async task: %s", Arrays.copyOf(new Object[]{this}, 1)), "java.lang.String.format(format, *args)");
                boolean z = C23228f0.f64299i;
            }
            if (this.f64320b.f64325a != null) {
                return;
            }
            this.f64320b.f64325a = Thread.currentThread() instanceof HandlerThread ? new Handler() : new Handler(Looper.getMainLooper());
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    public String toString() {
        StringBuilder m8696K = C22128a.m8696K("{RequestAsyncTask: ", " connection: ");
        m8696K.append(this.f64319a);
        m8696K.append(", requests: ");
        m8696K.append(this.f64320b);
        m8696K.append("}");
        String sb = m8696K.toString();
        l.d(sb, "StringBuilder()\n        .append(\"{RequestAsyncTask: \")\n        .append(\" connection: \")\n        .append(connection)\n        .append(\", requests: \")\n        .append(requests)\n        .append(\"}\")\n        .toString()");
        return sb;
    }
}
