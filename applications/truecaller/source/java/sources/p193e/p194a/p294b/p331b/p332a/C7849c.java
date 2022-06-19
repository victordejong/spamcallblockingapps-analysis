package p193e.p194a.p294b.p331b.p332a;

import android.view.View;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.UiSettings;
import com.google.android.gms.maps.model.LatLng;
import s1.s;
import s1.z.c.l;
/* renamed from: e.a.b.b.a.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/b/a/c.class */
public final class C7849c implements OnMapReadyCallback {

    /* renamed from: a */
    public final /* synthetic */ C7844b f24407a;

    /* renamed from: e.a.b.b.a.c$a */
    /* loaded from: classes3-dex2jar.jar:e/a/b/b/a/c$a.class */
    public static final class View$OnClickListenerC7850a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f24408a;

        /* renamed from: b */
        public final /* synthetic */ Object f24409b;

        public View$OnClickListenerC7850a(int i, Object obj) {
            this.f24408a = i;
            this.f24409b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f24408a;
            if (i == 0) {
                C7858k m29253PA = ((C7849c) this.f24409b).f24407a.m29253PA();
                AbstractC7857j abstractC7857j = (AbstractC7857j) m29253PA.f57683a;
                if (abstractC7857j == null) {
                    return;
                }
                abstractC7857j.mo29232Vj(m29253PA.f24423d);
            } else if (i != 1) {
                throw null;
            } else {
                C7858k m29253PA2 = ((C7849c) this.f24409b).f24407a.m29253PA();
                AbstractC7857j abstractC7857j2 = (AbstractC7857j) m29253PA2.f57683a;
                if (abstractC7857j2 == null) {
                    return;
                }
                abstractC7857j2.mo29232Vj(m29253PA2.f24423d);
            }
        }
    }

    public C7849c(C7844b c7844b) {
        this.f24407a = c7844b;
    }

    @Override // com.google.android.gms.maps.OnMapReadyCallback
    /* renamed from: O3 */
    public final void mo29248O3(GoogleMap googleMap) {
        s sVar;
        this.f24407a.f24402d = googleMap;
        l.d(googleMap, "it");
        UiSettings m38708a = googleMap.m38708a();
        l.d(m38708a, "it.uiSettings");
        m38708a.m38700a(false);
        this.f24407a.m29254OA().f25161g.setOnClickListener(new View$OnClickListenerC7850a(0, this));
        this.f24407a.m29254OA().f25160f.setOnClickListener(new View$OnClickListenerC7850a(1, this));
        C7858k m29253PA = this.f24407a.m29253PA();
        LatLng latLng = m29253PA.f24423d;
        if (latLng != null) {
            AbstractC7857j abstractC7857j = (AbstractC7857j) m29253PA.f57683a;
            if (abstractC7857j != null) {
                abstractC7857j.mo29224zz(latLng);
                sVar = s.a;
            } else {
                sVar = null;
            }
            if (sVar != null) {
                return;
            }
        }
        AbstractC7857j abstractC7857j2 = (AbstractC7857j) m29253PA.f57683a;
        if (abstractC7857j2 != null) {
            abstractC7857j2.mo29229s7();
        }
    }
}
