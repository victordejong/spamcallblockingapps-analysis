package p193e.p194a.p195a.p200c.p222s8;

import android.media.MediaRecorder;
import android.widget.TextView;
import com.truecaller.messaging.conversation.voice_notes.RecordFloatingActionButton;
import com.truecaller.messaging.conversation.voice_notes.RecordView;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p195a.p200c.C5059a4;
import s1.z.c.l;
/* renamed from: e.a.a.c.s8.m */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/s8/m.class */
public final class C5736m implements MediaRecorder.OnInfoListener {

    /* renamed from: a */
    public final /* synthetic */ RecordView f19203a;

    /* renamed from: b */
    public final /* synthetic */ RecordFloatingActionButton f19204b;

    public C5736m(RecordView recordView, RecordFloatingActionButton recordFloatingActionButton) {
        this.f19203a = recordView;
        this.f19204b = recordFloatingActionButton;
    }

    @Override // android.media.MediaRecorder.OnInfoListener
    public final void onInfo(MediaRecorder mediaRecorder, int i, int i2) {
        TextView tvSlideToCancel;
        if (i == 800) {
            RecordView recordView = this.f19203a;
            int i3 = RecordView.f13137r;
            recordView.m35077k();
            RecordView.AbstractC4182a recordListener = this.f19203a.getRecordListener();
            if (recordListener != null) {
                ((C5059a4) recordListener).f17322a.f19484b.mo33374M2(this.f19203a.f13147j);
            }
            C19286f.m13683U(this.f19203a, false);
            RecordView recordView2 = this.f19203a;
            RecordFloatingActionButton recordFloatingActionButton = this.f19204b;
            tvSlideToCancel = recordView2.getTvSlideToCancel();
            l.d(tvSlideToCancel, "tvSlideToCancel");
            recordView2.m35084d(recordFloatingActionButton, tvSlideToCancel, this.f19203a.f13140c);
        }
    }
}
