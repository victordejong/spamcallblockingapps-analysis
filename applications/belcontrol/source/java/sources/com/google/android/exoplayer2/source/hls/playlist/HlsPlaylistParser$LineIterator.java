package com.google.android.exoplayer2.source.hls.playlist;

import java.io.BufferedReader;
import java.util.Queue;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator.class */
public class HlsPlaylistParser$LineIterator {
    private final Queue<String> extraLines;
    private String next;
    private final BufferedReader reader;

    public HlsPlaylistParser$LineIterator(Queue<String> queue, BufferedReader bufferedReader) {
        this.extraLines = queue;
        this.reader = bufferedReader;
    }

    public boolean hasNext() {
        String trim;
        if (this.next != null) {
            return true;
        }
        if (!this.extraLines.isEmpty()) {
            this.next = this.extraLines.poll();
            return true;
        }
        do {
            String readLine = this.reader.readLine();
            this.next = readLine;
            if (readLine == null) {
                return false;
            }
            trim = readLine.trim();
            this.next = trim;
        } while (trim.isEmpty());
        return true;
    }

    public String next() {
        String str = null;
        if (hasNext()) {
            str = this.next;
            this.next = null;
        }
        return str;
    }
}
