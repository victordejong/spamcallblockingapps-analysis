package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzjk;
import com.google.android.gms.internal.ads.zzjo;
import com.google.android.gms.internal.ads.zzpy;
import java.util.List;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.ha */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/ha.class */
public interface AbstractC7265ha extends IInterface {
    /* renamed from: B0 */
    AbstractC7328ma mo20445B0() throws RemoteException;

    /* renamed from: F0 */
    AbstractC7106b mo20444F0() throws RemoteException;

    /* renamed from: W */
    AbstractC7377qa mo20443W() throws RemoteException;

    /* renamed from: a */
    void mo20442a(zzjk zzjkVar, String str) throws RemoteException;

    /* renamed from: a */
    void mo20441a(zzjk zzjkVar, String str, String str2) throws RemoteException;

    /* renamed from: a */
    void mo20440a(AbstractC7106b bVar, zzjk zzjkVar, String str, AbstractC7256h1 h1Var, String str2) throws RemoteException;

    /* renamed from: a */
    void mo20439a(AbstractC7106b bVar, zzjk zzjkVar, String str, AbstractC7291ja jaVar) throws RemoteException;

    /* renamed from: a */
    void mo20438a(AbstractC7106b bVar, zzjk zzjkVar, String str, String str2, AbstractC7291ja jaVar) throws RemoteException;

    /* renamed from: a */
    void mo20437a(AbstractC7106b bVar, zzjk zzjkVar, String str, String str2, AbstractC7291ja jaVar, zzpy zzpyVar, List<String> list) throws RemoteException;

    /* renamed from: a */
    void mo20436a(AbstractC7106b bVar, zzjo zzjoVar, zzjk zzjkVar, String str, AbstractC7291ja jaVar) throws RemoteException;

    /* renamed from: a */
    void mo20435a(AbstractC7106b bVar, zzjo zzjoVar, zzjk zzjkVar, String str, String str2, AbstractC7291ja jaVar) throws RemoteException;

    /* renamed from: a */
    void mo20434a(AbstractC7106b bVar, AbstractC7256h1 h1Var, List<String> list) throws RemoteException;

    /* renamed from: b0 */
    AbstractC7326m8 mo20432b0() throws RemoteException;

    void destroy() throws RemoteException;

    Bundle getInterstitialAdapterInfo() throws RemoteException;

    AbstractC7359p5 getVideoController() throws RemoteException;

    /* renamed from: i0 */
    boolean mo20430i0() throws RemoteException;

    boolean isInitialized() throws RemoteException;

    /* renamed from: j0 */
    Bundle mo20429j0() throws RemoteException;

    void pause() throws RemoteException;

    void resume() throws RemoteException;

    void setImmersiveMode(boolean z) throws RemoteException;

    void showInterstitial() throws RemoteException;

    void showVideo() throws RemoteException;

    /* renamed from: w0 */
    AbstractC7352oa mo20428w0() throws RemoteException;

    /* renamed from: z */
    void mo20427z(AbstractC7106b bVar) throws RemoteException;

    Bundle zzoa() throws RemoteException;
}
