package p193e.p194a.p294b.p331b.p332a;

import android.os.RemoteException;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.UiSettings;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.Objects;
import s1.z.c.l;
/* renamed from: e.a.b.b.a.f */
/* loaded from: classes6-dex2jar.jar:e/a/b/b/a/f.class */
public final class C7853f implements OnMapReadyCallback {

    /* renamed from: a */
    public final /* synthetic */ C7839a f24411a;

    public C7853f(C7839a c7839a) {
        this.f24411a = c7839a;
    }

    @Override // com.google.android.gms.maps.OnMapReadyCallback
    /* renamed from: O3 */
    public final void mo29248O3(GoogleMap googleMap) {
        AbstractC7854g abstractC7854g;
        this.f24411a.f24391d = googleMap;
        l.d(googleMap, "map");
        UiSettings m38708a = googleMap.m38708a();
        Objects.requireNonNull(m38708a);
        try {
            m38708a.f6244a.m38670s(true);
            m38708a.m38699b(false);
            try {
                m38708a.f6244a.m38672l1(false);
                C7856i m29257PA = this.f24411a.m29257PA();
                LatLng latLng = m29257PA.f24417d;
                if (latLng != null && (abstractC7854g = (AbstractC7854g) m29257PA.f57683a) != null) {
                    abstractC7854g.mo29243w7(latLng);
                }
                AbstractC7854g abstractC7854g2 = (AbstractC7854g) m29257PA.f57683a;
                if (abstractC7854g2 == null) {
                    return;
                }
                abstractC7854g2.mo29242w9();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        } catch (RemoteException e2) {
            throw new RuntimeRemoteException(e2);
        }
    }
}
