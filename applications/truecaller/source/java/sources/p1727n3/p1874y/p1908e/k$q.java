package p1727n3.p1874y.p1908e;

import android.view.View;
import android.widget.AdapterView;
import androidx.media2.common.SessionPlayer;
/* renamed from: n3.y.e.k$q */
/* loaded from: classes-dex2jar.jar:n3/y/e/k$q.class */
public class k$q implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    public final /* synthetic */ k f77553a;

    public k$q(k kVar) {
        this.f77553a = kVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        k kVar = this.f77553a;
        int i2 = kVar.k;
        if (i2 == 0) {
            if (i != kVar.m && kVar.x0.size() > 0) {
                k kVar2 = this.f77553a;
                C27544x c27544x = kVar2.d;
                SessionPlayer.TrackInfo trackInfo = (SessionPlayer.TrackInfo) kVar2.x0.get(i);
                SessionPlayer sessionPlayer = c27544x.f77580a;
                if (sessionPlayer != null) {
                    sessionPlayer.mo42782p0(trackInfo);
                }
            }
            this.f77553a.c();
        } else if (i2 == 1) {
            if (i != kVar.n) {
                float intValue = ((Integer) kVar.B0.get(i)).intValue() / 100.0f;
                SessionPlayer sessionPlayer2 = this.f77553a.d.f77580a;
                if (sessionPlayer2 != null) {
                    sessionPlayer2.mo42778t0(intValue);
                }
            }
            this.f77553a.c();
        } else if (i2 != 2) {
            if (i2 != 3) {
                return;
            }
            if (i == 0) {
                k$v k_v = kVar.r0;
                k_v.f77559a = kVar.z0;
                k_v.f77560b = kVar.m;
                kVar.k = 0;
            } else if (i == 1) {
                k$v k_v2 = kVar.r0;
                k_v2.f77559a = kVar.A0;
                k_v2.f77560b = kVar.n;
                kVar.k = 1;
            }
            kVar.d(kVar.r0);
        } else {
            int i3 = kVar.l;
            if (i != i3 + 1) {
                if (i > 0) {
                    C27544x c27544x2 = kVar.d;
                    SessionPlayer.TrackInfo trackInfo2 = (SessionPlayer.TrackInfo) kVar.y0.get(i - 1);
                    SessionPlayer sessionPlayer3 = c27544x2.f77580a;
                    if (sessionPlayer3 != null) {
                        sessionPlayer3.mo42782p0(trackInfo2);
                    }
                } else {
                    C27544x c27544x3 = kVar.d;
                    SessionPlayer.TrackInfo trackInfo3 = (SessionPlayer.TrackInfo) kVar.y0.get(i3);
                    SessionPlayer sessionPlayer4 = c27544x3.f77580a;
                    if (sessionPlayer4 != null) {
                        sessionPlayer4.mo42791b(trackInfo3);
                    }
                }
            }
            this.f77553a.c();
        }
    }
}
