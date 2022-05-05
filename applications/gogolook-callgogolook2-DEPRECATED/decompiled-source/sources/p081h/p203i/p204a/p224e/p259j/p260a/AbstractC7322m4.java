package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzjk;
import com.google.android.gms.internal.ads.zzjo;
import com.google.android.gms.internal.ads.zzme;
import com.google.android.gms.internal.ads.zznf;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.m4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/m4.class */
public interface AbstractC7322m4 extends IInterface {
    /* renamed from: D0 */
    String mo20760D0() throws RemoteException;

    /* renamed from: H */
    String mo20759H() throws RemoteException;

    /* renamed from: I */
    zzjo mo20758I() throws RemoteException;

    /* renamed from: a */
    void mo20757a(zzjo zzjoVar) throws RemoteException;

    /* renamed from: a */
    void mo20798a(zzme zzmeVar) throws RemoteException;

    /* renamed from: a */
    void mo20756a(zznf zznfVar) throws RemoteException;

    /* renamed from: a */
    void mo20797a(AbstractC7229f0 f0Var) throws RemoteException;

    /* renamed from: a */
    void mo20796a(AbstractC7268i0 i0Var, String str) throws RemoteException;

    /* renamed from: a */
    void mo20755a(AbstractC7288j7 j7Var) throws RemoteException;

    /* renamed from: a */
    void mo20754a(AbstractC7383r4 r4Var) throws RemoteException;

    /* renamed from: a */
    void mo20753a(AbstractC7419u4 u4Var) throws RemoteException;

    /* renamed from: a */
    void mo20752a(AbstractC7466y3 y3Var) throws RemoteException;

    /* renamed from: a */
    void mo20751a(AbstractC7475z0 z0Var) throws RemoteException;

    /* renamed from: b */
    AbstractC7106b mo20750b() throws RemoteException;

    /* renamed from: b */
    void mo20748b(AbstractC7169a5 a5Var) throws RemoteException;

    /* renamed from: b */
    void mo20747b(AbstractC7181b4 b4Var) throws RemoteException;

    /* renamed from: b */
    boolean mo20749b(zzjk zzjkVar) throws RemoteException;

    void destroy() throws RemoteException;

    /* renamed from: e */
    AbstractC7181b4 mo20746e() throws RemoteException;

    /* renamed from: g */
    void mo20795g(String str) throws RemoteException;

    /* renamed from: g0 */
    void mo20745g0() throws RemoteException;

    Bundle getAdMetadata() throws RemoteException;

    String getMediationAdapterClassName() throws RemoteException;

    AbstractC7359p5 getVideoController() throws RemoteException;

    /* renamed from: h */
    void mo20744h(boolean z) throws RemoteException;

    boolean isLoading() throws RemoteException;

    boolean isReady() throws RemoteException;

    void pause() throws RemoteException;

    void resume() throws RemoteException;

    void setImmersiveMode(boolean z) throws RemoteException;

    void setUserId(String str) throws RemoteException;

    void showInterstitial() throws RemoteException;

    void stopLoading() throws RemoteException;

    /* renamed from: z */
    AbstractC7419u4 mo20743z() throws RemoteException;
}
