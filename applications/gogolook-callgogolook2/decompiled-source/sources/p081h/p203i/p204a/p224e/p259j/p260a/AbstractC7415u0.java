package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaio;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.u0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/u0.class */
public interface AbstractC7415u0 extends IInterface {
    /* renamed from: a */
    void mo20625a(zzaio zzaioVar) throws RemoteException;

    /* renamed from: a */
    void mo20624a(AbstractC7383r4 r4Var) throws RemoteException;

    /* renamed from: a */
    void mo20656a(AbstractC7391s0 s0Var) throws RemoteException;

    /* renamed from: a */
    void mo20623a(AbstractC7475z0 z0Var) throws RemoteException;

    void destroy() throws RemoteException;

    /* renamed from: e */
    void mo20622e(AbstractC7106b bVar) throws RemoteException;

    /* renamed from: e */
    void mo20655e(String str) throws RemoteException;

    Bundle getAdMetadata() throws RemoteException;

    String getMediationAdapterClassName() throws RemoteException;

    boolean isLoaded() throws RemoteException;

    /* renamed from: l */
    void mo20654l(AbstractC7106b bVar) throws RemoteException;

    /* renamed from: p */
    void mo20621p(AbstractC7106b bVar) throws RemoteException;

    void pause() throws RemoteException;

    /* renamed from: r */
    void mo20620r(AbstractC7106b bVar) throws RemoteException;

    void resume() throws RemoteException;

    void setCustomData(String str) throws RemoteException;

    void setImmersiveMode(boolean z) throws RemoteException;

    void setUserId(String str) throws RemoteException;

    void show() throws RemoteException;
}
