package gogolook.callgogolook2.messaging.p078ui.mediapicker;

import android.content.Context;
import android.graphics.Rect;
import android.media.MediaRecorder;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.media2.exoplayer.external.util.MimeTypes;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$raw;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.datamodel.data.MediaPickerMessagePartData;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.p478y.C11617j;
import p459j.p460a.p474c0.p488f.C11828f;
import p459j.p460a.p474c0.p491g.p496e0.C12043j;
import p459j.p460a.p474c0.p499h.AbstractAsyncTaskC12189n0;
import p459j.p460a.p474c0.p499h.AbstractC12165g0;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12204q0;
import p459j.p460a.p474c0.p499h.C12212s0;
/* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.AudioRecordView */
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/AudioRecordView.class */
public class AudioRecordView extends FrameLayout implements MediaRecorder.OnErrorListener, MediaRecorder.OnInfoListener {

    /* renamed from: a */
    public ImageView f11839a;

    /* renamed from: b */
    public View f11840b;

    /* renamed from: c */
    public SoundLevels f11841c;

    /* renamed from: d */
    public TextView f11842d;

    /* renamed from: e */
    public PausableChronometer f11843e;

    /* renamed from: g */
    public long f11845g;

    /* renamed from: i */
    public AbstractC4824e f11847i;

    /* renamed from: h */
    public int f11846h = 1;

    /* renamed from: f */
    public C12043j f11844f = new C12043j();

    /* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.AudioRecordView$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/AudioRecordView$a.class */
    public class View$OnTouchListenerC4820a implements View.OnTouchListener {
        public View$OnTouchListenerC4820a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getActionMasked() != 0) {
                return false;
            }
            AudioRecordView.this.m27014d();
            return false;
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.AudioRecordView$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/AudioRecordView$b.class */
    public class C4821b implements AbstractC12165g0.AbstractC12166a {
        public C4821b() {
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12165g0.AbstractC12166a
        /* renamed from: a */
        public void mo6943a() {
            int g = C11828f.m8193a(AudioRecordView.this.f11847i.mo7384a()).m8186g();
            if (AudioRecordView.this.f11846h == 2) {
                C12043j jVar = AudioRecordView.this.f11844f;
                AudioRecordView audioRecordView = AudioRecordView.this;
                if (jVar.m7435a(audioRecordView, audioRecordView, g)) {
                    AudioRecordView.this.m27025a(3);
                }
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.AudioRecordView$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/AudioRecordView$c.class */
    public class RunnableC4822c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Uri f11850a;

        public RunnableC4822c(AudioRecordView audioRecordView, Uri uri) {
            this.f11850a = uri;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC11516a.m9413n().mo9412a().getContentResolver().delete(this.f11850a, null, null);
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.AudioRecordView$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/AudioRecordView$d.class */
    public class RunnableC4823d implements Runnable {
        public RunnableC4823d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AudioRecordView.this.m27019b();
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.AudioRecordView$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/AudioRecordView$e.class */
    public interface AbstractC4824e extends C11617j.AbstractC11623f {
        /* renamed from: a */
        void mo7551a(MessagePartData messagePartData);
    }

    public AudioRecordView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public final void m27025a(int i) {
        if (this.f11846h != i) {
            this.f11846h = i;
            m27006k();
        }
    }

    /* renamed from: a */
    public final void m27024a(int i, int i2) {
        C12153d0.m6987b("MessagingApp", "Error occurred during audio recording what=" + i + ", extra=" + i2);
        C12212s0.m6796a((int) R$string.audio_recording_error);
        m27025a(1);
        m27009h();
    }

    /* renamed from: a */
    public void m27023a(AbstractC4824e eVar) {
        this.f11847i = eVar;
    }

    /* renamed from: a */
    public final void m27020a(AbstractC12165g0.AbstractC12166a aVar) {
        AbstractC12165g0.m6944b().mo6942a(getContext(), R$raw.audio_initiate, aVar);
    }

    /* renamed from: a */
    public final boolean m27026a() {
        return this.f11844f.m7431c() && this.f11846h == 3;
    }

    /* renamed from: b */
    public final void m27019b() {
        Uri h = m27009h();
        if (h != null) {
            Rect rect = new Rect();
            this.f11839a.getGlobalVisibleRect(rect);
            this.f11847i.mo7551a(new MediaPickerMessagePartData(rect, MimeTypes.AUDIO_AMR_NB, h, 0, 0));
        }
        m27011f();
        m27025a(1);
    }

    /* renamed from: b */
    public void m27018b(int i) {
        m27007j();
    }

    /* renamed from: c */
    public void m27016c() {
        m27009h();
    }

    /* renamed from: d */
    public boolean m27014d() {
        if (this.f11844f.m7431c() || this.f11846h != 1) {
            return false;
        }
        m27025a(2);
        m27020a(new C4821b());
        this.f11845g = System.currentTimeMillis();
        return true;
    }

    /* renamed from: e */
    public boolean m27012e() {
        if (System.currentTimeMillis() - this.f11845g < 300) {
            Uri h = m27009h();
            if (h != null) {
                AbstractAsyncTaskC12189n0.m6856a(new RunnableC4822c(this, h));
            }
            m27025a(1);
            this.f11842d.setTypeface(null, 1);
            return true;
        } else if (m27026a()) {
            m27025a(4);
            C12204q0.m6814a().postDelayed(new RunnableC4823d(), 500L);
            return true;
        } else {
            m27025a(1);
            return true;
        }
    }

    /* renamed from: f */
    public final void m27011f() {
        AbstractC12165g0.m6944b().mo6942a(getContext(), R$raw.audio_end, null);
    }

    /* renamed from: g */
    public boolean m27010g() {
        boolean z = true;
        if (this.f11846h == 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: h */
    public final Uri m27009h() {
        if (this.f11844f.m7431c()) {
            return this.f11844f.m7428e();
        }
        return null;
    }

    /* renamed from: i */
    public void m27008i() {
        m27025a(1);
        m27009h();
    }

    /* renamed from: j */
    public final void m27007j() {
        this.f11839a.setImageResource(m27026a() ? R$drawable.ip_mms_audio_on : R$drawable.ip_mms_audio_off);
    }

    /* renamed from: k */
    public final void m27006k() {
        int i = this.f11846h;
        if (i == 1) {
            this.f11842d.setVisibility(0);
            this.f11842d.setTypeface(null, 0);
            this.f11843e.setVisibility(8);
            this.f11841c.setEnabled(false);
            this.f11843e.stop();
        } else if (i != 2) {
            if (i == 3 || i == 4) {
                this.f11842d.setVisibility(8);
                this.f11843e.setVisibility(0);
                this.f11841c.setEnabled(true);
                this.f11843e.m26954c();
            } else {
                C12151d.m7005a("invalid mode for AudioRecordView!");
            }
        }
        m27007j();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m27009h();
    }

    @Override // android.media.MediaRecorder.OnErrorListener
    public void onError(MediaRecorder mediaRecorder, int i, int i2) {
        m27024a(i, i2);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f11841c = (SoundLevels) findViewById(R$id.sound_levels);
        this.f11839a = (ImageView) findViewById(R$id.record_button_visual);
        this.f11840b = findViewById(R$id.record_button);
        this.f11842d = (TextView) findViewById(R$id.hint_text);
        this.f11843e = (PausableChronometer) findViewById(R$id.timer_text);
        this.f11841c.m26951a(this.f11844f.m7433b());
        this.f11840b.setOnTouchListener(new View$OnTouchListenerC4820a());
    }

    @Override // android.media.MediaRecorder.OnInfoListener
    public void onInfo(MediaRecorder mediaRecorder, int i, int i2) {
        if (i == 801) {
            C12153d0.m6985c("MessagingApp", "Max size reached while recording audio");
            m27019b();
            return;
        }
        m27024a(i, i2);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            return m27010g();
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                return true;
            }
            if (actionMasked != 3) {
                return super.onTouchEvent(motionEvent);
            }
        }
        return m27012e();
    }
}
