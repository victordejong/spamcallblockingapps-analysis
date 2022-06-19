package com.linkedin.android.litr.p460b;

import android.media.MediaFormat;
import android.view.Surface;
import com.linkedin.android.litr.exception.TrackTranscoderException;
/* renamed from: com.linkedin.android.litr.b.a */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/b/a.class */
public interface AbstractC16614a {
    /* renamed from: a */
    C16616c mo6903a(int i);

    /* renamed from: a */
    void mo6904a() throws TrackTranscoderException;

    /* renamed from: a */
    void mo6902a(int i, boolean z);

    /* renamed from: a */
    void mo6901a(MediaFormat mediaFormat, Surface surface) throws TrackTranscoderException;

    /* renamed from: a */
    void mo6900a(C16616c c16616c);

    /* renamed from: b */
    C16616c mo6898b(int i);

    /* renamed from: b */
    boolean mo6899b();

    /* renamed from: c */
    int mo6897c();

    /* renamed from: d */
    int mo6896d();

    /* renamed from: e */
    MediaFormat mo6895e();

    /* renamed from: f */
    void mo6894f();

    /* renamed from: g */
    void mo6893g();

    /* renamed from: h */
    String mo6892h() throws TrackTranscoderException;
}
