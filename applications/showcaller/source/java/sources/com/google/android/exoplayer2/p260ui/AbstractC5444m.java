package com.google.android.exoplayer2.p260ui;
/* renamed from: com.google.android.exoplayer2.ui.m */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/m.class */
public interface AbstractC5444m {

    /* renamed from: com.google.android.exoplayer2.ui.m$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/m$a.class */
    public interface AbstractC5445a {
        /* renamed from: a */
        void mo19092a(AbstractC5444m abstractC5444m, long j);

        /* renamed from: b */
        void mo19091b(AbstractC5444m abstractC5444m, long j, boolean z);

        /* renamed from: c */
        void mo19090c(AbstractC5444m abstractC5444m, long j);
    }

    /* renamed from: a */
    void mo19093a(AbstractC5445a abstractC5445a);

    long getPreferredUpdateDelay();

    void setAdGroupTimesMs(long[] jArr, boolean[] zArr, int i);

    void setBufferedPosition(long j);

    void setDuration(long j);

    void setEnabled(boolean z);

    void setPosition(long j);
}
