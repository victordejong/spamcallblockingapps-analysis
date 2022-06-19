package p000;

import androidx.media2.common.SessionPlayer;
/* renamed from: ev$m */
/* loaded from: classes-dex2jar.jar:ev$m.class */
public class ev$m implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ev$j0 f6443a;

    /* renamed from: b */
    public final /* synthetic */ SessionPlayer.AbstractC0148a f6444b;

    public ev$m(ev evVar, ev$j0 ev_j0, SessionPlayer.AbstractC0148a abstractC0148a) {
        this.f6443a = ev_j0;
        this.f6444b = abstractC0148a;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f6443a.m2048a(this.f6444b);
    }
}
