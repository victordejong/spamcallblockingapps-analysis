package p1727n3.p1874y.p1908e;

import android.widget.SeekBar;
import androidx.media2.common.SessionPlayer;
/* renamed from: n3.y.e.k$f */
/* loaded from: classes-dex2jar.jar:n3/y/e/k$f.class */
public class k$f implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a */
    public final /* synthetic */ k f77542a;

    public k$f(k kVar) {
        this.f77542a = kVar;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        k kVar = this.f77542a;
        if (kVar.d == null || !kVar.x || !z || !kVar.u) {
            return;
        }
        long j = kVar.q;
        if (j <= 0) {
            return;
        }
        this.f77542a.p((j * i) / 1000, !kVar.l());
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        k kVar = this.f77542a;
        if (kVar.d == null || !kVar.x) {
            return;
        }
        kVar.u = true;
        kVar.removeCallbacks(kVar.K0);
        k kVar2 = this.f77542a;
        kVar2.removeCallbacks(kVar2.N0);
        k kVar3 = this.f77542a;
        kVar3.removeCallbacks(kVar3.O0);
        k kVar4 = this.f77542a;
        if (kVar4.w) {
            kVar4.w(false);
        }
        if (!this.f77542a.l() || !this.f77542a.d.m133m()) {
            return;
        }
        k kVar5 = this.f77542a;
        kVar5.A = true;
        SessionPlayer sessionPlayer = kVar5.d.f77580a;
        if (sessionPlayer == null) {
            return;
        }
        sessionPlayer.mo42795S();
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        k kVar = this.f77542a;
        if (kVar.d == null || !kVar.x) {
            return;
        }
        kVar.u = false;
        long latestSeekPosition = kVar.getLatestSeekPosition();
        if (this.f77542a.l()) {
            k kVar2 = this.f77542a;
            kVar2.s = -1L;
            kVar2.t = -1L;
        }
        this.f77542a.p(latestSeekPosition, true);
        k kVar3 = this.f77542a;
        if (!kVar3.A) {
            return;
        }
        kVar3.A = false;
        SessionPlayer sessionPlayer = kVar3.d.f77580a;
        if (sessionPlayer == null) {
            return;
        }
        sessionPlayer.mo42793W();
    }
}
