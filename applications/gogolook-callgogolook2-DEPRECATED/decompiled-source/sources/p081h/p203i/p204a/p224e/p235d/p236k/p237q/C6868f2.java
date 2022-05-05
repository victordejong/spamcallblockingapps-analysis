package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.d.k.q.f2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/f2.class */
public class C6868f2 extends AbstractDialogInterface$OnCancelListenerC6877h2 {

    /* renamed from: f */
    public final SparseArray<C6869a> f16838f = new SparseArray<>();

    /* renamed from: h.i.a.e.d.k.q.f2$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/f2$a.class */
    public final class C6869a implements AbstractC6825f.AbstractC6828c {

        /* renamed from: a */
        public final int f16839a;

        /* renamed from: b */
        public final AbstractC6825f f16840b;

        /* renamed from: c */
        public final AbstractC6825f.AbstractC6828c f16841c;

        public C6869a(int i, AbstractC6825f fVar, AbstractC6825f.AbstractC6828c cVar) {
            this.f16839a = i;
            this.f16840b = fVar;
            this.f16841c = cVar;
            fVar.mo21497a(this);
        }

        @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f.AbstractC6828c
        /* renamed from: a */
        public final void mo21591a(@NonNull ConnectionResult connectionResult) {
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("beginFailureResolution for ");
            sb.append(valueOf);
            sb.toString();
            C6868f2.this.m21670b(connectionResult, this.f16839a);
        }
    }

    public C6868f2(AbstractC6874h hVar) {
        super(hVar);
        this.f6535a.mo21475a("AutoManageHelper", this);
    }

    /* renamed from: b */
    public static C6868f2 m21682b(C6870g gVar) {
        AbstractC6874h a = LifecycleCallback.m31970a(gVar);
        C6868f2 f2Var = (C6868f2) a.mo21474a("AutoManageHelper", C6868f2.class);
        return f2Var != null ? f2Var : new C6868f2(a);
    }

    /* renamed from: a */
    public final void m21686a(int i) {
        C6869a aVar = this.f16838f.get(i);
        this.f16838f.remove(i);
        if (aVar != null) {
            aVar.f16840b.mo21494b(aVar);
            aVar.f16840b.mo21492d();
        }
    }

    /* renamed from: a */
    public final void m21685a(int i, AbstractC6825f fVar, AbstractC6825f.AbstractC6828c cVar) {
        C7021t.m21289a(fVar, "GoogleApiClient instance cannot be null");
        boolean z = this.f16838f.indexOfKey(i) < 0;
        StringBuilder sb = new StringBuilder(54);
        sb.append("Already managing a GoogleApiClient with id ");
        sb.append(i);
        C7021t.m21281b(z, sb.toString());
        C6884i2 i2Var = this.f16856c.get();
        boolean z2 = this.f16855b;
        String valueOf = String.valueOf(i2Var);
        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 49);
        sb2.append("starting AutoManage for client ");
        sb2.append(i);
        sb2.append(" ");
        sb2.append(z2);
        sb2.append(" ");
        sb2.append(valueOf);
        sb2.toString();
        this.f16838f.put(i, new C6869a(i, fVar, cVar));
        if (this.f16855b && i2Var == null) {
            String valueOf2 = String.valueOf(fVar);
            StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf2).length() + 11);
            sb3.append("connecting ");
            sb3.append(valueOf2);
            sb3.toString();
            fVar.mo21493c();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractDialogInterface$OnCancelListenerC6877h2
    /* renamed from: a */
    public final void mo21527a(ConnectionResult connectionResult, int i) {
        if (i < 0) {
            Log.wtf("AutoManageHelper", "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set", new Exception());
            return;
        }
        C6869a aVar = this.f16838f.get(i);
        if (aVar != null) {
            m21686a(i);
            AbstractC6825f.AbstractC6828c cVar = aVar.f16841c;
            if (cVar != null) {
                cVar.mo21591a(connectionResult);
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: a */
    public void mo21684a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        for (int i = 0; i < this.f16838f.size(); i++) {
            C6869a b = m21683b(i);
            if (b != null) {
                printWriter.append((CharSequence) str).append("GoogleApiClient #").print(b.f16839a);
                printWriter.println(":");
                b.f16840b.mo21496a(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
            }
        }
    }

    @Nullable
    /* renamed from: b */
    public final C6869a m21683b(int i) {
        if (this.f16838f.size() <= i) {
            return null;
        }
        SparseArray<C6869a> sparseArray = this.f16838f;
        return sparseArray.get(sparseArray.keyAt(i));
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractDialogInterface$OnCancelListenerC6877h2, com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: d */
    public void mo21525d() {
        super.mo21525d();
        boolean z = this.f16855b;
        String valueOf = String.valueOf(this.f16838f);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 14);
        sb.append("onStart ");
        sb.append(z);
        sb.append(" ");
        sb.append(valueOf);
        sb.toString();
        if (this.f16856c.get() == null) {
            for (int i = 0; i < this.f16838f.size(); i++) {
                C6869a b = m21683b(i);
                if (b != null) {
                    b.f16840b.mo21493c();
                }
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractDialogInterface$OnCancelListenerC6877h2, com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: e */
    public void mo16034e() {
        super.mo16034e();
        for (int i = 0; i < this.f16838f.size(); i++) {
            C6869a b = m21683b(i);
            if (b != null) {
                b.f16840b.mo21492d();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractDialogInterface$OnCancelListenerC6877h2
    /* renamed from: f */
    public final void mo21524f() {
        for (int i = 0; i < this.f16838f.size(); i++) {
            C6869a b = m21683b(i);
            if (b != null) {
                b.f16840b.mo21493c();
            }
        }
    }
}
