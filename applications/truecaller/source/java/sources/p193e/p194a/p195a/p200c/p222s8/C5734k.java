package p193e.p194a.p195a.p200c.p222s8;

import android.media.audiofx.Visualizer;
import com.truecaller.messaging.conversation.voice_notes.PlayerVisualizerView;
/* renamed from: e.a.a.c.s8.k */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/s8/k.class */
public class C5734k implements Visualizer.OnDataCaptureListener {

    /* renamed from: a */
    public final /* synthetic */ PlayerVisualizerView f19201a;

    public C5734k(PlayerVisualizerView playerVisualizerView) {
        this.f19201a = playerVisualizerView;
    }

    @Override // android.media.audiofx.Visualizer.OnDataCaptureListener
    public void onFftDataCapture(Visualizer visualizer, byte[] bArr, int i) {
    }

    @Override // android.media.audiofx.Visualizer.OnDataCaptureListener
    public void onWaveFormDataCapture(Visualizer visualizer, byte[] bArr, int i) {
        PlayerVisualizerView playerVisualizerView = this.f19201a;
        playerVisualizerView.f13115a = bArr;
        playerVisualizerView.invalidate();
    }
}
