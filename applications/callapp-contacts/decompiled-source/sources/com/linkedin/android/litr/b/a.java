package com.linkedin.android.litr.b;

import android.media.MediaFormat;
import android.view.Surface;
import com.linkedin.android.litr.exception.TrackTranscoderException;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/b/a.class */
public interface a {
    c a(int i);

    void a() throws TrackTranscoderException;

    void a(int i, boolean z);

    void a(MediaFormat mediaFormat, Surface surface) throws TrackTranscoderException;

    void a(c cVar);

    c b(int i);

    boolean b();

    int c();

    int d();

    MediaFormat e();

    void f();

    void g();

    String h() throws TrackTranscoderException;
}
