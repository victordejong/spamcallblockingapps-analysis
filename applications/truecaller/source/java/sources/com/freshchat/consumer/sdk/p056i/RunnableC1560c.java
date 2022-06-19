package com.freshchat.consumer.sdk.p056i;

import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.telephony.TelephonyManager;
import android.view.View;
import android.widget.ImageView;
import android.widget.SeekBar;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1623aq;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p057j.C1732x;
import com.freshchat.consumer.sdk.p057j.p059b.C1641c;
import com.freshchat.consumer.sdk.p069ui.MediaSeekBar;
import java.io.File;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.i.c */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/i/c.class */
public class RunnableC1560c implements Runnable {
    public static final String TAG = RunnableC1560c.class.getName();

    /* renamed from: gY */
    public static volatile MediaPlayer f4225gY;

    /* renamed from: cL */
    private final C1466e f4226cL;
    private final Context context;

    /* renamed from: gZ */
    private final TelephonyManager f4227gZ;

    /* renamed from: gz */
    private final Message f4228gz;

    /* renamed from: ha */
    private final Activity f4229ha;

    /* renamed from: hb */
    private final View f4230hb;

    /* renamed from: hc */
    private final MediaSeekBar f4231hc;

    /* renamed from: hd */
    public SeekBar.OnSeekBarChangeListener f4232hd;

    /* renamed from: dU */
    public static final boolean m40509dU() {
        try {
            if (f4225gY == null) {
                return false;
            }
            return f4225gY.isPlaying();
        } catch (Exception e) {
            C1723q.m39823a(e);
            return false;
        }
    }

    /* renamed from: dV */
    private void m40508dV() {
        if (f4225gY == null) {
            synchronized (RunnableC1560c.class) {
                try {
                    if (f4225gY == null) {
                        f4225gY = new MediaPlayer();
                    }
                } finally {
                }
            }
            return;
        }
        try {
            synchronized (RunnableC1560c.class) {
                if (f4225gY.isPlaying()) {
                    f4225gY.stop();
                }
                f4225gY.reset();
            }
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: dW */
    public static void m40507dW() {
        synchronized (RunnableC1560c.class) {
            try {
                if (f4225gY != null && f4225gY.isPlaying()) {
                    try {
                        f4225gY.stop();
                        try {
                            f4225gY.reset();
                        } catch (Exception e) {
                            e = e;
                            C1723q.m39823a(e);
                        }
                    } catch (Exception e2) {
                        C1723q.m39823a(e2);
                        try {
                            f4225gY.reset();
                        } catch (Exception e3) {
                            e = e3;
                            C1723q.m39823a(e);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: dX */
    private void m40506dX() {
        this.f4229ha.runOnUiThread(new Runnable() { // from class: com.freshchat.consumer.sdk.i.c.4
            @Override // java.lang.Runnable
            public void run() {
                RunnableC1560c.this.f4231hc.setVisibility(4);
            }
        });
    }

    /* renamed from: dY */
    private void m40505dY() {
        this.f4229ha.runOnUiThread(new Runnable() { // from class: com.freshchat.consumer.sdk.i.c.5
            @Override // java.lang.Runnable
            public void run() {
                RunnableC1560c.this.f4231hc.setVisibility(0);
            }
        });
    }

    /* renamed from: r */
    private void m40504r(int i) {
        if (i != 0) {
            return;
        }
        while (C1559b.m40514aq(this.f4228gz.getAlias()) == 0) {
            try {
                m40506dX();
                Thread.sleep(1000L);
            } catch (Exception e) {
                C1723q.m39823a(e);
                return;
            }
        }
    }

    /* renamed from: a */
    public void m40512a(Integer... numArr) {
        try {
            TelephonyManager telephonyManager = this.f4227gZ;
            if (telephonyManager == null || telephonyManager.getCallState() != 1) {
                return;
            }
            f4225gY.stop();
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        Boolean bool = Boolean.FALSE;
        try {
            try {
                synchronized (RunnableC1560c.class) {
                    try {
                        long currentTimeMillis = System.currentTimeMillis();
                        m40508dV();
                        long currentTimeMillis2 = System.currentTimeMillis();
                        str = TAG;
                        C1613ai.m40284d(str, "Media init " + (currentTimeMillis2 - currentTimeMillis) + " ms");
                    } finally {
                    }
                }
                long currentTimeMillis3 = System.currentTimeMillis();
                try {
                    this.f4231hc.setOnSeekBarChangeListener(this.f4232hd);
                    int progress = this.f4231hc.getProgress();
                    f4225gY.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.freshchat.consumer.sdk.i.c.1
                        @Override // android.media.MediaPlayer.OnErrorListener
                        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                            C1723q.m39823a(new RuntimeException(C22128a.m8595m2("Media player error w: ", i, " e: ", i2)));
                            return false;
                        }
                    });
                    File m39787b = C1732x.m39787b(this.context, this.f4228gz);
                    boolean exists = m39787b.exists();
                    C1613ai.m40284d(str, "Audio file received for playing " + m39787b.getAbsolutePath());
                    C1613ai.m40284d(str, "Does the media player's file exist ? " + exists);
                    long currentTimeMillis4 = System.currentTimeMillis();
                    C1613ai.m40284d(str, "Pre-file check " + (currentTimeMillis4 - currentTimeMillis3) + " ms");
                    int m40514aq = C1559b.m40514aq(this.f4228gz.getAlias());
                    if (!exists) {
                        m40506dX();
                    } else {
                        m40504r(m40514aq);
                    }
                    long currentTimeMillis5 = System.currentTimeMillis();
                    C1613ai.m40284d(str, "Post-file check " + (currentTimeMillis5 - currentTimeMillis4) + " ms");
                    m40505dY();
                    synchronized (RunnableC1560c.class) {
                        try {
                            try {
                                int i = this.f4226cL.m40960bo() ? 3 : 0;
                                f4225gY.reset();
                                f4225gY.setAudioStreamType(i);
                                f4225gY.setDataSource(m39787b.getAbsolutePath());
                                f4225gY.prepare();
                                this.f4231hc.setMax(f4225gY.getDuration());
                                this.f4229ha.runOnUiThread(new Runnable() { // from class: com.freshchat.consumer.sdk.i.c.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        RunnableC1560c.this.f4231hc.setThumbOffset(1);
                                    }
                                });
                                ((AudioManager) this.context.getSystemService("audio")).requestAudioFocus(null, 3, 2);
                                f4225gY.start();
                                f4225gY.seekTo(progress);
                                long currentTimeMillis6 = System.currentTimeMillis();
                                C1613ai.m40284d(str, "File-play " + (currentTimeMillis6 - currentTimeMillis5) + " ms");
                            } catch (Exception e) {
                                boolean delete = m39787b.delete();
                                String str2 = TAG;
                                C1613ai.m40284d(str2, "Was audio file deleted ? " + delete);
                                C1723q.m39823a(e);
                                throw e;
                            }
                        } finally {
                        }
                    }
                    try {
                        if (f4225gY.isPlaying()) {
                            C1641c.f4390kq = this.f4228gz.getAlias();
                            this.f4231hc.m39296a(this.f4230hb, f4225gY);
                        }
                        while (f4225gY.isPlaying()) {
                            m40512a(Integer.valueOf(f4225gY.getCurrentPosition()));
                        }
                    } catch (Exception e2) {
                        C1723q.m39823a(e2);
                    }
                    m40512a(0);
                    try {
                        ((AudioManager) this.f4229ha.getSystemService("audio")).abandonAudioFocus(null);
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                } catch (Exception e4) {
                    C1723q.m39823a(e4);
                    try {
                        ((AudioManager) this.f4229ha.getSystemService("audio")).abandonAudioFocus(null);
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                } finally {
                    this.f4230hb.setTag(bool);
                    this.f4231hc.m39293dZ();
                    C1641c.f4390kq = null;
                    this.f4229ha.runOnUiThread(new Runnable() { // from class: com.freshchat.consumer.sdk.i.c.3
                        @Override // java.lang.Runnable
                        public void run() {
                            ((ImageView) RunnableC1560c.this.f4230hb).setImageResource(C1623aq.m40238j(RunnableC1560c.this.context, C1298R.attr.freshchatPlayIcon));
                            RunnableC1560c.this.f4231hc.setThumbOffset(9999);
                        }
                    });
                }
            } catch (Exception e6) {
                C1723q.m39823a(e6);
                try {
                    ((AudioManager) this.f4229ha.getSystemService("audio")).abandonAudioFocus(null);
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
            }
        } catch (Throwable th) {
            try {
                ((AudioManager) this.f4229ha.getSystemService("audio")).abandonAudioFocus(null);
            } catch (Exception e8) {
                e8.printStackTrace();
            }
            throw th;
        }
    }
}
