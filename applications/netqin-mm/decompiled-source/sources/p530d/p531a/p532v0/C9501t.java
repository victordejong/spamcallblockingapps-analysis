package p530d.p531a.p532v0;

import io.grpc.ConnectivityState;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: d.a.v0.t */
/* loaded from: classes2-dex2jar.jar:d/a/v0/t.class */
public final class C9501t {

    /* renamed from: a */
    public ArrayList<C9502a> f36332a = new ArrayList<>();

    /* renamed from: b */
    public volatile ConnectivityState f36333b = ConnectivityState.IDLE;

    /* renamed from: d.a.v0.t$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/t$a.class */
    public static final class C9502a {

        /* renamed from: a */
        public final Runnable f36334a;

        /* renamed from: b */
        public final Executor f36335b;

        /* renamed from: a */
        public void m2585a() {
            this.f36335b.execute(this.f36334a);
        }
    }

    /* renamed from: a */
    public void m2586a(ConnectivityState connectivityState) {
        C4933n.m24794a(connectivityState, "newState");
        if (this.f36333b != connectivityState && this.f36333b != ConnectivityState.SHUTDOWN) {
            this.f36333b = connectivityState;
            if (!this.f36332a.isEmpty()) {
                ArrayList<C9502a> arrayList = this.f36332a;
                this.f36332a = new ArrayList<>();
                Iterator<C9502a> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().m2585a();
                }
            }
        }
    }
}
