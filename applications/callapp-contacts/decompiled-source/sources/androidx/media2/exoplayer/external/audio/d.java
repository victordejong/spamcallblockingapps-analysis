package androidx.media2.exoplayer.external.audio;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.provider.Settings;
import androidx.media2.exoplayer.external.util.ac;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final d f2875a = new d(new int[]{2}, 8);

    /* renamed from: d  reason: collision with root package name */
    private static final d f2876d = new d(new int[]{2, 5, 6}, 8);

    /* renamed from: b  reason: collision with root package name */
    final int[] f2877b;

    /* renamed from: c  reason: collision with root package name */
    final int f2878c;

    public d(int[] iArr, int i) {
        if (iArr != null) {
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.f2877b = copyOf;
            Arrays.sort(copyOf);
        } else {
            this.f2877b = new int[0];
        }
        this.f2878c = i;
    }

    public static d a(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
        return (!(ac.f4119a >= 17 && "Amazon".equals(ac.f4121c)) || Settings.Global.getInt(context.getContentResolver(), "external_surround_sound_enabled", 0) != 1) ? (registerReceiver == null || registerReceiver.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 0) ? f2875a : new d(registerReceiver.getIntArrayExtra("android.media.extra.ENCODINGS"), registerReceiver.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8)) : f2876d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return Arrays.equals(this.f2877b, dVar.f2877b) && this.f2878c == dVar.f2878c;
    }

    public final int hashCode() {
        return this.f2878c + (Arrays.hashCode(this.f2877b) * 31);
    }

    public final String toString() {
        int i = this.f2878c;
        String arrays = Arrays.toString(this.f2877b);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 67);
        sb.append("AudioCapabilities[maxChannelCount=");
        sb.append(i);
        sb.append(", supportedEncodings=");
        sb.append(arrays);
        sb.append("]");
        return sb.toString();
    }
}
