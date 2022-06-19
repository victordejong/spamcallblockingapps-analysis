package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaRecorder;
import android.telephony.TelephonyManager;
import android.widget.Toast;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.p047b.EnumC1464c;
import com.freshchat.consumer.sdk.p056i.RunnableC1560c;
import com.razorpay.AnalyticsConstants;
import java.io.File;
import java.io.IOException;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.freshchat.consumer.sdk.j.h */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/h.class */
public class C1711h {
    public static final String TAG = "com.freshchat.consumer.sdk.j.h";
    private final long channelId;
    private final Context context;

    /* renamed from: gZ */
    private TelephonyManager f4503gZ;

    /* renamed from: hp */
    private C1713a f4504hp;

    /* renamed from: hq */
    private final AbstractC1631ax f4505hq;

    /* renamed from: hr */
    private AudioManager f4506hr;

    /* renamed from: hs */
    private MediaRecorder f4507hs;

    /* renamed from: com.freshchat.consumer.sdk.j.h$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/h$a.class */
    public class C1713a {

        /* renamed from: hu */
        private long f4510hu;

        /* renamed from: hv */
        private File f4511hv;

        /* renamed from: hw */
        private AtomicBoolean f4512hw = new AtomicBoolean(false);
        private long startTime;

        public C1713a() {
            C1711h.this = r6;
        }

        /* renamed from: M */
        public boolean m39929M() {
            return this.f4512hw.get();
        }

        /* renamed from: a */
        public void m39928a(File file) {
            this.f4511hv = file;
        }

        /* renamed from: eq */
        public void m39927eq() {
            this.f4510hu = System.currentTimeMillis();
        }

        /* renamed from: er */
        public File m39926er() {
            return this.f4511hv;
        }

        /* renamed from: es */
        public int m39925es() {
            long j = this.f4510hu;
            if (j > 0) {
                long j2 = this.startTime;
                if (j <= j2) {
                    return 0;
                }
                return (int) ((j - j2) / 1000);
            }
            return 0;
        }

        /* renamed from: r */
        public void m39924r(boolean z) {
            this.f4512hw.set(z);
        }

        public void setStartTime(long j) {
            this.startTime = j;
        }
    }

    public C1711h(Context context, AbstractC1631ax abstractC1631ax, long j) {
        this.context = context.getApplicationContext();
        this.f4505hq = abstractC1631ax;
        this.channelId = j;
    }

    /* renamed from: ej */
    private void m39937ej() {
        MediaRecorder mediaRecorder = new MediaRecorder();
        this.f4507hs = mediaRecorder;
        mediaRecorder.setAudioSource(1);
        this.f4507hs.setOutputFormat(2);
        this.f4507hs.setAudioEncoder(3);
        this.f4507hs.setOutputFile(m39936ek().m39926er().getAbsolutePath());
    }

    /* renamed from: em */
    private AudioManager m39934em() {
        if (this.f4506hr == null) {
            this.f4506hr = (AudioManager) this.context.getSystemService("audio");
        }
        return this.f4506hr;
    }

    /* renamed from: eo */
    private void m39932eo() {
        int i = C1630aw.m40198eY() ? 4 : 2;
        if (m39934em() != null) {
            m39934em().requestAudioFocus(null, 3, i);
        }
    }

    /* renamed from: ep */
    public boolean m39931ep() {
        boolean z = true;
        if (m39933en() == null || m39933en().getCallState() != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: q */
    private void m39930q(boolean z) {
        m39936ek().m39924r(false);
        m39936ek().m39927eq();
        this.f4505hq.mo40188an();
        this.f4505hq.mo40187ao();
        try {
            this.f4507hs.stop();
        } catch (RuntimeException e) {
        }
        m39935el();
        File m39926er = m39936ek() != null ? m39936ek().m39926er() : null;
        m39926er.exists();
        m39926er.getAbsolutePath();
        if (m39926er.exists()) {
            if (z) {
                m39926er.delete();
            } else {
                this.f4505hq.mo40190a(m39936ek());
            }
        }
        m39934em().abandonAudioFocus(null);
    }

    /* renamed from: b */
    public void m39943b(C1713a c1713a) {
        this.f4504hp = c1713a;
    }

    /* renamed from: eh */
    public void m39939eh() {
        m39930q(true);
    }

    /* renamed from: ei */
    public void m39938ei() {
        m39930q(false);
    }

    /* renamed from: ek */
    public C1713a m39936ek() {
        return this.f4504hp;
    }

    /* renamed from: el */
    public void m39935el() {
        MediaRecorder mediaRecorder = this.f4507hs;
        if (mediaRecorder != null) {
            mediaRecorder.release();
            this.f4507hs = null;
        }
    }

    /* renamed from: en */
    public TelephonyManager m39933en() {
        if (this.f4503gZ == null) {
            this.f4503gZ = (TelephonyManager) this.context.getSystemService(AnalyticsConstants.PHONE);
        }
        return this.f4503gZ;
    }

    public void startRecording() {
        try {
            if (RunnableC1560c.m40509dU()) {
                RunnableC1560c.m40507dW();
            }
            long currentTimeMillis = System.currentTimeMillis();
            C1713a c1713a = new C1713a();
            c1713a.setStartTime(System.currentTimeMillis());
            Message message = new Message();
            message.setChannelId(this.channelId);
            message.setAlias(UUID.randomUUID().toString());
            c1713a.m39928a(C1732x.m39787b(this.context, message));
            c1713a.m39924r(true);
            m39943b(c1713a);
            m39932eo();
            m39937ej();
            try {
                this.f4507hs.prepare();
                this.f4507hs.start();
                long currentTimeMillis2 = System.currentTimeMillis();
                this.f4505hq.mo40189am();
                this.f4505hq.mo40186ap();
                long currentTimeMillis3 = System.currentTimeMillis();
                String str = TAG;
                C1613ai.m40284d(str, "Time taken to show progress " + (currentTimeMillis3 - currentTimeMillis2) + " ms");
                C1613ai.m40284d(str, "Post-recorder " + (currentTimeMillis2 - currentTimeMillis) + " ms");
                new Thread(new Runnable() { // from class: com.freshchat.consumer.sdk.j.h.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Exception e;
                        int i = 300;
                        C1711h.this.f4505hq.mo40185b(300);
                        long currentTimeMillis4 = System.currentTimeMillis();
                        while (C1711h.this.m39936ek() != null && C1711h.this.m39936ek().m39929M()) {
                            try {
                                int currentTimeMillis5 = (int) ((System.currentTimeMillis() - currentTimeMillis4) / 1000);
                                if (C1711h.this.m39931ep() || currentTimeMillis5 > 360) {
                                    C1711h.this.m39939eh();
                                }
                                C1711h.this.f4505hq.mo40183i(C1719n.m39861s(currentTimeMillis5));
                                int maxAmplitude = C1711h.this.f4507hs.getMaxAmplitude();
                                if (maxAmplitude > 0) {
                                    C1711h.this.f4505hq.mo40184c(maxAmplitude);
                                    if (maxAmplitude > i) {
                                        try {
                                            C1711h.this.f4505hq.mo40185b(maxAmplitude);
                                            i = maxAmplitude;
                                        } catch (Exception e2) {
                                            e = e2;
                                            i = maxAmplitude;
                                            C1723q.m39823a(e);
                                        }
                                    }
                                }
                            } catch (Exception e3) {
                                e = e3;
                            }
                        }
                        C1711h.this.f4505hq.mo40188an();
                        C1711h.this.f4505hq.mo40187ao();
                    }
                }).start();
            } catch (IOException e) {
                Toast.makeText(this.context, EnumC1464c.VOICE_MESSAGE_RECORDING_FAILED.toString(), 0).show();
                m39943b((C1713a) null);
            }
        } catch (Exception e2) {
            C1723q.m39823a(e2);
        }
    }
}
