package p000;

import android.widget.SeekBar;
import ey;
import p000.C1324dz;
/* renamed from: ey$j */
/* loaded from: classes-dex2jar.jar:ey$j.class */
public class ey$j implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a */
    public final /* synthetic */ ey f6485a;

    public ey$j(ey eyVar) {
        this.f6485a = eyVar;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (z) {
            C1324dz.C1332i c1332i = (C1324dz.C1332i) seekBar.getTag();
            ey.f fVar = (ey.f) this.f6485a.s.get(c1332i.m2332j());
            if (fVar != null) {
                fVar.d(i == 0);
            }
            c1332i.m2347F(i);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        ey eyVar = this.f6485a;
        if (eyVar.t != null) {
            eyVar.o.removeMessages(2);
        }
        this.f6485a.t = (C1324dz.C1332i) seekBar.getTag();
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        this.f6485a.o.sendEmptyMessageDelayed(2, 500L);
    }
}
