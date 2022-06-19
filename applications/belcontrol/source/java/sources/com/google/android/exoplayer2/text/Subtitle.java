package com.google.android.exoplayer2.text;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/Subtitle.class */
public interface Subtitle {
    List<Cue> getCues(long j);

    long getEventTime(int i);

    int getEventTimeCount();

    int getNextEventTimeIndex(long j);
}
