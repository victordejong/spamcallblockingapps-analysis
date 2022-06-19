package com.google.android.exoplayer2.p005ui;
/* renamed from: com.google.android.exoplayer2.ui.TimeBar */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/TimeBar.class */
public interface TimeBar {

    /* renamed from: com.google.android.exoplayer2.ui.TimeBar$OnScrubListener */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/TimeBar$OnScrubListener.class */
    public interface OnScrubListener {
        void onScrubMove(TimeBar timeBar, long j);

        void onScrubStart(TimeBar timeBar, long j);

        void onScrubStop(TimeBar timeBar, long j, boolean z);
    }

    void addListener(OnScrubListener onScrubListener);

    void removeListener(OnScrubListener onScrubListener);

    void setAdGroupTimesMs(long[] jArr, boolean[] zArr, int i);

    void setBufferedPosition(long j);

    void setDuration(long j);

    void setEnabled(boolean z);

    void setKeyCountIncrement(int i);

    void setKeyTimeIncrement(long j);

    void setPosition(long j);
}
