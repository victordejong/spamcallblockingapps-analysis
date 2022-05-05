package com.taiwanmobile.p055pt.adp.view.p059b;

import android.content.Context;
import android.media.AudioRecord;
import android.os.Handler;
import androidx.media2.exoplayer.external.extractor.amr.AmrExtractor;
import androidx.media2.exoplayer.external.extractor.ogg.OpusReader;
import androidx.media2.exoplayer.external.source.SilenceMediaSource;
import com.taiwanmobile.p055pt.adp.view.webview.JSWebView;
import java.lang.ref.WeakReference;
import p081h.p447o.p448a.p449a.C10831c;
import p081h.p447o.p448a.p449a.C10832d;
/* renamed from: com.taiwanmobile.pt.adp.view.b.c */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/b/c.class */
public class C4160c {

    /* renamed from: a */
    public static final String f9962a = "c";

    /* renamed from: b */
    public WeakReference<Context> f9963b;

    /* renamed from: c */
    public WeakReference<JSWebView> f9964c;

    /* renamed from: d */
    public AudioRecord f9965d;

    /* renamed from: e */
    public int f9966e = 0;

    /* renamed from: com.taiwanmobile.pt.adp.view.b.c$a */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/b/c$a.class */
    public class C4163a extends Thread {

        /* renamed from: a */
        public int f9970a;

        /* renamed from: b */
        public short[] f9971b;

        /* renamed from: c */
        public double f9972c;

        /* renamed from: d */
        public int f9973d;

        /* renamed from: f */
        public final String f9975f = "ProcessAudioThread";

        public C4163a(int i, int i2) {
            this.f9970a = i;
            this.f9973d = i2;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            short[] sArr;
            if (C4160c.this.f9965d != null) {
                if (C4160c.this.f9966e == 1) {
                    C10831c.m10520b("ProcessAudioThread", "still running");
                    return;
                }
                C10831c.m10518c("ProcessAudioThread", "run");
                this.f9972c = 0.0d;
                C4160c.this.f9965d.startRecording();
                this.f9971b = new short[this.f9970a];
                C4160c.this.f9966e = 1;
                while (true) {
                    if (C4160c.this.f9966e != 1) {
                        break;
                    }
                    int read = C4160c.this.f9965d.read(this.f9971b, 0, this.f9970a);
                    long j = 0;
                    for (short s : this.f9971b) {
                        j += s * s;
                    }
                    double log10 = Math.log10(j / read) * 10.0d;
                    if (log10 >= this.f9972c) {
                        this.f9972c = log10;
                    }
                }
                if (C4160c.this.f9966e != 2) {
                    int i = this.f9973d;
                    if (i > 0) {
                        C4160c.this.m29493a(1, this.f9972c > ((double) i), 0);
                    } else {
                        C4160c.this.m29493a(0, false, (int) this.f9972c);
                    }
                }
            }
        }
    }

    public C4160c(Context context, JSWebView jSWebView) {
        this.f9963b = null;
        this.f9964c = null;
        this.f9963b = new WeakReference<>(context);
        this.f9964c = new WeakReference<>(jSWebView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29493a(int i, boolean z, int i2) {
        String str;
        String str2;
        C10831c.m10518c(f9962a, "detectSound involved!!!");
        if (i == 0) {
            str2 = String.valueOf(i2);
            str = "maxDecibelCallback";
        } else if (i == 1) {
            str2 = String.valueOf(z);
            str = "isOverDecibelCallback";
        } else {
            str = "";
            str2 = "0";
        }
        final String str3 = "javascript:try{" + str + "(" + str2 + ");}catch(e){}";
        C10831c.m10518c(f9962a, "urlStr" + str3);
        this.f9964c.get().post(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.b.c.2
            @Override // java.lang.Runnable
            public void run() {
                ((JSWebView) C4160c.this.f9964c.get()).loadUrl(str3);
            }
        });
        m29495a();
    }

    /* renamed from: b */
    private int[] m29489b() {
        C10831c.m10518c(f9962a, "getValidSampleRates");
        int[] iArr = {-2};
        int[] iArr2 = {8000, 11025, AmrExtractor.SAMPLE_RATE_WB, 22050, SilenceMediaSource.SAMPLE_RATE_HZ, OpusReader.SAMPLE_RATE};
        int length = iArr2.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            int i2 = iArr2[i];
            int minBufferSize = AudioRecord.getMinBufferSize(i2, 16, 2);
            if (minBufferSize > 0) {
                iArr[0] = i2;
                iArr[1] = minBufferSize;
                break;
            }
            i++;
        }
        String str = f9962a;
        C10831c.m10518c(str, "rate " + iArr[0]);
        String str2 = f9962a;
        C10831c.m10518c(str2, "bufferSize " + iArr[1]);
        return iArr;
    }

    /* renamed from: a */
    public void m29495a() {
        C10831c.m10518c(f9962a, "releaseMic involved!!!");
        this.f9966e = 2;
        AudioRecord audioRecord = this.f9965d;
        if (audioRecord != null) {
            audioRecord.stop();
            this.f9965d.release();
            this.f9965d = null;
        }
    }

    /* renamed from: a */
    public void m29494a(float f, int i) {
        C10831c.m10518c(f9962a, "startRecorder invoke!!!");
        if (!C10832d.m10490d(this.f9963b.get(), "android.permission.RECORD_AUDIO")) {
            C10831c.m10520b(f9962a, "The app does not have android.permission.RECORD_AUDIO permission.");
            return;
        }
        int[] b = m29489b();
        if (b[0] == -2) {
            C10831c.m10520b(f9962a, "cant find supported rate");
            return;
        }
        this.f9965d = new AudioRecord(1, b[0], 16, 2, b[1]);
        String str = f9962a;
        C10831c.m10518c(str, "audioRecorder getState!!!" + this.f9965d.getState());
        if (this.f9965d.getState() == 1) {
            new C4163a(b[1], i).start();
            new Handler().postDelayed(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.b.c.1
                @Override // java.lang.Runnable
                public void run() {
                    C4160c.this.f9966e = 0;
                }
            }, f * 1000.0f);
        }
    }
}
