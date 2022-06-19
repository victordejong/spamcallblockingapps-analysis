package com.allinone.callerid.service;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.media.MediaRecorder;
import android.os.Build;
import android.text.format.Formatter;
import androidx.core.app.C0565h;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$string;
import com.allinone.callerid.bean.recorder.RecordCall;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.model.EZSearchContacts;
import com.allinone.callerid.mvc.controller.recorder.RecorderActivity;
import com.allinone.callerid.p157f.C2631f;
import com.allinone.callerid.p157f.p159k.C2645b;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.recorder.AudioRecorder;
import com.allinone.callerid.util.recorder.C3819a;
import com.allinone.callerid.util.recorder.C3820b;
import com.allinone.callerid.util.recorder.C3821c;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
/* renamed from: com.allinone.callerid.service.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/b.class */
public class C3613b implements MediaRecorder.OnInfoListener, MediaRecorder.OnErrorListener {

    /* renamed from: a */
    private static final C3613b f11623a = new C3613b();

    /* renamed from: b */
    private RecordCall f11624b;

    /* renamed from: c */
    boolean f11625c = false;

    /* renamed from: d */
    MediaRecorder f11626d;

    /* renamed from: e */
    AudioRecorder f11627e;

    /* renamed from: com.allinone.callerid.service.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/b$a.class */
    public class C3614a implements AudioRecorder.AbstractC3818c {
        C3614a() {
            C3613b.this = r4;
        }

        @Override // com.allinone.callerid.util.recorder.AudioRecorder.AbstractC3818c
        public void finish() {
            C3613b.this.m24799g();
        }
    }

    /* renamed from: com.allinone.callerid.service.b$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/b$b.class */
    public class RunnableC3615b implements Runnable {
        RunnableC3615b() {
            C3613b.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            String m24217w = C3767h1.m24217w(EZCallApplication.m26146c(), C3613b.this.f11624b.getNumber());
            if (m24217w != null) {
                C3613b.this.f11624b.setName(m24217w);
                C3613b.this.f11624b.setNumbertype(101);
                C3810q.m24071b().m24070c("recorder_noupload_count");
            } else {
                C3613b.this.f11624b.setNumbertype(100);
                C3810q.m24071b().m24070c("recorder_okupload_count");
            }
            if (C3613b.this.f11624b.getFilepath() != null) {
                File file = new File(C3613b.this.f11624b.getFilepath());
                C3613b.this.f11624b.setFilesize(file.length());
                C3613b.this.f11624b.setFilesizestring(Formatter.formatFileSize(EZCallApplication.m26146c(), file.length()));
            }
            try {
                EZSearchContacts m26999d = C2631f.m27001b().m26999d(C3613b.this.f11624b.getNumber());
                if (m26999d != null) {
                    String name = m26999d.getName();
                    if (name != null && !"".equals(name) && (C3613b.this.f11624b.getName() == null || "".equals(C3613b.this.f11624b.getName()))) {
                        C3613b.this.f11624b.setName(name);
                    }
                    int faild_error_log = m26999d.getFaild_error_log();
                    String type_label = m26999d.getType_label();
                    if (type_label != null && !type_label.equals("")) {
                        C3613b.this.f11624b.setHarassstatus(121);
                        C3613b.this.f11624b.setPhoneType(type_label);
                        C3810q.m24071b().m24070c("recorder_okupload_spam_count");
                    } else if (faild_error_log == 0) {
                        C3613b.this.f11624b.setHarassstatus(122);
                        C3810q.m24071b().m24070c("recorder_okupload_unidentified_count");
                    }
                } else {
                    C3613b.this.f11624b.setHarassstatus(122);
                    C3810q.m24071b().m24070c("recorder_okupload_unidentified_count");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            C3613b.this.f11624b.setTimespan(C3613b.this.f11624b.getEndtime() - C3613b.this.f11624b.getStarttime());
            if (C3613b.this.f11624b.getFilepath() == null || C3613b.this.f11624b.getFilesize() <= 1024) {
                try {
                    new File(C3613b.this.f11624b.getFilepath()).delete();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } else {
                int m24221u = C3767h1.m24221u(C3613b.this.f11624b.getFilepath());
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("wbb", "duration: " + m24221u);
                }
                if (m24221u > 0) {
                    C3613b.this.f11624b.setTimespan(m24221u);
                }
                C2645b.m26967d().m26970a(C3613b.this.f11624b);
                if (m24217w != null) {
                    C3613b.this.m24801e(true);
                } else {
                    C3613b.this.m24801e(false);
                }
            }
            C3613b.this.f11624b = null;
            C3613b.this.f11625c = false;
        }
    }

    private C3613b() {
    }

    /* renamed from: e */
    public void m24801e(boolean z) {
        if (!C3767h1.m24228q0()) {
            try {
                NotificationManager notificationManager = (NotificationManager) EZCallApplication.m26146c().getSystemService("notification");
                C0565h.C0574e c0574e = new C0565h.C0574e(EZCallApplication.m26146c(), "Showcaller");
                int i = Build.VERSION.SDK_INT;
                if (i >= 26) {
                    NotificationChannel notificationChannel = new NotificationChannel("com.allinone.callerid_notfication_N", "Showcaller", 3);
                    if (notificationManager != null) {
                        notificationManager.createNotificationChannel(notificationChannel);
                        c0574e.m33423g("com.allinone.callerid_notfication_N");
                    }
                }
                try {
                    if (i >= 21) {
                        try {
                            EZCallApplication.m26146c().getDrawable(R$drawable.msg_icon);
                            c0574e.m33408v(R$drawable.msg_icon);
                            c0574e.m33422h(EZCallApplication.m26146c().getResources().getColor(2131099706));
                        } catch (Exception e) {
                            e.printStackTrace();
                            return;
                        }
                    } else {
                        c0574e.m33408v(R$drawable.ic_launcher24);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                Intent intent = new Intent(EZCallApplication.m26146c(), RecorderActivity.class);
                intent.setAction(Long.toString(System.currentTimeMillis()));
                intent.putExtra("record_success", true);
                intent.addFlags(268468224);
                PendingIntent activity = PendingIntent.getActivity(EZCallApplication.m26146c(), 65261, intent, 201326592);
                Intent intent2 = new Intent(EZCallApplication.m26146c(), RecorderActivity.class);
                intent2.putExtra("record_success_upload", true);
                intent2.addFlags(268468224);
                PendingIntent.getActivity(EZCallApplication.m26146c(), 65261, intent2, 201326592);
                c0574e.m33419k(EZCallApplication.m26146c().getString(R$string.Recording_completed_Tap_to_view_details)).m33406x(new C0565h.C0570c()).m33429a(R$drawable.ic_find_white, EZCallApplication.m26146c().getString(R$string.missed_details), activity);
                try {
                    int i2 = Build.VERSION.SDK_INT;
                    if (i2 < 21 || i2 > 23) {
                        c0574e.m33415o(BitmapFactory.decodeResource(EZCallApplication.m26146c().getResources(), R$drawable.recorder_notification_icon));
                    } else {
                        c0574e.m33415o(BitmapFactory.decodeResource(EZCallApplication.m26146c().getResources(), R$drawable.push_recorder_over));
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                c0574e.m33424f(true);
                c0574e.m33421i(activity);
                notificationManager.notify(9707, c0574e.m33428b());
                C3810q.m24071b().m24070c("record_push_show");
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* renamed from: f */
    public static C3613b m24800f() {
        return f11623a;
    }

    /* renamed from: g */
    public void m24799g() {
        new Thread(new RunnableC3615b()).start();
    }

    /* renamed from: h */
    private void m24798h() {
        AudioRecorder audioRecorder = new AudioRecorder(new C3819a(), this.f11624b.getFilename(), this.f11624b.getFilepath(), C3820b.m24035a());
        this.f11627e = audioRecorder;
        audioRecorder.m24041n();
    }

    /* renamed from: i */
    private void m24797i() {
        MediaRecorder mediaRecorder = new MediaRecorder();
        this.f11626d = mediaRecorder;
        mediaRecorder.setAudioSource(C3820b.m24035a());
        this.f11626d.setAudioSamplingRate(44100);
        this.f11626d.setAudioEncodingBitRate(96000);
        this.f11626d.setOutputFormat(1);
        this.f11626d.setAudioEncoder(1);
        this.f11626d.setOutputFile(this.f11624b.getFilepath());
        this.f11626d.prepare();
        this.f11626d.setOnInfoListener(this);
        this.f11626d.setOnErrorListener(this);
        this.f11626d.start();
    }

    /* renamed from: j */
    private void m24796j() {
        Exception e;
        File file;
        if (!this.f11625c) {
            this.f11625c = true;
            try {
                Calendar calendar = Calendar.getInstance();
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("_yyyyMMdd_HHmmss_", Locale.getDefault());
                String str = this.f11624b.getShowName() + simpleDateFormat.format(calendar.getTime());
                file = File.createTempFile(str, ".amr", C3821c.m24011a());
                try {
                    this.f11624b.setFilepath(file.getAbsolutePath());
                    this.f11624b.setFilename(str);
                    if (Build.VERSION.SDK_INT < 16) {
                        m24797i();
                    } else {
                        m24798h();
                    }
                    this.f11624b.setStarttime(System.currentTimeMillis());
                } catch (Exception e2) {
                    e = e2;
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("wbb", "Exception:" + e.getMessage());
                    }
                    e.printStackTrace();
                    this.f11625c = false;
                    if (file != null) {
                        file.delete();
                    }
                    this.f11624b = null;
                    this.f11625c = false;
                }
            } catch (Exception e3) {
                e = e3;
                file = null;
            }
        }
    }

    /* renamed from: l */
    private void m24794l() {
        if (this.f11625c) {
            try {
                this.f11624b.setEndtime(System.currentTimeMillis());
                if (Build.VERSION.SDK_INT < 16) {
                    this.f11626d.stop();
                    this.f11626d.reset();
                    this.f11626d.release();
                    this.f11626d = null;
                    m24799g();
                } else {
                    this.f11627e.m24040o(new C3614a());
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: k */
    public void m24795k(RecordCall recordCall) {
        this.f11624b = recordCall;
        m24796j();
    }

    /* renamed from: m */
    public void m24793m(boolean z) {
        m24794l();
    }

    @Override // android.media.MediaRecorder.OnErrorListener
    public void onError(MediaRecorder mediaRecorder, int i, int i2) {
    }

    @Override // android.media.MediaRecorder.OnInfoListener
    public void onInfo(MediaRecorder mediaRecorder, int i, int i2) {
    }
}
