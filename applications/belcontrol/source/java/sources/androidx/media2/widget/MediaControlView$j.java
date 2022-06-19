package androidx.media2.widget;

import android.widget.SeekBar;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$j.class */
public class MediaControlView$j implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1233a;

    public MediaControlView$j(MediaControlView mediaControlView) {
        this.f1233a = mediaControlView;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        MediaControlView mediaControlView = this.f1233a;
        if (mediaControlView.d == null || !mediaControlView.A || !z || !mediaControlView.w) {
            return;
        }
        long j = mediaControlView.s;
        if (j <= 0) {
            return;
        }
        this.f1233a.u((j * i) / 1000, !mediaControlView.p());
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        MediaControlView mediaControlView = this.f1233a;
        if (mediaControlView.d == null || !mediaControlView.A) {
            return;
        }
        mediaControlView.w = true;
        mediaControlView.removeCallbacks(mediaControlView.E0);
        MediaControlView mediaControlView2 = this.f1233a;
        mediaControlView2.removeCallbacks(mediaControlView2.H0);
        MediaControlView mediaControlView3 = this.f1233a;
        mediaControlView3.removeCallbacks(mediaControlView3.I0);
        MediaControlView mediaControlView4 = this.f1233a;
        if (mediaControlView4.y) {
            mediaControlView4.E(false);
        }
        if (!this.f1233a.p() || !this.f1233a.d.z()) {
            return;
        }
        MediaControlView mediaControlView5 = this.f1233a;
        mediaControlView5.E = true;
        mediaControlView5.d.B();
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        MediaControlView mediaControlView = this.f1233a;
        if (mediaControlView.d == null || !mediaControlView.A) {
            return;
        }
        mediaControlView.w = false;
        long latestSeekPosition = mediaControlView.getLatestSeekPosition();
        if (this.f1233a.p()) {
            MediaControlView mediaControlView2 = this.f1233a;
            mediaControlView2.u = -1L;
            mediaControlView2.v = -1L;
        }
        this.f1233a.u(latestSeekPosition, true);
        MediaControlView mediaControlView3 = this.f1233a;
        if (!mediaControlView3.E) {
            return;
        }
        mediaControlView3.E = false;
        mediaControlView3.d.C();
    }
}
