package com.linkedin.android.litr.b;

import android.media.MediaFormat;
import android.view.Surface;
import com.linkedin.android.litr.exception.TrackTranscoderException;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/b/b.class */
public interface b {
    int a(long j);

    Surface a();

    c a(int i);

    void a(MediaFormat mediaFormat) throws TrackTranscoderException;

    void a(c cVar);

    c b(int i);

    void b() throws TrackTranscoderException;

    void c(int i);

    boolean c();

    void d();

    int e();

    MediaFormat f();

    void g();

    void h();

    String i() throws TrackTranscoderException;
}
