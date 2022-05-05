package okhttp3.internal.http2;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:okhttp3/internal/http2/Settings.class */
public final class Settings {
    public int set;
    public final int[] values = new int[10];

    public void clear() {
        this.set = 0;
        Arrays.fill(this.values, 0);
    }

    public int get(int i) {
        return this.values[i];
    }

    public int getHeaderTableSize() {
        return (this.set & 2) != 0 ? this.values[1] : -1;
    }

    public int getInitialWindowSize() {
        return (this.set & 128) != 0 ? this.values[7] : 65535;
    }

    public int getMaxConcurrentStreams(int i) {
        if ((this.set & 16) != 0) {
            i = this.values[4];
        }
        return i;
    }

    public int getMaxFrameSize(int i) {
        if ((this.set & 32) != 0) {
            i = this.values[5];
        }
        return i;
    }

    public boolean isSet(int i) {
        boolean z = true;
        if (((1 << i) & this.set) == 0) {
            z = false;
        }
        return z;
    }

    public void merge(Settings settings) {
        for (int i = 0; i < 10; i++) {
            if (settings.isSet(i)) {
                set(i, settings.get(i));
            }
        }
    }

    public Settings set(int i, int i2) {
        if (i >= 0) {
            int[] iArr = this.values;
            if (i < iArr.length) {
                this.set = (1 << i) | this.set;
                iArr[i] = i2;
            }
        }
        return this;
    }

    public int size() {
        return Integer.bitCount(this.set);
    }
}
