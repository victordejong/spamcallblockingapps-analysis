package p081h.p203i.p325c.p364t;

import android.util.Log;
import android.util.Pair;
import androidx.collection.ArrayMap;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p293r.AbstractC9128a;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
/* renamed from: h.i.c.t.i0 */
/* loaded from: classes2-dex2jar.jar:h/i/c/t/i0.class */
public class C9881i0 {

    /* renamed from: a */
    public final Executor f22370a;
    @GuardedBy("this")

    /* renamed from: b */
    public final Map<Pair<String, String>, AbstractC9143h<AbstractC9912v>> f22371b = new ArrayMap();

    /* renamed from: h.i.c.t.i0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/t/i0$a.class */
    public interface AbstractC9882a {
        AbstractC9143h<AbstractC9912v> start();
    }

    public C9881i0(Executor executor) {
        this.f22370a = executor;
    }

    /* renamed from: a */
    public final /* synthetic */ AbstractC9143h m14048a(Pair pair, AbstractC9143h hVar) throws Exception {
        synchronized (this) {
            this.f22371b.remove(pair);
        }
        return hVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public AbstractC9143h<AbstractC9912v> m14047a(String str, String str2, AbstractC9882a aVar) {
        synchronized (this) {
            final Pair pair = new Pair(str, str2);
            AbstractC9143h<AbstractC9912v> hVar = this.f22371b.get(pair);
            if (hVar != null) {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String valueOf = String.valueOf(pair);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 29);
                    sb.append("Joining ongoing request for: ");
                    sb.append(valueOf);
                    sb.toString();
                }
                return hVar;
            }
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf2 = String.valueOf(pair);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 24);
                sb2.append("Making new request for: ");
                sb2.append(valueOf2);
                sb2.toString();
            }
            AbstractC9143h b = aVar.start().mo16012b(this.f22370a, new AbstractC9128a(this, pair) { // from class: h.i.c.t.h0

                /* renamed from: a */
                public final C9881i0 f22367a;

                /* renamed from: b */
                public final Pair f22368b;

                {
                    this.f22367a = this;
                    this.f22368b = pair;
                }

                @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9128a
                /* renamed from: a */
                public final Object mo14017a(AbstractC9143h hVar2) {
                    this.f22367a.m14048a(this.f22368b, hVar2);
                    return hVar2;
                }
            });
            this.f22371b.put(pair, b);
            return b;
        }
    }
}
