package p081h.p154f;

import android.os.Handler;
import com.facebook.GraphRequest;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: h.f.r */
/* loaded from: classes-dex2jar.jar:h/f/r.class */
public class C6145r extends AbstractList<GraphRequest> {

    /* renamed from: g */
    public static AtomicInteger f15270g = new AtomicInteger();

    /* renamed from: a */
    public Handler f15271a;

    /* renamed from: b */
    public List<GraphRequest> f15272b;

    /* renamed from: c */
    public int f15273c = 0;

    /* renamed from: d */
    public final String f15274d = Integer.valueOf(f15270g.incrementAndGet()).toString();

    /* renamed from: e */
    public List<AbstractC6146a> f15275e = new ArrayList();

    /* renamed from: f */
    public String f15276f;

    /* renamed from: h.f.r$a */
    /* loaded from: classes-dex2jar.jar:h/f/r$a.class */
    public interface AbstractC6146a {
        /* renamed from: a */
        void mo23707a(C6145r rVar);
    }

    /* renamed from: h.f.r$b */
    /* loaded from: classes-dex2jar.jar:h/f/r$b.class */
    public interface AbstractC6147b extends AbstractC6146a {
        /* renamed from: a */
        void m23706a(C6145r rVar, long j, long j2);
    }

    public C6145r() {
        this.f15272b = new ArrayList();
        this.f15272b = new ArrayList();
    }

    public C6145r(Collection<GraphRequest> collection) {
        this.f15272b = new ArrayList();
        this.f15272b = new ArrayList(collection);
    }

    public C6145r(GraphRequest... graphRequestArr) {
        this.f15272b = new ArrayList();
        this.f15272b = Arrays.asList(graphRequestArr);
    }

    /* renamed from: a */
    public final void add(int i, GraphRequest graphRequest) {
        this.f15272b.add(i, graphRequest);
    }

    /* renamed from: a */
    public final void m23721a(Handler handler) {
        this.f15271a = handler;
    }

    /* renamed from: a */
    public void m23719a(AbstractC6146a aVar) {
        if (!this.f15275e.contains(aVar)) {
            this.f15275e.add(aVar);
        }
    }

    /* renamed from: a */
    public final boolean add(GraphRequest graphRequest) {
        return this.f15272b.add(graphRequest);
    }

    /* renamed from: b */
    public final GraphRequest set(int i, GraphRequest graphRequest) {
        return this.f15272b.set(i, graphRequest);
    }

    /* renamed from: b */
    public final List<C6148s> m23718b() {
        return m23716c();
    }

    /* renamed from: c */
    public List<C6148s> m23716c() {
        return GraphRequest.m35456a(this);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f15272b.clear();
    }

    @Override // java.util.AbstractList, java.util.List
    public final GraphRequest get(int i) {
        return this.f15272b.get(i);
    }

    /* renamed from: q */
    public final AsyncTaskC6144q m23715q() {
        return m23714r();
    }

    /* renamed from: r */
    public AsyncTaskC6144q m23714r() {
        return GraphRequest.m35435b(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final GraphRequest remove(int i) {
        return this.f15272b.remove(i);
    }

    /* renamed from: s */
    public final String m23713s() {
        return this.f15276f;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f15272b.size();
    }

    /* renamed from: t */
    public final Handler m23712t() {
        return this.f15271a;
    }

    /* renamed from: u */
    public final List<AbstractC6146a> m23711u() {
        return this.f15275e;
    }

    /* renamed from: v */
    public final String m23710v() {
        return this.f15274d;
    }

    /* renamed from: w */
    public final List<GraphRequest> m23709w() {
        return this.f15272b;
    }

    /* renamed from: x */
    public int m23708x() {
        return this.f15273c;
    }
}
