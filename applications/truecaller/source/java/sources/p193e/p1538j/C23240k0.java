package p193e.p1538j;

import android.os.Handler;
import com.facebook.GraphRequest;
import com.mopub.common.AdType;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import s1.u.i;
import s1.z.c.l;
@Metadata(d1 = {"��d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n��\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018�� <2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003;<=B\u0007\b\u0016¢\u0006\u0002\u0010\u0003B\u0015\b\u0016\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005¢\u0006\u0002\u0010\u0006B\u001b\b\u0016\u0012\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u0007\"\u00020\u0002¢\u0006\u0002\u0010\bB\u000f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020��¢\u0006\u0002\u0010\tJ\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0002H\u0016J\u0018\u0010(\u001a\u00020+2\u0006\u0010,\u001a\u00020 2\u0006\u0010*\u001a\u00020\u0002H\u0016J\u000e\u0010-\u001a\u00020+2\u0006\u0010.\u001a\u00020\u0018J\b\u0010/\u001a\u00020+H\u0016J\f\u00100\u001a\b\u0012\u0004\u0012\u00020201J\u000e\u00103\u001a\b\u0012\u0004\u0012\u00020201H\u0002J\u0006\u00104\u001a\u000205J\b\u00106\u001a\u000205H\u0002J\u0011\u00107\u001a\u00020\u00022\u0006\u0010,\u001a\u00020 H\u0096\u0002J\u0010\u00108\u001a\u00020\u00022\u0006\u0010,\u001a\u00020 H\u0016J\u000e\u00109\u001a\u00020+2\u0006\u0010.\u001a\u00020\u0018J\u0019\u0010:\u001a\u00020\u00022\u0006\u0010,\u001a\u00020 2\u0006\u0010*\u001a\u00020\u0002H\u0096\u0002R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R*\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\u001c\u001a\u00020\u000b¢\u0006\b\n��\u001a\u0004\b\u001d\u0010\rR*\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u00172\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u001e\u0010\u001bR\u0014\u0010\u001f\u001a\u00020 8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"R$\u0010$\u001a\u00020 2\u0006\u0010#\u001a\u00020 8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b%\u0010\"\"\u0004\b&\u0010'R\u000e\u0010#\u001a\u00020 X\u0082\u000e¢\u0006\u0002\n��¨\u0006>"}, d2 = {"Lcom/facebook/GraphRequestBatch;", "Ljava/util/AbstractList;", "Lcom/facebook/GraphRequest;", "()V", "requests", "", "(Ljava/util/Collection;)V", "", "([Lcom/facebook/GraphRequest;)V", "(Lcom/facebook/GraphRequestBatch;)V", "batchApplicationId", "", "getBatchApplicationId", "()Ljava/lang/String;", "setBatchApplicationId", "(Ljava/lang/String;)V", "callbackHandler", "Landroid/os/Handler;", "getCallbackHandler", "()Landroid/os/Handler;", "setCallbackHandler", "(Landroid/os/Handler;)V", "<set-?>", "", "Lcom/facebook/GraphRequestBatch$Callback;", "callbacks", "getCallbacks", "()Ljava/util/List;", "id", "getId", "getRequests", "size", "", "getSize", "()I", "timeoutInMilliseconds", "timeout", "getTimeout", "setTimeout", "(I)V", "add", "", "element", "", "index", "addCallback", "callback", AdType.CLEAR, "executeAndWait", "", "Lcom/facebook/GraphResponse;", "executeAndWaitImpl", "executeAsync", "Lcom/facebook/GraphRequestAsyncTask;", "executeAsyncImpl", "get", "removeAt", "removeCallback", "set", "Callback", "Companion", "OnProgressCallback", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.j.k0 */
/* loaded from: classes2-dex2jar.jar:e/j/k0.class */
public final class C23240k0 extends AbstractList<GraphRequest> {

    /* renamed from: e */
    public static final AtomicInteger f64324e = new AtomicInteger();

    /* renamed from: a */
    public Handler f64325a;

    /* renamed from: c */
    public List<GraphRequest> f64327c;

    /* renamed from: b */
    public final String f64326b = String.valueOf(f64324e.incrementAndGet());

    /* renamed from: d */
    public List<AbstractC23241a> f64328d = new ArrayList();

    @Metadata(d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\bæ\u0080\u0001\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/facebook/GraphRequestBatch$Callback;", "", "onBatchCompleted", "", "batch", "Lcom/facebook/GraphRequestBatch;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: e.j.k0$a */
    /* loaded from: classes2-dex2jar.jar:e/j/k0$a.class */
    public interface AbstractC23241a {
        /* renamed from: a */
        void mo7333a(C23240k0 c23240k0);
    }

    @Metadata(d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0002\bf\u0018��2\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H&¨\u0006\t"}, d2 = {"Lcom/facebook/GraphRequestBatch$OnProgressCallback;", "Lcom/facebook/GraphRequestBatch$Callback;", "onBatchProgress", "", "batch", "Lcom/facebook/GraphRequestBatch;", "current", "", "max", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: e.j.k0$b */
    /* loaded from: classes2-dex2jar.jar:e/j/k0$b.class */
    public interface AbstractC23242b extends AbstractC23241a {
        /* renamed from: b */
        void m7332b(C23240k0 c23240k0, long j, long j2);
    }

    public C23240k0(Collection<GraphRequest> collection) {
        l.e(collection, "requests");
        this.f64327c = new ArrayList(collection);
    }

    public C23240k0(GraphRequest... graphRequestArr) {
        l.e(graphRequestArr, "requests");
        this.f64327c = new ArrayList(i.g(graphRequestArr));
    }

    /* renamed from: a */
    public GraphRequest m7334a(int i) {
        return this.f64327c.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, Object obj) {
        GraphRequest graphRequest = (GraphRequest) obj;
        l.e(graphRequest, "element");
        this.f64327c.add(i, graphRequest);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object obj) {
        GraphRequest graphRequest = (GraphRequest) obj;
        l.e(graphRequest, "element");
        return this.f64327c.add(graphRequest);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        this.f64327c.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (!(obj == null ? true : obj instanceof GraphRequest)) {
            return false;
        }
        return super.contains((GraphRequest) obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        return this.f64327c.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (!(obj == null ? true : obj instanceof GraphRequest)) {
            return -1;
        }
        return super.indexOf((GraphRequest) obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (!(obj == null ? true : obj instanceof GraphRequest)) {
            return -1;
        }
        return super.lastIndexOf((GraphRequest) obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public Object remove(int i) {
        return this.f64327c.remove(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean remove(Object obj) {
        if (!(obj == null ? true : obj instanceof GraphRequest)) {
            return false;
        }
        return super.remove((GraphRequest) obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i, Object obj) {
        GraphRequest graphRequest = (GraphRequest) obj;
        l.e(graphRequest, "element");
        return this.f64327c.set(i, graphRequest);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f64327c.size();
    }
}
