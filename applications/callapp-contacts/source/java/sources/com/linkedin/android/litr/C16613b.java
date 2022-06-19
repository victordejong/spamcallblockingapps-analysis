package com.linkedin.android.litr;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Looper;
import com.linkedin.android.litr.C16619c;
import com.linkedin.android.litr.p466d.AbstractC16635d;
import com.linkedin.android.litr.p470h.C16655a;
import com.linkedin.android.litr.p470h.C16657c;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
/* renamed from: com.linkedin.android.litr.b */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/b.class */
public class C16613b {

    /* renamed from: b */
    private static final String f58460b = "b";

    /* renamed from: a */
    public Map<String, Future<?>> f58461a;

    /* renamed from: c */
    private final Context f58462c;

    /* renamed from: d */
    private ExecutorService f58463d;

    /* renamed from: e */
    private Looper f58464e;

    public C16613b(Context context) {
        this(context, Looper.getMainLooper(), Executors.newSingleThreadExecutor());
    }

    public C16613b(Context context, Looper looper, ExecutorService executorService) {
        this.f58462c = context.getApplicationContext();
        this.f58461a = new HashMap(10);
        this.f58464e = looper;
        this.f58463d = executorService;
    }

    /* renamed from: a */
    public final void m6905a(String str, List<C16619c> list, AbstractC16637e abstractC16637e) {
        if (this.f58461a.containsKey(str)) {
            throw new IllegalArgumentException("Request with id " + str + " already exists");
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            C16619c c16619c = list.get(i);
            if (c16619c.f58485f == null && c16619c.f58482c != null && c16619c.f58482c.mo6834a()) {
                AbstractC16635d abstractC16635d = c16619c.f58480a;
                int i2 = c16619c.f58486g;
                MediaFormat mo6859a = abstractC16635d.mo6859a(i2);
                String string = mo6859a.containsKey("mime") ? mo6859a.getString("mime") : null;
                MediaFormat mediaFormat = null;
                if (string != null) {
                    if (string.startsWith("video")) {
                        MediaFormat createVideoFormat = MediaFormat.createVideoFormat(string, mo6859a.getInteger("width"), mo6859a.getInteger("height"));
                        createVideoFormat.setInteger("bitrate", C16657c.m6801a(abstractC16635d, i2));
                        int i3 = 5;
                        if (mo6859a.containsKey("i-frame-interval")) {
                            i3 = mo6859a.getInteger("i-frame-interval");
                        }
                        createVideoFormat.setInteger("i-frame-interval", i3);
                        mediaFormat = createVideoFormat;
                        if (Build.VERSION.SDK_INT >= 21) {
                            mediaFormat = createVideoFormat;
                            if (mo6859a.containsKey("profile")) {
                                mediaFormat = createVideoFormat;
                                if (mo6859a.containsKey("mime")) {
                                    int m6808a = C16655a.m6808a(createVideoFormat.getString("mime"), mo6859a.getInteger("profile"));
                                    mediaFormat = createVideoFormat;
                                    if (m6808a != -1) {
                                        createVideoFormat.setInteger("profile", m6808a);
                                        mediaFormat = createVideoFormat;
                                    }
                                }
                            }
                        }
                    } else {
                        mediaFormat = null;
                        if (string.startsWith("audio")) {
                            mediaFormat = MediaFormat.createAudioFormat(string, mo6859a.getInteger("sample-rate"), mo6859a.getInteger("channel-count"));
                            mediaFormat.setInteger("bitrate", mo6859a.getInteger("bitrate"));
                        }
                    }
                }
                C16619c.C16621a c16621a = new C16619c.C16621a(c16619c.f58480a, c16619c.f58486g, c16619c.f58484e);
                c16621a.f58492e = c16619c.f58487h;
                c16621a.f58488a = c16619c.f58481b;
                c16621a.f58490c = c16619c.f58483d;
                c16621a.f58489b = c16619c.f58482c;
                c16621a.f58491d = mediaFormat;
                list.set(i, c16621a.m6876a());
            }
        }
        this.f58461a.put(str, this.f58463d.submit(new RunnableC16629d(str, list, 100, new C16608a(this.f58461a, abstractC16637e, this.f58464e))));
    }
}
