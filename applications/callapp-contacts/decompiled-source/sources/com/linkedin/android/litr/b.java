package com.linkedin.android.litr;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Looper;
import com.linkedin.android.litr.c;
import com.linkedin.android.litr.d.d;
import com.linkedin.android.litr.h.a;
import com.linkedin.android.litr.h.c;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/b.class */
public class b {

    /* renamed from: b  reason: collision with root package name */
    private static final String f33662b = "b";

    /* renamed from: a  reason: collision with root package name */
    public Map<String, Future<?>> f33663a;

    /* renamed from: c  reason: collision with root package name */
    private final Context f33664c;

    /* renamed from: d  reason: collision with root package name */
    private ExecutorService f33665d;
    private Looper e;

    public b(Context context) {
        this(context, Looper.getMainLooper(), Executors.newSingleThreadExecutor());
    }

    public b(Context context, Looper looper, ExecutorService executorService) {
        this.f33664c = context.getApplicationContext();
        this.f33663a = new HashMap(10);
        this.e = looper;
        this.f33665d = executorService;
    }

    public final void a(String str, List<c> list, e eVar) {
        if (!this.f33663a.containsKey(str)) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                c cVar = list.get(i);
                if (cVar.f == null && cVar.f33679c != null && cVar.f33679c.a()) {
                    d dVar = cVar.f33677a;
                    int i2 = cVar.g;
                    MediaFormat a2 = dVar.a(i2);
                    String string = a2.containsKey("mime") ? a2.getString("mime") : null;
                    MediaFormat mediaFormat = null;
                    if (string != null) {
                        if (string.startsWith("video")) {
                            MediaFormat createVideoFormat = MediaFormat.createVideoFormat(string, a2.getInteger("width"), a2.getInteger("height"));
                            createVideoFormat.setInteger("bitrate", c.a(dVar, i2));
                            int i3 = 5;
                            if (a2.containsKey("i-frame-interval")) {
                                i3 = a2.getInteger("i-frame-interval");
                            }
                            createVideoFormat.setInteger("i-frame-interval", i3);
                            mediaFormat = createVideoFormat;
                            if (Build.VERSION.SDK_INT >= 21) {
                                mediaFormat = createVideoFormat;
                                if (a2.containsKey("profile")) {
                                    mediaFormat = createVideoFormat;
                                    if (a2.containsKey("mime")) {
                                        int a3 = a.a(createVideoFormat.getString("mime"), a2.getInteger("profile"));
                                        mediaFormat = createVideoFormat;
                                        if (a3 != -1) {
                                            createVideoFormat.setInteger("profile", a3);
                                            mediaFormat = createVideoFormat;
                                        }
                                    }
                                }
                            }
                        } else {
                            mediaFormat = null;
                            if (string.startsWith("audio")) {
                                mediaFormat = MediaFormat.createAudioFormat(string, a2.getInteger("sample-rate"), a2.getInteger("channel-count"));
                                mediaFormat.setInteger("bitrate", a2.getInteger("bitrate"));
                            }
                        }
                    }
                    c.a aVar = new c.a(cVar.f33677a, cVar.g, cVar.e);
                    aVar.e = cVar.h;
                    aVar.f33681a = cVar.f33678b;
                    aVar.f33683c = cVar.f33680d;
                    aVar.f33682b = cVar.f33679c;
                    aVar.f33684d = mediaFormat;
                    list.set(i, aVar.a());
                }
            }
            this.f33663a.put(str, this.f33665d.submit(new d(str, list, 100, new a(this.f33663a, eVar, this.e))));
            return;
        }
        throw new IllegalArgumentException("Request with id " + str + " already exists");
    }
}
