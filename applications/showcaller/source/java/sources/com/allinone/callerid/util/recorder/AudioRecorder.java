package com.allinone.callerid.util.recorder;

import android.media.AudioRecord;
import android.util.Log;
import com.allinone.callerid.callrecorder.util.AgcNsUtils;
import com.allinone.callerid.util.C3718c0;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/AudioRecorder.class */
public class AudioRecorder {

    /* renamed from: a */
    private int f12075a;

    /* renamed from: f */
    private AudioRecord f12080f;

    /* renamed from: g */
    private Status f12081g;

    /* renamed from: h */
    protected String f12082h;

    /* renamed from: i */
    protected String f12083i;

    /* renamed from: j */
    protected String f12084j;

    /* renamed from: k */
    private AbstractC3818c f12085k;

    /* renamed from: m */
    private C3819a f12087m;

    /* renamed from: b */
    private int f12076b = 8000;

    /* renamed from: c */
    private int f12077c = 16;

    /* renamed from: d */
    private int f12078d = 2;

    /* renamed from: e */
    private int f12079e = 0;

    /* renamed from: l */
    private int f12086l = 0;

    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/AudioRecorder$Status.class */
    public enum Status {
        STATUS_NO_READY,
        STATUS_READY,
        STATUS_START,
        STATUS_PAUSE,
        STATUS_STOP
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.recorder.AudioRecorder$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/AudioRecorder$a.class */
    public class RunnableC3816a implements Runnable {
        RunnableC3816a() {
            AudioRecorder.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AudioRecorder.this.m24044k();
        }
    }

    /* renamed from: com.allinone.callerid.util.recorder.AudioRecorder$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/AudioRecorder$b.class */
    public class RunnableC3817b implements Runnable {
        RunnableC3817b() {
            AudioRecorder.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AudioRecorder audioRecorder = AudioRecorder.this;
            audioRecorder.m24046i(audioRecorder.f12082h, audioRecorder.f12083i);
            AudioRecorder.this.f12087m.m24037b(AudioRecorder.this.f12076b, AudioRecorder.this.f12076b * 16 * AudioRecorder.this.f12080f.getChannelCount(), AudioRecorder.this.f12080f.getChannelCount());
            AudioRecorder.this.f12087m.m24036c(AudioRecorder.this.f12084j);
            AudioRecorder.this.f12087m.m24038a(AudioRecorder.this.f12083i);
            AudioRecorder.this.m24043l();
            if (AudioRecorder.this.f12085k != null) {
                AudioRecorder.this.f12085k.finish();
            }
        }
    }

    /* renamed from: com.allinone.callerid.util.recorder.AudioRecorder$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/AudioRecorder$c.class */
    public interface AbstractC3818c {
        void finish();
    }

    public AudioRecorder(C3819a c3819a, String str, String str2, int i) {
        this.f12075a = 1;
        this.f12081g = Status.STATUS_NO_READY;
        this.f12082h = C3821c.m24009c(str + "");
        this.f12083i = C3821c.m24010b(str + "");
        this.f12087m = c3819a;
        this.f12084j = str2;
        this.f12075a = i;
        File file = new File(this.f12082h);
        if (file.exists()) {
            file.delete();
        }
        File file2 = new File(this.f12083i);
        if (file2.exists()) {
            file2.delete();
        }
        this.f12081g = Status.STATUS_READY;
    }

    /* renamed from: i */
    public void m24046i(String str, String str2) {
        try {
            AgcNsUtils agcNsUtils = new AgcNsUtils();
            agcNsUtils.setAgcConfig(3, 50, 1).prepare();
            int nsCreate = agcNsUtils.nsCreate();
            int nsInit = agcNsUtils.nsInit(nsCreate, 8000);
            int nsSetPolicy = agcNsUtils.nsSetPolicy(nsCreate, 2);
            if (C3718c0.f11914a) {
                C3718c0.m24436a("audio_agc_ns", "createStatus = " + nsCreate + "initStatus = " + nsInit + "setStatus = " + nsSetPolicy);
            }
            FileInputStream fileInputStream = new FileInputStream(str);
            FileOutputStream fileOutputStream = new FileOutputStream(str2);
            byte[] bArr = new byte[160];
            while (fileInputStream.read(bArr) != -1) {
                short[] sArr = new short[80];
                short[] sArr2 = new short[80];
                short[] sArr3 = new short[80];
                ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).asShortBuffer().get(sArr);
                int agcProcess = agcNsUtils.agcProcess(sArr, 0, 80, sArr2, 0, 0, 0, 0);
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("audio_agc_ns ", "-====== aa = " + agcProcess);
                }
                int nsProcess = agcNsUtils.nsProcess(nsCreate, sArr2, null, sArr3, null);
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("audio_agc_ns", "ret = " + nsProcess);
                }
                fileOutputStream.write(m24042m(sArr3));
            }
            fileInputStream.close();
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(str);
                FileOutputStream fileOutputStream2 = new FileOutputStream(str2);
                byte[] bArr2 = new byte[160];
                while (fileInputStream2.read(bArr2) != -1) {
                    short[] sArr4 = new short[80];
                    ByteBuffer.wrap(bArr2).order(ByteOrder.LITTLE_ENDIAN).asShortBuffer().get(sArr4);
                    fileOutputStream2.write(m24042m(sArr4));
                }
                fileInputStream2.close();
                fileOutputStream2.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            th.printStackTrace();
        }
    }

    /* renamed from: j */
    private void m24045j() {
        if (this.f12087m == null) {
            return;
        }
        new Thread(new RunnableC3817b()).start();
    }

    /* renamed from: k */
    public void m24044k() {
        FileOutputStream fileOutputStream;
        AudioRecord audioRecord;
        try {
            int i = this.f12079e;
            byte[] bArr = new byte[i];
            try {
                fileOutputStream = new FileOutputStream(this.f12082h, true);
            } catch (FileNotFoundException e) {
                fileOutputStream = null;
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("wbb", e.getMessage());
                    fileOutputStream = null;
                }
            }
            this.f12081g = Status.STATUS_START;
            while (this.f12081g == Status.STATUS_START && (audioRecord = this.f12080f) != null) {
                int read = audioRecord.read(bArr, 0, this.f12079e);
                if (-3 != read && fileOutputStream != null && read > 0 && read <= i) {
                    try {
                        fileOutputStream.write(bArr, 0, read);
                    } catch (IOException e2) {
                        if (C3718c0.f11914a) {
                            Log.e("wbb", e2.getMessage());
                        }
                    }
                }
            }
            if (fileOutputStream == null) {
                return;
            }
            try {
                fileOutputStream.close();
            } catch (IOException e3) {
                if (!C3718c0.f11914a) {
                    return;
                }
                Log.e("wbb", e3.getMessage());
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* renamed from: l */
    public void m24043l() {
        AudioRecord audioRecord = this.f12080f;
        if (audioRecord != null) {
            audioRecord.release();
            this.f12080f = null;
        }
        this.f12081g = Status.STATUS_READY;
        m24047h();
    }

    /* renamed from: p */
    private void m24039p() {
        AudioRecord audioRecord = this.f12080f;
        if (audioRecord != null) {
            try {
                audioRecord.stop();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: h */
    public void m24047h() {
        try {
            File file = new File(this.f12082h);
            if (file.exists()) {
                file.delete();
            }
            File file2 = new File(this.f12083i);
            if (file2.exists()) {
                file2.delete();
            }
            C3821c.m24008d();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: m */
    public byte[] m24042m(short[] sArr) {
        byte[] bArr = new byte[sArr.length * 2];
        for (int i = 0; i < sArr.length; i++) {
            int i2 = i * 2;
            bArr[i2] = (byte) (sArr[i] & 255);
            bArr[i2 + 1] = (byte) ((sArr[i] & 65280) >> 8);
        }
        return bArr;
    }

    /* renamed from: n */
    public void m24041n() {
        this.f12079e = AudioRecord.getMinBufferSize(this.f12076b, this.f12077c, this.f12078d);
        if (this.f12080f == null) {
            this.f12080f = new AudioRecord(this.f12075a, this.f12076b, this.f12077c, this.f12078d, this.f12079e);
        }
        Status status = this.f12081g;
        if (status != Status.STATUS_NO_READY) {
            if (status == Status.STATUS_START) {
                throw new IllegalStateException("is recording ");
            }
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "===startRecord===" + this.f12080f.getState());
            }
            this.f12080f.startRecording();
            new Thread(new RunnableC3816a()).start();
            return;
        }
        throw new IllegalStateException("not init");
    }

    /* renamed from: o */
    public void m24040o(AbstractC3818c abstractC3818c) {
        if (this.f12081g == Status.STATUS_START) {
            this.f12085k = abstractC3818c;
            m24039p();
            m24045j();
            this.f12081g = Status.STATUS_READY;
            return;
        }
        throw new IllegalStateException("not recording");
    }
}
