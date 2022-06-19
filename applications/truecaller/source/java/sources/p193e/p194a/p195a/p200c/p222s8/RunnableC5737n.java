package p193e.p194a.p195a.p200c.p222s8;

import android.media.MediaRecorder;
import com.truecaller.messaging.conversation.voice_notes.RecordView;
import com.truecaller.messaging.conversation.voice_notes.RecorderVisualizerView;
/* renamed from: e.a.a.c.s8.n */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/s8/n.class */
public final class RunnableC5737n implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ RecordView f19205a;

    public RunnableC5737n(RecordView recordView) {
        this.f19205a = recordView;
    }

    @Override // java.lang.Runnable
    public void run() {
        RecorderVisualizerView visualizerView;
        try {
            MediaRecorder mediaRecorder = this.f19205a.f13144g;
            float maxAmplitude = mediaRecorder != null ? mediaRecorder.getMaxAmplitude() : 0.0f;
            visualizerView = this.f19205a.getVisualizerView();
            visualizerView.f13157a.add(Float.valueOf(maxAmplitude));
            if (visualizerView.f13157a.size() * visualizerView.f13160d >= visualizerView.f13158b && (!visualizerView.f13157a.isEmpty())) {
                visualizerView.f13157a.remove(0);
            }
            visualizerView.invalidate();
        } catch (IllegalStateException e) {
            this.f19205a.f13149l.removeCallbacks(this);
        }
        this.f19205a.f13149l.postDelayed(this, 40L);
    }
}
